#include <iostream>
#include <cstring>
#include "conv_core.h"

int main() {
    // 测试参数
    const int width  = 8;
    const int height = 8;
    const int CHout  = 2;

    const int in_size     = CHin * width * height;
    const int out_h       = height - K + 1;
    const int out_w       = width  - K + 1;
    const int out_size    = CHout * out_h * out_w;
    const int weight_size = CHout * CHin * K * K;

    static ap_int<8>  in_buf[in_size];
    static ap_int<8>  wt_buf[weight_size];
    static ap_int<32> out_buf[out_size];

    // 初始化输入和权重
    for (int i = 0; i < in_size; ++i)  in_buf[i] = (i % 17) - 8;
    for (int i = 0; i < weight_size; ++i) wt_buf[i] = (i % 5) - 2;
    std::memset(out_buf, 0, sizeof(out_buf));

    // 调用 HLS 核心
    conv_core(in_buf, wt_buf, out_buf, CHout, width, height);

    // 验证
    bool ok = true;
    for (int co = 0; co < CHout; ++co) {
        for (int y = 0; y < out_h; ++y) {
            for (int x = 0; x < out_w; ++x) {
                long ref = 0;
                for (int ky=0; ky<K; ++ky)
                    for (int kx=0; kx<K; ++kx)
                        for (int ci=0; ci<CHin; ++ci) {
                            int a = in_buf[((y+ky)*width + (x+kx))*CHin + ci];
                            int b = wt_buf[co*(K*K*CHin) + (ky*K+kx)*CHin + ci];
                            ref += a * b;
                        }
                long hw = out_buf[co*(out_h*out_w) + y*out_w + x];
                if (hw != ref) {
                    ok = false;
                    std::cerr << "Err at co="<<co<<" y="<<y<<" x="<<x
                              <<": hw="<<hw<<" ref="<<ref<<"\n";
                }
            }
        }
    }
    std::cout << (ok ? "CSIM PASSED\n" : "CSIM FAILED\n");

    // 打印部分结果
    std::cout << "Sample out (ch0):\n";
    for (int y=0; y< std::min(4,out_h); ++y) {
        for (int x=0; x< std::min(8,out_w); ++x)
            std::cout << (int)out_buf[y*out_w + x] << " ";
        std::cout << "\n";
    }
    return 0;
}
