rem @echo off
if exist deploy (
	echo delete "deploy" folder
	del /S /Q deploy >nul
	rmdir /S /Q deploy >nul
)
xcopy /C /Y debug\*.exe deploy\
xcopy /C /Y release\*.exe deploy\

if "%1" == "" (
	windeployqt deploy
) else (
	windeployqt -qmldir %1 deploy
)
