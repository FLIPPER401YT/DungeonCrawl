@echo off
setlocal EnableDelayedExpansion

set Room=rift
set "moveBack=0"

echo(
echo To access the rift please enter the password:
set /P riftPass="Password: "
echo(
echo !riftPass!
echo(

if "!riftPass!"=="CodingClub123" (
    echo(
    echo You crack the code the Rift and the doors open
    timeout /T 2 /nobreak > NUL
    echo As the doors open you get blasted with a bright light and a warm breeze
    timeout /T 2 /nobreak > NUL
    echo You enter the Rift and let your vision fade in to white
    timeout /T 2 /nobreak > NUL
    echo(
    echo You have found the secrets of the dungeon and have become one with it now
    echo(
    pause
    echo(
    echo Thank you for playing
    timeout /T 2 /nobreak > NUL
    echo(
    echo Thank you Jacobers for working on this with me
    timeout /T 2 /nobreak > NUL
    echo Your Club President, Hunter
    echo(
    timeout /T 2 /nobreak > NUL
    echo PS-
    echo Feel free to look through all of the files of this project
    echo I challenge you to make your on CMD Dungeon
    echo If you have any questions while going making the project please feel free to reach out to me
    echo "President | Hunter (FLIPPER401) on Discord"
    echo Thanks again
    echo(
    pause
) else (
    echo YOU FOOL
    echo THAT PASSWORD IS WRONG
    echo THE RIFT PUNISHES THEE
    echo(
    call %DAMAGEFLASH%
    echo You have taken 5 damage
    set /A HP-=5
    echo Your HP is now !HP!
    echo(
    pause
    if !HP! LEQ 0 (
	call %DEATH%
	set "moveBack=1"
	goto end
    )
    echo You have been sent back to the entrance
    set "moveBack=1"
)

:end
echo(

for %%H in (!HP!) do (
    for %%C in (!Coins!) do (
        for %%M in (!moveBack!) do (
            endlocal
            set "HP=%%H"
            set "Coins=%%C"
            set "shouldMove=%%M"
        )
    )
)

if "%shouldMove%"=="1" (
    cd..
    call StoneTablet.bat
)