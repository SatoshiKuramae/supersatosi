//************************************************
//
// オリジナルエフェクト[effect_hayu.cpp]
// Author：福田歩希
//
//************************************************

/*/ インクルードファイル /*/
#include "effect_hayu.h"
// 中枢
#include "sound.h"
// 諸処理
#include "game.h"
#include "player.h"
// デバッグ用
#ifdef _DEBUG
#include "debugproc.h"
#include <assert.h>
#endif // _DEBUG

/*/ マクロ定義 /*/
#define AMOUNT_EFFECT 256	// エフェクトの最大数

// グローバル変数
LPDIRECT3DVERTEXBUFFER9 g_pVtxBuffEffect_Hayu = NULL;			// 頂点バッファへのポインタ
LPDIRECT3DTEXTURE9 g_pTextureEffect_Hayu[Max_effectstyle];		// テクスチャへのポインタ
Effect_Hayu g_Effect[AMOUNT_EFFECT];							// エフェクト情報

//************************************************
// エフェクト初期
//************************************************
void InitEffect_Hayu(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();	//デバイスの取得

	/*--------------------------------------------*/

	for (int i = 0; i < AMOUNT_EFFECT; i++)
	{ // エフェクト情報リセット
		g_Effect[i].use = false;								// 使用フラグ
		g_Effect[i].style = -1;									// スタイル
		g_Effect[i].pPos = nullptr;								// 対象位置
		g_Effect[i].pos_moved = { 0.0f, 0.0f, 0.0f } ;			// 変動位置
		g_Effect[i].pos = { 0.0f, 0.0f, 0.0f };					// 位置
		g_Effect[i].rot = { 0.0f, 0.0f, 0.0f };					// 向き
		g_Effect[i].span = { 0.0f, 0.0f };						// 大きさ用
		g_Effect[i].angle = 0.0f;								// 角度
		g_Effect[i].length = 0.0f;								// 対角線用
		g_Effect[i].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, 0.0f);	// 色
		g_Effect[i].remain = 0;									// 寿命
	}

	/*--------------------------------------------*/

	// テクスチャ画像の読込み
	const char* pFileName[Max_effectstyle] =
	{
		"data\\texture\\bullet001.png",
	};

	for (int i = 0; i < Max_effectstyle; i++)
	{ // テクスチャの生成

		if (pFileName[i] == NULL)
		{ // テクスチャが無くなっても終了
			break;
		}

		D3DXCreateTextureFromFile(pDevice,
			pFileName[i],
			&g_pTextureEffect_Hayu[i]);
	}

	/*--------------------------------------------*/

	//頂点バッファの生成
	pDevice->CreateVertexBuffer(sizeof(VERTEX_3D) * AMOUNT_VTX * AMOUNT_EFFECT,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_3D,
		D3DPOOL_MANAGED,
		&g_pVtxBuffEffect_Hayu,
		NULL);

	// 頂点情報のポインタ
	VERTEX_3D* pVtx;

	// 頂点バッファをロックし頂点情報時へのポインタを取得
	g_pVtxBuffEffect_Hayu->Lock(0, 0, (void**)&pVtx, 0);

	for (int i = 0; i < AMOUNT_EFFECT; i++, pVtx += AMOUNT_VTX)
	{ // 頂点情報のリセット

		// 頂点座標の設定
		pVtx[0].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		pVtx[1].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		pVtx[2].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
		pVtx[3].pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

		// 法線ベクトルの設定
		pVtx[0].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);
		pVtx[1].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);
		pVtx[2].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);
		pVtx[3].nor = D3DXVECTOR3(0.0f, 1.0f, 0.0f);

		// 頂点カラーの初期設定
		pVtx[0].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[1].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[2].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);
		pVtx[3].col = D3DXCOLOR(1.0f, 1.0f, 1.0f, 1.0f);

		// テクスチャ座標の初期設定
		pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
		pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
		pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
		pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);
	}

	// 頂点バッファをアンロック
	g_pVtxBuffEffect_Hayu->Unlock();
}

//************************************************
// エフェクト破棄
//************************************************
void UninitEffect_Hayu(void)
{
	for (int i = 0; i < Max_effectstyle; i++)
	{
		if (g_pTextureEffect_Hayu[i] != NULL)
		{ // テクスチャの破棄
			g_pTextureEffect_Hayu[i]->Release();
			g_pTextureEffect_Hayu[i] = NULL;
		}
	}

	if (g_pVtxBuffEffect_Hayu != NULL)
	{ // 頂点バッファの破棄
		g_pVtxBuffEffect_Hayu->Release();
		g_pVtxBuffEffect_Hayu = NULL;
	}
}

