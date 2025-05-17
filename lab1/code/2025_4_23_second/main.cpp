#include <cstdio>
#include "conv_core.h"

#define IN_WIDTH 10
#define IN_HEIGHT 10
#define IN_CH 16

#define KERNEL_W 5
#define KERNEL_H 5
#define X_STRIDE 1
#define Y_STRIDE 1

#define MODE 0    // 0=VALID, 1=SAME
#define RELU_EN 0 // 0=关闭, 1=启用

#define X_PAD (MODE ? (KERNEL_W - 1) / 2 : 0)
#define Y_PAD (MODE ? (KERNEL_H - 1) / 2 : 0)

#define OUT_CH 1
#define OUT_WIDTH ((IN_WIDTH + 2 * X_PAD - KERNEL_W) / X_STRIDE + 1)
#define OUT_HEIGHT ((IN_HEIGHT + 2 * Y_PAD - KERNEL_H) / Y_STRIDE + 1)

int main()
{
    static Dtype_f feature_in[IN_HEIGHT * IN_WIDTH * IN_CH];
    static Dtype_w W[KERNEL_H * KERNEL_W * IN_CH * OUT_CH];
    static Dtype_w bias[OUT_CH];
    static Dtype_f feature_out[OUT_CH * OUT_HEIGHT * OUT_WIDTH];

    // 初始化输入
    for (int y = 0; y < IN_HEIGHT; y++)
        for (int x = 0; x < IN_WIDTH; x++)
            for (int c = 0; c < IN_CH; c++)
            {
                int idx = (y * IN_WIDTH + x) * IN_CH + c;
                feature_in[idx] = float(y * IN_WIDTH + x);
            }

    // 初始化权重
    for (int ky = 0; ky < KERNEL_H; ky++)
        for (int kx = 0; kx < KERNEL_W; kx++)
            for (int ci = 0; ci < IN_CH; ci++)
                for (int co = 0; co < OUT_CH; co++)
                {
                    int wi = co * (KERNEL_H * KERNEL_W * IN_CH) + ky * (KERNEL_W * IN_CH) + kx * (IN_CH) + ci;
                    W[wi] = float(ky * KERNEL_W + kx);
                }

    // 初始化偏置
    for (int co = 0; co < OUT_CH; co++)
        bias[co] = 0.0f;

    printf("Starting convolution...\n");
    Conv(IN_CH, IN_HEIGHT, IN_WIDTH, OUT_CH,
         KERNEL_W, KERNEL_H, X_STRIDE, Y_STRIDE,
         MODE, RELU_EN,
         feature_in, W, bias, feature_out);

    // 打印输出
    for (int co = 0; co < OUT_CH; co++)
        for (int y = 0; y < OUT_HEIGHT; y++)
            for (int x = 0; x < OUT_WIDTH; x++)
            {
                int idx = co * (OUT_HEIGHT * OUT_WIDTH) + y * OUT_WIDTH + x;
                printf("OUT[%d][%d][%d] = %f\n", y, x, co, feature_out[idx]);
            }
    return 0;
}
