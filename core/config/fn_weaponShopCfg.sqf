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
    case "tankstellegebraucht":
    {

    ["Tankstellenshop",
        [

        ["ToolKit",nil,5000],
        ["FirstAidKit",nil,1500],
        ["ACE_CableTie",nil,1000],
		["ACE_EarPlugs",nil,100]


        ]

    ];
    };

    case "genstore":
    {
        ["Synced Gemischtwaren",
            [
                ["Binocular",nil,300],
                ["ACE_DAGR",nil,10000],
                ["ItemMap",nil,5],
                ["ItemCompass",nil,5],
                ["ToolKit",nil,10],
                //["NVGoggles",nil,25000],
                ["Chemlight_red",nil,300],
                ["Chemlight_yellow",nil,300],
		["ACE_EarPlugs",nil,100],
		["ACE_MapTools",nil,100]
                //["EODS_cellphone_02",nil,5000]
            ]
        ];
    };

case "gun":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist!"};
            case (life_level < 3): {"Hau ab, du Frischling!"};

            case (life_level == 3):
            {
                ["Level 3 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100]
                    ]
                ];
            };
            
             case (life_level == 4):
            {
                ["Level 4 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100]
                    ]
                ];
            };
            
           case (life_level == 5):
            {
                ["Level 5 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100]
                    ]
                ];
            };
            
             case ((life_level == 6) OR (life_level == 7)):
            {
                ["Level 6/7 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100]
                    ]
                ];
            };
            
            case (life_level >= 8):
            {
                ["Level 8/9 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_ak74",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100]
                    ]
                ];
            };
            
          };
    };   

case "lagerfight":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist!"};

            default
            {
                ["Lager",
                    [

                    ["12Rnd_mas_45acp_Mag",nil,50],
                    ["20Rnd_mas_765x17_Mag",nil,50],
                    ["30Rnd_mas_545x39_mag",nil,50]

                    ]
                ];
            };
        };
    };

};
