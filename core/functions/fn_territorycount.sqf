/*
	File: fn_territorycount.sqf
	Author: Phil "Phil" Phil :>

*/

private["_pos","_radius","_countciv","_countarmy","_unit","_units","_marker","_countdown","_winner"];
	_marker    = "Gebiet1";
	_pos = getMarkerPos _marker;
	_radius    = 400;
	_sidearmy = west;
	_sideciv = civilian;
	_countdown = 30; // Dauer vom Kampf in Minuten
	_marker setMarkerAlpha 1;
	_marker setMarkerColor "ColorRed";
	_winner = "";
while {(_countdown > 0)} do {
	_countciv  = 0;
	_countarmy = 0;
	_units = nearestObjects[_pos,["Man"],_radius];
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
	hint format["cooldown: %1 | countarmy: %2 | countciv: %3",_countdown,_countarmy,_countciv];

	if (_countarmy != _countciv) then {
	if (_countarmy > _countciv) then {
		_marker setMarkerAlpha 1;
		_marker setMarkerColor "ColorBLUFOR";
		}
		else
		{
		_marker setMarkerAlpha 1;
		_marker setMarkerColor "ColorCivilian";
		};
	} else {_marker setMarkerColor "ColorRed"};
	[[0,format["Zivilisten: %1 - US Army: %2",_countciv,_countarmy]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	_countdown = (_countdown -1);
	sleep 10;
};

	_winciv  = 0;
	_winarmy = 0;
	_winners = nearestObjects[_pos,["Man"],_radius];

{
	_winner = _x;
	if ((_x isKindOf "Man") && (side _x == _sidearmy)) then{
		if ((alive _x)  && (isPlayer _x)) then {
			_winarmy = (_winarmy + 1);

		};
	}
		else
	{
		if ((_x isKindOf "Man") && (side _x == _sideciv)) then{
			if ((alive _x)  && (isPlayer _x)) then {
				_winciv = (_winciv + 1);

			};
		};

	};
} foreach _winners;

if (_winarmy > _winciv) then {
	[[0,format["Gebietskampf vorbei - Die US ARMY haben %3 mit: %1 - %2 eingenommen",_countciv,_countarmy,_marker]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // Ende - Auswertung
}
else
{
	[[8],"life_fnc_rebTransfer",_x,false] spawn life_fnc_MP;
	[[0,format["Gebietskampf vorbei - Die Zivilisten haben %3 mit: %1 - %2 eingenommen",_countciv,_countarmy,_marker]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // Ende - Auswertung
};
