#include <stdio.h>
#include "conv_core.h"

// 定义实际测试的卷积参数
#define IN_WIDTH 10
#define IN_HEIGHT 10
#define IN_CH 16

#define KERNEL_WIDTH 5
#define KERNEL_HEIGHT 5
#define X_STRIDE 1
#define Y_STRIDE 1

#define RELU_EN 0
#define MODE 0 // 0: VALID 卷积, 1: SAME 卷积

// 根据模式计算填充（MODE=1 时为 SAME 卷积，填充 (K-1)/2）
#define X_PADDING (MODE ? (KERNEL_WIDTH - 1) / 2 : 0)
#define Y_PADDING (MODE ? (KERNEL_HEIGHT - 1) / 2 : 0)

// 计算输出特征图实际尺寸
#define OUT_CH 1
#define OUT_WIDTH ((IN_WIDTH + 2 * X_PADDING - KERNEL_WIDTH) / X_STRIDE + 1)
#define OUT_HEIGHT ((IN_HEIGHT + 2 * Y_PADDING - KERNEL_HEIGHT) / Y_STRIDE + 1)

int main()
{
    // 分配输入、权重、偏置和输出数组（尺寸按照最大值分配）
    static Dtype_f feature_in[MAX_IN_HEIGHT][MAX_IN_WIDTH][MAX_IN_CH];
    static Dtype_w W[MAX_KERNEL_HEIGHT][MAX_KERNEL_WIDTH][MAX_IN_CH][MAX_OUT_CH];
    static Dtype_w bias[MAX_OUT_CH];
    static Dtype_f feature_out[MAX_IN_HEIGHT][MAX_IN_WIDTH][MAX_OUT_CH];

    // 初始化输入 feature_in 数据
    for (int i = 0; i < IN_HEIGHT; i++)
    {
        for (int j = 0; j < IN_WIDTH; j++)
        {
            for (int cin = 0; cin < IN_CH; cin++)
            {
                feature_in[i][j][cin] = i * IN_WIDTH + j; // 示例数据：按位置填值
            }
        }
    }
    // 初始化卷积核权重 W 数据
    for (int ii = 0; ii < KERNEL_HEIGHT; ii++)
    {
        for (int jj = 0; jj < KERNEL_WIDTH; jj++)
        {
            for (int cin = 0; cin < IN_CH; cin++)
            {
                for (int cout = 0; cout < OUT_CH; cout++)
                {
                    W[ii][jj][cin][cout] = ii * KERNEL_WIDTH + jj; // 示例数据：按kernel位置填值
                }
            }
        }
    }
    // 初始化偏置 bias 数据
    for (int cout = 0; cout < OUT_CH; cout++)
    {
        bias[cout] = 0;
    }

    printf("Running convolution...\n");
    // 调用卷积函数（动态参数由上面宏定义给出）
    Conv(IN_CH, IN_HEIGHT, IN_WIDTH, OUT_CH,
         KERNEL_WIDTH, KERNEL_HEIGHT, X_STRIDE, Y_STRIDE,
         MODE, RELU_EN,
         feature_in, W, bias, feature_out);

    // 输出部分结果用于验证
    for (int i = 0; i < OUT_HEIGHT; i++)
    {
        for (int j = 0; j < OUT_WIDTH; j++)
        {
            for (int cout = 0; cout < OUT_CH; cout++)
            {
                printf("OUT[%d][%d][%d] = %f\n", i, j, cout, feature_out[i][j][cout]);
            }
        }
    }

    return 0;
}
