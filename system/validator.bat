@echo off
set bs_comd=%1
set bs_args=%2 %3 %4 %5 %6 %7 %8 %9
set bs_comk=0
if exist "%bs_cmds%%bs_comd%.bat" set bs_comk=1
goto :EOF
goto :end

:end