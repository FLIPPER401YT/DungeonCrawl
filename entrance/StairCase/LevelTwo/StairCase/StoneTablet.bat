@echo off

if "%Room%"=="levelTwo" (
  echo(
  echo You walk down an eerie, stone staircase
  echo There are dim candels lining the walls
  echo You feel a scary aura emanating from the next floor
  echo(
  
  cd LevelThree
  pause
  call StoneTablet.bat
) else (
    echo(
    echo You walk back up the dim, candle lit staircase
    echo You feel almost relieved to go back up to LevelTwo
    echo(

    cd ..
    pause
    call StoneTablet.bat
)