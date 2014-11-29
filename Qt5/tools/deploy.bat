@echo off
if exist deploy (
	echo delete "deploy" folder
	del /S /Q deploy >nul
	rmdir /S /Q deploy >nul
)
xcopy /Y Release\*.exe deploy\
windeployqt deploy
