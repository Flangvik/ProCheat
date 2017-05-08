
' Demo just playing the 01.mps soundtrack (BEEP) to indicate that the script did run on the system
' And that whatever placed before this code has been executed,execution of the cheat etc..


Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")
Directory = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\")) & "01.mp3"

oPlayer.URL = Directory 
oPlayer.controls.play 
While oPlayer.playState <> 1
  WScript.Sleep 100
Wend

oPlayer.close
