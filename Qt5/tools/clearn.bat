@echo off

	pushd ..\qt5
	git submodule foreach --recursive "git clean -dfx"
	popd

if "%AUTOBUILD%" == "" (
	pause
)
