Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")
Directory = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\")) & "01.mp3"

' Play audio
oPlayer.URL = Directory 
oPlayer.controls.play 
While oPlayer.playState <> 1 ' 1 = Stopped
  WScript.Sleep 100
Wend

' Release the audio file
oPlayer.close