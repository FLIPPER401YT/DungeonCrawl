@echo off
setlocal EnableDelayedExpansion

if /I "!Slot%1!"=="None" (
    echo(
    echo That slot is empty
    echo(
) else if /I "!Slot%1!"=="Food" (
    echo(
    echo You are not hungry right now
    echo(
) else if /I "!Slot%1!"=="HealthPotion" (
    call %USEHEALTHPOTION% %1
) else if /I "!Slot%1!"=="RiftKey" (
    echo(
    echo The password to the Rift is CodingClub123
    echo(
) else (
    echo(
    echo That is not a useable item
    echo Please Try again
    echo(
)

for %%H in (!HP!) do (
    for %%S in ("!Slot%1!") do (
        endlocal
        set HP=%%H
        set Slot%1=%%~S
    )
)