//************************************************
//
// オリジナルエフェクト、ヘッダファイル[effect_hayu.h]
// Author：福田歩希
//
//************************************************
#ifndef _EFFECT_HAYU_H_	// このマクロ定義が過去にされていなかったら1度のみ下の処理を通す
#define _EFFECT_HAYU_H_	// (二重インクルード防止、マクロ定義する)

/*/ インクルードファイル /*/
#include "main.h"

typedef enum
{
	styleHeart = 0,		// ハート：ダメージ的な
	styleDeath,			// 魂：昇天する
	Max_effectstyle
}EffectStyle;

// エフェクト用情報
typedef struct
{
	bool use;				// 使用フラグ
	int style;				// スタイル
	D3DXVECTOR3* pPos;		// 対象位置
	D3DXVECTOR3 pos_moved;	// 変動位置
	D3DXVECTOR3 pos;		// 位置
	D3DXVECTOR3 rot;		// 向き
	D3DXVECTOR2 span;		// 大きさ用
	float angle;			// 角度
	float length;			// 対角線用
	D3DXCOLOR col;			// 色
	int remain;				// 寿命
	D3DXMATRIX mtxWorld;	// ワールドマトリックス
}Effect_Hayu;

//プロトタイプ宣言
void InitEffect_Hayu(void);			// 初期
void UninitEffect_Hayu(void);		// 破棄
int CreateEffect_Hayu(int type,
	D3DXVECTOR3* pPos);				// 生成
void UpdateEffect_Hayu(void);		// 更新
void SetVtxEffect_Hayu(void);		// 展開
void DeleteEffect_Hayu(int id);		// 消去
void DrawEffect_Hayu(void);			// 描画

#endif