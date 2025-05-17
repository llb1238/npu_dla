#include "conv_core.h"

// 加载阶段：将外部 feature_in[] 拷到本地 inbuf
static void load_feature(
    ap_uint<16> CHin,
    ap_uint<16> Hin,
    ap_uint<16> Win,
    const Dtype_f feature_in[],
    Dtype_f inbuf[MAX_HIN][MAX_WIN][MAX_CHIN])
{
    int total = Hin * Win * CHin;
load_loop:
    for (int idx = 0; idx < total; ++idx)
    {
#pragma HLS PIPELINE II = 1
        int tmp = idx;
        int c = tmp % CHin;
        tmp /= CHin;
        int x = tmp % Win;
        tmp /= Win;
        int y = tmp;
        inbuf[y][x][c] = feature_in[idx];
    }
}

// 计算阶段：在本地 inbuf 上做窗口卷积，写回 feature_out[]
static void compute_conv(
    ap_uint<16> CHin,
    ap_uint<16> Hin,
    ap_uint<16> Win,
    ap_uint<16> CHout,
    ap_uint<8> Kx,
    ap_uint<8> Ky,
    ap_uint<8> Sx,
    ap_uint<8> Sy,
    ap_uint<1> mode,
    ap_uint<1> relu_en,
    const Dtype_f inbuf[MAX_HIN][MAX_WIN][MAX_CHIN],
    const Dtype_w W[],
    const Dtype_w bias[],
    Dtype_f feature_out[])
{
    // 计算 padding
    ap_uint<8> pad_x;
    ap_uint<8> pad_y;
    if (mode == 1)
    {
        pad_x = (Kx - 1) / 2;
        pad_y = (Ky - 1) / 2;
    }
    else
    {
        pad_x = 0;
        pad_y = 0;
    }
    // 输出尺寸
    int Wout = (Win + 2 * pad_x - Kx) / Sx + 1;
    int Hout = (Hin + 2 * pad_y - Ky) / Sy + 1;

    // 本地缓存当前输出通道的卷积核
    static Dtype_w wbuf[MAX_K][MAX_K][MAX_CHIN];
#pragma HLS ARRAY_PARTITION variable = wbuf complete dim = 3

channel_loop:
    for (int co = 0; co < CHout; ++co)
    {
        // 加载 wbuf
    load_w:
        for (int ky = 0; ky < Ky; ++ky)
            for (int kx = 0; kx < Kx; ++kx)
            {
#pragma HLS PIPELINE II = 1
            load_c:
                for (int ci = 0; ci < CHin; ++ci)
                {
#pragma HLS UNROLL
                    int wi = co * (Ky * Kx * CHin) + ky * (Kx * CHin) + kx * CHin + ci;
                    wbuf[ky][kx][ci] = W[wi];
                }
            }

        // 窗口卷积
    out_y:
        for (int y = 0; y < Hout; ++y)
            for (int x = 0; x < Wout; ++x)
            {
#pragma HLS PIPELINE II = 1
                Dtype_acc sum = 0;
            win_ky:
                for (int ky = 0; ky < Ky; ++ky)
                    for (int kx = 0; kx < Kx; ++kx)
                        for (int ci = 0; ci < CHin; ++ci)
                        {
#pragma HLS UNROLL
                            int yy = y * Sy + ky - pad_y;
                            int xx = x * Sx + kx - pad_x;
                            if (yy >= 0 && yy < Hin && xx >= 0 && xx < Win)
                            {
                                sum += inbuf[yy][xx][ci] * wbuf[ky][kx][ci];
                            }
                        }
                // 加 bias + ReLU
                sum += bias[co];
                if (relu_en && sum < 0)
                    sum = 0;
                // 写回
                int idx = co * (Hout * Wout) + y * Wout + x;
                feature_out[idx] = (Dtype_f)sum;
            }
    }
}

// 顶层函数
void Conv(
    ap_uint<16> CHin,
    ap_uint<16> Hin,
    ap_uint<16> Win,
    ap_uint<16> CHout,
    ap_uint<8> Kx,
    ap_uint<8> Ky,
    ap_uint<8> Sx,
    ap_uint<8> Sy,
    ap_uint<1> mode,
    ap_uint<1> relu_en,
    Dtype_f feature_in[],
    Dtype_w W[],
    Dtype_w bias[],
    Dtype_f feature_out[])
{
// 分别分到四条 AXI 接口，才能在 DATAFLOW 下并行访问
#pragma HLS INTERFACE m_axi depth = 4294967295 port = feature_in offset = slave bundle = FEATURE_IN
#pragma HLS INTERFACE m_axi depth = 4294967295 port = W offset = slave bundle = WEIGHTS
#pragma HLS INTERFACE m_axi depth = 4294967295 port = bias offset = slave bundle = BIAS
#pragma HLS INTERFACE m_axi depth = 4294967295 port = feature_out offset = slave bundle = FEATURE_OUT

#pragma HLS INTERFACE s_axilite port = CHin
#pragma HLS INTERFACE s_axilite port = Hin
#pragma HLS INTERFACE s_axilite port = Win
#pragma HLS INTERFACE s_axilite port = CHout
#pragma HLS INTERFACE s_axilite port = Kx
#pragma HLS INTERFACE s_axilite port = Ky
#pragma HLS INTERFACE s_axilite port = Sx
#pragma HLS INTERFACE s_axilite port = Sy
#pragma HLS INTERFACE s_axilite port = mode
#pragma HLS INTERFACE s_axilite port = relu_en
#pragma HLS INTERFACE s_axilite port = return

    static Dtype_f inbuf[MAX_HIN][MAX_WIN][MAX_CHIN];
#pragma HLS ARRAY_PARTITION variable = inbuf complete dim = 3

// 并行加载 + 卷积
#pragma HLS DATAFLOW
    load_feature(CHin, Hin, Win, feature_in, inbuf);
    compute_conv(CHin, Hin, Win, CHout, Kx, Ky, Sx, Sy,
                 mode, relu_en, inbuf, W, bias, feature_out);
}
