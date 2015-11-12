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

        ["ToolKit",nil,150],
        ["ACE_Flashlight_XL50",nil,20],
	["ACE_EarPlugs",nil,5]


        ]

    ];
    };

    case "genstore":
    {
        ["Synced Gemischtwaren",
            [
                ["ItemGPS",nil,15],
                ["ItemMap",nil,10],
                ["ItemCompass",nil,15],
                ["ToolKit",nil,100],
                ["rhsusf_ANPVS_14",nil,250],
                ["Chemlight_red",nil,20],
                ["Chemlight_yellow",nil,20],
		["ACE_EarPlugs",nil,5],
		["ACE_MapTools",nil,15]
            ]
        ];
    };

case "med_basic":
    {
    	switch(true) do
        {
            case (playerSide != independent): {"Du bist kein Medic!"};
            case (__GETC__(life_mediclevel) > 0):
            {
        	["PJ Ausrüstung",
        	   [
                	["tf_anprc152",nil,10],
                        ["ItemGPS",nil,10],
                        ["ItemCompass",nil,10],
                        ["ToolKit",nil,10],
                        ["Binocular",nil,10],
                        ["Chemlight_green",nil,10],
                        ["Chemlight_blue",nil,10],
                        ["SmokeShell",nil,10],
                        ["SmokeShellRed",nil,10],
                        ["SmokeShellGreen",nil,10],
                        ["acc_flashlight",nil,10],
   			["ACE_TacticalLadder_Pack",nil,10],
			["ACE_EarPlugs",nil,10],
			["ACE_Flashlight_KSF1",nil,10],
			["ACE_Flashlight_MX991",nil,10],
			["ACE_MapTools",nil,10]
            ]
            ];
        };
   };
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
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10]
                    ]
                ];
            };

             case (life_level == 4):
            {
                ["Level 4 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10]
                    ]
                ];
            };

           case (life_level == 5):
            {
                ["Level 5 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15]
                    ]
                ];
            };

             case ((life_level == 6) OR (life_level == 7)):
            {
                ["Level 6/7 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["30Rnd_mas_545x39_mag",nil,25]
                    ]
                ];
            };

            case (life_level >= 8):
            {
                ["Level 8/9 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["30Rnd_mas_545x39_mag",nil,25]
                    ]
                ];
            };

          };
    };

};
