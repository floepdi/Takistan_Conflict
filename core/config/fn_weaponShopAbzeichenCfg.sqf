#include <macro.h>
/*
File: fn_weaponShopCfg.sqf
Author: Bryan "Tonic" Boardwine

Description:
Master configuration file for the weapon shops.

Return:
String: Close the menu
Array: [Shop Name, [ //Array of items to add to the store [classname,Custom Name (set nil for default),price]]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.


_data = missionNamespace getVariable ("Level_Prof");
_level = _data select 1;
_level = [] call life_fnc_getLevel;

//_data = missionNamespace getVariable ("Mafia_Prof");
//_mafia = _data select 0;

switch(_shop) do
{
    case "abzeichen":
    {

    ["Abzeichen-Shop",
        [

        ["hlc_smg_mp5a3",nil,15],
        ["hlc_30Rnd_9x19_B_MP5",nil,1],
        
        ["hlc_rifle_samr2",nil,50],
        ["30Rnd_556x45_Stanag",nil,1],
        
        ["arifle_mas_hk416",nil,25],
        ["arifle_mas_l119",nil,25],
        ["30Rnd_mas_556x45_Stanag",nil,1],
        
        ["arifle_mas_g3s",nil,65],
        ["srifle_mas_hk417",nil,75],
        ["20Rnd_mas_762x51_Stanag",nil,1],
        
        ["srifle_mas_m24",nil,100],
        ["5Rnd_mas_762x51_Stanag",nil,1],
        
        ["LMG_mas_M249_F",nil,50],
	["200Rnd_mas_556x45_Stanag",nil,1],
	
	["LMG_mas_mk48_F",nil,100],
	["100Rnd_mas_762x51_Stanag",nil,1],
	
	["rhs_weap_M136_hedp",nil,50],
	["rhs_m136_hedp_mag",nil,1],
	
	["FHQ_optic_AimM_TAN",nil,3],
	["FHQ_optic_ACOG",nil,5],
	["optic_SOS",nil,20],
	["optic_LRPS",nil,35],
	
	["NVGoggles",nil,2],
	["MiniGrenade",nil,3],
	["Rangefinder",nil,4],
	
	["TRYK_V_ArmorVest_Delta",nil,25],
	["TRYK_V_ArmorVest_Ranger",nil,25],
	["TRYK_V_tacv1_BK",nil,20],
	["G_Bandanna_beast",nil,2],
	["G_mas_wpn_wrap_gog_c",nil,2]
	
	
	
        ]

    ];
    };

};
