/*
	File: fn_startterritory.sqf
	Author: Phil "Phil" Phil :>
	Starten eines Gebietskriegs
*/
private ["_marker","_fraktion","_i","_nearest"];
_fraktion = playerSide;
_pos = (position player);
_array = ["Zavarak","Garmsar","Chanam"];

_i = count _array - 1;

if (_i > -1) then {_nearest = _array select _i;};
if ((getmarkerpos _nearest) select 0 == 0) then {_nearest = "";};
while {_i > 0} do
{
	_i = _i - 1;
	_marker = _array select _i;
	//distance ausmessen
	if ( ((getmarkerpos _marker) distance _pos) < ((getmarkerpos _nearest) distance _pos) ) then
	{
		_nearest = _marker;

	};
};

//AUSGABE:
hint format["%1",_nearest];
[[_nearest,_fraktion],"TON_fnc_territorycount",false,false] spawn life_fnc_MP;