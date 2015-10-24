#include <macro.h>
/*
    File: fn_weaponShopCfg.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master configuration file for the weapon shops.

    Return:
    String: Close the menu
    Array:
    [Shop Name,
    [ //Array of items to add to the store
        [classname,Custom Name (set nil for default),price]
    ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.


[] call life_fnc_profSetup;

switch(_shop) do
{

	 case "civ_sonstiges":
    {
		switch(true) do
        {
            case (playerSide != civilian): {"Finger weg, Soldat!"};
            case ((life_level == 1) OR (life_level == 2)):
            {
                ["Level 1/2 Aufsätze & Equipment",
                    [
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case ((life_level == 3) OR (life_level == 4)):
            {
                ["Level 3/4 Aufsätze & Equipment",
                    [
                        ["Binocular",nil,100],

                        ["ACE_EarPlugs",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case ((life_level == 5) OR (life_level == 6) OR (life_level == 7) OR (life_level == 8) OR (life_level == 9)):
            {
                ["Level 5/6/7/8/9 Aufsätze & Equipment",
                    [
                        ["Binocular",nil,100],

                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 10):
            {
                ["Level 10 Aufsätze & Equipment",
                    [
                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 11):
            {
                ["Level 11 Aufsätze & Equipment",
                    [
                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 12):
            {
                ["Level 12 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        
                        ["ACE_DeadManSwitch",nil,100],                      

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 13):
            {
                ["Level 13 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        
                        ["ACE_DeadManSwitch",nil,100],                         
                                                
                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 14):
            {
                ["Level 14 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],
                        
                        ["ACE_DeadManSwitch",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case ((life_level == 15) OR (life_level == 16) OR (life_level == 17)):
            {
                ["Level 15/16/17 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],
                        
                        ["ACE_DeadManSwitch",nil,100], 

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 18):
            {
                ["Level 18 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],
                        
                        ["ACE_DeadManSwitch",nil,100], 

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 19):
            {
                ["Level 19 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,100],
                        ["optic_mas_PSO_day",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],
                        
			["ACE_DeadManSwitch",nil,100], 

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 20):
            {
                ["Level 20 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,100],
                        ["optic_mas_PSO_day",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],
                        
                        ["ACE_DeadManSwitch",nil,100],
                        ["ACE_Cellphone",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case (life_level == 21):
            {
                ["Level 21 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,100],
                        ["optic_mas_PSO_day",nil,100],
                        ["optic_mas_PSO_eo",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["ACE_DeadManSwitch",nil,100],
                        ["ACE_Cellphone",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case ((life_level == 22) OR (life_level == 23)):
            {
                ["Level 22/23 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,100],
                        ["optic_mas_PSO_day",nil,100],
                        ["optic_mas_PSO_eo",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["ACE_DeadManSwitch",nil,100],
                        ["ACE_Cellphone",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["rhsusf_ANPVS_15",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
 case ((life_level == 24) OR (life_level == 25)):
            {
                ["Level 24/25 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,100],
                        ["optic_mas_PSO_day",nil,100],
                        ["optic_mas_PSO_eo",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["ACE_DeadManSwitch",nil,100],
                        ["ACE_Cellphone",nil,100],
                        ["ACE_Clacker",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["rhsusf_ANPVS_15",nil,100],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            }; 
		
		};

	};
};

