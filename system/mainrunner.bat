@echo off
for /F "delims=" %%a in ("%1") DO ( 
  set bs_line=%%a
  call "%bs_syst%validator.bat" %bs_line%
  if /I "%bs_comk%" EQU "1" call "%bs_cmds%%bs_comd%.bat" %bs_args%
  if /I "%bs_comk%" EQU "0" echo [INVALID:%bs_comd%]
)
goto :EOF
goto :end

:end