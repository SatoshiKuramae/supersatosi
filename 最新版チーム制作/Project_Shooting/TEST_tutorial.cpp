#include "TEST_tutorial.h"
#include "main.h"
#include "TEST_fade.h"
#include "input.h"


LPDIRECT3DTEXTURE9 g_pTextureTutorial[NUM_TUTORIAL_TEX] = {};
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffTutorial = NULL;
//NumPlayer g_NumPlayer;

Tutorial g_Tutorial[NUM_TUTORIAL_TEX];
bool buse;
bool UImove;
D3DXVECTOR3 moveUI;	//移動量
//初期化処理
void InitTutorial(void)
{
	UImove = false;
	LPDIRECT3DDEVICE9 pDevice;
	//デバイスの取得
	pDevice = GetDevice();
	//頂点バッファの生成
	pDevice->CreateVertexBuffer(sizeof(VERTEX_2D) * 4 * NUM_TUTORIAL_TEX, D3DUSAGE_WRITEONLY, FVF_VERTEX_2D, D3DPOOL_MANAGED, &g_pVtxBuffTutorial, NULL);

	D3DXCreateTextureFromFile(pDevice, "data\\texture\\TEST_TEXTURE\\tutorial.png", &g_pTextureTutorial[0]);
	D3DXCreateTextureFromFile(pDevice, "data\\texture\\TEST_TEXTURE\\tutorial1.png", &g_pTextureTutorial[1]);
	D3DXCreateTextureFromFile(pDevice, "data\\texture\\TEST_TEXTURE\\tutorial2.png", &g_pTextureTutorial[2]);
	

	moveUI = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

	VERTEX_2D* pVtx;
	//頂点バッファをロックし、頂点データへのポインタを取得
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
	SetTutorial(D3DXVECTOR3(-580.0f, 540.0f, 0.0f));
	SetTutorial(D3DXVECTOR3(2480.0f, 540.0f, 0.0f));

	//頂点バッファをアンロック
	g_pVtxBuffTutorial->Unlock();


}

//終了処理
void UninitTutorial(void)
{
	for (int nCnt = 0; nCnt < NUM_TUTORIAL_TEX; nCnt++)
	{
		//テクスチャの破棄
		g_pTextureTutorial[nCnt]->Release();
		g_pTextureTutorial[nCnt] = NULL;
	}

	//頂点バッファの破棄
	if (g_pVtxBuffTutorial != NULL)
	{
		g_pVtxBuffTutorial->Release();
		g_pVtxBuffTutorial = NULL;
	}
}

//更新処理
void UpdateTutorial(void)
{
	//仮動作
	if (g_Tutorial[1].bUse==true)
	{
		if (g_Tutorial[1].pos.x < 500.0f)
		{
			g_Tutorial[1].pos.x += 5.0f;
			
		}
		if (GetKeyboardTrigger(DIK_A)==true)
		{
			UImove = true;
		}
		if (UImove == true)
		{
			g_Tutorial[1].pos.y -= 5.0f;
			
		}
		if (g_Tutorial[1].pos.y < 100.0f)
		{
			g_Tutorial[1].bUse = false;
			
		}
	}
	if (g_Tutorial[2].bUse == true)
	{
		if (g_Tutorial[2].pos.x > 1415.0f)
		{
			g_Tutorial[2].pos.x -= 5.0f;

		}
		if (GetKeyboardTrigger(DIK_A) == true)
		{
			UImove = true;
		}
		if (UImove == true)
		{
			g_Tutorial[2].pos.y -= 5.0f;

		}
		if (g_Tutorial[2].pos.y < 100.0f)
		{
			g_Tutorial[2].bUse = false;

		}
	}
	
	VERTEX_2D* pVtx;
	//頂点バッファをロックし、頂点データへのポインタを取得
	g_pVtxBuffTutorial->Lock(0, 0, (void**)&pVtx, 0);
	for (int nCnt = 0; nCnt < NUM_TUTORIAL_TEX; nCnt++)
	{
		pVtx[0].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);
		pVtx += 4;
	}


	//頂点バッファをアンロック
	g_pVtxBuffTutorial->Unlock();

	//チュートリアル終了フラグ
	if (g_Tutorial[1].bUse == false)
	{
		if (GetKeyboardTrigger(DIK_RETURN) == true)
		{
			SetFade(MODE_GAME);
		}
	}
}

//描画処理
void DrawTutorial(void)
{
	LPDIRECT3DDEVICE9 pDevice;

	//デバイスの取得
	pDevice = GetDevice();
	//頂点バッファをデータストリームに設定
	pDevice->SetStreamSource(0, g_pVtxBuffTutorial, 0, sizeof(VERTEX_2D));
	//頂点フォーマットの設定
	pDevice->SetFVF(FVF_VERTEX_2D);

	for (int i = 0; i < NUM_TUTORIAL_TEX; i++)
	{
		if (g_Tutorial[i].bUse == true)
		{
			//テクスチャの設定
			pDevice->SetTexture(0, g_pTextureTutorial[i]);

			pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, i * 4, 2);
		}
		
	}
}

//配置
void SetTutorial(D3DXVECTOR3 pos)
{
	VERTEX_2D* pVtx;
	//頂点バッファをロックし、頂点データへのポインタを取得
	g_pVtxBuffTutorial->Lock(0, 0, (void**)&pVtx, 0);

	for (int nCnt = 0; nCnt < NUM_TUTORIAL_TEX; nCnt++,pVtx += 4)
	{
		if (g_Tutorial[nCnt].bUse == false)
		{
			//頂点座標の設定
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
				g_Tutorial[nCnt].pSize1X = 350.0f;
				g_Tutorial[nCnt].pSize1Y = 120.0f;
				g_Tutorial[nCnt].pSizeX = 350.0f;
				g_Tutorial[nCnt].pSizeY = 120.0f;
			}
			else if (nCnt == 2)
			{
				g_Tutorial[nCnt].pSize1X = 350.0f;
				g_Tutorial[nCnt].pSize1Y = 120.0f;
				g_Tutorial[nCnt].pSizeX = 350.0f;
				g_Tutorial[nCnt].pSizeY = 120.0f;
			}

			pVtx[0].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
			pVtx[1].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y - g_Tutorial[nCnt].pSize1Y, 0.0f);
			pVtx[2].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x - g_Tutorial[nCnt].pSize1X, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);
			pVtx[3].pos = D3DXVECTOR3(g_Tutorial[nCnt].pos.x + g_Tutorial[nCnt].pSizeX, g_Tutorial[nCnt].pos.y + g_Tutorial[nCnt].pSizeY, 0.0f);

			g_Tutorial[nCnt].bUse = true;
			break;
		}
	}

	//頂点バッファをアンロック
	g_pVtxBuffTutorial->Unlock();
}


//UI情報
Tutorial* GetTutorial(void)
{
	return g_Tutorial;
}



