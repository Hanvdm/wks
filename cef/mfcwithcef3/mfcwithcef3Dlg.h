
// mfcwithcef3Dlg.h : ͷ�ļ�
//

#pragma once


// Cmfcwithcef3Dlg �Ի���
class Cmfcwithcef3Dlg : public CDialogEx
{
// ����
public:
	Cmfcwithcef3Dlg(CWnd* pParent = NULL);	// ��׼���캯��

// �Ի�������
	enum { IDD = IDD_MFCWITHCEF3_DIALOG };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV ֧��


// ʵ��
protected:
	HICON m_hIcon;

	// ���ɵ���Ϣӳ�亯��
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg VOID OnSize(UINT nType, int cx, int cy);
	DECLARE_MESSAGE_MAP()
private:
	void CreateBrowser();
	void CreateBrowserAsChildWnd();
	void ReposBrowserPos();
public:
	afx_msg BOOL OnEraseBkgnd(CDC* pDC);
	afx_msg void OnDestroy();
};
