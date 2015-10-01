/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon

	Description:
	Preforms the seizePlayerWeaponAction script on the cursorTarget
*/
[[],"life_fnc_seizePlayerWesteAction",cursorTarget,false] spawn life_fnc_MP;
[[52, player, format["Sie haben die Weste von %1 beschlagnahmt.", name cursorTarget]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;