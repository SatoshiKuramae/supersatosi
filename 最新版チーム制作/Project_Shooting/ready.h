//=====================================
//
//READY�}�[�N�\���p
//
//=====================================

#ifndef _READY_H_
#define _READY_H_

#include "main.h"

typedef struct
{
	D3DXVECTOR3 pos;		//�ʒu
	bool bUse;				//�g�p���Ă��邩�ǂ���
	int number;				//�ԍ��i1�`4�j
}Ready;

//�v���g�^�C�v�錾
void InitReady(void);
void UninitReady(void);
void UpdateReady(void);
void DrawReady(void);
void SetReady(D3DXVECTOR3 pos, int nNumber);
Ready* GetReady(void);
#endif // !_READY_H_

