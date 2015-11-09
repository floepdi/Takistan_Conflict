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

	 case "civ_sonstiges2":
    {
		switch(true) do
        {
            case (playerSide != civilian): {"Finger weg, Soldat!"};
			case ((life_level < 26) OR (life_level >= 40)): {"Du bist hier falsch!"};
			case (life_level == 26):
            {
                ["Level 26 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };
            case (life_level == 27):
            {
                ["Level 27 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };
            case (life_level == 28):
            {
                ["Level 28 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],
                        ["rhs_acc_pso1m2",nil,300],
                        
                        ["ACE_RangeCard",nil,150],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };
            case (life_level == 29):
            {
                ["Level 29 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],
                        ["rhs_acc_pso1m2",nil,300],
                        ["optic_mas_PSO_nv_day",nil,400],
                        
                        ["ACE_RangeCard",nil,150],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };
		 case ((life_level == 30) OR (life_level == 31)):
            {
                ["Level 30/31 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],
                        ["rhs_acc_pso1m2",nil,300],
                        ["optic_mas_PSO_nv_day",nil,400],
                        
                        ["ACE_RangeCard",nil,150],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],
                        
                        ["rhs_mag_zarya2",nil,200],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };            
            case ((life_level == 32) OR (life_level == 33) OR (life_level == 34)):
            {
                ["Level 32/33/34 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],
                        ["rhs_acc_pso1m2",nil,300],
                        ["optic_mas_PSO_nv_day",nil,400],
                        
                        ["ACE_RangeCard",nil,150],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_M2_h_Gun_Bag",nil,500],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_M2_Gun_Bag",nil,500], 
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],
                        
                        ["rhs_mag_zarya2",nil,200],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };           
            case (life_level == 35):
            {
                ["Level 35 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],
                        ["rhs_acc_pso1m2",nil,300],
                        ["optic_mas_PSO_nv_day",nil,400],
                        ["optic_mas_PSO_nv",nil,450],
                        
                        ["ACE_RangeCard",nil,150],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_M2_h_Gun_Bag",nil,500],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_M2_Gun_Bag",nil,500], 
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],
                        
                        ["rhs_mag_zarya2",nil,200],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };
            case (life_level == 36):
            {
                ["Level 36 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],
                        ["rhs_acc_pso1m2",nil,300],
                        ["optic_mas_PSO_nv_day",nil,400],
                        ["optic_mas_PSO_nv",nil,450],
                        
                        ["ACE_RangeCard",nil,150],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_M2_h_Gun_Bag",nil,500],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_M2_Gun_Bag",nil,500], 
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],
                        ["ACE_M26_Clacker",nil,650],
                        
                        ["rhs_mag_zarya2",nil,200],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };                  
            case ((life_level == 37) OR (life_level == 38) OR (life_level == 39)):
            {
                ["Level 37/38/39 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,150],
                        ["optic_mas_PSO_day",nil,200],
                        ["optic_mas_PSO_eo",nil,250],
                        ["rhs_acc_pso1m2",nil,300],
                        ["optic_mas_PSO_nv_day",nil,400],
                        ["optic_mas_PSO_nv",nil,450],
                        ["optic_KHS_old",nil,500],
                        
                        ["ACE_RangeCard",nil,150],

                        ["I_mas_DShkM_h_Gun_Bag",nil,200],
                        ["I_mas_Kord_h_Gun_Bag",nil,350],
                        ["I_mas_M2_h_Gun_Bag",nil,500],
                        ["I_mas_Tripod_h_Bag",nil,150],
                        ["I_mas_DShkM_Gun_Bag",nil,200],
                        ["I_mas_Kord_Gun_Bag",nil,350],
                        ["I_mas_M2_Gun_Bag",nil,500], 
                        ["I_mas_Tripod_Bag",nil,150],

                        ["ACE_DeadManSwitch",nil,250],
                        ["ACE_Cellphone",nil,150],
                        ["ACE_Clacker",nil,400],
                        ["ACE_M26_Clacker",nil,650],
                        
                        ["rhs_mag_zarya2",nil,200],

                        ["rhsusf_ANPVS_14",nil,200],
                        ["rhsusf_ANPVS_15",nil,230],
                        ["Binocular",nil,100],

                        ["tf_anprc148jem",nil,100],
                        ["ACE_CableTie",nil,20],
                        ["ACE_EarPlugs",nil,5],
                        ["ACE_Flashlight_XL50",nil,20],
                        ["ACE_DAGR",nil,15]
                    ]
                ];
            };               
           
		
		};

	};
};

