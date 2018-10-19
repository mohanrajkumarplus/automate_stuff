#Include Gdip_All.ahk

^k::
KeyWait, LCtrl
KeyWait, RCtrl
KeyWait, k
pToken := Gdip_Startup()
pBitmap := Gdip_BitmapFromScreen()
Gdip_SaveBitmapToFile(pBitmap, A_ScriptDir . "\" . A_Now . ".jpg")
Gdip_DisposeImage(pBitmap)
Gdip_Shutdown(pToken)
return