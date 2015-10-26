/*
	File: fn_setKillCount.sqf
	Author: xydra
	Set Pew Pew Counter
*/

//Input Arrray [Unit to set killcounter, got killed or not]

_unit = this select 0;
_killed = this select 1;

//Check if something goes wrong
if(getPlayerUID player == getPlayerUID _unit) then {
	if(_killed) then {
		life_kills = 0;
	} else {
		life_kills = (life_kills + 1);
	};
};