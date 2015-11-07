/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Doesn't matter, will be revised later.
*/
if(life_cash < 25) exitWith {hint "Besorg zuerst 25 $!";};

life_cash = life_cash - 25;
titleText["Alle Spieler im Radius von 10m werden behandelt.","PLAIN"];
sleep 8;
_pos = position player;
_radius = 10;
_units = nearestObjects[_pos,["Man"],_radius];
	{
	_unit = _x;
	if (_x isKindOf "Man") then{
		if((_x distance _pos) > 10) exitWith {titleText["Du hast den Radius verlassen!","PLAIN"]};
		if ((alive _x)  && (isPlayer _x)) then {[[],"life_fnc_healme",_x,false] spawn life_fnc_MP;};
		};
	} foreach _units;

titleText["Alle Spieler im Radius wurden behandelt!","PLAIN"];
player setdamage 0;
life_blood = 100;
life_bloodmulti = 0;