/*
	File: fn_startKillCount.sqf
	Author: xydra

	Lame shit
*/

_victim = this select 0;
_killer = this select 1;

[[_victim,_killer],"TON_fnc_killControl",false,false] spawn life_fnc_MP;