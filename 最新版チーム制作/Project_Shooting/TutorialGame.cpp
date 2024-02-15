//==========================================================
//
//�`���[�g���A�����̃Q�[����ʂ̕`�揈��[game.cpp]
//Author:kasai keisuke, ���c����,satokurara
//
//==========================================================

/* �C���N���[�h�t�@�C�� */
#include "game.h"
// ����
#include "input.h"
#include "main.h"
#include "sound.h"
// ������
#include "boss.h"
#include "bullet.h"
#include "camera.h"
#include "effect.h"
#include "effect_hayu.h"
#include "effect_sand.h"
#include "enemy.h"
#include "explosion.h"
#include "item.h"
#include "light.h"
#include "object.h"
#include "player.h"
#include "reticle.h"
#include "sea.h"
#include "sky.h"
#include "TEST_tutorial.h"
#include "TutorialGame.h"
// �f�o�b�O��
#ifdef _DEBUG
#include "debugproc.h"
#include "editcamera.h"
#include "TEST.h"
#include "visible_sph.h"
#include <assert.h>
#endif	// _DEBUG

/*/ �}�N����` /*/
#define JOIN_VERIFY 4	// �l���w��

/*/ �O���[�o���ϐ� /*/
int g_AmountPlayer_Tuto = JOIN_VERIFY;	// �v���C�l���i�[
bool g_LayoutEdit_Tuto = false;			// �z�u�ҏW���[�h�p�t���O
int g_nCnt_Tuto = 0;						//�f�o�b�N�p�ϐ�(�R���g���[�������m�F�p)

//=======================================================================
//�Q�[����ʂ̏���������
//=======================================================================
void InitTutorialGame(void)
{
#ifndef JOIN_VERIFY

	// �l���w�肪������ΌŒ�
	g_AmountPlayer_Tuto = 1;

#endif	// JOIN_VERIFY

	//�e��ϐ��̏�����
	g_LayoutEdit_Tuto = false;	// �z�u�ҏW���[�h���I�t
	g_nCnt_Tuto = 0;				//�f�o�b�N�p�ϐ�(�R���g���[�������m�F�p)�̏�����
	

#ifdef _DEBUG

	// �l�������������ƏI��
	assert(g_AmountPlayer_Tuto > 0 && g_AmountPlayer_Tuto <= 4);

	// �ҏW�J�����̏���
	InitEditCamera();

	// �e�X�g�p�̏���
	InitTEST(g_AmountPlayer_Tuto);

	// ���̔����������
	InitVisibleSph();

#endif	// _DEBUG

	//�{�X�̏���������
	InitBoss();

	// �e�̏���
	InitBullet();

	// �J�����̏���
	InitCamera(g_AmountPlayer_Tuto);

	//�G�t�F�N�g�̏���������
	InitEffect();

	// Hayu�G�t�F�N�g�̏���
	InitEffect_Hayu();

	// ���̃G�t�F�N�g�̏���
	InitEffectSand();

	// �G�̏���
	InitEnemy();

	// �����̏���
	InitExplosion();

	// �A�C�e���̏���
	InitItem();

	// ���C�g�̏���
	InitLight();

	// ���̏���
	InitObject();

	// ���e�B�N���̏����F�v���C���[�������
	InitReticle();

	// �v���C���[�̏���
	InitPlayer();

	// �C�̏���
	InitSea();

	// ��̏���
	InitSky();
}

//=======================================================================
//�Q�[����ʂ̏I������
//=======================================================================
void UninitTutorialGame(void)
{
#ifdef _DEBUG

	// �e�X�g�p�̏I��
	UninitTEST();

	// ���̔�������I��
	UninitVisibleSph();

#endif	// _DEBUG

	//�{�X�̏I������
	UninitBoss();

	// �e�̏I��
	UninitBullet();

	//�G�t�F�N�g�̏I������
	UninitEffect();

	// Hayu�G�t�F�N�g�̏I��
	UninitEffect_Hayu();

	// ���̃G�t�F�N�g�̏I��
	UninitEffectSand();

	// �G�̏I��
	UninitEnemy();

	// �����̏I��
	UninitExplosion();

	// �A�C�e���̏I��
	UninitItem();

	// ���̏I��
	UninitObject();

	// �v���C���[�̏I��
	UninitPlayer();

	// ���e�B�N���̏I��
	UninitReticle();

	// �C�̏I��
	UninitSea();

	// ��̏I��
	UninitSky();
}

