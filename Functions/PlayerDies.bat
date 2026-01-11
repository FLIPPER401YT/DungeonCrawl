@echo off

echo(
echo You have died...
timeout /T 2 /nobreak > NUL
echo(
echo Your soul travels back to the entrance
timeout /T 2 /nobreak > NUL
echo As if by some sheer will you body begins to appear at the entrance
timeout /T 2 /nobreak > NUL
echo You come back to life
timeout /T 2 /nobreak > NUL
echo But you realize that you lost your coins
pause

set HP=10
set Coins=0
cd %ENTRANCE%
call StoneTablet.bat