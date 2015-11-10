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
    case "army_equipment":
    {
        switch(true) do
        {

            case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
            case (__GETC__(life_coplevel) > 0) :
            {
                ["Army Equipment",
                    [
                        ["tf_rf7800str",nil,10],
                        ["tf_anprc152",nil,10],
                        //["tf_mr3000_multicam",nil,10],
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
			["ACE_CableTie",nil,10],
			["ACE_SpareBarrel",nil,10],
   			["ACE_Altimeter",nil,10],
   			["ACE_TacticalLadder_Pack",nil,10],
			["ACE_EarPlugs",nil,10],
			["ACE_DefusalKit",nil,10],
			["ACE_Flashlight_KSF1",nil,10],
			["ACE_Flashlight_MX991",nil,10],
			["ACE_MapTools",nil,10]
                    ]
                ];
            };
        };
    };


    case "army_weapon": // SORTIEREN - 1. WAFFEN - 2. MUNITION - 3. VISIERE - 4. SONSTIGES
    {
        switch(true) do
        {
            case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
            case (__GETC__(life_coplevel) == 0): {"Du bist nicht als Soldat gemeldet!"};
			case (__GETC__(life_coplevel) >= 12): {"Du bist hier falsch!"};
            case (__GETC__(life_coplevel) == 1):
            {
                ["Recruit Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],

                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50]
                        
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 2):
            {
                ["Private Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],

                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],

                        ["NVGoggles",nil,10]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 3):
            {
                ["Private 1st Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],

                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],

                        ["NVGoggles",nil,50]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 4):
            {
                ["Specialist Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],

                        ["MiniGrenade",nil,50],
                        ["NVGoggles",nil,50]
                    ]
                ];
            };


            case (__GETC__(life_coplevel) == 5):
            {
                ["Corporal Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],
                        ["FHQ_optic_HWS_G33_tan",nil,50],
                        ["FHQ_optic_ACOG_tan",nil,50],

                        ["MiniGrenade",nil,50],
                        ["1Rnd_HE_Grenade_shell",nil,50],
                        ["NVGoggles",nil,50]


                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 6):
            {
                ["Sergeant Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,10],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],
                        ["FHQ_optic_HWS_G33_tan",nil,50],
                        ["FHQ_optic_ACOG_tan",nil,50],
                        ["optic_SOS",nil,50],

                        ["ACE_RangeCard",nil,50],
                        ["MiniGrenade",nil,50],
                        ["1Rnd_HE_Grenade_shell",nil,50],
                        ["NVGoggles",nil,50]
                    ]
                ];
            };


            case (__GETC__(life_coplevel) == 7):
            {
                ["Staff Sergeant Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,10],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],
                        ["FHQ_optic_HWS_G33_tan",nil,50],
                        ["FHQ_optic_ACOG_tan",nil,50],
                        ["optic_SOS",nil,50],

                        ["ACE_RangeCard",nil,50],                              
                        ["MiniGrenade",nil,50],
                        ["1Rnd_HE_Grenade_shell",nil,50],
                        ["HandGrenade",nil,50],
                        ["ACE_Vector",nil,50],
                        ["NVGoggles",nil,50]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 8):
            {
                ["Sergeant First Class Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,10],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],
                        ["FHQ_optic_HWS_G33_tan",nil,50],
                        ["FHQ_optic_ACOG_tan",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],

			["ACE_RangeCard",nil,50],
                        ["MiniGrenade",nil,50],
                        ["1Rnd_HE_Grenade_shell",nil,50],
                        ["HandGrenade",nil,50],
                        ["rhs_mag_mk84",nil,50],
                        ["bipod_01_F_snd",nil,50],
                        ["ACE_Vector",nil,50],
                        ["NVGoggles",nil,50],
			["ACE_HuntIR_monitor",nil,50],
			["ACE_HuntIR_M203",nil,50]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 9):
            {
                ["Master Sergeant Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,10],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],
                        ["FHQ_optic_HWS_G33_tan",nil,50],
                        ["FHQ_optic_ACOG_tan",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],

			["ACE_RangeCard",nil,50],
                        ["MiniGrenade",nil,50],
                        ["1Rnd_HE_Grenade_shell",nil,50],
                        ["HandGrenade",nil,50],
                        ["rhs_mag_mk84",nil,50],
                        ["bipod_01_F_snd",nil,50],
                        ["ACE_Vector",nil,50],
                        ["Rangefinder",nil,50],                        
                        ["NVGoggles",nil,50],
			["ACE_HuntIR_monitor",nil,50],
			["ACE_HuntIR_M203",nil,50]
                    ]
                ];
            };

             case (__GETC__(life_coplevel) == 10):
            {
                ["Sergeant Major Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,10],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["rhs_weap_M136_hedp",nil,200],
                        ["rhs_m136_hedp_mag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],
                        ["FHQ_optic_HWS_G33_tan",nil,50],
                        ["FHQ_optic_ACOG_tan",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],

                        ["ACE_RangeCard",nil,50],
                        ["MiniGrenade",nil,50],
                        ["1Rnd_HE_Grenade_shell",nil,50],
                        ["HandGrenade",nil,50],
                        ["rhs_mag_mk84",nil,50],
                        ["bipod_01_F_snd",nil,50],
                        ["ACE_Vector",nil,50],
                        ["Rangefinder",nil,50], 
			["ACE_Yardage450",nil,50],
                        ["NVGoggles",nil,50],
			["ACE_ATragMX",nil,50],
			["ACE_Kestrel4500",nil,50],
			["ACE_HuntIR_monitor",nil,50],
			["ACE_HuntIR_M203",nil,50]
                    ]
                ];
            };

             case (__GETC__(life_coplevel) == 11):
            {
                ["Command Sgt Major Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,10],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["srifle_mas_m24_d",nil,200],
                        ["5Rnd_mas_762x51_Stanag",nil,10],

                        ["rhs_weap_M136_hedp",nil,200],
                        ["rhs_m136_hedp_mag",nil,10],

                        ["hgun_mas_bhp_F",nil,200],
                        ["15Rnd_mas_9x21_Mag",nil,10],

                        ["FHQ_optic_MicroCCO_tan",nil,50],
                        ["FHQ_optic_AIM_tan",nil,50],
                        ["FHQ_optic_AimM_TAN",nil,50],
                        ["FHQ_optic_HWS_tan",nil,50],
                        ["FHQ_optic_ACOG",nil, 50],
                        ["FHQ_optic_HWS_G33_tan",nil,50],
                        ["FHQ_optic_ACOG_tan",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],
                        ["FHQ_optic_LeupoldERT_tan",nil,50],

                        ["ACE_RangeCard",nil,50],
                        ["MiniGrenade",nil,50],
                        ["1Rnd_HE_Grenade_shell",nil,50],
                        ["HandGrenade",nil,50],
                        ["rhs_mag_mk84",nil,50],
                        ["bipod_01_F_snd",nil,50],
                        ["ACE_Vector",nil,50],
                        ["Rangefinder",nil,50], 
			["ACE_Yardage450",nil,50],
                        ["NVGoggles",nil,50],
			["ACE_ATragMX",nil,50],
			["ACE_Kestrel4500",nil,50],
			["ACE_HuntIR_monitor",nil,50],
			["ACE_HuntIR_M203",nil,50]
                    ]
                ];
            };
		};
	};
};
