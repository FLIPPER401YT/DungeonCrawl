@echo off

set "HERE=%~dp0"

set "CD_HOOK=%HERE%cd_hook.bat"

doskey cd=chdir $* ^&^& call %CD_HOOK%
