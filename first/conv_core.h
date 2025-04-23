#ifndef __CONV_CORE_H__
#define __CONV_CORE_H__

#include <ap_int.h>

// 固定参数
#define CHin 16   // 输入通道数固定为16
#define K    5    // 卷积核尺寸5x5

// 顶层接口声明
// in:     输入特征图 [CHin][width][height]，按 CHin 最内层打平
// weight: 卷积核权重 [CHout][CHin][K][K]，按 CHout 最外层打平
// out:    输出特征图 [CHout][(height-K+1)][(width-K+1)]，按 CHout 最外层打平
// CHout, width, height: 由控制寄存器传入
void conv_core(
    ap_int<8>*  in,
    ap_int<8>*  weight,
    ap_int<32>* out,
    int CHout,
    int width,
    int height
);

#endif // __CONV_CORE_H__
