//************************************************
//
// �I���W�i���G�t�F�N�g�A�w�b�_�t�@�C��[effect_hayu.h]
// Author�F���c����
//
//************************************************
#ifndef _EFFECT_HAYU_H_	// ���̃}�N����`���ߋ��ɂ���Ă��Ȃ�������1�x�̂݉��̏�����ʂ�
#define _EFFECT_HAYU_H_	// (��d�C���N���[�h�h�~�A�}�N����`����)

/*/ �C���N���[�h�t�@�C�� /*/
#include "main.h"

typedef enum
{
	styleHeart = 0,		// �n�[�g�F�_���[�W�I��
	styleDeath,			// ���F���V����
	Max_effectstyle
}EffectStyle;

// �G�t�F�N�g�p���
typedef struct
{
	bool use;				// �g�p�t���O
	int style;				// �X�^�C��
	D3DXVECTOR3* pPos;		// �Ώۈʒu
	D3DXVECTOR3 pos_moved;	// �ϓ��ʒu
	D3DXVECTOR3 pos;		// �ʒu
	D3DXVECTOR3 rot;		// ����
	D3DXVECTOR2 span;		// �傫���p
	float angle;			// �p�x
	float length;			// �Ίp���p
	D3DXCOLOR col;			// �F
	int remain;				// ����
	D3DXMATRIX mtxWorld;	// ���[���h�}�g���b�N�X
}Effect_Hayu;

//�v���g�^�C�v�錾
void InitEffect_Hayu(void);			// ����
void UninitEffect_Hayu(void);		// �j��
int CreateEffect_Hayu(int type,
	D3DXVECTOR3* pPos);				// ����
void UpdateEffect_Hayu(void);		// �X�V
void SetVtxEffect_Hayu(void);		// �W�J
void DeleteEffect_Hayu(int id);		// ����
void DrawEffect_Hayu(void);			// �`��

#endif