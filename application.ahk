; 获取当前路径的函数
getExplorerPath(){
    IfWinExist, ahk_class CabinetWClass
    {
        ControlGetText,address,ToolbarWindow323,ahk_class CabinetWClass
        StringLen, length, address
        StringRight, path, address, length-4
        return path
    }
    return
}

SetTitleMatchMode, 2 ;

; ================= 自己安装的应用 Alt ======================
; DBeaver数据库
!D::  ; Alt+D
if WinActive("DBeaver")
    WinMinimize ;
else if WinExist("DBeaver")
	WinActivate ;
else
	 Run D:\program\dbeaver\dbeaver.exe ;
return

; Fiddler抓包
!F::  ; Alt+F
if WinActive("Fiddler")
    WinMinimize ;
else if WinExist("Fiddler")
	WinActivate ;
else
	 Run D:\program\Fiddler\Fiddler.exe ;
return

; Postman接口请求
!P::  ; Alt+P
if WinActive("Postman")
    WinMinimize ;
else if WinExist("Postman")
	WinActivate ;
else
	 Run C:\Users\glodon\AppData\Local\Postman\app-9.0.9\Postman.exe ;
return

; 企业微信
!W::  ; Alt+W
if WinActive("企业微信")
    WinMinimize ;
else if WinExist("企业微信")
	WinActivate ;
else
	 Run C:\Program Files (x86)\WXWork\WXWork.exe ;
return

; Chrome浏览器
!G::  ; Alt+G
if WinActive("Chrome")
    WinMinimize ;
else if WinExist("Chrome")
	WinActivate ;
else
	 Run C:\Users\glodon\AppData\Local\Google\Chrome\Application\chrome.exe --profile-directory="Default" ;
return

; IDEA
!i::  ; Alt+i
if WinActive("IntelliJ IDEA")
    WinMinimize ;
else if WinExist("IntelliJ IDEA")
	WinActivate ;
else
	 Run D:\program\ideaIU\bin\idea64.exe ;
return

; IDEA
!A::  ; Alt+A
if WinActive("IntelliJ IDEA")
    WinMinimize ;
else if WinExist("IntelliJ IDEA")
	WinActivate ;
else
	 Run D:\program\ideaIU\bin\idea64.exe ;
return


; VPN
!V::  ; Alt+V
if WinActive("VPN")
    WinMinimize ;
else if WinExist("VPN")
	WinActivate ;
else
	 Run C:\Program Files\Glodon Networks\MotionPro VPN Client\MotionPro.exe ;
return

; Notepad++
!N::  ; Alt+N
if WinActive("Notepad++")
    WinMinimize ;
else if WinExist("Notepad++")
	WinActivate ;
else
	 Run D:\program\Notepad++\notepad++.exe ;
return

; Jmeter
!J::  ; Alt+J
if WinActive("JMeter")
    WinMinimize ;
else if WinExist("JMeter")
	WinActivate ;
else
	 Run D:\program\apache-jmeter-5.4.3\bin\jmeter.bat ;
return

; python
!+P::  ; Alt+Shift+P
if WinActive("pyutils")
    WinMinimize ;
else if WinExist("pyutils")
	WinActivate ;
else
	 Run D:\program\PyCharm 2021.2.3\bin\pycharm64.exe ;
return

; 腾讯会议
!+T::  ; Alt+Shift+T
if WinActive("腾讯会议")
    WinMinimize ;
else if WinExist("腾讯会议")
	WinActivate ;
else
	 Run C:\Program Files (x86)\Tencent\WeMeet\wemeetapp.exe ;
return

; ================= 系统应用 Win ======================
; excel
#!E::  ; Win+Alt+E
if WinActive("Excel")
    WinMinimize ;
else if WinExist("Excel")
	WinActivate ;
else
	Run C:\Program Files\Microsoft Office\Office16\EXCEL.EXE
return

; Word文档
#W::  ; Win+W
if WinActive("Visio Professional")
    WinMinimize ;
else if WinExist("Visio Professional")
	WinActivate ;
else
	Run C:\Program Files\Microsoft Office\Office16\VISIO.EXE
return

; 退出
#Q::  ; Win+Q
WinGetActiveTitle, Title
if WinActive(Title)
    WinClose ;
return

; Outlook邮箱
#O::  ; Win+O
if WinActive("O")
    WinMinimize ;
else if WinExist("Outlook")
	WinActivate ;
else
	Run C:\Program Files\Microsoft Office\Office16\OUTLOOK.EXE
return

; IE
#+E::  ; Win+Shift+E
if WinActive("Internet Explore")
    WinMinimize ;
else if WinExist("Internet Explore")
	WinActivate ;
else
	 Run C:\Program Files\Internet Explorer\iexplore.exe ;
return

; 堡垒机
#R::  ; Win+R
if WinActive("10.197.3.23")
    WinMinimize ;
else if WinExist("10.197.3.23")
	WinActivate ;
else
	 MsgBox, 堡垒机未启动 ；
return

; 新建cmd
#+T::  ; Win+Shift+T
Run D:\command\dos.bat

; cmd
#T::  ; Win+T
if WinActive("cmd.exe")
    WinMinimize ;
else if WinExist("cmd.exe")
	WinActivate ;
else
	Run C:\Windows\System32\cmd.exe
return

;================= 剪切板 ==============================================================
^!+G::  ; Ctrl+Alt+Shift+G
clipboard := "#Ney940s"
return


#Include D:\git\testdb.ahk