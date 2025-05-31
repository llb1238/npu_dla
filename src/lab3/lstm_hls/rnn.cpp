#include <iostream>
#include <cmath>
#include <string.h>
#include "rnn.h"
#include "weight.h"

// 矩阵与向量的乘法
#define gemvm(res, a, b, row, col) \
{ \
	std::fill_n(res, row, 0.0); \
	for (int r = 0; r < row; r++) \
		for (int c = 0; c < col; c++) \
			res[r] += a[r][c] * b[c]; \
}

// 向量的sigmoid函数
inline void sigmoid(float* res, float* a, int size)
{
	// 计算输入向量a的sigmoid函数值
	// 计算结果存储到向量res中
	// TODO:

}

// 向量的tanh函数
inline void tanh(float* res, float* a, int size)
{
	// 计算输入向量a的双曲正切函数值
	// 计算结果存储到向量res中
	// TODO:

}

// 向量加法
inline void geva(float* res, float* a, int size)
{
	// 将向量res和向量a相加
	// 计算结果存储到向量res中
	// TODO:

}

// 向量的Hadamard积
inline void hprod(float* res, float* a, float* b, int size)
{
	// 计算向量a和向量b的Hadamard积
	// 计算结果存储到向量res中
	// TODO:
	
}

// RNN前向推导(输入层->LSTM->线性分类器)
#if CSIM_ON == 1
int infer(float input[IMG_SIZE])
#else
void infer(float input[IMG_SIZE], float res[CLASS_NUM])
#endif
{
	float gate_f[HIDDEN_DIM] = { 0.0 };		// LSTM cell的遗忘门控制向量
	float gate_i[HIDDEN_DIM] = { 0.0 };		// LSTM cell的输入门控制向量
	float stat_C[HIDDEN_DIM] = { 0.0 };		// LSTM cell的新状态
	float C_t[HIDDEN_DIM] = { 0.0 };		// LSTM cell的状态
	float gate_o[HIDDEN_DIM] = { 0.0 };		// LSTM cell的输出门控制向量
	float h_t[HIDDEN_DIM] = { 0.0 };		// LSTM cell的输出

	float vec_i[INPUT_DIM + HIDDEN_DIM];	// LSTM cell的输入向量[x(t), h0(t-1)]
	float vec_tmp[HIDDEN_DIM];				// 中间变量

	// 输入层->隐藏层(LSTM cell)
	for (int i = 0; i < INPUT_DIM; i++)
	{
		/*
		 * 头文件weight.h中存储了RNN网络的权值和偏置, 包含以下几个FP32数组:
		 *
		 * 1. LSTM cell遗忘门的权值和偏置:
		 *   float Weight0_f[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_f[HIDDEN_DIM];
		 *
		 * 2. LSTM cell输入门的权值与偏置:
		 *   float Weight0_i[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_i[HIDDEN_DIM];
		 *
		 * 3. LSTM cell输入门产生的候选状态的权值与偏置:
		 *   float Weight0_c[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_c[HIDDEN_DIM];
		 *
		 * 4. LSTM cell输出门的权值和偏置:
		 *   float Weight0_o[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_o[HIDDEN_DIM];
		 *
		 * 5. 输出层线性分类器的权值和偏置:
		 *   float Weight_lc[CLASS_NUM][HIDDEN_DIM];
		 *   float Bias_lc[CLASS_NUM];
		 * */

		// 构造LSTM cell0的输入向量
		for (int j = 0; j < INPUT_DIM; j++)		vec_i[j] = input[i * INPUT_DIM + j];
		for (int j = 0; j < HIDDEN_DIM; j++)	vec_i[INPUT_DIM + j] = h_t[j];

		/*
		 * 1. 计算LSTM cell的遗忘门控制向量.
		 * */
		// TODO:


		/*
		 * 2. 计算LSTM cell的输入门控制向量.
		 * */
		// TODO:


		/*
		 * 3. 计算LSTM cell输入门产生的候选状态向量.
		 * */
		// TODO:


		/*
		 * 4. 计算LSTM cell的输出门控制向量.
		 * */
		// TODO:


		/*
		 * 5. 计算LSTM cell的新状态.
		 * */
		// TODO:


		/*
		 * 6. 计算LSTM cell的输出.
		 * */
		// TODO:

	}

#if CSIM_ON == 1
	float res[CLASS_NUM];
#endif

	// 隐藏层(LSTM cell)->输出层(线性分类器)
	gemvm(res, Weight_lc, h_t, CLASS_NUM, HIDDEN_DIM);
	geva(res, Bias_lc, CLASS_NUM);

#if CSIM_ON == 1
	int label = 0;
	for (int i = 1; i < CLASS_NUM; i++)
		if (res[i] > res[label]) label = i;

	return label;
#endif
}
