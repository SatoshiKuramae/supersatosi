//===================================
//
//title.h
//
//===================================
#ifndef _TITLE_H_
#define _TITLE_H_

#include "main.h"


typedef enum
{
	TITLEMENU_START = 0,
	TITLEMENU_TUTORIAL,
	TITLEMENU_MAX
}TITLEPICK;


typedef struct
{
	D3DXVECTOR3 pos;		//�ʒu
	bool bUse;				//�g�p���Ă��邩�ǂ���
}Title;

//�v���g�^�C�v�錾
void InitTitle(void);
void UninitTitle(void);
void UpdateTitle(void);
void DrawTitle(void);


#endif // !_TITLE_H_


