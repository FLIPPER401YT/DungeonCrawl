@echo off

echo(
echo You have %Coins% coins
echo(

call %CHECKWEAPONDAMAGE%

echo The shop has:
echo(
echo Food - 10 coins
echo(
echo HealPotion - 50 coins
echo(
echo Sword (5 damage) - 100 coins
echo(
echo Axe (10 damage) - 250 coins
echo(
echo WarHammer (20 damage) - 750 coins
echo(
echo RiftKey - 500 coins
echo(
echo Choose an item to buy or exit

set /P shopChoice="(Food/HealthPotion/RiftKey/Sword/Axe/WarHammer/Exit): "

if /I "%shopChoice%"=="riftkey" (
    if %Coins% GEQ 500 (
	echo(
        set /A Coins-=500
	echo You have successfully bought the RiftKey
	echo(
	pause
	call %ADDITEMTOINVENTORY% RiftKey
    ) else (
	echo(
	echo You do not have enough money
	echo Please try again
	echo(
	pause
	call shop
    )
) else if /I "%shopChoice%"=="food" (
    if %Coins% GEQ 10 (
	echo(
        set /A Coins-=10
	echo You have successfully bought the Food
	echo(
	pause
	call %ADDITEMTOINVENTORY% Food
    ) else (
	echo(
	echo You do not have enough money
	echo Please try again
	echo(
	pause
	call shop
    )
) else if /I "%shopChoice%"=="healthpotion" (
    if %Coins% GEQ 50 (
	echo(
	set /A Coins-=50
	echo You have successfully bought the HealthPotion
	echo(
	pause
	call %ADDITEMTOINVENTORY% HealthPotion
    ) else (
	echo(
	echo You do not have enough money
	echo Please try again
	echo(
	pause
	call shop
    )
) else if /I "%shopChoice%"=="sword" (
    if /I "%Weapon%"=="sword" (
	echo(
	echo You arlready have that weapon
	echo(
	pause
	call shop
    ) else if %Coins% GEQ 100 (
	set /A Coins-=100
	set Weapon=Sword
	set Damage=5
	echo(
	echo You have successfully bought the Sword
	echo(
    ) else (
	echo(
	echo You do not have enough money
	echo Please try again
	echo(
	pause
	call shop
    )
) else if /I "%shopChoice%"=="axe" (
    if /I "%Weapon%"=="axe" (
	echo(
	echo You arlready have that weapon
	echo(
	pause
	call shop
    ) else if %Coins% GEQ 250 (
	set /A Coins-=250
	set Weapon=Axe
	set Damage=10
	echo(
	echo You have successfully bought the Axe
	echo(
    ) else (
	echo(
	echo You do not have enough money
	echo Please try again
	echo(
	pause
	call shop
    )
) else if /I "%shopChoice%"=="warhammer" (
    if /I "%Weapon%"=="warhammer" (
	echo(
	echo You arlready have that weapon
	echo(
	pause
	call shop
    ) else if %Coins% GEQ 750 (
	set /A Coins-=750
	set Weapon=WarHammer
	set Damage=20
	echo(
	echo You have successfully bought the WarHammer
	echo(
    ) else (
	echo(
	echo You do not have enough money
	echo Please try again
	echo(
	pause
	call shop
    )
) else (
    echo(
    echo You can:
    echo Buy items (shop)
    echo Leave the shop (cd ..)
    echo(
)