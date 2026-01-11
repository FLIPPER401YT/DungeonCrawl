@echo off
setlocal EnableDelayedExpansion

if not defined RitualRoomOn (
    set RitualRoomOn=0
)

if !RitualRoomOn!==1 (
    echo(
    echo The ritual circle is on
    echo Would you like to use it?
    set /P useCircle="(y/n): "

    if "!useCircle!"=="y" (
	echo(
	echo The ritual circle lights up with a bright blue flash
	TIMEOUT /T 2 /NOBREAK >NUL
	echo You feel as though the strength is returning to your body
	TIMEOUT /T 2 /NOBREAK >NUL
	echo You are revitalized
	TIMEOUT /T 2 /NOBREAK >NUL
	echo(
	echo You haved gained 5 HP
	set /A HP+=5
	echo Your HP is now !HP!
	echo(
	set RitualRoomOn=0
	pause
    ) else (
	echo You decide to leave the circle be for now
	TIMEOUT /T 2 /NOBREAK >NUL
	echo It will be useful to you later
	echo(
	pause
    )
) else (
    echo(
    echo The ritual circle is off right now
    TIMEOUT /T 2 /NOBREAK >NUL
    echo Find a way to turn it on
    TIMEOUT /T 2 /NOBREAK >NUL
    echo The crying woman might know something
    echo(
    pause
)

for %%H in (!HP!) do (
    for %%R in (!RitualRoomOn!) do (
	endlocal
	set HP=%%H
	set RitualRoomOn=%%R
    )
)