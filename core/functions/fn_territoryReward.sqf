/*
	File: fn_territoryReward.sqf
	Author: xydra
	Give that man a cookie
*/

// _pos, Spieler von Gewinnerseite

private["_pos","_side"];

_over = _this select 0;

if(!_over) then {
  			//Minütlich
  			life_cash = life_cash + 25;
  			["Level_Prof",1,25] call life_fnc_addLevel;
			[] call life_fnc_profSetup;
  			[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br /> + 25$ <br/> + 25 EXP"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
} else {
  			//Ende des Territoryfights
  			life_cash = life_cash + 500;
  			["Level_Prof",1,500] call life_fnc_addLevel;
			[] call life_fnc_profSetup;
  			[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br /> + 500$ <br/> + 500 EXP"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
};
