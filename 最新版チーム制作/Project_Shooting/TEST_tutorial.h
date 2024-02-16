#ifndef _TUTORIAL1_H_
#define _TUTORIAL1_H_
#include "main.h"


typedef struct
{
	D3DXVECTOR3 pos;		//�ʒu
	bool bUse;				//�g�p���Ă��邩�ǂ���
}Tutorial;

//�v���g�^�C�v�錾
void InitTutorial(void);
void UninitTutorial(void);
void UpdateTutorial(void);
void DrawTutorial(void);
void SetTutorial(D3DXVECTOR3 pos);
bool ReturnUse(void);

#endif // !TUTORIAL_H_

