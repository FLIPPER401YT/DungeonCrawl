@echo off
setlocal EnableDelayedExpansion

set "Slot%1=None"

set /A HP+=5 > NUL
echo(
echo You have healed for 5 HP
echo Your HP is now !HP!
echo(

for %%H in (!HP!) do (
    for %%S in ("!Slot%1!") do (
        endlocal
        set HP=%%H
        set Slot%1=%%~S
    )
)