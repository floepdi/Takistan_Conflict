/*
	File: fn_spawnConfirm.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Spawns the player where he selected.
*/
private["_spCfg","_sp","_spawnPos"];
closeDialog 0;
cutText ["","BLACK IN"];
if(count life_spawn_point == 0) then
{
	private["_sp","_spCfg"];
	_spCfg = [playerSide] call life_fnc_spawnPointCfg;
	_sp = _spCfg select 0;
	player setPos (getMarkerPos (_sp select 0));
	titleText[format["%2 %1",_sp select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
}
	else
{

		player setPos (getMarkerPos (life_spawn_point select 0));
		titleText[format["%2 %1",life_spawn_point select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
};

if(life_firstSpawn) then {
	life_firstSpawn = false;
switch (playerSide) do {
    case west: {
	player say2d "welcomeblue";
    };
    case civilian: {
	player say2d "welcome";
    };
};
	[] execVM "scripts\spawncam.sqf";
	[] call life_fnc_welcomeNotification;
};

[] call life_fnc_hudSetup;