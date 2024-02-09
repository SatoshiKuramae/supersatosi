//************************************************
//
// メイン[main.cpp]
//Author：福田歩希
//
//************************************************

/*/ インクルードファイル /*/
#include "main.h"
// 中枢
#include "debugproc.h"
#include "input.h"
#include "sound.h"
// 諸処理
#include "game.h"
#include "TEST.h"
#include "TEST_title.h" 
#include "TEST_tutorial.h"
#include "TEST_fade.h"
#include "TEST_result.h"

/*/ マクロ定義 /*/
#define CLASS_NAME	"WindowClass"		// ウインドウクラスの名前
#define WINDOW_NAME	"TEAM - 3DSTG"		// ウインドウの名前
#define MAX_WORD 1024					// 文字の最大数

/*/ グローバル変数 /*/
LPDIRECT3D9 g_pD3D = NULL;				// Direct3Dオブジェクトのポインタ
LPDIRECT3DDEVICE9 g_pD3DDevice = NULL;	// Direct3Dデバイスのポインタ
int g_CountFPS = 0;						// FPSカウンタ

MODE g_mode = MODE_TITLE;	//現在の画面

//************************************************
// メイン
//************************************************
#pragma warning(disable:4100)
int WINAPI WinMain(_In_ HINSTANCE hInstance, _In_opt_ HINSTANCE hInstancePrev, _In_ LPSTR lpCmdLine, _In_ int nCmdShow)
#pragma warning(default:4100)
{
	DWORD dwCurrentTime;	// 現在時刻用
	DWORD dwExecLastTime;	// 最後に処理した時間
	DWORD dwFrameCount;		// フレームカウント格納
	DWORD dwFPSLastTime;	// 最後にFPSを計測した時刻格納

	WNDCLASSEX wcex =
	{
		sizeof(WNDCLASSEX),				// WNDCLASSEXのメモリサイズ
		CS_CLASSDC,						// ウインドウのスタイル
		WindowProc,						// ウインドウプロシージャ
		0,								// 何かを0にする
		0,								// 何かを0にする
		hInstance,						// インスタンスハンドル
		LoadIcon(NULL,IDI_APPLICATION),	// タスクバーのアイコン
		LoadCursor(NULL,IDC_ARROW),		// マウスカーソル
		(HBRUSH)(COLOR_WINDOW),			// クライアント領域の背景色
		NULL,							// メニューバー
		CLASS_NAME,						// ウインドウクラスの名前
		LoadIcon(NULL,IDI_APPLICATION)	// ファイルのアイコン
	};

	HWND hWnd;	// ウインドウハンドル(識別子)
	MSG msg;	// メッセージを格納する変数

	// 画面サイズの構造体
	RECT rect = { 0,0,SCREEN_WIDTH,SCREEN_HEIGHT };

	// ウインドウクラスの登録
	RegisterClassEx(&wcex);

	// クライアント領域を指定のサイズに調整
	AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, FALSE);

	// ウインドウを生成
	hWnd = CreateWindowEx(0,		// 拡張ウインドウのスタイル
		CLASS_NAME,					// ウインドウクラスの名前
		WINDOW_NAME,				// ウインドウの名前
		WS_OVERLAPPEDWINDOW,		// ウインドウのスタイル
		CW_USEDEFAULT,				// ウインドウの左上のX座標
		CW_USEDEFAULT,				// ウインドウの左上のY座標
		(rect.right - rect.left),	// ウインドウの左上の幅
		(rect.bottom - rect.top),	// ウインドウの左上の高さ
		NULL,						// 親ウインドウのハンドル
		NULL,						// メニューバーまたは子ウインドウID
		hInstance,					// インスタンスハンドル
		NULL);						// ウインドウ作成データ

	
	if (FAILED(Init(hInstance, hWnd, TRUE)))
	{ // 初期化処理が失敗した場合
		return -1;
	}
	
	// 分解能を設定
	timeBeginPeriod(1);

	// 初期化
	dwCurrentTime = 0;
	dwFrameCount = 0;

	// 現在時刻を取得
	dwExecLastTime = timeGetTime();
	dwFPSLastTime = timeGetTime();

	// ウインドウの表示
	ShowWindow(hWnd, SW_MAXIMIZE);	// ウインドウの表示状態を設定
	UpdateWindow(hWnd);				// クライアント領域を更新

	while (1)
	{ // メッセージループ
		if (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE) != 0)
		{
			if (msg.message == WM_QUIT)
			{ // WM_QUITのメッセージを受け取ると、メッセージループを抜ける	
				break;
			}
			else
			{
				// メッセージの設定
				TranslateMessage(&msg);	// 仮想キーメッセージを文字メッセージへ変換
				DispatchMessage(&msg);	// ウインドウプロシージャへメッセージを創出
			}
		}
		else
		{
			// 現在時刻を取得
			dwCurrentTime = timeGetTime();

			if ((dwCurrentTime - dwFPSLastTime) >= 500)
			{
				// FPSを計測
				g_CountFPS = (dwFrameCount * 1000) / (dwCurrentTime - dwFPSLastTime);

				// FPSを計測した時間を保存
				dwFPSLastTime = dwCurrentTime;

				// フレームカウントをクリア
				dwFrameCount = 0;
			}

			if ((dwCurrentTime - dwExecLastTime) >= (1000 / 60))
			{
				// 現在時刻を保存
				dwExecLastTime = dwCurrentTime;

				Draw();		// 描画処理

				Update();	// 更新処理

				// フレームカウントを加算
				dwFrameCount++;
			}
		}
	}

	// 終了処理
	UnInit();



	// ウインドウクラスの登録を解除
	UnregisterClass(CLASS_NAME, wcex.hInstance);

	return(int)msg.wParam;
}

