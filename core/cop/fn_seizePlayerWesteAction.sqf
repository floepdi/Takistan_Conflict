/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)

	Description:
	Removes the players weapons client side
*/

removeVest player;

[] call life_fnc_saveGear;

titleText["Ihre Weste wurde entfernt.","PLAIN"];