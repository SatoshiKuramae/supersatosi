//==========================================================
//
//チュートリアル時のゲーム画面の描画処理[game.cpp]
//Author:kasai keisuke, 福田歩希,satokurara
//
//==========================================================

/* インクルードファイル */
#include "game.h"
// 中枢
#include "input.h"
#include "main.h"
#include "sound.h"
// 諸処理
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
// デバッグ時
#ifdef _DEBUG
#include "debugproc.h"
#include "editcamera.h"
#include "TEST.h"
#include "visible_sph.h"
#include <assert.h>
#endif	// _DEBUG

/*/ マクロ定義 /*/
#define JOIN_VERIFY 4	// 人数指定

/*/ グローバル変数 /*/
int g_AmountPlayer_Tuto = JOIN_VERIFY;	// プレイ人数格納
bool g_LayoutEdit_Tuto = false;			// 配置編集モード用フラグ
int g_nCnt_Tuto = 0;						//デバック用変数(コントローラ分離確認用)

//=======================================================================
//ゲーム画面の初期化処理
//=======================================================================
void InitTutorialGame(void)
{
#ifndef JOIN_VERIFY

	// 人数指定が無ければ固定
	g_AmountPlayer_Tuto = 1;

#endif	// JOIN_VERIFY

	//各種変数の初期化
	g_LayoutEdit_Tuto = false;	// 配置編集モードをオフ
	g_nCnt_Tuto = 0;				//デバック用変数(コントローラ分離確認用)の初期化
	

#ifdef _DEBUG

	// 人数がおかしいと終了
	assert(g_AmountPlayer_Tuto > 0 && g_AmountPlayer_Tuto <= 4);

	// 編集カメラの初期
	InitEditCamera();

	// テスト用の初期
	InitTEST(g_AmountPlayer_Tuto);

	// 球の判定可視化初期
	InitVisibleSph();

#endif	// _DEBUG

	//ボスの初期化処理
	InitBoss();

	// 弾の初期
	InitBullet();

	// カメラの初期
	InitCamera(g_AmountPlayer_Tuto);

	//エフェクトの初期化処理
	InitEffect();

	// Hayuエフェクトの初期
	InitEffect_Hayu();

	// 砂のエフェクトの初期
	InitEffectSand();

	// 敵の初期
	InitEnemy();

	// 爆発の初期
	InitExplosion();

	// アイテムの初期
	InitItem();

	// ライトの初期
	InitLight();

	// 物の初期
	InitObject();

	// レティクルの初期：プレイヤーよりも先に
	InitReticle();

	// プレイヤーの初期
	InitPlayer();

	// 海の初期
	InitSea();

	// 空の初期
	InitSky();
}

//=======================================================================
//ゲーム画面の終了処理
//=======================================================================
void UninitTutorialGame(void)
{
#ifdef _DEBUG

	// テスト用の終了
	UninitTEST();

	// 球の判定可視化終了
	UninitVisibleSph();

#endif	// _DEBUG

	//ボスの終了処理
	UninitBoss();

	// 弾の終了
	UninitBullet();

	//エフェクトの終了処理
	UninitEffect();

	// Hayuエフェクトの終了
	UninitEffect_Hayu();

	// 砂のエフェクトの終了
	UninitEffectSand();

	// 敵の終了
	UninitEnemy();

	// 爆発の終了
	UninitExplosion();

	// アイテムの終了
	UninitItem();

	// 物の終了
	UninitObject();

	// プレイヤーの終了
	UninitPlayer();

	// レティクルの終了
	UninitReticle();

	// 海の終了
	UninitSea();

	// 空の終了
	UninitSky();
}