//************************************************
// エフェクト生成
//************************************************
int CreateEffect_Hayu(int style, D3DXVECTOR3* pPos)
{
	int id = -1;	// 識別番号用

	for (int i = 0; i < AMOUNT_EFFECT; i++)
	{
		if (g_Effect[i].use)
		{ // 使用中ならコンティニュー
			continue;
		}

		g_Effect[i].use = true;
		g_Effect[i].style = style;	// スタイル取得
		g_Effect[i].pPos = pPos;	// 対象位置を取得

		switch(g_Effect[i].style)
		{ //スタイルに応じてテキトーに情報を付与
		case styleHeart:

			g_Effect[i].span = { 25.0f, 25.0f };	// 大きさ：適量
			g_Effect[i].remain = 45;				// 寿命：適量

			break;

		case styleDeath:

			g_Effect[i].span = { 50.0f, 50.0f };	// 大きさ：適量
			g_Effect[i].remain = 60;				// 寿命：適量

			break;

		default:

#ifdef _DEBUG

			assert(false && "Hayuエフェクトスタイル取得エラー");

#endif	// _DEBUG

			break;
		}

		// 角度を算出
		g_Effect[i].angle = atan2f(g_Effect[i].span.x, g_Effect[i].span.y);

		// 対角線を算出
		g_Effect[i].length = sqrtf(g_Effect[i].span.x * g_Effect[i].span.x +
			g_Effect[i].span.y * g_Effect[i].span.y);

		id = i;	// 識別番号格納

		break;	// 終了
	}

	return id;	// 一応識別番号を渡す
}

//************************************************
// エフェクト更新
//************************************************
void UpdateEffect_Hayu(void)
{
	for (int i = 0; i < AMOUNT_EFFECT; i++)
	{ // 情報を更新
		
		if (!g_Effect[i].use)
		{ // 未使用ならコンティニュー
			continue;
		}

		// 対象位置に変動位置を加算
		g_Effect[i].pos = *g_Effect[i].pPos + g_Effect[i].pos_moved;

		if (CntDuration(&g_Effect[i].remain))
		{ // 消滅
			DeleteEffect_Hayu(i);
		}
	}

	// ポリゴンを展開
	SetVtxEffect_Hayu();
}

//************************************************
// エフェクト展開
//************************************************
void SetVtxEffect_Hayu(void)
{
	// 頂点情報のポインタ
	VERTEX_3D* pVtx;

	// 頂点バッファをロックし頂点情報時へのポインタを取得
	g_pVtxBuffEffect_Hayu->Lock(0, 0, (void**)&pVtx, 0);

	for (int i = 0; i < AMOUNT_EFFECT; i++, pVtx += AMOUNT_VTX)
	{
		if (!g_Effect[i].use)
		{ // 未使用ならコンティニュー
			continue;
		}

		// 変形などあれば反映
		pVtx[0].pos = 
		{
			sinf(g_Effect[i].rot.z - (D3DX_PI - g_Effect[i].angle)) * g_Effect[i].length,
			-cosf(g_Effect[i].rot.z - (D3DX_PI - g_Effect[i].angle)) * g_Effect[i].length,
			0.0f
		};

		pVtx[1].pos =
		{
			sinf(g_Effect[i].rot.z + (D3DX_PI - g_Effect[i].angle)) * g_Effect[i].length,
			-cosf(g_Effect[i].rot.z + (D3DX_PI - g_Effect[i].angle)) * g_Effect[i].length,
			0.0f
		};

		pVtx[2].pos =
		{
			sinf(g_Effect[i].rot.z - g_Effect[i].angle) * g_Effect[i].length,
			-cosf(g_Effect[i].rot.z - g_Effect[i].angle) * g_Effect[i].length,
			0.0f
		};

		pVtx[3].pos =
		{
			sinf(g_Effect[i].rot.z + g_Effect[i].angle) * g_Effect[i].length,
			-cosf(g_Effect[i].rot.z + g_Effect[i].angle) * g_Effect[i].length,
			0.0f
		};
	}

	g_pVtxBuffEffect_Hayu->Unlock();
}

