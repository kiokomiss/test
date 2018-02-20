rem@echo off
setlocal enabledelayedexpansion

set "ffmpeg=C:\Program Files\ffmpeg-20160409-git-0c90b2e-win64-static\bin\ffmpeg.exe"
SET "input=%1"
echo input=!input!

SET "panoramaname=%~n1"
echo panoramaname=!panoramaname!

SET "path=%~dp1"
echo path=!path!

SET "output=!path!stills"
echo output=!output!
	
if not exist "!output!" (md "!output!")
	
"!ffmpeg!" -i "!input!"  "!output!\!panoramaname!_%%04d.bmp"

pause

endlocal


