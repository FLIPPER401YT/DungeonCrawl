@echo off
setlocal EnableDelayedExpansion

echo(
echo You Have %Coins% coins
echo(
call %CHECKWEAPONDAMAGE%
echo(
echo You have 3 inventory slots
echo(
echo 1: %SlotOne%
echo 2: %SlotTwo%
echo 3: %SlotThree%
echo(
echo Select an inventory slot to use or choose 4 to exit
set /P Selection="(1/2/3/4): "

if !Selection!==1 (
    call %CHECKINVENTORYITEM% One
) else if !Selection!==2 (
    call %CHECKINVENTORYITEM% Two
) else if !Selection!==3 (
    call %CHECKINVENTORYITEM% Three
) else (
    echo(
)

for %%H in (!HP!) do (
    for %%T in ("!SlotThree!") do (
	for %%W in ("!SlotTwo!") do (
	    for %%O in ("!SlotOne!") do (
        	endlocal
        	set HP=%%H
		set SlotOne=%%~O
		set SlotTwo=%%~W
        	set SlotThree=%%~T
	    )
	)
    )
)