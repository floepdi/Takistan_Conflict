/*
	File: fn_civLoadout.sqf
	Author: Tobias 'Xetoxyc' Sittenauer

	Description:
	Loads the civs out with the default gear, with randomized clothing.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "TRYK_U_B_Denim_T_BK";

// GEAR
/*
player addHeadgear "IS_shemag_black";
player assignItem "IS_shemag_black";

player addVest "V_BandollierB_blk";
player assignItem "V_BandollierB_blk";
*/

//AK74
/*
player addWeapon "arifle_mas_ak_74m_sf";
player addMagazine "30Rnd_mas_545x39_mag";
player addMagazine "30Rnd_mas_545x39_mag";
player addMagazine "30Rnd_mas_545x39_mag";
player addMagazine "30Rnd_mas_545x39_mag";
player addMagazine "30Rnd_mas_545x39_mag";
*/

/*
//UZI
player addWeapon "RH_muzi";
player addMagazine "RH_30Rnd_9x19_UZI";
player addMagazine "RH_30Rnd_9x19_UZI";
player addMagazine "RH_30Rnd_9x19_UZI";
player addMagazine "RH_30Rnd_9x19_UZI";
player addMagazine "RH_30Rnd_9x19_UZI";
*/
/*
//Scorpion
player addWeapon "hgun_mas_sa61_F";
player addMagazine "20Rnd_mas_765x17_Mag";
player addMagazine "20Rnd_mas_765x17_Mag";
*/
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;