//************************************************
// ウインドウプロシージャ
//************************************************
LRESULT CALLBACK WindowProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	int nID;	// 返り値受け皿

	switch (uMsg)
	{
	case WM_CREATE:	// ウインドウ生成のメッセージを送る

		break;

	case WM_DESTROY:	// ウインドウ破棄のメッセージを送る

		PostQuitMessage(0);	// 「WM_QUIT」というメッセージを送る

		break;

	case WM_KEYDOWN:	// キーが押されているメッセージを送る

		switch (wParam)
		{
		case VK_ESCAPE:	// ESCキーが押されると

			// メッセージボックスを表示
			nID = MessageBox(hWnd, "終了しますか？", "終了メッセージ", MB_YESNO | MB_ICONQUESTION);

			if (nID == IDYES)
			{
				DestroyWindow(hWnd);	// 「WM_DESTROYというメッセージを送る」
			}

			break;

		case VK_F3:	// F3キーが押されると

			if (GetLayoutEdit())
			{ // 編集モードなら
				MessageBox(hWnd, "オブジェクトモデルの配置情報を保存しました", "おめでとうございます！", MB_OK | MB_ICONINFORMATION);
			}

			break;
		}

		break;

	case WM_COMMAND:

		break;

	case WM_LBUTTONDOWN:

		SetFocus(hWnd);

		break;

	case WM_CLOSE:

		// メッセージボックスを表示
		nID = MessageBox(hWnd, "終了しますか？", "終了メッセージ", MB_YESNO | MB_ICONQUESTION);

		if (nID == IDYES)
		{
			DestroyWindow(hWnd);	// 「WM_DESTROYというメッセージを送る」
		}
		else
		{
			return 0;
		}

		break;
	}


	return DefWindowProc(hWnd, uMsg, wParam, lParam);	// 既定の処理を返す
}

