#ifndef TUTORIAL_H_
#define TUTORIAL_H_


typedef struct
{
	int I_NumPlayer;
}NumPlayer;

//�v���g�^�C�v�錾
void InitTutorial(void);
void UninitTutorial(void);
void UpdateTutorial(void);
void DrawTutorial(void);
NumPlayer* GetNumPlayer();
#endif // !TUTORIAL_H_

