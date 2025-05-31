#include <iostream>
#include <cmath>
#include <string.h>
#include "rnn.h"
#include "weight.h"

// �����������ĳ˷�
#define gemvm(res, a, b, row, col) \
{ \
	std::fill_n(res, row, 0.0); \
	for (int r = 0; r < row; r++) \
		for (int c = 0; c < col; c++) \
			res[r] += a[r][c] * b[c]; \
}

// ������sigmoid����
inline void sigmoid(float* res, float* a, int size)
{
	// ������������a��sigmoid����ֵ
	// �������洢������res��
	// TODO:

}

// ������tanh����
inline void tanh(float* res, float* a, int size)
{
	// ������������a��˫�����к���ֵ
	// �������洢������res��
	// TODO:

}

// �����ӷ�
inline void geva(float* res, float* a, int size)
{
	// ������res������a���
	// �������洢������res��
	// TODO:

}

// ������Hadamard��
inline void hprod(float* res, float* a, float* b, int size)
{
	// ��������a������b��Hadamard��
	// �������洢������res��
	// TODO:
	
}

// RNNǰ���Ƶ�(�����->LSTM->���Է�����)
#if CSIM_ON == 1
int infer(float input[IMG_SIZE])
#else
void infer(float input[IMG_SIZE], float res[CLASS_NUM])
#endif
{
	float gate_f[HIDDEN_DIM] = { 0.0 };		// LSTM cell�������ſ�������
	float gate_i[HIDDEN_DIM] = { 0.0 };		// LSTM cell�������ſ�������
	float stat_C[HIDDEN_DIM] = { 0.0 };		// LSTM cell����״̬
	float C_t[HIDDEN_DIM] = { 0.0 };		// LSTM cell��״̬
	float gate_o[HIDDEN_DIM] = { 0.0 };		// LSTM cell������ſ�������
	float h_t[HIDDEN_DIM] = { 0.0 };		// LSTM cell�����

	float vec_i[INPUT_DIM + HIDDEN_DIM];	// LSTM cell����������[x(t), h0(t-1)]
	float vec_tmp[HIDDEN_DIM];				// �м����

	// �����->���ز�(LSTM cell)
	for (int i = 0; i < INPUT_DIM; i++)
	{
		/*
		 * ͷ�ļ�weight.h�д洢��RNN�����Ȩֵ��ƫ��, �������¼���FP32����:
		 *
		 * 1. LSTM cell�����ŵ�Ȩֵ��ƫ��:
		 *   float Weight0_f[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_f[HIDDEN_DIM];
		 *
		 * 2. LSTM cell�����ŵ�Ȩֵ��ƫ��:
		 *   float Weight0_i[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_i[HIDDEN_DIM];
		 *
		 * 3. LSTM cell�����Ų����ĺ�ѡ״̬��Ȩֵ��ƫ��:
		 *   float Weight0_c[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_c[HIDDEN_DIM];
		 *
		 * 4. LSTM cell����ŵ�Ȩֵ��ƫ��:
		 *   float Weight0_o[HIDDEN_DIM][INPUT_DIM + HIDDEN_DIM];
		 *   float Bias0_o[HIDDEN_DIM];
		 *
		 * 5. ��������Է�������Ȩֵ��ƫ��:
		 *   float Weight_lc[CLASS_NUM][HIDDEN_DIM];
		 *   float Bias_lc[CLASS_NUM];
		 * */

		// ����LSTM cell0����������
		for (int j = 0; j < INPUT_DIM; j++)		vec_i[j] = input[i * INPUT_DIM + j];
		for (int j = 0; j < HIDDEN_DIM; j++)	vec_i[INPUT_DIM + j] = h_t[j];

		/*
		 * 1. ����LSTM cell�������ſ�������.
		 * */
		// TODO:


		/*
		 * 2. ����LSTM cell�������ſ�������.
		 * */
		// TODO:


		/*
		 * 3. ����LSTM cell�����Ų����ĺ�ѡ״̬����.
		 * */
		// TODO:


		/*
		 * 4. ����LSTM cell������ſ�������.
		 * */
		// TODO:


		/*
		 * 5. ����LSTM cell����״̬.
		 * */
		// TODO:


		/*
		 * 6. ����LSTM cell�����.
		 * */
		// TODO:

	}

#if CSIM_ON == 1
	float res[CLASS_NUM];
#endif

	// ���ز�(LSTM cell)->�����(���Է�����)
	gemvm(res, Weight_lc, h_t, CLASS_NUM, HIDDEN_DIM);
	geva(res, Bias_lc, CLASS_NUM);

#if CSIM_ON == 1
	int label = 0;
	for (int i = 1; i < CLASS_NUM; i++)
		if (res[i] > res[label]) label = i;

	return label;
#endif
}