//************************************************
// 初期
//************************************************
HRESULT Init(HINSTANCE hInstance, HWND hWnd, BOOL bWindiw)
{
	D3DDISPLAYMODE d3ddm;			// ディスプレイモード
	D3DPRESENT_PARAMETERS d3dpp;	// プレゼンテーションパラメータ

	// Direct3Dオブジェクトの生成
	g_pD3D = Direct3DCreate9(D3D_SDK_VERSION);

	if (g_pD3D == NULL)
	{
		return E_FAIL;
	}

	if (FAILED(g_pD3D->GetAdapterDisplayMode(D3DADAPTER_DEFAULT, &d3ddm)))
	{ // 現在のディスプレイモードを取得
		return E_FAIL;
	}

	// デバイスのプレゼンテーションパラメータの設定
	ZeroMemory(&d3dpp, sizeof(d3dpp));	// パラメータのゼロクリア

	d3dpp.BackBufferWidth = SCREEN_WIDTH;						// ゲームサイズ(幅)
	d3dpp.BackBufferHeight = SCREEN_HEIGHT;						// ゲームサイズ(高さ)
	d3dpp.BackBufferFormat = d3ddm.Format;						// バックバッファの形式
	d3dpp.BackBufferCount = 1;									// バックバッファの数
	d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD;					// ダブルバッファの切り替え(映像信号に同期)
	d3dpp.EnableAutoDepthStencil = TRUE;						// デプスバッファとステンシルバッファを作成
	d3dpp.AutoDepthStencilFormat = D3DFMT_D16;					// デプスバッファとして16bitを使う
	d3dpp.Windowed = bWindiw;									// ウインドウモード
	d3dpp.FullScreen_RefreshRateInHz = D3DPRESENT_RATE_DEFAULT;	// リフレッシュレート
	d3dpp.PresentationInterval = D3DPRESENT_INTERVAL_DEFAULT;	// インターバル

	if (FAILED(g_pD3D->CreateDevice(D3DADAPTER_DEFAULT,
		D3DDEVTYPE_HAL,
		hWnd,
		D3DCREATE_HARDWARE_VERTEXPROCESSING,
		&d3dpp,
		&g_pD3DDevice)))
	{ // Direct3Dデバイスの生成1
	
		if (FAILED(g_pD3D->CreateDevice(D3DADAPTER_DEFAULT,
			D3DDEVTYPE_HAL,
			hWnd,
			D3DCREATE_SOFTWARE_VERTEXPROCESSING,
			&d3dpp,
			&g_pD3DDevice)))
		{ // Direct3Dデバイスの生成2	
			if (FAILED(g_pD3D->CreateDevice(D3DADAPTER_DEFAULT,
				D3DDEVTYPE_REF,
				hWnd,
				D3DCREATE_SOFTWARE_VERTEXPROCESSING,
				&d3dpp,
				&g_pD3DDevice)))
			{ // Direct3Dデバイスの生成3
				return E_FAIL;
			}
		}
	}

	// レンダーステートの設定
	g_pD3DDevice->SetRenderState(D3DRS_CULLMODE, D3DCULL_CCW);
	g_pD3DDevice->SetRenderState(D3DRS_ALPHABLENDENABLE, TRUE);
	g_pD3DDevice->SetRenderState(D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
	g_pD3DDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);

	// テクスチャステージステートの設定？(コピペ)
	g_pD3DDevice->SetTextureStageState(0, D3DTSS_ALPHAOP, D3DTOP_MODULATE);
	g_pD3DDevice->SetTextureStageState(0, D3DTSS_ALPHAARG1, D3DTA_TEXTURE);
	g_pD3DDevice->SetTextureStageState(0, D3DTSS_ALPHAARG2, D3DTA_CURRENT);

	if (FAILED(InitKeyboard(hInstance, hWnd)))
	{ // キーボードの初期
		return E_FAIL;
	}

	if (FAILED(InitJoypad()))
	{ // コントローラの初期
		return E_FAIL;
	}

	// デバッグ表示の初期(配布)
	InitDebugProc();

	// サウンドの初期
	InitSound(hWnd);

	//// 諸処理初期
	//InitGame();

	//モードの設定
	SetMode(g_mode);

	InitFade();

	//InitTEST();

	return S_OK;
}

