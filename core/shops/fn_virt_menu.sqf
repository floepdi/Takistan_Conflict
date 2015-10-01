#include <macro.h>
/*
	File: fn_virt_menu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initialize the virtual shop menu.
*/

_data = missionNamespace getVariable ("Level_Prof");
_level = [] call life_fnc_getLevel;


private["_shop"];
_shop = _this select 3;
if(isNil {_shop}) exitWith {};
life_shop_type = _shop;
life_shop_npc = _this select 0;
if(_shop == "cop" && playerSide != west) exitWith {hint localize "STR_NOTF_NotACop"};
if(_shop == "mafia" && (__GETC__(life_mafialevel<1))) exitWith {hint localize "Ich kenne dich nicht!"};
//if(_shop == "bandit" && (_level < 1 )) exitWith {hint localize "Ich kenne dich nicht!"};
if(_shop == "mafiaDrogen" && (__GETC__(life_mafialevel <= 0))) exitWith {hint localize "Ich kenne dich nicht, behalt deinen Mist!"};
createDialog "shops_menu";

[] call life_fnc_virt_update;