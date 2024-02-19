#include "TEST_tutorial.h"
#include "main.h"
#include "TEST_fade.h"
#include "input.h"
//#include "TEST_ready.h"

LPDIRECT3DTEXTURE9 g_pTextureTutorial[NUM_TUTORIAL_TEX] = {};
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffTutorial = NULL;
//NumPlayer g_NumPlayer;

Tutorial g_Tutorial[NUM_TUTORIAL_TEX];
bool buse;

D3DXVECTOR3 moveUI;	//�ړ���
//����������
void InitTutorial(void)
{
	LPDIRECT3DDEVICE9 pDevice;
	//�f�o�C�X�̎擾
	pDevice = GetDevice();
	//���_�o�b�t�@�̐���
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4 * NUM_TUTORIAL_TEX, D3DUSAGE_WRITEONLY, FVF_VERTEX_2D, D3DPOOL_MANAGED, &g_pVtxBuffTutorial, NULL);

	D3DXCreateTextureFromFile(pDevice, "data\\texture\\TEST_TEXTURE\\tutorial.png", &g_pTextureTutorial[0]);
	D3DXCreateTextureFromFile(pDevice, "data\\texture\\TEST_TEXTURE\\tutorial1.png", &g_pTextureTutorial[1]);
	D3DXCreateTextureFromFile(pDevice, "data\\texture\\TEST_TEXTURE\\tutorial2.png", &g_pTextureTutorial[2]);
	

	moveUI = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

	VERTEX_2D* pVtx;
	//���_�o�b�t�@�����b�N���A���_�f�[�^�ւ̃|�C���^���擾
	g_pVtxBuffTutorial->Lock(0, 0, (void**)&pVtx, 0);

	for (int nCnt = 0; nCnt < NUM_TUTORIAL_TEX; nCnt++)
	{
		g_Tutorial[nCnt].bUse = false;
		g_Tutorial[nCnt].pos = { 0.0f, 0.0f, 0.0f };

		pVtx[0].pos = D3DXVECTOR3(0.0f,0.0f,0.0f);
		pVtx[1].pos = D3DXVECTOR3(0.0f,0.0f,0.0f);
		pVtx[2].pos = D3DXVECTOR3(0.0f,0.0f,0.0f);
		pVtx[3].pos = D3DXVECTOR3(0.0f,0.0f,0.0f);

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

		pVtx += 4;
	}

	SetTutorial(D3DXVECTOR3(990.0f, 540.0f, 0.0f));
	SetTutorial(D3DXVECTOR3(-100.0f, 540.0f, 0.0f));
	SetTutorial(D3DXVECTOR3(-100.0f, 500.0f, 0.0f));

	//���_�o�b�t�@���A�����b�N
	g_pVtxBuffTutorial->Unlock();


}

//�I������
void UninitTutorial(void)
{
	for (int nCnt = 0; nCnt < NUM_TUTORIAL_TEX; nCnt++)
	{
		//�e�N�X�`���̔j��
		g_pTextureTutorial[nCnt]->Release();
		g_pTextureTutorial[nCnt] = NULL;
	}

	//���_�o�b�t�@�̔j��
	if (g_pVtxBuffTutorial != NULL)
	{
		g_pVtxBuffTutorial->Release();
		g_pVtxBuffTutorial = NULL;
	}
}

//�X�V����
void UpdateTutorial(void)
{
	if (GetKeyboardPress(DIK_L) == true)
	{
		if (g_Tutorial[1].pos.x < 990.0f)
		{
			g_Tutorial[1].pos.x += 5.0f;
		}
	}
	if (g_Tutorial[1].pos.x == 990.0f)
	{
		g_Tutorial[1].pos.y -= 5.0f;
		if (g_Tutorial[1].pos.y < 100.0f)
		{
			g_Tutorial[1].bUse = false;
		}
	}
	VERTEX_2D* pVtx;
	//���_�o�b�t�@�����b�N���A���_�f�[�^�ւ̃|�C���^���擾
	g_pVtxBuffTutorial->Lock(0, 0, (void**)&pVtx, 0);
	for (int nCnt = 0; nCnt < NUM_TUTORIAL_TEX; nCnt++)
	{
		pVtx[0].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);
		pVtx += 4;
	}


	//���_�o�b�t�@���A�����b�N
	g_pVtxBuffTutorial->Unlock();

	//�`���[�g���A���I���t���O
	if (GetKeyboardTrigger(DIK_RETURN) == true)
	{
		SetFade(MODE_GAME);
	}
}

//�`�揈��
void DrawTutorial(void)
{
	LPDIRECT3DDEVICE9 pDevice;

	//�f�o�C�X�̎擾
	pDevice = GetDevice();
	//���_�o�b�t�@���f�[�^�X�g���[���ɐݒ�
	pDevice->SetStreamSource(0, g_pVtxBuffTutorial, 0, sizeof(VERTEX_2D));
	//���_�t�H�[�}�b�g�̐ݒ�
	pDevice->SetFVF(FVF_VERTEX_2D);

	for (int i = 0; i < NUM_TUTORIAL_TEX; i++)
	{
		if (g_Tutorial[i].bUse == true)
		{
			//�e�N�X�`���̐ݒ�
			pDevice->SetTexture(0, g_pTextureTutorial[i]);

			pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, i * 4, 2);
		}
		
	}
}

//�z�u
void SetTutorial(D3DXVECTOR3 pos)
{
	VERTEX_2D* pVtx;
	//���_�o�b�t�@�����b�N���A���_�f�[�^�ւ̃|�C���^���擾
	g_pVtxBuffTutorial->Lock(0, 0, (void**)&pVtx, 0);

	for (int nCnt = 0; nCnt < NUM_TUTORIAL_TEX; nCnt++,pVtx += 4)
	{
		if (g_Tutorial[nCnt].bUse == false)
		{
			//���_���W�̐ݒ�
			g_Tutorial[nCnt].pos = pos;

			
			if (nCnt == 0)
			{
				g_Tutorial[nCnt].pSize1X = 990.0f;
				g_Tutorial[nCnt].pSize1Y = 540.0f;
				g_Tutorial[nCnt].pSizeX = 990.0f;
				g_Tutorial[nCnt].pSizeY = 540.0f;
			}
			else if (nCnt == 1)
			{
				g_Tutorial[nCnt].pSize1X = 400.0f;
				g_Tutorial[nCnt].pSize1Y = 100.0f;
				g_Tutorial[nCnt].pSizeX = 400.0f;
				g_Tutorial[nCnt].pSizeY = 100.0f;
			}
			else if (nCnt == 2)
			{
				g_Tutorial[nCnt].pSize1X = 400.0f;
				g_Tutorial[nCnt].pSize1Y = 100.0f;
				g_Tutorial[nCnt].pSizeX = 400.0f;
				g_Tutorial[nCnt].pSizeY = 100.0f;
			}

			pVtx[0].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
			pVtx[1].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
			pVtx[2].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);
			pVtx[3].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);

			g_Tutorial[nCnt].bUse = true;
			break;
		}
	}

	//���_�o�b�t�@���A�����b�N
	g_pVtxBuffTutorial->Unlock();
}


//UI���
Tutorial* GetTutorial(void)
{
	return g_Tutorial;
}

//�l���擾�i���j
//NumPlayer* GetNumPlayer(void)
//{
//	return &g_NumPlayer;
//}


