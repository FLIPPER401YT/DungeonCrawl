@echo off
setlocal EnableDelayedExpansion

REM Hi there! If you are reading this, your taking the first step to learning
REM windows batch scripts!!

REM ecall start.bat

set HP=%HP%
set Room=RitualRoom

if not defined RitualRoomOn (
    set RitualRoomOn=0
)

if !RitualRoomOn!==0 (
    echo -
    echo "Crying noises..."
    echo Crying Woman - Oh goodness sake! My hero, do you happen to have any thing to eat?
    echo -

    set /P userInput=(y/n):

    if /I "%userInput%"=="y" (
        set hasFood=0
        if "%SlotOne%"=="food" (
            set hasFood=1
        ) else (
            if "%SlotTwo%"=="food" (
                set hasFood=1
            ) else (
                if "%SlotThree%"=="food" (
                    set hasFood=1
                )
            )
        )
        if !hasFood!==1 (
            set RitualRoomOn=1
        ) else (
            echo -
            echo You lied to the crying woman shameful
            echo -
            TIMEOUT /T 3 /NOBREAK >NUL

            echo Crying Woman - Oh deary would you mind sharing a bite?
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - ...
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - What
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - You mean to say you don't have anything
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - AFTER YOU SAID YOU WOULD GIVE SOMETHING TO ME
            TIMEOUT /T 2 /NOBREAK >NUL
            echo Crying Woman - YOU CONNIVING FOOL!!!
            echo Crying Woman - TAKE THIS!
            TIMEOUT /T 2 /NOBREAK >NUL
            %DAMAGEFLASH%
            echo .
            echo You have taken 1 damage
            set /A HP=%HP% - 1 > NUL
            echo Your HP is now %HP%
            echo .
            TIMEOUT /T 2 /NOBREAK >NUL
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
) else (
    echo Ritual Room On
)

pause

