@echo off

if "%Weapon%"=="Fist" (
    echo(
    echo Your Fist Does 0 damage
    echo(
    set Damage=0
) else if "%Weapon%"=="Dagger" (
    echo(
    echo Your Dagger Does 2 damage
    echo(
    set Damage=2
) else if "%Weapon%"=="Sword" (
    echo(
    echo Your Sword Does 5 damage
    echo(
    set Damage=5
) else if "%Weapon%"=="Axe" (
    echo(
    echo Your Axe Does 10 damage
    echo(
    set Damage=10
else if "%Weapon%"=="WarHammer" (
    echo(
    echo Your WarHammer Does 20 damage
    echo(
    set Damage=20
)