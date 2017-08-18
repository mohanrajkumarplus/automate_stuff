#space::Run www.google.com ; open google.com in the default browser
#a::RunOrActivate("all_in_all.xlsx")
#s::
RunOrActivate("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")
Send ^t
return
#m::RunOrActivate("ONENOTE.EXE")
^k:: ; snipping tool opening in windows 
Process, Exist, SnippingTool.exe
If ErrorLevel <> 0 
{
	Process, Close, SnippingTool.exe
	Run, %windir%\system32\SnippingTool.exe
}
else 
{
	Run, %windir%\system32\SnippingTool.exe
}
return

::wc::welcome :)

:*:ty::Thank You :) ; instant conversion

^+/::
FormatTime, TimeString,, MMMM d, yyyy hh:mm:ss tt
Send, %TimeString%
return ; insert the date 

^+m:: ; open everything in one go
Run all_in_all.xlsx
Run notepad++.exe
return

#g:: ; Win+g - copy the selected text and past it in the internet explorer
   Send ^c	
   Run http://www.google.com/search?q=%clipboard%
Return

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



