#ifndef _TUTORIAL1_H_
#define _TUTORIAL1_H_
#include "main.h"


typedef struct
{
	D3DXVECTOR3 pos;		//位置
	bool bUse;				//使用しているかどうか
}Tutorial;

//プロトタイプ宣言
void InitTutorial(void);
void UninitTutorial(void);
void UpdateTutorial(void);
void DrawTutorial(void);
void SetTutorial(D3DXVECTOR3 pos);
bool ReturnUse(void);

#endif // !TUTORIAL_H_

