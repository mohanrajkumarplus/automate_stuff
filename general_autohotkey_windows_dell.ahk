#space::Run www.google.com ; open google.com in the default browser
;#a::RunOrActivate("all_in_all.xlsx")
#m::RunOrActivate("ONENOTE.EXE")

*Numpad0::
	coordmode, mouse, screen
	mousemove, 1003,516

*Numpad1::
	coordmode, mouse, screen
	mousemove, 1003,516
	
*Numpad2::
	coordmode, mouse, screen
	mousemove, -1143,668
	
*Numpad3::
	coordmode, mouse, screen
	mousemove, 1217,-713
	
*Numpad4::
	coordmode, mouse, screen
	mousemove, -1404,-803
	
*Numpad5::
	coordmode, mouse, screen
	mousemove, -1143,668
	
*Numpad7::
	coordmode, mouse, screen
	mousemove, -1404,-803
	
*Numpad8::
	coordmode, mouse, screen
	mousemove, -1143,668
	
*Numpad9::
	coordmode, mouse, screen
	mousemove, 1217,-713
	
*Numpad6::
	coordmode, mouse, screen
	mousemove, 1217,-713

$z::
	KeyWait, z, T0.5
	If ErrorLevel {
		Process, Exist, SnippingTool.exe
		If ErrorLevel <> 0 
		{
			Process, Close, SnippingTool.exe
			Sleep, 500
			Run, %windir%\system32\SnippingTool.exe
			Sleep, 500 
			Send ^n
			Sleep, 3500
			;Send ^s
			Send ^c
		}
		else 
		{
			Run, %windir%\system32\SnippingTool.exe
			Sleep, 500 
			Send ^n
			Sleep, 3500
			;Send ^s
			Send ^c
		}
		KeyWait, z
	
	} Else 
		Send z

Return

^k:: ; snipping tool opening in windows 
Process, Exist, SnippingTool.exe
If ErrorLevel <> 0 
{
	Process, Close, SnippingTool.exe
	Sleep, 500
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 500 
	Send ^n
}
else 
{
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 500 
	Send ^n
}
return

;$`:: ; snipping tool opening in windows 
Process, Exist, SnippingTool.exe
If ErrorLevel <> 0 
{
	Process, Close, SnippingTool.exe
	Sleep, 1000
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 1000 
	Send ^n
	Sleep, 3500
	Send ^c
}
else 
{
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 1000 
	Send ^n
	Sleep, 3500
	Send ^c
}
return

`:: ; snipping tool opening in windows 
Process, Exist, SnippingTool.exe
If ErrorLevel <> 0 
{
	Process, Close, SnippingTool.exe
	Sleep, 1000
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 1000 
	Send ^n
	Sleep, 500
	Send ^c	
	Sleep, 1000
	Send ^c	
	Sleep, 1500
	Send ^c
	Sleep, 2500
	Send ^c
	Sleep, 3500
	Send ^c
}
else 
{
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 1000 
	Send ^n
	Sleep, 3500
	Send ^c
}
return

MButton:: ; snipping tool opening in windows 
Process, Exist, SnippingTool.exe
If ErrorLevel <> 0 
{
	Process, Close, SnippingTool.exe
	Sleep, 1000
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 1000 
	Send ^n
	Sleep, 500
	;Sleep, 1000
	;MouseClickDrag, left, 150, 175, 1742, 905,25
	;Sleep, 2000
	Sleep, 1000
	Send ^c	
	Sleep, 1000
	Send ^c	
	Sleep, 1500
	Send ^c
	Sleep, 2500
	Send ^c
	Sleep, 3500
	Send ^c
}
else 
{
	Run, %windir%\system32\SnippingTool.exe
	Sleep, 1000 
	Send ^n
	Sleep, 3500
	Send ^c
}
return

;::wc::welcome :)
:*:uu::100712083985
:*:ll::100229833843
;:*:pp::
;SendRaw, Armmrk1!2
;return