//======================================================================
//チュートリアル中のゲーム更新処理
//======================================================================
void UpdateTutorialGame(void)
{

#if defined (_DEBUG)

	// 配置編集モード切り替え
	if (GetKeyboardTrigger(DIK_F2))
	{
		g_LayoutEdit_Tuto = !g_LayoutEdit_Tuto;
	}

	if (!g_LayoutEdit_Tuto)
	{ // 配置編集モードでないときのみ
		// 参加人数を直接変更
		if (GetKeyboardTrigger(DIK_LBRACKET))
		{
			g_AmountPlayer_Tuto < 4 ? g_AmountPlayer_Tuto++ : g_AmountPlayer_Tuto = 1;
		}
		else if (GetKeyboardTrigger(DIK_RBRACKET))
		{
			g_AmountPlayer_Tuto > 1 ? g_AmountPlayer_Tuto-- : g_AmountPlayer_Tuto = 4;
		}
	}

	//// デバッグ表示の更新(配布)
	//UpdateDebugProc();

	// カメラ or 編集カメラの更新
	g_LayoutEdit_Tuto ? UpdateEditCamera() : UpdateCamera(g_AmountPlayer_Tuto);




#endif	// _DEBUG

#ifndef _DEBUG

	// カメラの更新
	UpdateCamera(g_AmountPlayer_Tuto);

#endif // _DEBUG リリース

	// 状況に応じて物の更新
	UpdateObject(g_LayoutEdit_Tuto);

	if (!g_LayoutEdit_Tuto)
	{
		UpdateTutorial();
		// テスト用の更新
		UpdateTEST(g_AmountPlayer_Tuto);

		//アイテムの更新
		UpdateItem();

		// ライトの更新
		UpdateLight();

		// プレイヤーの更新
		UpdatePlayer(g_AmountPlayer_Tuto);

		// 弾の更新
		UpdateBullet();

		//エフェクトの更新処理
		UpdateEffect();

		// Hayuエフェクトの更新
		UpdateEffect_Hayu();

		// 爆発の更新
		UpdateExplosion();

		// 砂のエフェクトの更新
		UpdateEffectSand();

		// 海の更新
		UpdateSea();

		// 空の更新
		UpdateSky();

#ifdef _DEBUG	

		// 球の判定可視化更新
		UpdateVisibleSph();

#endif // _DEBUG ↑これここに置きたい
	}
}

//=======================================================================
//チュートリアル時のゲーム画面の描画処理
//=======================================================================
void DrawTutorialGame(void)
{
	// ループ回数
	int Loop = 0;

	// 配置編集モードであれば余分な描画を抑制
	g_LayoutEdit_Tuto ? Loop = 1 : Loop = g_AmountPlayer_Tuto;

	for (int i = 0; i < Loop; i++)
	{
#ifdef _DEBUG

		// カメラ or 編集カメラの設定
		g_LayoutEdit_Tuto ? SetInfoEditCamera() : SetInfoCamera(i, g_AmountPlayer_Tuto);

#else

		// カメラの設定
		SetInfoCamera(i, g_AmountPlayer_Tuto);

#endif	// _DEBUG リリース

		//UI描画
		DrawTutorial();

		// 空の描画
		DrawSky();

		// 海の描画
		DrawSea();

		// 状況に応じて物の描画
		DrawObject(g_LayoutEdit_Tuto);

		// 砂のエフェクトの描画
		DrawEffectSand();

		// Hayuエフェクトの描画
		DrawEffect_Hayu();

		//エフェクトの描画
		DrawEffect();

		// 爆発の描画
		DrawExplosion();

		// レティクルの描画
		DrawReticle(i);

		// 弾の描画
		DrawBullet();

		// アイテムの描画
		DrawItem();

		// プレイヤーの描画
		DrawPlayer();

#ifdef _DEBUG

		// 球の判定可視化描画
		DrawVisibleSph();

#endif	// _DEBUG
	}

	// UI用ポートの設定
	SetInfoUIport();

	/*---【ゲーム内UIの表示はここから下で行います】---*/

#ifdef _DEBUG

	// テスト用の描画
	if (!g_LayoutEdit_Tuto)
	{
		//DrawTEST();	//!< UI系はポート設定されていない範囲の描画は行われません。はみ出るようなら新たにポート設定を追加してください。
	}

	//// デバッグ用表示の描画(配布)
	//DrawDebugProc();

#endif	// _DEBUG
}

/*---【以下ゲームループ外】---*/

