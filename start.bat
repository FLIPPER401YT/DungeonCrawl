@echo off
REM Initialize player health, room, and inventory
set HP=10
set Room=start
set SlotOne=none
set SlotTwo=none
set SlotThree=none
set Weapon=fist

echo(
echo Welcome to the Dungeon Crawl!
echo You have %HP% health points.
echo To play, use commands like 'dir' (look), 'type' (read), and 'cd' (move).
echo Your first room is 'entrance'.
echo Type: cd entrance
echo(
pause
