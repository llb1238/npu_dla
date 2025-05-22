#include "systolic_array.h"
// #include <cmath>

template <typename T>
struct Process_Element
{
	T a, b, val;

	Process_Element()
	{
		reset();
	}

	void reset()
	{
		a = 0;
		b = 0;
		val = 0;
	}

	void process(T a_i, T b_i)
	{
		a = a_i; // a从左到右传�??
		b = b_i; // b从上到下传�??
		val += a_i * b_i;
	}
};

template <typename T, int LEN>
struct Systolic_Array
{
	// 定义由若干PE组成的脉动阵列方�??
	Process_Element<T> pe[LEN][LEN];

	void reset()
	{
		for (int r = 0; r < LEN; r++)
			for (int c = 0; c < LEN; c++)
				pe[r][c].reset();
	}

	void reset(int row, int col)
	{
		for (int r = 0; r < row; r++)
			for (int c = 0; c < col; c++)
				pe[r][c].reset();
	}

	// 执行�??次pulse函数，数据在脉动阵列的水平方向和竖直方向上均走了�??步，即整个阵列的脉搏跳了�??�??
	void pulse(T a_vec[LEN], T b_vec[LEN])
	{
	systolic_array_outer_loop:
		// 方阵从左上角走到右下角，总共�??�??2*LEN-1个step
		for (int i = 2 * LEN - 2; i >= 0; i--)
		{
			// 计算每一个step�??要处理的PE�??
			int pe_num = (i < LEN) ? (i + 1) : (2 * LEN - 1 - i);

		systolic_array_inner_loop:
			for (int j = 0; j < pe_num; j++)
			{
				// 获取当前PE的坐�??
				int row = (i < LEN) ? i - j : LEN - 1 - j;
				int col = (i < LEN) ? j : j + i - LEN + 1;

				// 获取当前PE的左侧输入a和上方输入b
				T a_in = (col == 0) ? a_vec[row] : pe[row][col - 1].a;
				T b_in = (row == 0) ? b_vec[col] : pe[row - 1][col].b;

				// 利用a和b更新PE
				pe[row][col].process(a_in, b_in);
			}
		}
	}

	// 执行�??次pulse函数，有效数据在脉动阵列�??2个方向上均走了一步，即仅工作的PE打了�??拍，其余PE不变
	void pulse(T a_vec[LEN], int a_size, T b_vec[LEN], int b_size)
	{
		int shorter, longer;
		if (a_size < b_size)
		{
			shorter = a_size;
			longer = b_size;
		}
		else
		{
			shorter = b_size;
			longer = a_size;
		}

	systolic_array_outer_loop:
		// 阵列从左上角走到右下角，总共�??要a_size+b_size-1个step
		for (int i = a_size + b_size - 2; i >= 0; i--)
		{
			// 计算每一个step�??要处理的PE�??
			int pe_num = (i < shorter) ? (i + 1) : ((i < longer) ? shorter : (a_size + b_size - 1 - i));

		systolic_array_inner_loop:
			for (int j = 0; j < pe_num; j++)
			{
				// 获取当前PE的坐�??
				int row = (i < a_size) ? i - j : a_size - 1 - j;
				int col = (i < b_size) ? j : j + i - b_size + 1;

				// 获取当前PE的左侧输入a和上方输入b
				T a_in = (col == 0) ? a_vec[row] : pe[row][col - 1].a;
				T b_in = (row == 0) ? b_vec[col] : pe[row - 1][col].b;

				// 利用a和b更新PE
				pe[row][col].process(a_in, b_in);
			}
		}
	}
};

// 脉动阵列本列
Systolic_Array<DataType, SIDE_LEN> systolic_matrix;

void gemm_kernel(int piece_a_cell, int piece_b_cell, int row, int col, int col1, int ori_col1, DataType din_a[], DataType din_b[])
{
	systolic_matrix.reset(row, col1);

	// 脉动阵列水平方向的输入向量�?�竖直方向的输入向量
	DataType a_vec[SIDE_LEN], b_vec[SIDE_LEN];

	// 计算脉动阵列计算完成时，脉搏�??要跳动的次数
	int total_pulse = row + col1 - 1 + col - 1;

gemm_outer_loop:
	for (int i = 0; i < total_pulse; i++)
	{
	gemm_inner_loop:
		for (int j = 0; j < SIDE_LEN; j++)
		{
			int a_index = piece_a_cell * col + j * col + i - j;
			int b_index = (i - j) * ori_col1 + j + piece_b_cell;

			// 逐一获取脉动阵列输入向量的各个元�??
			a_vec[j] = (j < row && i - j >= 0 && i - j < col) ? din_a[a_index] : 0;
			b_vec[j] = (j < col1 && i - j >= 0 && i - j < col) ? din_b[b_index] : 0;
		}

		// 改用完整脉搏函数
		systolic_matrix.pulse(a_vec, b_vec);
	}
}

