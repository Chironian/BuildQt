@echo off
	echo	setup environment for building Qt

rem PATH of jom.exe
	set	PATH=%~d0\Qt\Tools\QtCreator\bin;%PATH%

rem PATH of qtbinpatcher.exe
	set	PATH=%~d0\Qt\qt-5.3.2-x64-mingw491r1-seh\qt-5.3.2-x64-mingw491r1-seh;%PATH%

rem another environment
	set QMAKESPEC=
	set QTDIR=
	set INSTALL_ROOT=\QtInstall
