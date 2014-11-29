@echo off

	call ..\tools\SetEnv.bat

	echo installing ...
	echo %TIME%

	echo %TIME%			 >instal.log 2>&1
	jom.exe install 		>>instal.log 2>>&1
	echo %TIME%			>>instal.log 2>>&1

	echo QtBinPatcher ...
	echo %TIME%

	set PWD=%CD%

	cd %CD:~0,2%%INSTALL_ROOT%%CD:~2%\qtbase
	echo %TIME%			 >%PWD%\binpatch.log 2>&1
	qtbinpatcher.exe --verbose	>>%PWD%\binpatch.log 2>>&1
	echo %TIME%			>>%PWD%\binpatch.log 2>>&1

	echo %TIME%

if "%AUTOBUILD%" == "" (
	pause
)
