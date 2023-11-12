@echo off
setlocal enabledelayedexpansion

for /f %%a in ('python.exe C:\Users\simo\projects\python\dir_jump\dj.py %1') do (
    cd %%a
)