// 将脉动阵列计算结果拷贝到输出�??
void copy_result(int piece_a_cell, int piece_b_cell, int row, int col1, int ori_col1, DataType bias[], DataType out[])
{
	for (int i = 0; i < row; i++)
	{
		for (int j = 0; j < col1; j++)
		{
			int out_index = (piece_a_cell + i) * ori_col1 + piece_b_cell + j;
			out[out_index] = systolic_matrix.pe[i][j].val + bias[piece_a_cell + i];
		}
	}
}

// THIS IS THE TOP LEVEL DESIGN THAT WILL BE SYNTHESIZED (Size-Free version)
void systolic_array(ap_uint<16> row, ap_uint<16> col, ap_uint<16> col1, DataType din_a[], DataType din_b[], DataType bias[], DataType out[])
{
#pragma HLS INTERFACE s_axilite port = return
#pragma HLS INTERFACE s_axilite port = row
#pragma HLS INTERFACE s_axilite port = col
#pragma HLS INTERFACE s_axilite port = col1
#pragma HLS INTERFACE m_axi depth = 4294967295 port = din_a offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = din_b offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = bias offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = out offset = slave

	//	int piece_a = (int)ceil((float)row/SIDE_LEN);
	//	int piece_b = (int)ceil((float)col1/SIDE_LEN);
	int piece_a = row / SIDE_LEN + (row % SIDE_LEN > 0);	 // 计算乘法左侧的输入矩阵需要按行切成几�??
	int piece_b = col1 / SIDE_LEN + (col1 % SIDE_LEN > 0); // 计算乘法右侧的输入矩阵需要按列切成几�??
	int piece_a_row, piece_b_col, piece_a_cell, piece_b_cell;

#pragma HLS DATAFLOW
top_outer_loop:
	for (int i = 0; i < piece_a; i++)
	{
		// Get piece index of array a
		piece_a_cell = i * SIDE_LEN;
		// 计算当前分块的行�??
		piece_a_row = (i < piece_a - 1 || row % SIDE_LEN == 0) ? SIDE_LEN : (int)(row % SIDE_LEN);

	top_inner_loop:
		for (int j = 0; j < piece_b; j++)
		{
			// Get piece index of array b
			piece_b_cell = j * SIDE_LEN;
			// 计算当前分块的列�??
			piece_b_col = (j < piece_b - 1 || col1 % SIDE_LEN == 0) ? SIDE_LEN : (int)(col1 % SIDE_LEN);

			// Using gemm kernel to perform matrix multiplication
			gemm_kernel(piece_a_cell, piece_b_cell, piece_a_row, col, piece_b_col, col1, din_a, din_b);

			// Copy gemm result to output port
			copy_result(piece_a_cell, piece_b_cell, piece_a_row, piece_b_col, col1, bias, out);
		}
	}
}

// THIS IS THE TOP LEVEL DESIGN THAT WILL BE SYNTHESIZED (Size-Limited version)
void systolic_array_limited(ap_uint<16> row, ap_uint<16> col, ap_uint<16> col1, DataType din_a[], DataType din_b[], DataType bias[], DataType out[])
{
#pragma HLS INTERFACE s_axilite port = return
#pragma HLS INTERFACE s_axilite port = row
#pragma HLS INTERFACE s_axilite port = col
#pragma HLS INTERFACE s_axilite port = col1
#pragma HLS INTERFACE m_axi depth = 4294967295 port = din_a offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = din_b offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = bias offset = slave
#pragma HLS INTERFACE m_axi depth = 4294967295 port = out offset = slave

	systolic_matrix.reset();

	// 脉动阵列水平方向的输入向量�?�竖直方向的输入向量
	DataType a_vec[SIDE_LEN], b_vec[SIDE_LEN];

	// 计算脉动阵列计算完成时，脉搏�??要跳动的次数
	int total_pulse = row + col1 - 1 + col - 1;

top_outer_loop1:
	for (int i = 0; i < total_pulse; i++)
	{
	top_inner_loop1:
		for (int j = 0; j < SIDE_LEN; j++)
		{
			int a_index = j * col + i - j;
			int b_index = (i - j) * col1 + j;

			// 逐一获取脉动阵列输入向量的各个元�??
			a_vec[j] = (j < row && i - j >= 0 && i - j < col) ? din_a[a_index] : 0;
			b_vec[j] = (j < col1 && i - j >= 0 && i - j < col) ? din_b[b_index] : 0;
		}

		// 脉搏跳动
		systolic_matrix.pulse(a_vec, b_vec);
	}

	// 将脉动阵列计算结果拷贝到输出�??
	int ROW = ((int)row < SIDE_LEN) ? (int)row : SIDE_LEN;
	int COL = ((int)col1 < SIDE_LEN) ? (int)col1 : SIDE_LEN;

	for (int i = 0; i < ROW; i++)
	{
		for (int j = 0; j < COL; j++)
		{
			out[i * col1 + j] = systolic_matrix.pe[i][j].val + bias[i];
		}
	}
}
