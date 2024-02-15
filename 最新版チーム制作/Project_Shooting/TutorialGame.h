//==========================================================
//
//�`���[�g���A�����̃Q�[����ʂ̕`�揈��[game.h]
//Author:kurasato
//
//==========================================================

#ifndef _TUTORIALGAME_H_
#define _TUTORIALGAME_H_

//include
#include "main.h"

//�}�N����`
#define MAX_ENEMY	(1024)		//�G�̍ő吔
#define MAX_PATHWORD	(128)	//�ő啶����
#define MAX_SYMBOL	(4)			//�C�R�[���Ȃǂ�ǂݍ��ޗp

////�G�̃p�����[�^�[�̍\����
//typedef struct
//{
//	D3DXVECTOR3 pos;	//�o���ʒu
//	D3DXVECTOR3 rot;	//�o������
//	int nStyle;			//�^�C�v
//	int nCntAppear;		//�o������
//	int nLife;			//���C�t
//}EnemyInfo;

//�v���g�^�C�v�錾
void InitTutorialGame(void);		//�Q�[����ʂ̏���������
void UninitTutorialGame(void);		//�Q�[����ʂ̏I������
void UpdateTutorialGame(void);		//�Q�[����ʂ̍X�V����
void UpdateTutorialGame(void);	//�`���[�g���A�����̃Q�[����ʃA�b�v�f�[�g
void DrawTutorialGame(void);		//�`���[�g���A�����̃Q�[����ʂ̕`�揈��
void DrawTutorialGame(void);		//�Q�[����ʂ̕`�揈��


#endif
