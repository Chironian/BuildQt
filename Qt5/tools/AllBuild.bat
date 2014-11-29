@echo off

	set AUTOBUILD=TRUE

rem cleanup
	cmd /C clearn.bat

rem add qmake.conf for gcc static lib
	xcopy /Y "win32-g++static\*.*"	"..\qt5\qtbase\mkspecs\win32-g++static\"

rem qt-5.3.2-x64-mingw482r4-seh-shared
	pushd ..\qt-5.3.2-x64-mingw482r4-seh-shared
	cmd /C config.bat
	cmd /C build.bat
	cmd /C install.bat
	popd

rem qt-5.3.2-x64-mingw482r4-seh-static
	pushd ..\qt-5.3.2-x64-mingw482r4-seh-static
	cmd /C config.bat
	cmd /C build.bat
	cmd /C install.bat
	popd

rem qt-5.3.2-x64-mingw491r1-seh-shared
	pushd ..\qt-5.3.2-x64-mingw491r1-seh-shared
	cmd /C config.bat
	cmd /C build.bat
	cmd /C install.bat
	popd

rem qt-5.3.2-x64-mingw491r1-seh-static
	pushd ..\qt-5.3.2-x64-mingw491r1-seh-static
	cmd /C config.bat
	cmd /C build.bat
	cmd /C install.bat
	popd

pause
