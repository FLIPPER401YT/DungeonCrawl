@echo off
setlocal EnableDelayedExpansion

set moveBack=0

:start
echo(
echo You are fighting the Goblin
echo(
echo You have %HP% HP
echo(
echo The Goblin has %GoblinHP% HP
echo(
echo(
echo You Can:
echo Attack
echo Block
echo Run
set /P attackChoice="(Attack/Block/Run): "

if /I "%attackChoice%"=="attack" (
    echo(
    echo You attack the Goblin
    echo(
    timeout /T 2 /nobreak > NUL
    set /A goblinAttack=%RANDOM% %% 2
    if !goblinAttack!==0 (
	echo You hit the Goblin for %Damage% damage
	set /A GoblinHP-=%Damage%
	echo(
	pause
	if !GoblinHP! LEQ 0 (
	    goto end
	)
	echo(
	echo The Goblin attacks you
	echo(
	timeout /T 2 /nobreak > NUL
	call %DAMAGEFLASH%
	echo You take 1 damage
	set /A HP-=1
	pause
	if !HP! LEQ 0 (
	    call %DEATH%
	    set "moveBack=1"
	    goto onlyPersist
	)
    ) else (
	echo The Goblin blocks your attack
	echo(
	pause
    )
    goto start
) else if /I "%attackChoice%"=="block" (
    echo(
    echo You try to block the attack from the Goblin
    echo(
    timeout /T 2 /nobreak > NUL
    set /A goblinAttack=%RANDOM% %% 2
    if !goblinAttack!==0 (
	echo You block the Goblin's attack
	echo(
    ) else (
	echo You and the Goblin both try and block
	echo(
    )
    pause
    goto start
) else if /I "%attackChoice%"=="run" (
    echo(
    echo You run away from the Goblin
    echo(
    pause
    goto finish
) else (
    echo(
    echo Invalid choice
    echo Try again
    pause
    echo(
    goto start
)

:end
echo You have defeated the Goblin
echo The Goblin dropped 50 coins
echo(
set /A Coins+=50
echo You now have !Coins! coins
echo(
echo In your triumphent victory over the Goblin, you leave the cave
echo(
pause

:finish

for %%H in (!HP!) do (
    for %%G in (!GoblinHP!) do (
	for %%C in (!Coins!) do (
	    for %%M in (!moveBack!) do (
                endlocal
                set HP=%%H
                set GoblinHP=%%G
	        set Coins=%%C
		set "shouldMove=%%M"
	    )
	)
    )
)

cd ..
call StoneTablet.bat
goto stop

:onlyPersist

for %%H in (!HP!) do (
    for %%G in (!GoblinHP!) do (
	for %%C in (!Coins!) do (
	    for %%M in (!moveBack!) do (
                endlocal
                set HP=%%H
                set GoblinHP=%%G
	        set Coins=%%C
		set "shouldMove=%%M"
	    )
	)
    )
)

:stop
echo(