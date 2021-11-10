@echo off
cd "%HOMEPATH%\Downloads"
del "koreanchat-creo-1.12-1.9.jar"
start "" /MAX "%localappdata%\Hyfata\Hyminum\Application\hyminum.exe"
cls
echo 한글채팅 설치를 건너뛰려면 이 창을 닫으십시오.
:main
IF EXIST "koreanchat-creo-1.12-1.9.jar" (
	move "koreanchat-creo-1.12-1.9.jar" "%appdata%\.nfclient\mods\1.12.2\"
	taskkill /f /im "hyminum.exe"
	exit
) ELSE (
	goto main
)