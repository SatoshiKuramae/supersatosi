#ifndef _TUTORIAL1_H_
#define _TUTORIAL1_H_
#include "main.h"

#define NUM_TUTORIAL_TEX (3)

typedef struct
{
	D3DXVECTOR3 pos;		//位置
	bool bUse;				//使用しているかどうか
	float pSizeX, 
		pSizeY, 
		pSize1X, 
		pSize1Y;
}Tutorial;

//プロトタイプ宣言
void InitTutorial(void);
void UninitTutorial(void);
void UpdateTutorial(void);
void DrawTutorial(void);
void SetTutorial(D3DXVECTOR3 pos);
bool ReturnUse(void);
Tutorial* GetTutorial(void);
#endif // !TUTORIAL_H_

