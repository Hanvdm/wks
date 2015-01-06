
// mfcwithcef3Dlg.cpp : ʵ���ļ�
//

#include "stdafx.h"
#include "mfcwithcef3.h"
#include "mfcwithcef3Dlg.h"
#include "afxdialogex.h"
#include "simple_app.h"
#include "simple_handler.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

CefRefPtr<SimpleHandler> g_handler;

// ����Ӧ�ó��򡰹��ڡ��˵���� CAboutDlg �Ի���

class CAboutDlg : public CDialogEx
{
public:
	CAboutDlg();

// �Ի�������
	enum { IDD = IDD_ABOUTBOX };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV ֧��

// ʵ��
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialogEx(CAboutDlg::IDD)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialogEx)
END_MESSAGE_MAP()


// Cmfcwithcef3Dlg �Ի���




Cmfcwithcef3Dlg::Cmfcwithcef3Dlg(CWnd* pParent /*=NULL*/)
	: CDialogEx(Cmfcwithcef3Dlg::IDD, pParent)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void Cmfcwithcef3Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(Cmfcwithcef3Dlg, CDialogEx)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_SIZE()
	ON_WM_ERASEBKGND()
	ON_WM_DESTROY()
	ON_WM_CLOSE()
	ON_BN_CLICKED(IDC_BUTTON1, &Cmfcwithcef3Dlg::OnBnClickedButton1)
	ON_BN_CLICKED(IDC_BUTTON2, &Cmfcwithcef3Dlg::OnBnClickedButton2)
END_MESSAGE_MAP()


// Cmfcwithcef3Dlg ��Ϣ�������

BOOL Cmfcwithcef3Dlg::OnInitDialog()
{
	CDialogEx::OnInitDialog();

	// ��������...���˵�����ӵ�ϵͳ�˵��С�

	// IDM_ABOUTBOX ������ϵͳ���Χ�ڡ�
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		BOOL bNameValid;
		CString strAboutMenu;
		bNameValid = strAboutMenu.LoadString(IDS_ABOUTBOX);
		ASSERT(bNameValid);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// ���ô˶Ի����ͼ�ꡣ��Ӧ�ó��������ڲ��ǶԻ���ʱ����ܽ��Զ�
	//  ִ�д˲���
	SetIcon(m_hIcon, TRUE);			// ���ô�ͼ��
	SetIcon(m_hIcon, FALSE);		// ����Сͼ��

	// TODO: �ڴ���Ӷ���ĳ�ʼ������

	CreateBrowserAsChildWnd();
	return TRUE;  // ���ǽ��������õ��ؼ������򷵻� TRUE
}

void Cmfcwithcef3Dlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialogEx::OnSysCommand(nID, lParam);
	}
}

// �����Ի��������С����ť������Ҫ����Ĵ���
//  �����Ƹ�ͼ�ꡣ����ʹ���ĵ�/��ͼģ�͵� MFC Ӧ�ó���
//  �⽫�ɿ���Զ���ɡ�

void Cmfcwithcef3Dlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // ���ڻ��Ƶ��豸������

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// ʹͼ���ڹ����������о���
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// ����ͼ��
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialogEx::OnPaint();
	}
}

//���û��϶���С������ʱϵͳ���ô˺���ȡ�ù��
//��ʾ��
HCURSOR Cmfcwithcef3Dlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}

void Cmfcwithcef3Dlg::CreateBrowser()
{
	CefWindowInfo window_info;

#if defined(OS_WIN)
	// On Windows we need to specify certain flags that will be passed to
	// CreateWindowEx().
	window_info.SetAsPopup(NULL, "cefsimple");
#endif

	// SimpleHandler implements browser-level callbacks.
	CefRefPtr<SimpleHandler> handler(new SimpleHandler());

	// Specify CEF browser settings here.
	CefBrowserSettings browser_settings;

	std::string url;

	// Check if a "--url=" value was provided via the command-line. If so, use
	// that instead of the default URL.
	CefRefPtr<CefCommandLine> command_line =
		CefCommandLine::GetGlobalCommandLine();
	url = command_line->GetSwitchValue("url");
	if (url.empty())
		url = "http://www.baidu.com";

	// Create the first browser window.
	CefBrowserHost::CreateBrowser(window_info, handler.get(), url,
		browser_settings, NULL);
}

void Cmfcwithcef3Dlg::CreateBrowserAsChildWnd()
{
	CRect rcClient;
	GetClientRect(rcClient);
	rcClient.DeflateRect(1,1,1,1);

	RECT rcBrowser = *(LPRECT)rcClient;

	CefWindowInfo window_info;

#if defined(OS_WIN)
	// On Windows we need to specify certain flags that will be passed to
	// CreateWindowEx().
	window_info.SetAsChild(GetSafeHwnd(), rcBrowser);
#endif

	// SimpleHandler implements browser-level callbacks.
	g_handler = new SimpleHandler();

	// Specify CEF browser settings here.
	CefBrowserSettings browser_settings;

	std::string url;

	// Check if a "--url=" value was provided via the command-line. If so, use
	// that instead of the default URL.
	CefRefPtr<CefCommandLine> command_line =
		CefCommandLine::GetGlobalCommandLine();
	url = command_line->GetSwitchValue("url");
	if (url.empty())
		url = "http://www.baidu.com";

	// Create the first browser window.
	CefBrowserHost::CreateBrowser(window_info, g_handler.get(), url,
		browser_settings, NULL);
}

VOID Cmfcwithcef3Dlg::OnSize(UINT nType, int cx, int cy)
{
	if (g_handler.get())
	{
		ReposBrowserPos();
	}
}

void Cmfcwithcef3Dlg::ReposBrowserPos()
{
	g_handler->OnContainerWndSizeChanged(GetSafeHwnd());
}



BOOL Cmfcwithcef3Dlg::OnEraseBkgnd(CDC* pDC)
{
	// TODO: �ڴ������Ϣ�����������/�����Ĭ��ֵ
	
	return CDialogEx::OnEraseBkgnd(pDC);
}


void Cmfcwithcef3Dlg::OnDestroy()
{
	CDialogEx::OnDestroy();

	// TODO: �ڴ˴������Ϣ����������
	
}


void Cmfcwithcef3Dlg::OnClose()
{
	if (g_handler->IsDoCloseCalled())
	{
		CDialogEx::OnClose();
	}
	else
	{
		g_handler->CloseAllBrowsers(false);
		return;
	}
}


void Cmfcwithcef3Dlg::OnBnClickedButton1()
{
	// TODO: �ڴ���ӿؼ�֪ͨ����������
	CFileDialog dlg(true);
	if(IDOK == dlg.DoModal() )
	{
		CString strFilePath = dlg.GetPathName();
		
		g_handler->OpenURL((LPCTSTR)strFilePath);
	}

}


void Cmfcwithcef3Dlg::OnBnClickedButton2()
{
	// TODO: �ڴ���ӿؼ�֪ͨ����������
	g_handler->Refresh();
}
