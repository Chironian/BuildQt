call ..\tools\SetMinGW482r4_64-seh.bat
cmd /C ..\tools\configure.bat -developer-build -opensource -nomake examples -nomake tests
