xcopy /Y "..\qt5\qtbase\mkspecs\common\*.*"		"qtbase\mkspecs\common\"
xcopy /Y "..\qt5\qtbase\mkspecs\win32-g++static\*.*"	"qtbase\mkspecs\win32-g++static\"

call ..\tools\SetMinGW491r1_64-seh.bat
cmd /C ..\tools\configure.bat -static -developer-build -opensource -nomake examples -nomake tests
