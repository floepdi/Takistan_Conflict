private["_val"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_coplevel = _this select 0;
disableSerialization;


if (playerSide == civilian) then {
if (_coplevel == 1) then{
	life_atmcash = life_atmcash + 5000;
	_level = 5;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward50.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 2) then{
	life_atmcash = life_atmcash + 10000;
	_level = 10;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward100.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 3) then{
	life_atmcash = life_atmcash + 15000;
	_level = 15;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward150.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 4) then{
	life_atmcash = life_atmcash + 20000;
	_level = 20;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward200.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 5) then{
	life_atmcash = life_atmcash + 25000;
	_level = 25;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward250.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 6) then{
	life_atmcash = life_atmcash + 30000;
	_level = 30;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward300.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

if (_coplevel == 7) then{
	life_atmcash = life_atmcash + 35000;
	_level = 35;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward350.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

if (_coplevel == 8) then{
	life_atmcash = life_atmcash + 40000;
	_level = 40;
	["Level_Prof",_level,1] call life_fnc_addLevel;
	[format["<img size= '5' image='textures\reward400.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

}
else
{
[format["<img size= '5' image='textures\level1.paa'/>"],0.5,0.3,4,0,0.1,1] spawn BIS_fnc_dynamicText;
[] call life_fnc_profSetup;
};