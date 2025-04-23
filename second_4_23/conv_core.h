#ifndef __CONV_CORE_H__
#define __CONV_CORE_H__

#include <ap_int.h>

// 为 HLS 本地缓冲声明的最大尺寸（可根据实际需求调整）
#define MAX_HIN 64
#define MAX_WIN 64
#define MAX_CHIN 16
#define MAX_K 7

typedef float Dtype_f;
typedef float Dtype_w;
typedef float Dtype_mul;
typedef float Dtype_acc;

// 顶层卷积接口
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
    Dtype_f feature_out[]);

#endif // __CONV_CORE_H__
