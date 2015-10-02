/*
	File: fn_dpFinish.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Finishes the DP Mission and calculates the money earned based
	on distance between A->B
*/
disableSerialization;
private["_dp","_dis","_price"];
_dp = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
life_delivery_in_progress = false;
life_dp_point = nil;
_dis = round((getPos life_dp_start) distance (getPos _dp));
if ((_dis < 1001) AND (_dis > 0)) then {
	_level = 10;
	[format["<img size= '5' image='textures\reward100.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	 _price = 10000;
	 ["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 2001) AND (_dis > 1002)) then {
	_level = 15;
	[format["<img size= '5' image='textures\reward150.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	_price = 15000;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 3001) AND (_dis > 2002)) then {
	_level = 20;
	[format["<img size= '5' image='textures\reward200.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	_price = 20000;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 4001) AND (_dis > 3002)) then {
	_level = 25;
	[format["<img size= '5' image='textures\reward250.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	_price = 25000;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 5001) AND (_dis > 4002)) then {
	_level = 30; [format["<img size= '5' image='textures\reward300.paa'/>"],0.5,0.3,4,0,0.1,1]
	spawn BIS_fnc_dynamicText;
	_price = 30000;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};

if (_dis > 5001) then {
	_level = 35;
	[format["<img size= '5' image='textures\reward350.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	_price = 35000;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};

["DeliverySucceeded",[format[(localize "STR_NOTF_Earned_1"),[_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
[] call life_fnc_profSetup;
titleText["Takistan wird deine Unterstützung nicht vergessen!","PLAIN",0.5];