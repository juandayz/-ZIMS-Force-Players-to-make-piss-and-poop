//by juandayz

private ["_needpiss","_needpoo"];
_needpiss = (player getvariable ["needpiss",0] ==1);
_needpoo = (player getvariable ["needpoo",0] ==1);

if (_needpiss) then {
if (s_player_makepiss < 0) then {
s_player_makepiss = player addAction [("<t color=""#FFFF66"">" + ("Make Pee") + "</t>"), "scripts\zims\eat_drink_scripts\pisspoo.sqf"];};
} else {
player removeAction s_player_makepiss;
s_player_makepiss = -1;
};

if (_needpoo) then {
if (s_player_makepoo < 0) then {
s_player_makepoo = player addAction [("<t color=""#663300"">" + ("Make Poop") + "</t>"), "scripts\zims\eat_drink_scripts\pisspoo.sqf"];};
} else {
player removeAction s_player_makepoo;
s_player_makepoo = -1;
};


















_needpiss = (player getvariable ["needpiss",0] ==1);
_needpoo = (player getvariable ["needpoo",0] ==1);


if (_needpiss) then {
if (s_player_makepiss < 0) then {
s_player_makepiss = player addAction [("<t color=""#3399cc"">" + ("Make Pee") + "</t>"), "scripts\zims\eat_drink_scripts\pisspoo.sqf"];};
} else {
player removeAction s_player_makepiss;
s_player_makepiss = -1;
};



if (_needpoo) then {
if (s_player_makepoo < 0) then {
s_player_makepoo = player addAction [("<t color=""#3399cc"">" + ("Make Poop") + "</t>"), "scripts\zims\eat_drink_scripts\pisspoo.sqf"];};
} else {
player removeAction s_player_makepoo;
s_player_makepoo = -1;
};


