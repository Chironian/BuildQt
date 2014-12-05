@echo off
	echo	setup environment for building Qt

rem PATH of jom.exe
	set	PATH=%~d0\Qt\Tools\QtCreator\bin;%PATH%

rem PATH of qtbinpatcher.exe
	set	PATH=%~d0\Qt\Tools\QtBinPatcher;%PATH%

rem another environment
	set QMAKESPEC=
	set QTDIR=
	set INSTALL_ROOT=\QtInstall
