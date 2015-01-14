
// mfcwithcef3.cpp : ����Ӧ�ó��������Ϊ��
//

#include "stdafx.h"
#include "mfcwithcef3.h"
#include "mfcwithcef3Dlg.h"

#include "simple_app.h"
#include "simple_handler.h" 
#ifdef _DEBUG
#define new DEBUG_NEW
#endif



#define CEF_ENABLE_SANDBOX 0
// Cmfcwithcef3App

BEGIN_MESSAGE_MAP(Cmfcwithcef3App, CWinApp)
	ON_COMMAND(ID_HELP, &CWinApp::OnHelp)
END_MESSAGE_MAP()


// Cmfcwithcef3App ����
#include <string>
Cmfcwithcef3App::Cmfcwithcef3App()
{
	// TODO: �ڴ˴���ӹ�����룬
}


// Ψһ��һ�� Cmfcwithcef3App ����

Cmfcwithcef3App theApp;


// Cmfcwithcef3App ��ʼ��

BOOL Cmfcwithcef3App::InitInstance()
{
	// ���һ�������� Windows XP �ϵ�Ӧ�ó����嵥ָ��Ҫ
	// ʹ�� ComCtl32.dll �汾 6 ����߰汾�����ÿ��ӻ���ʽ��
	//����Ҫ InitCommonControlsEx()�����򣬽��޷��������ڡ�
	INITCOMMONCONTROLSEX InitCtrls;
	InitCtrls.dwSize = sizeof(InitCtrls);
	// ��������Ϊ��������Ҫ��Ӧ�ó�����ʹ�õ�
	// �����ؼ��ࡣ
	InitCtrls.dwICC = ICC_WIN95_CLASSES;
	InitCommonControlsEx(&InitCtrls);

	CWinApp::InitInstance();
	
	void* sandbox_info = NULL;

#if CEF_ENABLE_SANDBOX
	// Manage the life span of the sandbox information object. This is necessary
	// for sandbox support on Windows. See cef_sandbox_win.h for complete details.
	CefScopedSandboxInfo scoped_sandbox;
	sandbox_info = scoped_sandbox.sandbox_info();
#endif

	// Provide CEF with command-line arguments.
	CefMainArgs main_args(this->m_hInstance);

	// SimpleApp implements application-level callbacks. It will create the first
	// browser instance in OnContextInitialized() after CEF has initialized.
	cefapp_ = new SimpleApp();

	// CEF applications have multiple sub-processes (render, plugin, GPU, etc)
	// that share the same executable. This function checks the command-line and,
	// if this is a sub-process, executes the appropriate logic.
	int exit_code = CefExecuteProcess(main_args, cefapp_.get(), sandbox_info);
	if (exit_code >= 0) {
		// render �� gpu���̵ķ���ֵ>=0,����ֱ�ӷ���false���£�CWinApp��ExitInstance������		
		return FALSE;		
	}
	

	

	// Specify CEF global settings here.
	CefSettings settings;

#if !CEF_ENABLE_SANDBOX
	settings.no_sandbox = true;
#endif
	
	// Initialize CEF.
	CefInitialize(main_args, settings, cefapp_.get(), sandbox_info);

	AfxEnableControlContainer();

	// ���� shell ���������Է��Ի������
	// �κ� shell ����ͼ�ؼ��� shell �б���ͼ�ؼ���
	CShellManager *pShellManager = new CShellManager;

	// ��׼��ʼ��
	// ���δʹ����Щ���ܲ�ϣ����С
	// ���տ�ִ���ļ��Ĵ�С����Ӧ�Ƴ�����
	// ����Ҫ���ض���ʼ������
	// �������ڴ洢���õ�ע�����
	// TODO: Ӧ�ʵ��޸ĸ��ַ�����
	// �����޸�Ϊ��˾����֯��
	SetRegistryKey(_T("Ӧ�ó��������ɵı���Ӧ�ó���"));

	Cmfcwithcef3Dlg dlg;
	m_pMainWnd = &dlg;
	INT_PTR nResponse = dlg.DoModal();
	if (nResponse == IDOK)
	{
		// TODO: �ڴ˷��ô����ʱ��
		//  ��ȷ�������رնԻ���Ĵ���
	}
	else if (nResponse == IDCANCEL)
	{
		// TODO: �ڴ˷��ô����ʱ��
		//  ��ȡ�������رնԻ���Ĵ���
	}

	// ɾ�����洴���� shell ��������
	if (pShellManager != NULL)
	{
		delete pShellManager;
	}


	//CefShutdown();
	// ���ڶԻ����ѹرգ����Խ����� FALSE �Ա��˳�Ӧ�ó���
	//  ����������Ӧ�ó������Ϣ�á�
	return FALSE;
}



BOOL Cmfcwithcef3App::PumpMessage()
{
	
	CefDoMessageLoopWork();
	return CWinApp::PumpMessage();
}


int Cmfcwithcef3App::ExitInstance()
{
	// TODO: �ڴ����ר�ô����/����û���
	if( cefapp_->IsBrowserProcess())
	{
		CefShutdown();
	}
	cefapp_ = NULL;
	return CWinApp::ExitInstance();
}
