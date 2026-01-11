@echo off

if /I "%SlotOne%"=="None" (
    echo(
    echo %1 has been added to SlotOne
    echo(
    set SlotOne=%1
    goto end
) else if /I "%SlotTwo%"=="None" (
    echo(
    echo %1 has been added to SlotTwo
    echo(
    set SlotTwo=%1
    goto end
) else if /I "%SlotThree%"=="None" (
    echo(
    echo %1 has been added to SlotThree
    echo(
    set SlotThree=%1
    goto end
)
:startLoop
echo(
echo You Inventory is full
echo Choose which slot to discard or to discard the item
echo(
echo SlotOne (1): %SlotOne%
echo SlotTwo (2): %SlotTwo%
echo SlotThree (3): %SlotThree%
echo Item (4): %1

choice /C 1234 /M "Choose an option: "
if ERRORLEVEL 4 goto four
if ERRORLEVEL 3 goto three
if ERRORLEVEL 2 goto two
if ERRORLEVEL 1 goto one
echo Invalid input
echo Please try again
pause
goto startLoop

:one
echo(
echo Your %SlotOne% in SlotOne has been discarded
echo It has been replaced with %1
set SlotOne=%1
goto end

:two
echo(
echo Your %SlotTwo% in SlotTwo has been discarded
echo It has been replaced with %1
set SlotTwo=%1
goto end

:three
echo(
echo Your %SlotThree% in SlotThree has been discarded
echo It has been replaced with %1
set SlotThree=%1
goto end

:four
echo(
echo You have discarded the %1
goto end

:end
pause
echo(