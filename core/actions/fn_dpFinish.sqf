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
	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> + 10 EXP <br /> + 15$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	 _price = 15;
	 ["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 2001) AND (_dis > 1002)) then {
	_level = 20;
	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> + 20 EXP <br /> + 30$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	 _price = 30;
	 ["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 3001) AND (_dis > 2002)) then {
	_level = 30;
	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> + 30 EXP <br /> + 45$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	 _price = 45;
	 ["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 4001) AND (_dis > 3002)) then {
	_level = 40;
	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> + 40 EXP <br /> + 60$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	 _price = 60;
	 ["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};
if ((_dis < 5001) AND (_dis > 4002)) then {
	_level = 50;
	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> + 50 EXP <br /> + 75$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	 _price = 75;
	 ["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};

if (_dis > 5001) then {
	_level = 60;
	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> + 60 EXP <br /> + 90$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	 _price = 90;
	 ["Level_Prof",_level,1] call life_fnc_addLevel;
	life_cash = life_cash + _price;
};

life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
[] call life_fnc_profSetup;
titleText["Takistan wird deine Unterstützung nicht vergessen!","PLAIN",0.5];