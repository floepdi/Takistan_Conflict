/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka

	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "TRYK_B_TRYK_OCP_T";


/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "tf_anprc152";
player assignItem "tf_anprc152";

[] call life_fnc_saveGear;

