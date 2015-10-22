#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};


0 setFog [0, 0.01, 0];

	if((__GETC__(life_coplevel) < 1) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};



player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.



switch (__GETC__(life_coplevel)) do {

	default { life_paycheck = 1000; };
	case 1: { life_paycheck = 1500; };
	case 2: { life_paycheck = 2000; };
	case 3: { life_paycheck = 2500; };
	case 4: { life_paycheck = 3000; };
	case 5: { life_paycheck = 4000; };
	case 6: { life_paycheck = 5000; };
	case 7: { life_paycheck = 6000; };
	case 8: { life_paycheck = 7500; };


};


switch (__GETC__(life_donator)) do {


	case 1: {life_paycheck = life_paycheck + 1500;};


};

{_x setMarkerAlphaLocal 0} foreach ["Cannabisfeld","Ölfeld","Ölverarbeitung","Cannabisverarbeitung","Mohnverfeinerung","Hehler Nord","Hehler Süd","Cannabisverfeinerung","Drogendealer","Mohnverarbeitung","Mohnfeld","Goldschmelze","Goldmine","Ölhändler"];

// [[format ["0|%1 logged something. His position is %2.",player getVariable["realname",name player],getPosATL player]],"Arma3Log",false,false] call life_fnc_MP;

