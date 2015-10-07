#include <macro.h>
"colorCorrections" ppEffectEnable false;
[] spawn  {

	private["_fnc_food","_fnc_water"];
/*	_fnc_food =
	{
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};
	};

	_fnc_water =
	{
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};
	};

	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};
*/
[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide == independent) then {(unitBackpack player) setObjectTextureGlobal [1,""];};
		if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [1,""];};
		if(playerSide == civilian && __GETC__(life_mafialevel)>= 1) then {(unitBackpack player) setObjectTextureGlobal [1,""];};
		waitUntil {backpack player != _bp};
		if(backpack player == "") then
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

/*
[] spawn
{
	private["_vp","_load","_cfg"];
	while{true} do
	{
		waitUntil {vest player != ""};
		_vp = vest player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (vest player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		//if(playerSide == west) then {(unitVest player) setObjectTextureGlobal [0,""];};
		if(playerSide == civilian && __GETC__(life_mafialevel)>= 1) then {(Vest player) setObjectTextureGlobal [1,""];};
		waitUntil {vest player != _vp};
		if(vest player == "") then
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};
*/

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};
/*
[] spawn
{
	while {true} do
	{
	if (playerSide != west) exitWith {};
	switch ((player getVariable "rank")) do {
					case 1: {[player,"recruit"] call BIS_fnc_setUnitInsignia};
					case 2: {[player,"private"] call BIS_fnc_setUnitInsignia};
					case 3: {[player,"private1"] call BIS_fnc_setUnitInsignia};
					case 4: {[player,"specialist"] call BIS_fnc_setUnitInsignia};
					case 5: {[player,"corporal"] call BIS_fnc_setUnitInsignia};
					case 6: {[player,"sergeant"] call BIS_fnc_setUnitInsignia};
					case 7: {[player,"ssergeant"] call BIS_fnc_setUnitInsignia};
					case 8: {[player,"sergeantfc"] call BIS_fnc_setUnitInsignia};
					case 9: {[player,"msergeant"] call BIS_fnc_setUnitInsignia};
					case 10: {[player,"sergeantmj"] call BIS_fnc_setUnitInsignia};
					case 11: {[player,"csergeantm"] call BIS_fnc_setUnitInsignia};
					case 12: {[player,"lt2"] call BIS_fnc_setUnitInsignia};
					case 13: {[player,"lt1"] call BIS_fnc_setUnitInsignia};
					case 14: {[player,"captain"] call BIS_fnc_setUnitInsignia};
					case 15: {[player,"major"] call BIS_fnc_setUnitInsignia};
					case 16: {[player,"colonel"] call BIS_fnc_setUnitInsignia};
					case 17: {[player,"general"] call BIS_fnc_setUnitInsignia};
					case 18: {[player,"commander"] call BIS_fnc_setUnitInsignia};

	};

};
*/
[] spawn
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

