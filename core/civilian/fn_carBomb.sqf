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

if(player distance _car > 7) exitWith {hint "Du bist zu weit entfernt!"};

[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br /> Bombe angebracht"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

_bomb = "Land_TinContainer_F" createVehicle position _car;
_bomb attachTo [_car, [0, -3, -0.5], "Bombe"];


[_car] spawn
{
	while {true} do {
	_veh = _this select 0;
	_isOn = isEngineOn _veh;
	if (_isOn) then {
	_veh setDamage 1;
	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br /> Eine von dir angebrachte Bombe ist explodiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	};
};
};