//************************************************
// 破棄
//************************************************
void UnInit(void)
{
	// 分解能を戻す(これはUninit内で一番上に)
	timeEndPeriod(1);

	// デバッグ表示の終了(配布)
	UninitDebugProc();
	
	// キーボードの破棄
	UnInitKeyboard();

	// コントローラの破棄
	UninitJoypad();

	// サウンドの終了
	UninitSound();

	// 諸処理終了
	UninitGame();
	UninitTitle();
	UninitResult();
	UninitFade();
	//UninitTEST();

	if (g_pD3DDevice != NULL)
	{ // Direct3Dデバイスの破棄
		g_pD3DDevice->Release();
		g_pD3DDevice = NULL;
	}
	
	if (g_pD3D != NULL)
	{ // Direct3Dオブジェクトの破棄
		g_pD3D->Release();
		g_pD3D = NULL;
	}
}

//************************************************
// 更新
//************************************************
void Update(void)
{
	// デバッグ表示の更新(配布)
	//UpdateDebugProc();

	// キーボードの更新
	UpdateKeyboard();

	// コントローラの更新
	UpdateJoypad();

	// 諸処理更新
	switch (g_mode)
	{
	case MODE_TITLE:
		UpdateTitle();
		break;
	case MODE_TUTORIAL:
		UpdateGame();
		UpdateTutorial();
		break;
	case MODE_GAME:
		UpdateGame();
		break;
	case MODE_RESULT:
		UpdateResult();
		break;
	}
	//フェードの更新処理
	UpdateFade();


	if (GetKeyboardTrigger(DIK_DELETE))
	{ /*---【強制リトライ】---*/
		UninitGame();
		InitGame();
	}

	//UpdateTEST();
}

//************************************************
// 描画
//************************************************
void Draw(void)
{
	// 画面クリア
	g_pD3DDevice->Clear(0, NULL,
		(D3DCLEAR_TARGET | D3DCLEAR_ZBUFFER),
		D3DCOLOR_RGBA(255, 255, 255, 255), 1.0f, 0);

	//描画開始
	if (SUCCEEDED(g_pD3DDevice->BeginScene()))
	{//描画開始が成功

		switch (g_mode)
		{
		case MODE_TITLE:
			DrawTitle();
			break;
		case MODE_TUTORIAL:
			DrawTutorial();
			break;
		case MODE_GAME:
			DrawGame();
			break;
		case MODE_RESULT:
			DrawResult();
			break;
		default:
			break;
		}
		DrawFade();

		//描画終了
		g_pD3DDevice->EndScene();
	}
	// バックバッファとフロントバッファの入れ替え
	g_pD3DDevice->Present(NULL, NULL, NULL, NULL);

}

//=====================================================
//モード選択処理
//=====================================================
void SetMode(MODE mode)
{
	//現在の画面（モード）の終了処理
	switch (g_mode)
	{
	case MODE_TITLE:
		UninitTitle();
		break;
	case MODE_TUTORIAL:
		UninitGame();
		break;
	case MODE_GAME:
		UninitGame();
		break;
	case MODE_RESULT:
		UninitResult();
		break;
	default:
		break;
	}

	

	//新しい画面（モード）の初期化処理
	switch (mode)
	{
	case MODE_TITLE:
		InitTitle();
		break;
	case MODE_TUTORIAL:
		InitGame();
		break;
	case MODE_GAME:
		InitGame();
		break;
	case MODE_RESULT:
		InitResult();
		break;
	default:
		break;
	}
	g_mode = mode;		//現在の画面（モード）に切り替える
}

//************************************************
// デバイスの取得
//************************************************
bool CheckMode(void)
{
	if (g_mode == MODE_TUTORIAL)
	{//チュートリアルなら
		return true;
	}
	else
	{//そうでなければ
		return false;
	}
}

//************************************************
// デバイスの取得
//************************************************
LPDIRECT3DDEVICE9 GetDevice(void)
{
	return g_pD3DDevice;
}

//************************************************
// FPSの取得
//************************************************
int GetFPS(void)
{
	return g_CountFPS;
}