//************************************************
// エフェクト消去
//************************************************
void DeleteEffect_Hayu(int id)
{
	g_Effect[id].use = false;								// 使用フラグ
	g_Effect[id].style = -1;								// スタイル
	g_Effect[id].pPos = nullptr;							// 対象位置
	g_Effect[id].pos_moved = { 0.0f, 0.0f, 0.0f };			// 変動位置
	g_Effect[id].pos = { 0.0f, 0.0f, 0.0f };				// 位置
	g_Effect[id].rot = { 0.0f, 0.0f, 0.0f };				// 向き
	g_Effect[id].span = { 0.0f, 0.0f };						// 大きさ用
	g_Effect[id].angle = 0.0f;								// 角度
	g_Effect[id].length = 0.0f;								// 対角線用
	g_Effect[id].col = D3DXCOLOR(0.0f, 0.0f, 0.0f, 0.0f);	// 色
	g_Effect[id].remain = 0;								// 寿命
}

//************************************************
// エフェクト描画
//************************************************
void DrawEffect_Hayu(void)
{
	LPDIRECT3DDEVICE9 pDevice = GetDevice();	// デバイスの取得
	D3DXMATRIX mtxTrans, mtxView;				// 計算用マトリックス
	LPDIRECT3DTEXTURE9 pTexture;				// テクスチャポインタ

	// ライト反映を無効にする
	pDevice->SetRenderState(D3DRS_LIGHTING, FALSE);

	//// 深度テストの比較方法の変更
	//pDevice->SetRenderState(D3DRS_ZFUNC, D3DCMP_ALWAYS);

	//// 深度バッファに描画しない
	//pDevice->SetRenderState(D3DRS_ZWRITEENABLE, FALSE);

	// アルファテストを有効にする
	pDevice->SetRenderState(D3DRS_ALPHATESTENABLE, TRUE);
	pDevice->SetRenderState(D3DRS_ALPHAREF, 0);
	pDevice->SetRenderState(D3DRS_ALPHAFUNC, D3DCMP_GREATER);

	// 頂点バッファをデータストリームに設定
	pDevice->SetStreamSource(0, g_pVtxBuffEffect_Hayu, 0, sizeof(VERTEX_3D));

	// 頂点フォーマットの設定
	pDevice->SetFVF(FVF_VERTEX_3D);

	for (int i = 0; i < AMOUNT_EFFECT; i++)
	{
		if (!g_Effect[i].use)
		{ // 未使用ならコンティニュー
			continue;
		}

		// ワールドマトリックスの初期化
		D3DXMatrixIdentity(&g_Effect[i].mtxWorld);

		// ビューマトリックス取得
		pDevice->GetTransform(D3DTS_VIEW, &mtxView);

		// ポリゴンをカメラの正面に向け続ける
		D3DXMatrixInverse(&g_Effect[i].mtxWorld, NULL, &mtxView);	// 逆行列を求める

		g_Effect[i].mtxWorld._41 = 0.0f;
		g_Effect[i].mtxWorld._42 = 0.0f;
		g_Effect[i].mtxWorld._43 = 0.0f;

		// 位置を反映1
		D3DXMatrixTranslation(&mtxTrans,
			g_Effect[i].pos.x,
			g_Effect[i].pos.y,
			g_Effect[i].pos.z);

		// 位置を反映2
		D3DXMatrixMultiply(&g_Effect[i].mtxWorld,
			&g_Effect[i].mtxWorld,
			&mtxTrans);

		// ワールドマトリックスの設定
		pDevice->SetTransform(D3DTS_WORLD, &g_Effect[i].mtxWorld);

		// テクスチャの設定
		pTexture = g_pTextureEffect_Hayu[g_Effect[i].style];

		pDevice->SetTexture(0, pTexture);

		// ビルボードの描画
		pDevice->DrawPrimitive(D3DPT_TRIANGLESTRIP, i * AMOUNT_VTX, AMOUNT_COMBINEPOLYGON);
	}

	// ライト反映を有効にする
	pDevice->SetRenderState(D3DRS_LIGHTING, TRUE);

	//// 深度テストの比較方法の変更
	//pDevice->SetRenderState(D3DRS_ZFUNC, D3DCMP_LESSEQUAL);

	//// 深度バッファに書き込む
	//pDevice->SetRenderState(D3DRS_ZWRITEENABLE, TRUE);

	// アルファテストを無効にする
	pDevice->SetRenderState(D3DRS_ALPHATESTENABLE, FALSE);
}