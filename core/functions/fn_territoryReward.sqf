/*
	File: fn_territoryReward.sqf
	Author: xydra
	Give that man a cookie
*/

// _pos, Spieler von Gewinnerseite

private["_pos","_side"];

_over = _this select 0;

if(!_over) then {
  			//Minütlich 1000
  			life_cash = life_cash + 1000;
  			[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />+1000$ Mach weiter so!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
} else {
  			//Ende des Territoryfights 20000
  			life_cash = life_cash + 20000;
  			[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />+20000$ Du hast das Gebiet erobert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
};

};
