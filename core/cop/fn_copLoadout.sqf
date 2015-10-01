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
player addUniform "TRYK_U_B_3CD_Delta_BDUTshirt";
player addVest "V_Rangemaster_belt";
player addHeadgear "TRYK_H_headsetcap_od";

player addWeapon "arifle_mas_m4";
player addMagazine "30Rnd_mas_556x45_Stanag";
player addMagazine "30Rnd_mas_556x45_Stanag";
player addMagazine "30Rnd_mas_556x45_Stanag";
player addMagazine "30Rnd_mas_556x45_Stanag";

player addWeapon "hgun_P07_F";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";


/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_saveGear;