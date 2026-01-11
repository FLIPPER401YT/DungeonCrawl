@echo off

REM get the path where this file lives
set "HERE=%~dp0"
set "DAMAGEFLASH=%CD%\Functions\DamageFlash.bat"
set "OpenInventory=%CD%\Functions\Inventory.bat"
set "CHECKINVENTORYITEM=%CD%\Functions\CheckItem.bat"
set "USEHEALTHPOTION=%CD%\Functions\HealthPotion.bat"
set "CHECKWEAPONDAMAGE=%CD%\Functions\WeaponDamage.bat"
set "ADDITEMTOINVENTORY=%CD%\Functions\AddItem.bat"
set "ENTRANCE=%CD%\entrance"
set "DEATH=%CD%\Functions\PlayerDies.bat"

REM get the path where cd_hook lives
set "CD_HOOK=%HERE%cd_hook.bat"

REM call CD_HOOK any time the user inputs cd or cd.. for this session
doskey cd=chdir $* ^&^& call %CD_HOOK%

REM run the first stonetablet bat file
call start.bat
