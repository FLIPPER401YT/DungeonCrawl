Rem Hi there! If you are reading this, your taking the first step to learning
Rem windows batch scripts!!

@ echo off

ecall start.bat

set HP=%HP%


echo -
echo "Crying noises..."
echo Crying Woman - "Oh goodness sake! My hero, do you happen to have any thing to eat?"

set /P userInput=(y/n):

if /I "%userInput%"=="y" (
    echo You lied to th crying woman shameful
    echo Crying Woman - "Oh deary would you mind sharing a bite?"
) else (
    echo no
)


