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
			case (life_level < 40): {"Du bist hier falsch!"};
			 case (life_level == 40):
            {
                ["Level 40 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
						["FHQ_optic_AC12136",nil,100],
						["optic_mas_acog",nil,100],  
						["optic_mas_PSO_day",nil,100],
						["optic_mas_PSO_eo",nil,100], 
						["rhs_acc_pso1m2",nil,100], 
						["optic_mas_PSO_nv_day",nil,100],  
						["optic_mas_PSO_nv",nil,100],
						["optic_KHS_old",nil,100],			
						
						["ACE_RangeCard",nil,100],			

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],  
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
						["ACE_DeadManSwitch",nil,100],
						["ACE_Cellphone",nil,100],
						["ACE_Clacker",nil,100],    
						["ACE_M26_Clacker",nil,100],
                      
                        ["rhs_mag_zarya2",nil,100],                       
                      
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
            case (life_level == 41):
            {
                ["Level 41 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
						["FHQ_optic_AC12136",nil,100],
						["optic_mas_acog",nil,100],  
						["optic_mas_PSO_day",nil,100],
						["optic_mas_PSO_eo",nil,100], 
						["rhs_acc_pso1m2",nil,100], 
						["optic_mas_PSO_nv_day",nil,100],  
						["optic_mas_PSO_nv",nil,100],
						["optic_KHS_old",nil,100],
						["ACE_optic_LRPS_PIP",nil,100],			
						
						["ACE_RangeCard",nil,100],			

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],  
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
						["ACE_DeadManSwitch",nil,100],
						["ACE_Cellphone",nil,100],
						["ACE_Clacker",nil,100],    
						["ACE_M26_Clacker",nil,100],
                      
                        ["rhs_mag_zarya2",nil,100],                       
                      
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
            case ((life_level == 42) OR (life_level == 43)):
            {
                ["Level 42/43 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
						["FHQ_optic_AC12136",nil,100],
						["optic_mas_acog",nil,100],  
						["optic_mas_PSO_day",nil,100],
						["optic_mas_PSO_eo",nil,100], 
						["rhs_acc_pso1m2",nil,100], 
						["optic_mas_PSO_nv_day",nil,100],  
						["optic_mas_PSO_nv",nil,100],
						["optic_KHS_old",nil,100],
						["ACE_optic_LRPS_PIP",nil,100],			
						
						["ACE_RangeCard",nil,100],			

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],  
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
						["ACE_DeadManSwitch",nil,100],
						["ACE_Cellphone",nil,100],
						["ACE_Clacker",nil,100],    
						["ACE_M26_Clacker",nil,100],
                      
                        ["rhs_mag_zarya2",nil,100],                       
                      
                        ["rhsusf_ANPVS_14",nil,100],
                        ["rhsusf_ANPVS_15",nil,100],                      
                      	["Binocular",nil,100], 
                      	["Rangefinder",nil,100], 
                      
                        ["tf_anprc148jem",nil,100],                      	
                        ["ACE_CableTie",nil,100],                      
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],  
                        ["FirstAidKit",nil,100],                       
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            }; 
            case ((life_level == 44) OR (life_level == 45)):
            {
                ["Level 44/45 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
						["FHQ_optic_AC12136",nil,100],
						["optic_mas_acog",nil,100],  
						["optic_mas_PSO_day",nil,100],
						["optic_mas_PSO_eo",nil,100], 
						["rhs_acc_pso1m2",nil,100], 
						["optic_mas_PSO_nv_day",nil,100],  
						["optic_mas_PSO_nv",nil,100],
						["optic_KHS_old",nil,100],
						["ACE_optic_LRPS_PIP",nil,100],			
						
						["ACE_RangeCard",nil,100],
						
						["muzzle_mas_snds_SVD",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],  
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
						["ACE_DeadManSwitch",nil,100],
						["ACE_Cellphone",nil,100],
						["ACE_Clacker",nil,100],    
						["ACE_M26_Clacker",nil,100],
								  
                        ["rhs_mag_zarya2",nil,100],                       
                      
                        ["rhsusf_ANPVS_14",nil,100],
                        ["rhsusf_ANPVS_15",nil,100],                      
                      	["Binocular",nil,100], 
                      	["Rangefinder",nil,100], 
                      
                        ["tf_anprc148jem",nil,100],                      	
                        ["ACE_CableTie",nil,100],                      
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],  
                        ["FirstAidKit",nil,100],                       
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };                
            case (life_level == 46):
            {
                ["Level 46 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
						["FHQ_optic_AC12136",nil,100],
						["optic_mas_acog",nil,100],  
						["optic_mas_PSO_day",nil,100],
						["optic_mas_PSO_eo",nil,100], 
						["rhs_acc_pso1m2",nil,100], 
						["optic_mas_PSO_nv_day",nil,100],  
						["optic_mas_PSO_nv",nil,100],
						["optic_KHS_old",nil,100],
						["ACE_optic_LRPS_PIP",nil,100],	
						["optic_ACO_grn_smg",nil,100],				
						
						["ACE_RangeCard",nil,100],
						
						["muzzle_mas_snds_SVD",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],  
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
						["ACE_DeadManSwitch",nil,100],
						["ACE_Cellphone",nil,100],
						["ACE_Clacker",nil,100],    
						["ACE_M26_Clacker",nil,100],
                      
                        ["rhs_mag_zarya2",nil,100],                       
                      
                        ["rhsusf_ANPVS_14",nil,100],
                        ["rhsusf_ANPVS_15",nil,100],                      
                      	["Binocular",nil,100], 
                      	["Rangefinder",nil,100], 
                      
                        ["tf_anprc148jem",nil,100],                      	
                        ["ACE_CableTie",nil,100],                      
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],  
                        ["FirstAidKit",nil,100],                       
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };           
            case ((life_level == 47) OR (life_level == 48) OR (life_level == 49) OR (life_level == 50)):
            {
                ["Level 47/48/49/50 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
						["FHQ_optic_AC12136",nil,100],
						["optic_mas_acog",nil,100],  
						["optic_mas_PSO_day",nil,100],
						["optic_mas_PSO_eo",nil,100], 
						["rhs_acc_pso1m2",nil,100], 
						["optic_mas_PSO_nv_day",nil,100],  
						["optic_mas_PSO_nv",nil,100],
						["optic_KHS_old",nil,100],
						["ACE_optic_LRPS_PIP",nil,100],	
						["optic_ACO_grn_smg",nil,100],				
						
						["ACE_RangeCard",nil,100],
						
						["muzzle_mas_snds_SVD",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],  
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
						["ACE_DeadManSwitch",nil,100],
						["ACE_Cellphone",nil,100],
						["ACE_Clacker",nil,100],    
						["ACE_M26_Clacker",nil,100],
                      
                        ["rhs_mag_zarya2",nil,100],                       
                      
                        ["rhsusf_ANPVS_14",nil,100],
                        ["rhsusf_ANPVS_15",nil,100],                      
                      	["Binocular",nil,100], 
                      	["Rangefinder",nil,100], 
                      
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