//======================================================================
//�`���[�g���A�����̃Q�[���X�V����
//======================================================================
void UpdateTutorialGame(void)
{

#if defined (_DEBUG)

	// �z�u�ҏW���[�h�؂�ւ�
	if (GetKeyboardTrigger(DIK_F2))
	{
		g_LayoutEdit_Tuto = !g_LayoutEdit_Tuto;
	}

	if (!g_LayoutEdit_Tuto)
	{ // �z�u�ҏW���[�h�łȂ��Ƃ��̂�
		// �Q���l���𒼐ڕύX
		if (GetKeyboardTrigger(DIK_LBRACKET))
		{
			g_AmountPlayer_Tuto < 4 ? g_AmountPlayer_Tuto++ : g_AmountPlayer_Tuto = 1;
		}
		else if (GetKeyboardTrigger(DIK_RBRACKET))
		{
			g_AmountPlayer_Tuto > 1 ? g_AmountPlayer_Tuto-- : g_AmountPlayer_Tuto = 4;
		}
	}

	//// �f�o�b�O�\���̍X�V(�z�z)
	//UpdateDebugProc();

	// �J���� or �ҏW�J�����̍X�V
	g_LayoutEdit_Tuto ? UpdateEditCamera() : UpdateCamera(g_AmountPlayer_Tuto);




#endif	// _DEBUG

#ifndef _DEBUG

	// �J�����̍X�V
	UpdateCamera(g_AmountPlayer_Tuto);

#endif // _DEBUG �����[�X

	// �󋵂ɉ����ĕ��̍X�V
	UpdateObject(g_LayoutEdit_Tuto);

	if (!g_LayoutEdit_Tuto)
	{
		UpdateTutorial();
		// �e�X�g�p�̍X�V
		UpdateTEST(g_AmountPlayer_Tuto);

		//�A�C�e���̍X�V
		UpdateItem();

		// ���C�g�̍X�V
		UpdateLight();

		// �v���C���[�̍X�V
		UpdatePlayer(g_AmountPlayer_Tuto);

		// �e�̍X�V
		UpdateBullet();

		//�G�t�F�N�g�̍X�V����
		UpdateEffect();

		// Hayu�G�t�F�N�g�̍X�V
		UpdateEffect_Hayu();

		// �����̍X�V
		UpdateExplosion();

		// ���̃G�t�F�N�g�̍X�V
		UpdateEffectSand();

		// �C�̍X�V
		UpdateSea();

		// ��̍X�V
		UpdateSky();

#ifdef _DEBUG	

		// ���̔�������X�V
		UpdateVisibleSph();

#endif // _DEBUG �����ꂱ���ɒu������
	}
}

//=======================================================================
//�`���[�g���A�����̃Q�[����ʂ̕`�揈��
//=======================================================================
void DrawTutorialGame(void)
{
	// ���[�v��
	int Loop = 0;

	// �z�u�ҏW���[�h�ł���Η]���ȕ`���}��
	g_LayoutEdit_Tuto ? Loop = 1 : Loop = g_AmountPlayer_Tuto;

	for (int i = 0; i < Loop; i++)
	{
#ifdef _DEBUG

		// �J���� or �ҏW�J�����̐ݒ�
		g_LayoutEdit_Tuto ? SetInfoEditCamera() : SetInfoCamera(i, g_AmountPlayer_Tuto);

#else

		// �J�����̐ݒ�
		SetInfoCamera(i, g_AmountPlayer_Tuto);

#endif	// _DEBUG �����[�X

		//UI�`��
		DrawTutorial();

		// ��̕`��
		DrawSky();

		// �C�̕`��
		DrawSea();

		// �󋵂ɉ����ĕ��̕`��
		DrawObject(g_LayoutEdit_Tuto);

		// ���̃G�t�F�N�g�̕`��
		DrawEffectSand();

		// Hayu�G�t�F�N�g�̕`��
		DrawEffect_Hayu();

		//�G�t�F�N�g�̕`��
		DrawEffect();

		// �����̕`��
		DrawExplosion();

		// ���e�B�N���̕`��
		DrawReticle(i);

		// �e�̕`��
		DrawBullet();

		// �A�C�e���̕`��
		DrawItem();

		// �v���C���[�̕`��
		DrawPlayer();

#ifdef _DEBUG

		// ���̔�������`��
		DrawVisibleSph();

#endif	// _DEBUG
	}

	// UI�p�|�[�g�̐ݒ�
	SetInfoUIport();

	/*---�y�Q�[����UI�̕\���͂������牺�ōs���܂��z---*/

#ifdef _DEBUG

	// �e�X�g�p�̕`��
	if (!g_LayoutEdit_Tuto)
	{
		//DrawTEST();	//!< UI�n�̓|�[�g�ݒ肳��Ă��Ȃ��͈͂̕`��͍s���܂���B�͂ݏo��悤�Ȃ�V���Ƀ|�[�g�ݒ��ǉ����Ă��������B
	}

	//// �f�o�b�O�p�\���̕`��(�z�z)
	//DrawDebugProc();

#endif	// _DEBUG
}

/*---�y�ȉ��Q�[�����[�v�O�z---*/

