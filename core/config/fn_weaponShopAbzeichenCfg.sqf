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

        ["hlc_smg_mp5a3",nil,1],
        ["arifle_mas_hk416",nil,2],
	    ["srifle_mas_hk417",nil,3]
        ]

    ];
    };

};
