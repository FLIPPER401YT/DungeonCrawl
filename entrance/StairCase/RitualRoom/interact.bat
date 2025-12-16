@echo off

REM Hi there! If you are reading this, your taking the first step to learning
REM windows batch scripts!!

REM ecall start.bat

set HP=%HP%


echo -
echo "Crying noises..."
echo Crying Woman - Oh goodness sake! My hero, do you happen to have any thing to eat?

set /P userInput=(y/n):

if /I "%userInput%"=="y" (
    echo You lied to the crying woman shameful
    echo .
    echo Crying Woman - Oh deary would you mind sharing a bite?
    TIMEOUT /T 1 /NOBREAK >NUL
    echo Crying Woman - ...
    TIMEOUT /T 1 /NOBREAK >NUL
    echo Crying Woman - What
    TIMEOUT /T 1 /NOBREAK >NUL
    echo Crying Woman - You mean to say you don't have anything
    TIMEOUT /T 1 /NOBREAK >NUL
    echo Crying Woman - AFTER YOU SAID YOU WOULD GIVE SOMETHING TO ME
    TIMEOUT /T 1 /NOBREAK >NUL
    echo Crying Woman - YOU CONNIVING FOOL!!!
    echo Crying Woman - TAKE THIS!
    TIMEOUT /T 1 /NOBREAK >NUL
    echo .
    echo You have taken 1 damage
    set /A HP=%HP% - 1
    echo Your HP is now %HP%
    echo .
    TIMEOUT /T 2 /NOBREAK >NUL
    echo Crying Woman - COME BACK TO ME WHEN YOU HAVE SOME FOOD
    TIMEOUT /T 2 /NOBREAK >NUL
    echo "Crying noises..."
) else (
    echo no
)
pause

