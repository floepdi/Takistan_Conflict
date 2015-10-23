private["_val"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_coplevel = _this select 0;
disableSerialization;


if (playerSide == civilian) then {
if (_coplevel == 1) then{
	["Level_Prof",1,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Recruit getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 1 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 2) then{
	["Level_Prof",5,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Private getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 5 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 3) then{
	["Level_Prof",10,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Private 1st getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 4) then{
	["Level_Prof",20,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Specialist getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 20 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 5) then{
	["Level_Prof",30,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Corporal getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 30 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 6) then{
	["Level_Prof",40,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Sergeant getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 40 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

if (_coplevel == 7) then{
	["Level_Prof",50,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Staff Sergeant getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 50 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

if (_coplevel == 8) then{
	["Level_Prof",60,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Sergeant First Class getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 60 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 9) then{
	["Level_Prof",70,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Master Sergeant getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 70 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 10) then{
	["Level_Prof",80,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Sgt. Major Sergeant getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 80 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 11) then{
	["Level_Prof",90,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Command Sgt. Major getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 90 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 12) then{
	["Level_Prof",100,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Second Lt. getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 13) then{
	["Level_Prof",110,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> First Lt. getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 110 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
if (_coplevel == 14) then{
	["Level_Prof",120,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Captain getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 120 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;};

if (_coplevel == 15) then{
	["Level_Prof",130,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Major getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 130 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

if (_coplevel == 16) then{
	["Level_Prof",50,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Colonel getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 140 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

if (_coplevel == 17) then{
	["Level_Prof",150,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> General getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 150 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};

if (_coplevel == 18) then{
	["Level_Prof",200,1] call life_fnc_addLevel;
	[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Commander getötet<br /> Belohnung <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	[] call life_fnc_profSetup;
};
}
else
{
[] call life_fnc_profSetup;
};