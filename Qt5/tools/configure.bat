@echo off

if "%1" == "" (
	echo	Error!!
	echo	Usage : configure.bat parameters
	exit
)

	call ..\tools\SetEnv.bat

	echo configuring ...
	echo %TIME%

	echo %TIME%			>config.log 2>&1
	call ..\qt5\configure %*	>>config.log 2>>&1 <..\tools\y.txt
	echo %TIME%			>>config.log 2>>&1

	echo %TIME%

if "%AUTOBUILD%" == "" (
	pause
)
