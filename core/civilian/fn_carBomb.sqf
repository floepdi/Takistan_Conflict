/*
	File: fn_carbbomb.sqf
	Author: synced-gaming.de - Phil

	Description:
	Knick Knack Bumm Bumm
*/

private["_unit","_zuender"];
_zuender = _this select 0;
_car = cursorTarget;

if((!(_car isKindOf "LandVehicle"))&&(!(_car getVariable ["restrained",false]))) exitWith {hint "Du kannst hier keine Autobombe anbringen."};
if(player distance _car > 4) exitWith {hint "Du bist zu weit entfernt!"};
closeDialog 0;

life_action_inUse = true;

player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};

life_action_inUse = false;

hint format ["%1",_zuender];

if(player distance _car > 7) exitWith {hint "Du bist zu weit entfernt!"};

[format[" Bombe angebracht! "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;

_bomb = "Land_TinContainer_F" createVehicle position _car;
_bomb attachTo [_car, [0, 1, 0], "Bombe"];

if (_zuender == 0) then {
[_car] spawn
{
	_veh = _this select 0;
	waitUntil (isEngineOn _veh) {
	_veh setDamage 1;
	[format[" Die Autobombe ist explodiert! "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
	};
};
};