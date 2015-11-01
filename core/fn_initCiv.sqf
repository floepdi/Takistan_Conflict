#include <macro.h>
/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	Description:
	Initializes the civilian.
*/
waitUntil {!(isNull (findDisplay 46))};

0 setFog [0, 0.01, 0];


if(life_is_arrested) then
{
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};

{_x setMarkerAlphaLocal 0} foreach ["target","target_1","target_2","target_3","target_4","target_5","target_6","target_7","Checkpoint Alpha","Checkpoint Bravo","Checkpoint Charlie","Checkpoint Delta","Checkpoint Echo","Bootcamp","Sniper"];

player addRating 9999999;

switch (__GETC__(life_donator)) do {
	case 1: {life_paycheck = life_paycheck + 2000;};
};

[] call life_fnc_profSetup;
/*
[] spawn    //basic cop
{
 while {true} do
 {
  waitUntil {uniform player == "U_Rangemaster"};
  player setObjectTextureGlobal [0,"textures\U_Rangemaster_APD_Officer.paa"];
  waitUntil {uniform player != "U_Rangemaster"};
 };
};
[] spawn     //Sergeant
{
 while {true} do
 {
  waitUntil {uniform player == "U_BG_Guerilla2_3"};
  player setObjectTextureGlobal [0,"textures\U_BG_Guerilla2_3_APD_Sergeant.paa"];
  waitUntil {uniform player !=  "U_BG_Guerilla2_3"};
 };
};
[] spawn     //Detective
{
 while {true} do
 {
  waitUntil {uniform player == "U_B_CombatUniform_mcam"};
  player setObjectTextureGlobal [0,"textures\U_B_CombatUniform_wdl_APD_Detective.paa"];
  waitUntil {uniform player !=  "U_B_CombatUniform_mcam"};
 };
};
*/