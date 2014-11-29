@echo off

	call ..\tools\SetEnv.bat

	echo building ...
	echo %TIME%

	echo %TIME%			 >build.log 2>&1
	jom.exe	%*			>>build.log 2>>&1
	if errorlevel 1 echo Build error!  Please check build.log.
	echo %TIME%			>>build.log 2>>&1

	echo %TIME%

if "%AUTOBUILD%" == "" (
	pause
)
