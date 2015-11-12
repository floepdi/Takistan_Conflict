#include <macro.h>
"colorCorrections" ppEffectEnable false;
player EnableSimulationGlobal true;
[] spawn  {

	private["_fnc_food","_fnc_water"];
	_fnc_food =
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
			if(life_thirst > 20) then {"colorCorrections" ppEffectEnable false;};
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
[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		if (backpack player == "rhs_sidor") then { _load = 10 ; };
    	if (backpack player == "B_AssaultPack_khk") then { _load = 14; };
   		if (backpack player == "B_FieldPack_khk") then { _load = 18; };// LARGO HIER - 40 ist die zusätzliche Größe, also + 24 Standart = 64
		if (backpack player == "B_TacticalPack_oli") then { _load = 25; };
		if (backpack player == "B_mas_Kitbag_rng") then { _load = 28; };
		if (backpack player == "TRYK_B_Coyotebackpack_OD") then { _load = 33; };
		if (backpack player == "B_Carryall_khk") then { _load = 40; };
		if (backpack player == "B_mas_AssaultPack_rng_AT4") then { _load = 55; };

    //Army Backpacks
		if (backpack player == "B_AssaultPack_cbr") then { _load = 16; };
		if (backpack player == "TRYK_B_AssaultPack_MARPAT_Desert") then { _load = 22; };
		if (backpack player == "B_mas_Kitbag_des") then { _load = 28; };
		if (backpack player == "TRYK_B_Coyotebackpack") then { _load = 35; };
		if (backpack player == "B_mas_Kitbag_black") then { _load = 40; };
		if (backpack player == "B_TacticalPack_blk") then { _load = 40; };
		if (backpack player == "TRYK_B_Medbag_BK") then { _load = 40; };
    		if (backpack player == "B_Carryall_cbr") then { _load = 42; };


		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};



    if(backpack player == "") then
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};


[] spawn
{
if (playerSide == civilian) then
 {
 	_counter = 0;
 	while {true} do
 	{

 	_hideout1 = (nearestObjects[getMarkerPos "gang_area_1",["FlagPole_F"],25]) select 0;
 	_hideoutOwner1 = _hideout1 getVariable ["gangOwner",grpNull];
	if ((group player == _hideoutOwner1) && ({side _x == civilian} count playableUnits >= 30)) then
		{
		_counter = _counter + 1;
		if (_counter == 30) then {
		life_cash = life_cash  + 150;
		["Level_Prof",75,1] call life_fnc_addLevel;
		};
		}
		else
		{
			_counter = 0;
		};
	sleep 60;
 };

};
};


[] spawn
{
while {true} do
{
if !(call TFAR_fnc_isTeamSpeakPluginEnabled) then {endMission "NOTFAR";};
sleep 10;
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
	_bonus = (life_payday /5);
	if (_bonus in [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80]) then{
	_stunden =  life_payday;
	["Payday_Prof",1,1] call life_fnc_addLevel;
	life_atmcash = life_atmcash + 2000;
	["Level_Prof",2000,1] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	["Paycheck",["Bonus-Payday erhalten.",5]] call bis_fnc_showNotification;
	[] call life_fnc_profSetup;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Bonus-Payday erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 2000$ <br /> + 2000 Erfahrung <br/> + Gesamtspielzeit: %1 Stunden",_stunden],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

	life_paytime = 0;
	["Paytime_Prof",0,0] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	}
	else
	{
	_stunden =  life_payday;
	life_atmcash = life_atmcash + 1000;
	["Level_Prof",1000,1] call life_fnc_addLevel;
	["Payday_Prof",1,1] call life_fnc_addLevel;
	["Paycheck",["Payday erhalten.",5]] call bis_fnc_showNotification;
	[] call life_fnc_profSetup;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Payday erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 1000$ <br /> + 1000 Erfahrung <br/> + Gesamtspielzeit: %1 Stunden",_stunden],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

	life_paytime = 0;
	["Paytime_Prof",0,0] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	};
	};
	};
  	};
 };
 [] spawn
{

  	if (playerSide ==  west) then
	{
	while {true} do
	{
	sleep 300;
	["PaytimeArmy_Prof",5,1] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	_paytime = life_paytimearmy;

	if (_paytime >= 60) then
	{
	_bonus = (life_paydayarmy /5);
	if (_bonus in [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80]) then{
	_stunden =  life_paydayarmy;
	["PaydayArmy_Prof",1,1] call life_fnc_addLevel;
	life_cop_atmcash = life_cop_atmcash + 2000;
	["Abzeichen_Prof",2,1] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	["Paycheck",["Bonus-Payday erhalten.",5]] call bis_fnc_showNotification;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Bonus-Payday erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 2000$ <br /> + 2 Abzeichen <br/> + Gesamtspielzeit: %1 Stunden",_stunden],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

	life_paytimearmy = 0;
	["PaytimeArmy_Prof",0,0] call life_fnc_addLevel;
	[] call life_fnc_profSetup;
	}
	else
	{
	_stunden =  life_paydayarmy;
	life_cop_atmcash = life_atmcash + 1000;
	["Abzeichen_Prof",1,1] call life_fnc_addLevel;
	["PaydayArmy_Prof",1,1] call life_fnc_addLevel;
	["Paycheck",["Payday erhalten.",5]] call bis_fnc_showNotification;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Payday erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 1000$ <br /> + 1 Abzeichen <br/> + Gesamtspielzeit: %1 Stunden",_stunden],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

	life_paytimearmy = 0;
	["PaytimeArmy_Prof",0,0] call life_fnc_addLevel;
	[] call life_fnc_profSetup;

	};
	};
	};
  	};
};


