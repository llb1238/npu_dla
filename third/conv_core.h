#ifndef __CONV_CORE_H__
#define __CONV_CORE_H__

#include <ap_int.h>
#include <iostream>

using namespace std;

// 定义支持的最大维度参数
#define MAX_IN_HEIGHT 64    // 最大输入特征图高度
#define MAX_IN_WIDTH 64     // 最大输入特征图宽度
#define MAX_IN_CH 64        // 最大输入通道数
#define MAX_OUT_CH 64       // 最大输出通道数
#define MAX_KERNEL_HEIGHT 7 // 最大卷积核高度
#define MAX_KERNEL_WIDTH 7  // 最大卷积核宽度

// 数据类型定义（当前使用 float，可根据需要更改为定点类型）
typedef float Dtype_f;
typedef float Dtype_w;
typedef float Dtype_mul;
typedef float Dtype_acc;

// 卷积顶层函数接口声明（接口形式采用三/四维数组）
void Conv(ap_uint<16> CHin, ap_uint<16> Hin, ap_uint<16> Win, ap_uint<16> CHout,
          ap_uint<8> Kx, ap_uint<8> Ky, ap_uint<8> Sx, ap_uint<8> Sy,
          ap_uint<1> mode, ap_uint<1> relu_en,
          Dtype_f feature_in[MAX_IN_HEIGHT][MAX_IN_WIDTH][MAX_IN_CH],
          Dtype_w W[MAX_KERNEL_HEIGHT][MAX_KERNEL_WIDTH][MAX_IN_CH][MAX_OUT_CH],
          Dtype_w bias[MAX_OUT_CH],
          Dtype_f feature_out[MAX_IN_HEIGHT][MAX_IN_WIDTH][MAX_OUT_CH]); // mode: 0 为 VALID 卷积, 1 为 SAME 卷积

#endif // __CONV_CORE_H__
