# -ZIMS-Force-Players-to-make-piss-and-poop

1-Open your custom compiles.sqf and into !isDedicated section paste:

player_spawn_2 = compile preprocessFileLineNumbers "dayz_code\compile\player_spawn_2.sqf";
player_BasicNeeds = compile preprocessFileLineNumbers "scripts\zims\player_BasicNeeds.sqf";


2.Place the folders scripts and dayz_code into mpmissions\your map instance.

*Note: into player_spawn_2.sqf you can check the time to try to force player to make piss or poop from this line:
if ((diag_tickTime - _timerBasicsNeeds) > 600) then {
every 600 seconds the script gonna check if player have more than 75% of thirst or hunger and if is true, send a chance to force him to go to the bathroom.
Change the 600 value if u wanna more or less time.

