call ..\tools\SetMinGW491_64.bat
cmd /C ..\tools\configure.bat -static -developer-build -opensource -nomake examples -nomake tests
