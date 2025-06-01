#include <iostream>
#include <cmath>
#include <string.h>
#include "rnn.h"
#include "weight.h"

// ????????
#define gemvm(res, a, b, row, col)  \
	{                                 \
		std::fill_n(res, row, 0.0);     \
		for (int r = 0; r < row; r++)   \
			for (int c = 0; c < col; c++) \
				res[r] += a[r][c] * b[c];   \
	}

// ???sigmoid??
inline void sigmoid(float *res, float *a, int size)
{
	// ??????a?sigmoid????
	// ?????????res??
	for (int i = 0; i < size; i++)
	{
		res[i] = 1.0 / (1.0 + exp(-a[i]));
	}
}

// ???tanh??
inline void tanh(float *res, float *a, int size)
{
	// ??????a??????????
	// ?????????res??
	for (int i = 0; i < size; i++)
	{
		res[i] = std::tanh(a[i]);
	}
}

// ????
inline void geva(float *res, float *a, int size)
{
	// ???res???a??
	// ?????????res??
	for (int i = 0; i < size; i++)
	{
		res[i] += a[i];
	}
}

// ???Hadamard??
inline void hprod(float *res, float *a, float *b, int size)
{
	// ????a???b?Hadamard??
	// ?????????res??
	for (int i = 0; i < size; i++)
	{
		res[i] = a[i] * b[i];
	}
}

// RNN前向传播(输入层->LSTM->输出层/分类器)
#if CSIM_ON == 1
int infer(float input[IMG_SIZE])
#else
void infer(float input[IMG_SIZE], float res[CLASS_NUM])
#endif
{
    // 为关键数组添加LUTRAM指令，减少BRAM使用
    float gate_f[HIDDEN_DIM] = {0.0}; // LSTM cell的遗忘门
    float gate_i[HIDDEN_DIM] = {0.0}; // LSTM cell的输入门
    float stat_C[HIDDEN_DIM] = {0.0}; // LSTM cell的候选态
    float C_t[HIDDEN_DIM] = {0.0};    // LSTM cell的状态
    float gate_o[HIDDEN_DIM] = {0.0}; // LSTM cell的输出门
    float h_t[HIDDEN_DIM] = {0.0};    // LSTM cell的输出
    
    #pragma HLS RESOURCE variable=gate_f core=RAM_2P_LUTRAM
    #pragma HLS RESOURCE variable=gate_i core=RAM_2P_LUTRAM
    #pragma HLS RESOURCE variable=gate_o core=RAM_2P_LUTRAM
    #pragma HLS RESOURCE variable=h_t core=RAM_2P_LUTRAM

    float vec_i[INPUT_DIM + HIDDEN_DIM]; // LSTM cell的输入向量[x(t), h0(t-1)]
    float vec_tmp[HIDDEN_DIM];           // 临时向量
    
    #pragma HLS RESOURCE variable=vec_tmp core=RAM_2P_LUTRAM

    // 输入层->隐藏层(LSTM cell)
    for (int i = 0; i < INPUT_DIM; i++)
    {
		/*
		 * ???weight.h????RNN????????, ??????FP32??:
		 *
		 * 1. LSTM cell???????????:
		 *   float Weight0_f[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_f[HIDDEN_DIM];
		 *
		 * 2. LSTM cell???????????:
		 *   float Weight0_i[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_i[HIDDEN_DIM];
		 *
		 * 3. LSTM cell????????????????????:
		 *   float Weight0_c[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_c[HIDDEN_DIM];
		 *
		 * 4. LSTM cell???????????:
		 *   float Weight0_o[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_o[HIDDEN_DIM];
		 *
		 * 5. ??????????????:
		 *   float Weight_lc[CLASS_NUM][HIDDEN_DIM];
		 *   float Bias_lc[CLASS_NUM];
		 * */

		// ????LSTM cell0??????
		for (int j = 0; j < INPUT_DIM; j++)
			vec_i[j] = input[i * INPUT_DIM + j];
		for (int j = 0; j < HIDDEN_DIM; j++)
			vec_i[INPUT_DIM + j] = h_t[j];

		/*
		 * 1. ??LSTM cell????????.
		 * */
		gemvm(vec_tmp, Weight0_f, vec_i, HIDDEN_DIM, INPUT_DIM + HIDDEN_DIM);
		geva(vec_tmp, Bias0_f, HIDDEN_DIM);
		sigmoid(gate_f, vec_tmp, HIDDEN_DIM);

		/*
		 * 2. ??LSTM cell????????.
		 * */
		gemvm(vec_tmp, Weight0_i, vec_i, HIDDEN_DIM, INPUT_DIM + HIDDEN_DIM);
		geva(vec_tmp, Bias0_i, HIDDEN_DIM);
		sigmoid(gate_i, vec_tmp, HIDDEN_DIM);

		/*
		 * 3. ??LSTM cell???????????????.
		 * */
		gemvm(vec_tmp, Weight0_c, vec_i, HIDDEN_DIM, INPUT_DIM + HIDDEN_DIM);
		geva(vec_tmp, Bias0_c, HIDDEN_DIM);
		tanh(stat_C, vec_tmp, HIDDEN_DIM);

		/*
		 * 4. ??LSTM cell????????.
		 * */
		gemvm(vec_tmp, Weight0_o, vec_i, HIDDEN_DIM, INPUT_DIM + HIDDEN_DIM);
		geva(vec_tmp, Bias0_o, HIDDEN_DIM);
		sigmoid(gate_o, vec_tmp, HIDDEN_DIM);

		/*
		 * 5. ??LSTM cell??????.
		 * */
		hprod(vec_tmp, gate_f, C_t, HIDDEN_DIM); // f_t * C_{t-1}
		hprod(C_t, gate_i, stat_C, HIDDEN_DIM);	 // i_t * C?_t
		geva(C_t, vec_tmp, HIDDEN_DIM);					 // C_t = f_t * C_{t-1} + i_t * C?_t

		/*
		 * 6. ??LSTM cell????.
		 * */
		tanh(vec_tmp, C_t, HIDDEN_DIM);					 // tanh(C_t)
		hprod(h_t, gate_o, vec_tmp, HIDDEN_DIM); // h_t = o_t * tanh(C_t)
	}

#if CSIM_ON == 1
    float res[CLASS_NUM];
    #pragma HLS RESOURCE variable=res core=RAM_2P_LUTRAM
#endif

    // 隐藏层(LSTM cell)->输出层(分类器/全连接)
    gemvm(res, Weight_lc, h_t, CLASS_NUM, HIDDEN_DIM);
    geva(res, Bias_lc, CLASS_NUM);

#if CSIM_ON == 1
    int label = 0;
    for (int i = 1; i < CLASS_NUM; i++)
        if (res[i] > res[label])
            label = i;

    return label;
#endif
}
