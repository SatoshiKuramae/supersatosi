#ifndef _TUTORIAL1_H_
#define _TUTORIAL1_H_
#include "main.h"

#define NUM_TUTORIAL_TEX (3)

typedef struct
{
	D3DXVECTOR3 pos;		//�ʒu
	bool bUse;				//�g�p���Ă��邩�ǂ���
	float pSizeX, 
		pSizeY, 
		pSize1X, 
		pSize1Y;
}Tutorial;

//�v���g�^�C�v�錾
void InitTutorial(void);
void UninitTutorial(void);
void UpdateTutorial(void);
void DrawTutorial(void);
void SetTutorial(D3DXVECTOR3 pos);
bool ReturnUse(void);
Tutorial* GetTutorial(void);
#endif // !TUTORIAL_H_

