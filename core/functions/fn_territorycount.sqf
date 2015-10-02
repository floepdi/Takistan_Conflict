/*
	File: fn_territorycount.sqf
	Author: Phil "Phil" Phil :>

*/

private["_pos","_radius","_countciv","_countarmy","_unit","_units"];
	_pos       = (position player);
	_radius    = 400;
	_countciv  = 0;
	_countarmy = 0;
	_sidearmy = west;
	_sideciv = civilian;

	_units = nearestObjects[(position player),["Man"],_radius];

	{
	_unit = _x;
	if ((_x isKindOf "Man") && (side _x == _sidearmy)) then{
		if ((alive _x)  && (isPlayer _x)) then {_countarmy = (_countarmy +1)};
	}
	else
	{
		if ((_x isKindOf "Man") && (side _x == _sideciv)) then{
			if ((alive _x)  && (isPlayer _x)) then {_countciv = (_countciv +1)};
		};
	};
	} foreach _units;

	hint format ["%1 US Army | %2 Zivilisten",_countarmy,_countciv];

