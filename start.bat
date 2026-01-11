@echo off
REM Initialize player health, room, and inventory
set HP=10
set Room=start
set SlotOne=None
set SlotTwo=None
set SlotThree=None
set Weapon=Fist
set Damage=0
set Coins=100

echo(
echo Welcome to the Dungeon Crawl!
echo You have %HP% health points.
echo To play, use commands like 'dir' (look), 'type' (read), and 'cd' (move).
echo Your first room is 'entrance'.
echo Type: cd entrance
echo(
pause
