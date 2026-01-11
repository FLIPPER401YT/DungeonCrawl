@echo off
set Room=shop

echo(
echo You enter the shop and are immediately surprised
echo There are bright lights everywhere
echo All the wares seem to shine and glitter from the light
echo(
echo To your right you see the Shopkeep
echo He seem to be in his late 50s or early 60s
echo The Shopkeep is a burly gentleman with a golden monacle in his right eye
echo He has shiny gray hair that is slicked back and a well tended, gray, full beard
echo The Shopkeep has a sleek, black blazer with a white button-up shirt and a red bowtie
echo You cannot see his lower half as the wooden cashier counter blocks your vision
echo(
echo The Shopkeep has a serious yet soft aura about him
echo You feel at easy in this room and think you are in good hands with the Shopkeep
echo(
pause
echo(
echo Shopkeep - Hello good sir!
TIMEOUT /T 2 /NOBREAK >NUL
if "%Weapon%"=="Fist" (
    echo Shopkeep - You look new here
    TIMEOUT /T 2 /NOBREAK >NUL
    echo Shopkeep - I don't think I have seen you before
    TIMEOUT /T 2 /NOBREAK >NUL
    echo Shopkeep - You can have this Dagger on the house
    TIMEOUT /T 2 /NOBREAK >NUL
    echo Shopkeep - It would not feel good on my conscience to see a young one such as yourself get hurt out there
    set Weapon=Dagger
    set Damage=2
    TIMEOUT /T 2 /NOBREAK >NUL
)
echo Shopkeep - Have a look at our wares and come see me when you are ready
TIMEOUT /T 2 /NOBREAK >NUL
echo(
echo You can:
echo Buy items (shop)
echo Leave the shop (cd ..)
echo(
pause