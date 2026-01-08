@echo off

REM get the path where this file lives
set "HERE=%~dp0"
set "DAMAGEFLASH=%CD%\DamageFlash.bat"

REM get the path where cd_hook lives
set "CD_HOOK=%HERE%cd_hook.bat"

REM call CD_HOOK any time the user inputs cd or cd.. for this session
doskey cd=chdir $* ^&^& call %CD_HOOK%

REM run the first stonetablet bat file
start.bat
