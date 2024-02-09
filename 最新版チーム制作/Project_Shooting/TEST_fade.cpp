//=======================
//
//�t�F�[�h����:fade.cpp
//Author Kuramaesatoshi
//
//=======================
#include "TEST_fade.h"
#include "main.h"
#include "game.h"
#include"TEST_result.h"

//=======================
//�}�N����`
//=======================
#define FADECOLOR_A (1.0f)

//=======================
//�O���[�o���ϐ�
//=======================
LPDIRECT3DTEXTURE9 g_pTextureFade = NULL;
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffFade = NULL;

FADE g_fade;
float g_colorFade;
MODE g_modeNext;

//==============================
//����������
//==============================
void InitFade(void)
{
	LPDIRECT3DDEVICE9 pDevice;

	g_fade = FADE_NONE;
	//�f�o�C�X�̎擾
	pDevice = GetDevice();

	//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, "", &g_pTextureFade);

	//���_�o�b�t�@�̐���
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4, D3DUSAGE_WRITEONLY, FVF_VERTEX_2D, D3DPOOL_MANAGED, &g_pVtxBuffFade, NULL);

	VERTEX_2D* pVtx;

	g_colorFade = 0.0f;

	//���_�o�b�t�@�����b�N�����_�f�[�^�ւ̃|�C���^���擾
	g_pVtxBuffFade->Lock(0, 0, (void**)&pVtx, 0);


	//���_���W�̐ݒ�
	pVtx[0].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	pVtx[1].pos = D3DXVECTOR3(1280.0f, 0.0f, 0.0f);
	pVtx[2].pos = D3DXVECTOR3(0.0f, 720.0f, 0.0f);
	pVtx[3].pos = D3DXVECTOR3(1280.0f, 720.0f, 0.0f);

	//rhw�̐ݒ�
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;

	//���_�J���[�̐ݒ�
	pVtx[0].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, 0.0f);
	pVtx[1].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, 0.0f);
	pVtx[2].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, 0.0f);
	pVtx[3].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, 0.0f);


	//���_�o�b�t�@���A�����b�N����
	g_pVtxBuffFade->Unlock();
}

//========================
//�I������
//========================
void UninitFade(void)
{
	//�e�N�X�`���̔j��
	if (g_pTextureFade != NULL)
	{
		g_pTextureFade->Release();
		g_pTextureFade = NULL;
	}

	//���_�o�b�t�@�̔j��
	if (g_pVtxBuffFade != NULL)
	{
		g_pVtxBuffFade->Release();
		g_pVtxBuffFade = NULL;
	}
}

//==============================
//�X�V����
//==============================
void UpdateFade(void)
{
	VERTEX_2D* pVtx;
	//���_�o�b�t�@�����b�N�����_�f�[�^�ւ̃|�C���^���擾
	g_pVtxBuffFade->Lock(0, 0, (void**)&pVtx, 0);

	if (g_fade != FADE_NONE)
	{
		if (g_fade == FADE_IN)
		{//�t�F�[�h�C�����
			g_colorFade += 0.08f;		//�|���S���𓧖��ɂ��Ă���

			if (g_colorFade > 1.0f)
			{
				g_colorFade = 1.0f;
				g_fade = FADE_OUT;		//�������Ă��Ȃ���Ԃɂ���

				//���[�h�ݒ�
				SetMode(g_modeNext);
			}
		}
		else if (g_fade == FADE_OUT)
		{//�t�F�[�h�A�E�g���
			g_colorFade -= 0.05f;

			if (g_colorFade < 0.0f)
			{
				g_colorFade = 0.0f;
				g_fade = FADE_NONE;
			}
		}
	}

	//���_�J���[�̐ݒ�
	pVtx[0].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, g_colorFade);
	pVtx[1].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, g_colorFade);
	pVtx[2].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, g_colorFade);
	pVtx[3].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, g_colorFade);

	//���_�o�b�t�@���A�����b�N����
	g_pVtxBuffFade->Unlock();
}

//==============================
//�`�揈��
//==============================
void DrawFade(void)
{
	if (g_fade == FADE_NONE)
	{
		return;
	}

	LPDIRECT3DDEVICE9 pDevice;

	//�f�o�C�X�̎擾
	pDevice = GetDevice();

	//���_�o�b�t�@���f�[�^�X�g���[���ɐݒ�
	pDevice->SetStreamSource(0, g_pVtxBuffFade, 0, sizeof(VERTEX_2D));

	//���_�t�H�[�}�b�g�̐ݒ�
	pDevice->SetFVF(FVF_VERTEX_2D);

	//�e�N�X�`���̐ݒ�
	pDevice->SetTexture(0, g_pTextureFade);

	//�|���S���̕`��
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2);
}

//==============================
//Enter�L�[�������ꂽ��
//==============================
void SetFade(MODE modeNext)
{
	g_modeNext = modeNext;
	g_fade = FADE_IN;
}

//==============================
//�t�F�[�h�̃A���t�@�l�擾
//==============================
float GetFadeAlpha(void)
{
	return g_colorFade;
}
