@ echo off

call start.bat

set HP=%HP%


echo -
echo "Crying noises..."
echo Crying Woman - "Oh goodness sake! My hero, do you happen to have any thing to eat?"

set /P userInput=(y/n):

if /I "%userInput%"=="y" (
    echo You lied to the crying woman shameful
    echo Crying Woman - "Oh deary would you mind sharing a bite?"
) else (
    echo no
)