[] spawn
{
 private["_newDamage","_newDamage2","_bloodmulti"];
 // 100 HP, 100 Blood
 player setVariable ["olddamage", 1 , false];
 player setVariable ["olddamage2", 0, false];
 player setVariable ["olddamage3", 0 , false];
 player SetVariable ["unconscious",false,true];
  while {true} do
 {				// 0.1 > 0 							0 == 0
 	if (((damage player) > 0) AND (life_blood != 0) AND (life_bloodmulti == 0) AND (damage player > (player getVariable ["olddamage", 0]))) then  // 80 HP, 100 Blood
	 	{
	 	life_bloodmulti = 1;
	 	player setVariable ["olddamage", damage player, false]; //0.2
	 	player setVariable ["olddamage2", damage player, false]; //0.2
	 	};
	 	// 0.2 > 0 					 					0.2 < 0.3
 	if (((damage player) > 0) AND ((player getVariable ["olddamage2", 0]) < damage player) AND (player getVariable ["olddamage2", 0]) != 0  AND ((player getVariable ["olddamage2", 0]) > (player getVariable ["olddamage3", 0]) )  AND (life_blood != 0) AND (life_bloodmulti == 1)) then // 70 HP, 100 Blood
	 	{
	 	life_bloodmulti = 2;
	 	player setVariable ["olddamage3", damage player, false]; //0.2
	 	};

 	if (((damage player) > 0) AND ((player getVariable ["olddamage3", 0]) < damage player) AND ((player getVariable ["olddamage3", 0]) > 0)  AND (life_blood != 0) AND (life_bloodmulti == 2)) then
	 	{
	 	life_bloodmulti = 3;
	 	};
 	if (damage player == 0) then
 	{
 		life_bloodmulti = 0;
 		life_blood = 100;
 		player setVariable ["olddamage", 0, false];
 		player setVariable ["olddamage2", 0, false];
 		player setVariable ["olddamage3", 0 , false];
 	};
 	if (life_bloodmulti > 0) then
	{
	if (life_blood <= 0) exitWith {life_blood = 0; life_bloodmulti = 0;};
	life_blood = (life_blood - (0.3 * life_bloodmulti));
	sleep 1;
	};

	if ((damage player == 0) AND (life_thirst < 20) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false])) then {
	 "colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1.8, 1.8, 0.3, 0.7],  [0.199, 0.587, 0.114, 0.0]];  "colorCorrections" ppEffectCommit 0;  "colorCorrections" ppEffectEnable true;
	};
	if ((life_blood == 1) AND (damage player == 0.99) AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.1, 0, 0, 1.0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	"dynamicBlur" ppEffectEnable true; "dynamicBlur" ppEffectAdjust [3]; "dynamicBlur" ppEffectCommit 2; enableCamShake true;
	player SetVariable ["unconscious",false,true];
	};
	if ((life_blood > 1) AND (life_blood < 10)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.3, 0, 0, 1.0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	"dynamicBlur" ppEffectEnable true; "dynamicBlur" ppEffectAdjust [1]; "dynamicBlur" ppEffectCommit 2; enableCamShake true;
	};
	if ((life_blood > 10) AND (life_blood < 20)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.6, 0, 0, 1.0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	"dynamicBlur" ppEffectEnable true; "dynamicBlur" ppEffectAdjust [1]; "dynamicBlur" ppEffectCommit 2; enableCamShake true;
	};
	if ((life_blood > 20) AND (life_blood < 30)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [0.6, 1, 0, [0, 0, 0, 0], [1, 1, 1, 0], [0.299, 0.587, 0.114, 0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	};
	player SetVariable ["unconscious",false,true];
	if ((life_blood > 30) AND (life_blood < 40)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [0.7, 1, 0, [0, 0, 0, 0], [1, 1, 1, 0], [0.299, 0.587, 0.114, 0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	};
	if ((life_blood > 40) AND (life_blood < 50)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [0.9, 1, 0, [0, 0, 0, 0], [1, 1, 1, 0], [0.299, 0.587, 0.114, 0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	};
	if ((life_blood > 50) AND (life_blood < 60)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 0.2], [0.299, 0.587, 0.114, 0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	};
	if ((life_blood > 60) AND (life_blood < 70)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 0.4], [0.299, 0.587, 0.114, 0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	};
	if ((life_blood > 70) AND (life_blood < 80)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 0.6], [0.299, 0.587, 0.114, 0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	};
	if ((life_blood > 80) AND (life_blood < 90)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500) AND !(player getVariable ["Sack",false]) AND ! (life_morphin)) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 0.8], [0.299, 0.587, 0.114, 0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
	};
	if (((life_blood > 90) AND (life_blood <= 100)  AND (alive player) AND (((position player) distance (getMarkerPos "spawnzone")) > 500)) OR (life_morphin)  AND !(player getVariable ["Sack",false])) then {
	"colorCorrections" ppEffectEnable false;
	"dynamicBlur" ppEffectEnable false;
	};

	player setVariable ["blood",life_blood,true];
	player setVariable ["bloodmulti",life_bloodmulti,true];

	if ((life_blood) == 0 AND (alive player) AND !(life_unconscious)) then
	{
		 []	call life_fnc_unconscious;
	};
	if (life_bloodmulti == 0) then {life_bloodstatus = "";};
	if (life_bloodmulti == 1) then {life_bloodstatus = "einfache Blutung";};
	if (life_bloodmulti == 2) then {life_bloodstatus = "mittlere Blutung";};
	if (life_bloodmulti == 3) then {life_bloodstatus = "schwere Blutung";};
	[] call life_fnc_hudUpdate

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

[] spawn
{
		while {alive player} do {
   		if(cameraView == "GROUP") then {
        vehicle player switchCamera "EXTERNAL";
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
/*
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
*/
