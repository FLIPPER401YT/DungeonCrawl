@echo off
setlocal EnableDelayedExpansion

REM Hi there! If you are reading this, your taking the first step to learning
REM windows batch scripts!!

REM ecall start.bat

set Room=RitualRoom
set "moveBack=0"

if not defined RitualRoomOn (
    set RitualRoomOn=0
)

if !RitualRoomOn!==0 (
    echo(
    echo "Crying noises..."
    echo Crying Woman - Oh goodness sake! My hero, do you happen to have any thing to eat?
    echo(

    set /P userInput="(y/n): "
    
    if /I "!userInput!"=="y" (
        set hasFood=0
        if /I "%SlotOne%"=="food" (
            set hasFood=1
	    set SlotOne=None
        ) else (
            if /I "%SlotTwo%"=="food" (
                set hasFood=1
		set SlotTwo=None
            ) else (
                if /I "%SlotThree%"=="food" (
                    set hasFood=1
		    set SlotThree=None
                ) else (
		    set hasFood = 0
		)
            )
        )
        if !hasFood!==1 (
            set RitualRoomOn=1
	    TIMEOUT /T 1 /NOBREAK >NUL
	    echo Crying Woman - Thank you kind hero
	    TIMEOUT /T 2 /NOBREAK >NUL
	    echo Crying Woman - You have saved me
	    TIMEOUT /T 2 /NOBREAK >NUL
	    echo Crying Woman - Allow me to return the favor by activating the ritual circle
	    TIMEOUT /T 2 /NOBREAK >NUL
	    echo Crying Woman - You can use the circle once to revitalize yourself
	    TIMEOUT /T 2 /NOBREAK >NUL
        ) else (
            echo(
            echo You lied to the crying woman, shameful
            echo(
            TIMEOUT /T 3 /NOBREAK >NUL

            echo Crying Woman - Oh deary would you mind sharing a bite?
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - ...
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - What?
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - You mean to say you don't have anything
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - AFTER YOU SAID YOU WOULD GIVE SOMETHING TO ME
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - YOU CONNIVING FOOL!!!
            echo Crying Woman - TAKE THIS!
            set /A HP-=1 > NUL
            TIMEOUT /T 2 /NOBREAK >NUL
            call %DAMAGEFLASH%
            echo(
            echo You have taken 1 damage
            echo Your HP is now !HP!
            echo(
            TIMEOUT /T 2 /NOBREAK >NUL
	    if !HP! LEQ 0 (
		call %DEATH%
		set "moveBack=1"
		goto end
	    )
            echo Crying Woman - COME BACK TO ME WHEN YOU HAVE SOME FOOD
            TIMEOUT /T 2 /NOBREAK >NUL
            echo "Crying noises..."
        )
    ) else (
        echo Crying Woman - No...
        TIMEOUT /T 2 /NOBREAK >NUL
        echo "Crying gets louder"
        TIMEOUT /T 2 /NOBREAK >NUL
        echo Crying Woman - It has been so long since I had even a small morsel
        TIMEOUT /T 2 /NOBREAK >NUL
        echo Crying Woman - So long...
        TIMEOUT /T 2 /NOBREAK >NUL
        echo Crying Woman - Please, hero
        TIMEOUT /T 2 /NOBREAK >NUL
        echo Crying Woman - Find something... Anything for a poor soul like me to eat
    )
)

if !RitualRoomOn!==1 (
    echo Crying Woman - The ritual circle is has been activated
    TIMEOUT /T 2 /NOBREAK >NUL
    echo Crying Woman - Feel free to use it whenever you need, my hero
    echo(
    echo You Can:
    echo Use ritual circle (RitualCircle)
    echo(
)

:end

for %%H in (!HP!) do (
    for %%T in ("!SlotThree!") do (
	for %%W in ("!SlotTwo!") do (
	    for %%O in ("!SlotOne!") do (
		for %%R in (!RitualRoomOn!) do (
		    for %%C in (!Coins!) do (
			for %%M in (!moveback!) do (
        	            endlocal
        	            set HP=%%H
		            set SlotOne=%%~O
		            set SlotTwo=%%~W
        	            set SlotThree=%%~T
		            set RitualRoomOn=%%R
			    set Coins=%%C
			    set "shouldMove=%%M"
			)
		    )
		)
	    )
	)
    )
)
pause

if "%shouldMove%"=="1" (
    cd %ENTRANCE%
    call StoneTablet.bat
)