;:*:ty::Thank You :) ; instant conversion
:*:qq::Set_50_
;:*:dd::Cer_1_3_
;:*:pp::( easy ) - 0
:*:ww:: 26 Jan 21, 
:*:ggf::( Gap 1 months ),
:*:sow::"stackoverflow"
:*:ggb::( Gap 1 days ),
:*:ssa::( Streak 3 days ),
:*:gitagent::eval $(ssh-agent) 
:*:gitkey::ssh-add ~/.ssh/bitbucket
:*:gitall::git add --all && git commit -am "aws architect associate" && git push
:*:eee::,exam 
#f::
reload, "C:\Users\Mohan\Documents\AutoHotKeys\general_autohotkey.ahk"
return
#k::run C:\Program Files (x86)\Notepad++\notepad++.exe "C:\Users\Mohan\Documents\AutoHotKeys\general_autohotkey.ahk"
:*:eee::easy 
:*:mmm::medium
:*:hhh::hard
;:*:ttt::tough

;$s::
;	KeyWait, s, T0.5
;	If ErrorLevel {
;		Send ^s
;		KeyWait, s
;	
;	} Else 
;		Send s
;
;Return


^+/::
FormatTime, TimeString,, MMMM d, yyyy hh:mm:ss tt
Send, %TimeString%
return ; insert the date 

^+m:: ; open everything in one go
Run C:\Users\Mohan\AppData\Local\Programs\Notion\Notion.exe
Run C:\Users\Mohan\AppData\Local\Programs\RemNote\RemNote.exe
Run C:\Program Files\Anki\anki.exe
Run C:\Users\Mohan\AppData\Roaming\Zoom\bin\Zoom.exe
return

F12:: ; Win+g
   Send ^c	
   Run http://www.google.com/search?q=meaning+of+%clipboard%
Return

;#g:: ; Win+g - copy the selected text and past it in the internet explorer
;   Send ^c	
;   Run http://www.google.com/search?q=%clipboard%
;Return

; put the below lines in a separate script
Gui,+AlwaysOnTop
Gui, Add, Text,cblue, Windows + A ----> Include all shortcuts over here 
Gui, Font, Norm
Gui, Show
return


; ===========================================================================
; Run a program or switch to it if already running.
;    Target - Program to run. E.g. Calc.exe or C:\Progs\Bobo.exe
;    WinTitle - Optional title of the window to activate.  Programs like
;       MS Outlook might have multiple windows open (main window and email
;       windows).  This parm allows activating a specific window.
; ===========================================================================
RunOrActivate(Target, WinTitle = "")
{
	; Get the filename without a path
	SplitPath, Target, TargetNameOnly

	Process, Exist, %TargetNameOnly%
	If ErrorLevel > 0
		PID = %ErrorLevel%
	Else
		Run, %Target%, , , PID

	; At least one app (Seapine TestTrack wouldn't always become the active
	; window after using Run), so we always force a window activate.
	; Activate by title if given, otherwise use PID.
	If WinTitle <> 
	{
		SetTitleMatchMode, 2
		WinWait, %WinTitle%, , 3
		TrayTip, , Activating Window Title "%WinTitle%" (%TargetNameOnly%)
		WinActivate, %WinTitle%
	}
	Else
	{
		WinWait, ahk_pid %PID%, , 3
		TrayTip, , Activating PID %PID% (%TargetNameOnly%)
		WinActivate, ahk_pid %PID%
	}


	SetTimer, RunOrActivateTrayTipOff, 1500
}

; Turn off the tray tip
RunOrActivateTrayTipOff:
	SetTimer, RunOrActivateTrayTipOff, off
	TrayTip
Return

;~PrintScreen::
;RunOrActivate("Evernote.exe")
;Send {PrintScreen}
;Send ^v
;FormatTime, TimeString,, MMMM d, yyyy hh:mm:ss tt
;Send, %TimeString%
;Send, {ENTER}
;Send, {ENTER}
;return



















