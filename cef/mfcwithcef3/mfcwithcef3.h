
// mfcwithcef3.h : PROJECT_NAME Ӧ�ó������ͷ�ļ�
//

#pragma once

#ifndef __AFXWIN_H__
	#error "�ڰ������ļ�֮ǰ������stdafx.h�������� PCH �ļ�"
#endif

#include "resource.h"		// ������


// Cmfcwithcef3App:
// �йش����ʵ�֣������ mfcwithcef3.cpp
//
#include "simple_app.h"
class Cmfcwithcef3App : public CWinApp
{
public:
	Cmfcwithcef3App();

// ��д
public:
	virtual BOOL InitInstance();

// ʵ��

	DECLARE_MESSAGE_MAP()
	virtual BOOL PumpMessage();
	virtual int ExitInstance();

private:
	CefRefPtr<SimpleApp> cefapp_;
};

extern Cmfcwithcef3App theApp;