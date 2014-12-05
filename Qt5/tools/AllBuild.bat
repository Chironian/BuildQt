@echo off

	set AUTOBUILD=TRUE

rem cleanup
	cmd /C clearn.bat

pushd ..\Qt540x64g491shared
	cmd /C z_config.bat
	cmd /C z_build.bat
	cmd /C z_install.bat
	popd

pushd ..\Qt540x64g491static
	cmd /C z_config.bat
	cmd /C z_build.bat
	cmd /C z_install.bat
	popd

pause
