#include "conv_core.h"

// 主卷积核：固定 CHin=16,K=5，手工局部缓存权重，全展开 CHin，目标 II=1
void Conv(
    ap_int<8>*  in,
    ap_int<8>*  weight,
    ap_int<32>* out,
    int CHout,
    int width,
    int height
) {
    #pragma HLS INTERFACE m_axi port=in     offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=weight offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=out    offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=CHout  bundle=control
    #pragma HLS INTERFACE s_axilite port=width  bundle=control
    #pragma HLS INTERFACE s_axilite port=height bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    const int Kval = K;
    int out_h = height - Kval + 1;
    int out_w = width  - Kval + 1;

    // 本地缓冲：存放一个输出通道的所有权重（5×5×16）
    ap_int<8> wbuf[Kval][Kval][CHin];
    #pragma HLS ARRAY_PARTITION variable=wbuf complete dim=3

    // 遍历每个输出通道
    for (int co = 0; co < CHout; ++co) {
        // 1) 将这一通道的权重一次性读入 wbuf
        for (int ky = 0; ky < Kval; ++ky) {
            for (int kx = 0; kx < Kval; ++kx) {
                #pragma HLS PIPELINE II=1
                for (int ci = 0; ci < CHin; ++ci) {
                    #pragma HLS UNROLL
                    int idx = co * (Kval*Kval*CHin)
                            + (ky*Kval + kx)*CHin + ci;
                    wbuf[ky][kx][ci] = weight[idx];
                }
            }
        }

        // 2) 对每个输出像素点做卷积
        for (int y = 0; y < out_h; ++y) {
            for (int x = 0; x < out_w; ++x) {
                #pragma HLS PIPELINE II=1
                ap_int<32> sum = 0;
                // 窗口内展开
                for (int ky = 0; ky < Kval; ++ky) {
                    for (int kx = 0; kx < Kval; ++kx) {
                        // 输入通道完全展开
                        for (int ci = 0; ci < CHin; ++ci) {
                            #pragma HLS UNROLL factor=16
                            int in_idx = ((y+ky)*width + (x+kx))*CHin + ci;
                            ap_int<8> a = in[in_idx];
                            ap_int<8> b = wbuf[ky][kx][ci];
                            sum += (ap_int<16>)(a * b);
                        }
                    }
                }
                // 写回输出 (按通道排列)
                int out_idx = co*(out_h*out_w) + y*out_w + x;
                out[out_idx] = sum;
            }
        }
    }
}
