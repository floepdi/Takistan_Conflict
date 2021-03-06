#include <macro.h>
/*
	File: fn_onPlayerKilled.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	When the player dies collect various information about that player
	and pull up the death dialog / camera functionality.
*/
private["_unit","_killer","_coplevel"];
disableSerialization;
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_killer = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_coplevel = (__GETC__(life_coplevel));
//Set some vars
_unit setVariable["Revive",FALSE,TRUE]; //Set the corpse to a revivable state.
_unit setVariable["name",profileName,TRUE]; //Set my name so they can say my name.
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["tied",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE]; //Why the fuck do I have this? Is it used?
_unit setVariable["steam64id",(getPlayerUID player),true]; //Set the UID.

//Setup our camera view
life_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder TRUE;
life_deathCamera cameraEffect ["Internal","Back"];
createDialog "DeathScreen";
life_deathCamera camSetTarget _unit;
life_deathCamera camSetRelPos [0,3.5,4.5];
life_deathCamera camSetFOV .5;
life_deathCamera camSetFocus [50,0];
life_deathCamera camCommit 0;


[] spawn
{

sleep 10;
[] call SOCK_fnc_updateRequest;

};

if(!isNull _killer) then
{
//[[format ["2|%1 wurde von Spieler %2 getötet",player getVariable["realname",name player],_killer getVariable["realname",name _killer]]],"Arma3Log",false,false] call life_fnc_MP;

}
else
{
//[[format ["2|%1 wurde getötet",player getVariable["realname",name player]]],"Arma3Log",false,false] call life_fnc_MP;
};
(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu


//Create a thread for something?
_unit spawn
{
	private["_maxTime","_RespawnBtn","_Timer"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);

	_maxTime = time + (life_respawn_timer * 60);
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format["Respawn erlaubt in: %1",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
	round(_maxTime - time) <= 0 || isNull _this || Life_request_timer};
	if (Life_request_timer) then {
	_maxTime = time + (life_respawn_timer * 600);
	waitUntil {_Timer ctrlSetText format["Respawn erlaubt in: %1",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
	round(_maxTime - time) <= 0 || isNull _this};
	};
	Life_request_timer = false; //resets increased respawn timer
	_RespawnBtn ctrlEnable true;
	_Timer ctrlSetText "Du kannst jetzt respawnen";
};

[] spawn life_fnc_deathScreen;

//Create a thread to follow with some what precision view of the corpse.
[_unit] spawn
{
	private["_unit"];
	_unit = _this select 0;
	waitUntil {if(speed _unit == 0) exitWith {true}; life_deathCamera camSetTarget _unit; life_deathCamera camSetRelPos [0,3.5,4.5]; life_deathCamera camCommit 0;};
};

//Make the killer wanted
if(!isNull _killer && {_killer != _unit} && {side _killer != west} && {alive _killer}) then {

	[[format ["2|%1 wurde von Spieler %2 getötet",player getVariable["realname",name player],_killer getVariable["realname",name _killer]]],"Arma3Log",false,false] call life_fnc_MP;
	if(vehicle _killer isKindOf "LandVehicle") then {
		//[_killer getVariable["realname",name _killer]],"life_fnc_copShowMurder",false,false] spawn life_fnc_MP;
		//Get rid of this if you don't want automatic vehicle license removal.
		if(!local _killer) then {
			//[[2],"life_fnc_removeLicenses",_killer,FALSE] spawn life_fnc_MP;
		};
	} else {


		//[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;

		if(!local _killer) then {
			//[[3],"life_fnc_removeLicenses",_killer,FALSE] spawn life_fnc_MP;
		};
	};
};

//Killed by cop stuff...
if(side _killer == west && playerSide != west) then {

	[[_coplevel],"life_fnc_rebTransfer",_killer,false] spawn life_fnc_MP;
	[[format ["2|%1 wurde von Cop %2 getötet",player getVariable["realname",name player],_killer getVariable["realname",name _killer]]],"Arma3Log",false,false] call life_fnc_MP;
	//Did I rob the federal reserve?
	if(!life_use_atm && {life_cash > 0}) then {
		[format[localize "STR_Cop_RobberDead",[life_cash] call life_fnc_numberText],"life_fnc_broadcast",true,false] call life_fnc_MP;
		life_cash = 0;
	};
};

//Killed Cop
	if(side _killer == civilian && playerSide == west) then {
	[[_coplevel],"life_fnc_rebTransfer",_killer,false] spawn life_fnc_MP;
	//life_atmcash = life_atmcash - (life_rebAmount);
	};

if(!isNull _killer && {_killer != _unit}) then {
	[[format ["2|%1 wurde getötet",player getVariable["realname",name player]]],"Arma3Log",false,false] call life_fnc_MP;
	life_removeWanted = true;
};


[_unit] call life_fnc_dropItems;


life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
life_cash = 0;
life_blood = 100;
life_bloodmulti = 0;

[] call life_fnc_hudUpdate; //Get our HUD updated.
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] call life_fnc_MP;

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;