@echo off
setlocal enabledelayedexpansion

set "arguments="
:concat_args
if not "%1"=="" (
    set "arguments=!arguments! %1"
    shift
    goto :concat_args
)
for /f %%a in ('python.exe C:\Users\simo\projects\python\dir_jump\dj.py !arguments!') do set "directory=%%a"
cd %directory%
