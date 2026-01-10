@echo off

if "%Room%"=="entrance" (
  echo(
  echo You walk down the dimmly lit, stone staircase
  echo Each step down feels as though you are walking into something you can't turn back from
  echo(
  
  cd LevelTwo
  pause
  StoneTablet.bat
) else (
    echo(
    echo You walk back up the dark, dank staircase
    echo You feel a shiver down your spine as if you a running from something terrifying
    echo(

    cd ..
    pause
    StoneTablet.bat
)