#include "conv_core.h"

// Feature Map 维度: [Hin][Win][CHin]
// Kernel 权重维度: [Ky][Kx][CHin][CHout]

void Conv(ap_uint<16> CHin, ap_uint<16> Hin, ap_uint<16> Win, ap_uint<16> CHout,
          ap_uint<8> Kx, ap_uint<8> Ky, ap_uint<8> Sx, ap_uint<8> Sy,
          ap_uint<1> mode, ap_uint<1> relu_en,
          Dtype_f feature_in[MAX_IN_HEIGHT][MAX_IN_WIDTH][MAX_IN_CH],
          Dtype_w W[MAX_KERNEL_HEIGHT][MAX_KERNEL_WIDTH][MAX_IN_CH][MAX_OUT_CH],
          Dtype_w bias[MAX_OUT_CH],
          Dtype_f feature_out[MAX_IN_HEIGHT][MAX_IN_WIDTH][MAX_OUT_CH])
{
// AXI4 Master 和 AXI4-Lite 接口配置（用于 Zynq 上板）
#pragma HLS INTERFACE m_axi depth = 4294967295 port = feature_out offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = bias offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = W offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = feature_in offset = slave
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

// 为提高并行度，对数组在通道维度上进行分区（Partition）
#pragma HLS ARRAY_PARTITION variable = feature_in complete dim = 3
#pragma HLS ARRAY_PARTITION variable = W complete dim = 3

    // 输入参数合法性检查（不得超过最大支持维度）
    if (CHin > MAX_IN_CH || CHout > MAX_OUT_CH ||
        Hin > MAX_IN_HEIGHT || Win > MAX_IN_WIDTH ||
        Ky > MAX_KERNEL_HEIGHT || Kx > MAX_KERNEL_WIDTH)
    {
        // 超出支持范围，直接退出（不进行卷积运算）
        return;
    }

    // 计算填充尺寸
    ap_uint<8> pad_x, pad_y;
    if (mode == 0)
    {
        pad_x = 0;
        pad_y = 0;
    }
    else
    {
        pad_x = (Kx - 1) / 2;
        pad_y = (Ky - 1) / 2;
    }

    // 根据模式和步长计算输出特征图尺寸
    ap_uint<16> Hout = (Hin + 2 * pad_y - Ky) / Sy + 1;
    ap_uint<16> Wout = (Win + 2 * pad_x - Kx) / Sx + 1;

    // 卷积运算主循环
    for (int cout = 0; cout < (int)CHout; cout++)
    {
        for (int i = 0; i < (int)Hout; i++)
        {
            for (int j = 0; j < (int)Wout; j++)
            {
#pragma HLS PIPELINE II = 1        // 对输出像素点的计算流水线化
                Dtype_acc sum = 0; // 累加和初始化
                // 遍历卷积核窗口
                for (int ii = 0; ii < (int)Ky; ii++)
                {
                    for (int jj = 0; jj < (int)Kx; jj++)
                    {
                        // 输入 feature_in 对应的实际位置 (h, w)
                        ap_int<16> h = i * Sy - pad_y + ii;
                        ap_int<16> w = j * Sx - pad_x + jj;
                        // 边界检查，只累加有效区域内的值
                        if (h >= 0 && w >= 0 && h < (ap_int<16>)Hin && w < (ap_int<16>)Win)
                        {
// 输入通道累加（展开循环以提高并行度）
#pragma HLS UNROLL
                            for (int cin = 0; cin < MAX_IN_CH; cin++)
                            {
                                if (cin < (int)CHin)
                                {
                                    // 累加 kernel 窗口内各输入通道的乘积
                                    Dtype_mul tp = feature_in[h][w][cin] * W[ii][jj][cin][cout];
                                    sum += tp;
                                }
                            }
                        }
                    }
                }
                // 加上偏置项
                sum += bias[cout];
                // 可选的 ReLU 激活（relu_en 为 1 时生效）
                if (relu_en && sum < 0)
                {
                    sum = 0;
                }
                // 将结果写入输出特征图
                feature_out[i][j][cout] = sum;
            }
        }
    }
}
