@echo off

	pushd ..\qt5
	git submodule foreach --recursive "git clean -dfx"
	popd

rem add qmake.conf for gcc static lib
	xcopy /Y "win32-g++static\*.*"	"..\qt5\qtbase\mkspecs\win32-g++static\"

if "%AUTOBUILD%" == "" (
	pause
)
