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

};
*/

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


[] spawn
{
	if (playerSide ==  civilian) then
	{
	while {true} do
	{
	sleep 300;
	["Paytime_Prof",5,1] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	_paytime = life_paytime;

	if (_paytime >= 60) then
	{
	["Payday_Prof",1,1] call life_fnc_addLevel;
	life_cash = life_cash + 20000;
	["Level_Prof",2000,1] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	_bonus = (life_payday /5);
	if (_bonus in [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]) then{
	_stunden =  life_payday;
	["Paycheck",["Bonus-Payday erhalten.",5]] call bis_fnc_showNotification;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Bonus-Payday erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 20000$ <br /> + 2000 Erfahrung <br/> + Gesamtspielzeit: %1 Stunden",_stunden],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	}
	else
	{
	_stunden =  life_payday;
	life_cash = life_cash + 10000;
	["Level_Prof",1000,1] call life_fnc_addLevel;
	["Paycheck",["Payday erhalten.",5]] call bis_fnc_showNotification;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Payday erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 1000 Erfahrung <br/> + Gesamtspielzeit: %1 Stunden",_stunden],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	};

	life_paytime = 0;
	["Paytime_Prof",0,0] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	};
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