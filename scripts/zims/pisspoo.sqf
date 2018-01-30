
//by juandayz 2018 for free
private ["_needpiss","_needpoo","_findNearestTree","_distance2d","_objName"];
_needpiss = (player getvariable ["needpiss",0] ==1);
_needpoo = (player getvariable ["needpoo",0] ==1);
if (vehicle player != player) exitWith {systemChat("you cannot do it in a vehicle lil pig");};

_findNearestTree = [];
{
	if (("" == typeOf _x) && {alive _x}) then {
		_objName = _x call fn_getModelName;
		// Exit since we found a tree
		if (_objName in dayz_trees) exitWith { _findNearestTree set [count _findNearestTree,_x]; };
	};
} count nearestObjects [getPosATL player, [], 20];


if (count _findNearestTree > 0) then {
	_tree = _findNearestTree select 0;
	_distance2d = [player, _tree] call BIS_fnc_distance2D;	
if (_distance2d < 5) exitWith {


if (_needpiss) then {
player removeAction s_player_makepiss;
s_player_makepiss = -1;
player setvariable ["needpiss",0,true];

};

if (_needpoo) then {
player removeAction s_player_makepoo;
s_player_makepoo = -1;
player setvariable ["needpoo",0,true];

};

if ((_needpoo && _needpiss) or (_needpoo && !_needpiss)) then {
[player, "gut", 0, false, 5] call dayz_zombieSpeak;
}else{
[player,"drink",0,false,5] call dayz_zombieSpeak;
};
["Working",0,[100,15,15,0]] call dayz_NutritionSystem;
disableuserinput true; disableuserinput true; disableuserinput true;

cutText ["TAKE YOUR TIME SURVIVOR", "BLACK FADED"];
player playActionNow "PutDown";
sleep 5;
titleCut ["", "BLACK IN", 5];
disableuserinput false;disableuserinput false;disableuserinput false;


};
}else{
systemchat "find a tree to do it";
};





