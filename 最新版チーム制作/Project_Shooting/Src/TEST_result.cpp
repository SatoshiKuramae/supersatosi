//=======================
//
//���U���g��ʕ\������:result.cpp
//Author Kuramaesatoshi
//
//=======================
#include "input.h"
#include "main.h"
#include "TEST_fade.h"


#define NUM_RESULT (2)
//�O���[�o���ϐ�
LPDIRECT3DTEXTURE9 g_pTextureResult = NULL;
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffResult = NULL;

typedef struct
{
	D3DXVECTOR3 pos;		//�ʒu
	bool bUse;				//�g�p���Ă��邩�ǂ���
}Result;

Result g_Result[NUM_RESULT];

//==============================
//�^�C�g����ʂ̏���������
//==============================
void InitResult(void)
{

	LPDIRECT3DDEVICE9 pDevice;
	int nCntResult;
	//�f�o�C�X�̎擾
	pDevice = GetDevice();
	//���_�o�b�t�@�̐���
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4, D3DUSAGE_WRITEONLY, FVF_VERTEX_2D, D3DPOOL_MANAGED, &g_pVtxBuffResult, NULL);
	//�e�N�X�`���̓ǂݍ���
	D3DXCreateTextureFromFile(pDevice, "data\\TEXTURE\\result.png", &g_pTextureResult);

	VERTEX_2D* pVtx;
	//���_�o�b�t�@�����b�N���A���_�f�[�^�ւ̃|�C���^���擾
	g_pVtxBuffResult->Lock(0, 0, (void**)&pVtx, 0);

	for (nCntResult = 0; nCntResult < NUM_RESULT; nCntResult++)
	{
		//���_���W�̐ݒ�
		pVtx[0].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(1280.0f, 0.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(0.0f, 730.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(1280.0f, 730.0f, 0.0f);

		pVtx[0].rhw = 1.0f;
		pVtx[1].rhw = 1.0f;
		pVtx[2].rhw = 1.0f;
		pVtx[3].rhw = 1.0f;

		pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
		pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
		pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
		pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);

		pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

		//pVtx += 4;
	}

	//���_�o�b�t�@���A�����b�N
	g_pVtxBuffResult->Unlock();
}

//===============================
//�^�C�g����ʂ̏I������
//===============================
void UninitResult(void)
{

	//�e�N�X�`���̔j��
	if (g_pTextureResult != NULL)
	{
		g_pTextureResult->Release();
		g_pTextureResult = NULL;
	}
	//���_�o�b�t�@�̔j��
	if (g_pVtxBuffResult != NULL)
	{
		g_pVtxBuffResult->Release();
		g_pVtxBuffResult = NULL;
	}

}

//==========================
//�^�C�g����ʂ̍X�V����
//==========================
void UpdateResult(void)
{
	if (GetKeyboardTrigger(DIK_RETURN) == true)
	{//����L�[�iEnter�L�[�j�������ꂽ
		//���[�h�̐ݒ�(�Q�[����ʂɈڍs)
	/*	PlaySound(SOUND_LABEL_DICISION2);*/
		SetFade(MODE_TITLE);
	}
}

//======================
//�^�C�g����ʂ̕`�揈��
//======================
void DrawResult(void)
{
	LPDIRECT3DDEVICE9 pDevice;

	//�f�o�C�X�̎擾
	pDevice = GetDevice();
	//���_�o�b�t�@���f�[�^�X�g���[���ɐݒ�
	pDevice->SetStreamSource(0, g_pVtxBuffResult, 0, sizeof(VERTEX_2D));
	//���_�t�H�[�}�b�g�̐ݒ�
	pDevice->SetFVF(FVF_VERTEX_2D);

	//�e�N�X�`���̐ݒ�
	pDevice->SetTexture(0, g_pTextureResult);

	//�|���S���̕`��
	pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, 0, 2);

}
