@echo off
if [%1] == [] goto :noargs
if exist "%1" goto :fileok
goto :invalid

:noargs
echo No arguments supplied.
echo SYNTAX: %~f0 [script]
goto :EOF
goto :end

:fileok
set bs_rund=%~dp0
call "%bs_rund%..\setpaths.bat"
call "%bs_syst%mainrunner.bat" "%1"
goto :EOF
goto :end

:invalid
echo Invalid file name.
goto :EOF
goto :end

:end