@echo off
if "%Weapon%"=="Fist" (
    echo(
    echo You try to enter the massive cave entrance
    echo You stop yourself as you think that you should talk to the Shopkeep first
    echo You head back
    echo(
    pause
    cd ..
    call StoneTablet.bat
) else (
    set Room=GoblinDen
    set GoblinHP=10
    
    echo(
    echo You walk into the darkness of the cave
    echo As you move onwards you hear a shuffling further up in the cave
    echo You walk towards the sound and suddenly a goblin jumps out at you
    echo You must fight it or run away
    echo(
    echo You can:
    echo Fight (fight)
    echo Run (cd ..)
    echo(
)