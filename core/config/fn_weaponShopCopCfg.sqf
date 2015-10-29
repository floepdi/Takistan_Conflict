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
                        ["tf_rf7800str",nil,500],
                        ["tf_anprc152",nil,500],
                        //["tf_mr3000_multicam",nil,500],
                        ["ACE_DAGR",nil,1000],
						["ACE_microDAGR",nil,100],		
                        ["ToolKit",nil,250],
                        ["FirstAidKit",nil,150],
                        ["Binocular",nil,300],
                        ["Chemlight_green",nil,300],
                        ["Chemlight_blue",nil,300],
                        ["SmokeShell",nil,300],
                        ["SmokeShellRed",nil,300],
                        ["SmokeShellGreen",nil,300],
                        ["acc_flashlight",nil,100],
			["ACE_CableTie",nil,100],
			["ACE_SpareBarrel",nil,100],
   			["ACE_Altimeter",nil,100],
   			["ACE_TacticalLadder_Pack",nil,100],
			["ACE_EarPlugs",nil,100],
			["ACE_DefusalKit",nil,100],
			["ACE_Flashlight_KSF1",nil,1000],
			["ACE_Flashlight_MX991",nil,1000],
			["ACE_MapTools",nil,100]
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
                        ["rhs_weap_m16a4",nil,1000],

                        ["30Rnd_mas_556x45_Stanag",nil,100],

                        ["FHQ_optic_AC12136",nil,500]
                        
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 2):
            {
                ["Private Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],

                        ["30Rnd_mas_556x45_Stanag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],

                        ["NVGoggles",nil,1000]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 3):
            {
                ["Private 1st Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],

                        ["30Rnd_mas_556x45_Stanag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],

                        ["NVGoggles",nil,1000]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 4):
            {
                ["Specialist Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["30Rnd_mas_556x45_Stanag",nil,100],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],

                        ["MiniGrenade",nil,1000],
                        ["NVGoggles",nil,1000]
                    ]
                ];
            };


            case (__GETC__(life_coplevel) == 5):
            {
                ["Corporal Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["arifle_mas_m4_m203_d",nil,15000],
                        ["30Rnd_mas_556x45_Stanag",nil,500],

                        ["LMG_mas_M249_F",nil,7500],
                        ["200Rnd_mas_556x45_Stanag",nil,1000],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],
                        ["FHQ_optic_HWS_G33_tan",nil,500],
                        ["FHQ_optic_ACOG_tan",nil,1000],

                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["NVGoggles",nil,1000]


                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 6):
            {
                ["Sergeant Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["arifle_mas_m4_m203_d",nil,15000],
                        ["arifle_mas_mk16_l_gl",nil,15000],
                        ["30Rnd_mas_556x45_Stanag",nil,500],

                        ["LMG_mas_M249_F",nil,7500],
                        ["200Rnd_mas_556x45_Stanag",nil,1000],

                        ["hlc_rifle_SAMR",nil,17500],
                        ["30Rnd_556x45_Stanag",nil,100],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],
                        ["FHQ_optic_HWS_G33_tan",nil,500],
                        ["FHQ_optic_ACOG_tan",nil,1000],
                        ["optic_SOS",nil,1000],

                        ["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["NVGoggles",nil,1000]
                    ]
                ];
            };


            case (__GETC__(life_coplevel) == 7):
            {
                ["Staff Sergeant Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["arifle_mas_m4_m203_d",nil,15000],
                        ["arifle_mas_mk16_l_gl",nil,15000],
                        ["30Rnd_mas_556x45_Stanag",nil,500],

                        ["LMG_mas_M249_F",nil,7500],
                        ["200Rnd_mas_556x45_Stanag",nil,1000],

                        ["hlc_rifle_SAMR",nil,17500],
                        ["30Rnd_556x45_Stanag",nil,100],

                        ["arifle_MX_GL_F",nil,20000],
                        ["arifle_MXC_F",nil,20000],
                        ["30Rnd_65x39_caseless_mag",nil,20000],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],
                        ["FHQ_optic_HWS_G33_tan",nil,500],
                        ["FHQ_optic_ACOG_tan",nil,1000],
                        ["optic_SOS",nil,1000],

                        ["ACE_RangeCard",nil,1000],                              
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["ACE_Vector",nil,1000],
                        ["NVGoggles",nil,1000]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 8):
            {
                ["Sergeant First Class Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["arifle_mas_m4_m203_d",nil,15000],
                        ["arifle_mas_mk16_l_gl",nil,15000],
                        ["30Rnd_mas_556x45_Stanag",nil,500],

                        ["LMG_mas_M249_F",nil,7500],
                        ["200Rnd_mas_556x45_Stanag",nil,1000],

                        ["hlc_rifle_SAMR",nil,17500],
                        ["30Rnd_556x45_Stanag",nil,100],

                        ["arifle_MX_GL_F",nil,20000],
                        ["arifle_MXC_F",nil,20000],
                        ["arifle_MXM_F",nil,20000],
                        ["30Rnd_65x39_caseless_mag",nil,1000],

                        ["arifle_MX_SW_F",nil,20000],
                        ["100Rnd_65x39_caseless_mag",nil,1000],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],
                        ["FHQ_optic_HWS_G33_tan",nil,500],
                        ["FHQ_optic_ACOG_tan",nil,1000],
                        ["optic_AMS_snd",nil,1000],
                        ["optic_SOS",nil,1000],

			["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
                        ["NVGoggles",nil,1000],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

            case (__GETC__(life_coplevel) == 9):
            {
                ["Master Sergeant Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["arifle_mas_m4_m203_d",nil,15000],
                        ["arifle_mas_mk16_l_gl",nil,15000],
                        ["30Rnd_mas_556x45_Stanag",nil,500],

                        ["LMG_mas_M249_F",nil,7500],
                        ["200Rnd_mas_556x45_Stanag",nil,1000],

                        ["hlc_rifle_SAMR",nil,17500],
                        ["30Rnd_556x45_Stanag",nil,100],

                        ["arifle_MX_GL_F",nil,20000],
                        ["arifle_MXC_F",nil,20000],
                        ["arifle_MXM_F",nil,20000],
                        ["30Rnd_65x39_caseless_mag",nil,1000],

                        ["arifle_MX_SW_F",nil,20000],
                        ["100Rnd_65x39_caseless_mag",nil,1000],

                        ["arifle_mas_mk17_gl",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["LMG_mas_mk48_F_d",nil,20000],
                        ["100Rnd_mas_762x51_Stanag",nil,1000],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],
                        ["FHQ_optic_HWS_G33_tan",nil,500],
                        ["FHQ_optic_ACOG_tan",nil,1000],
                        ["optic_AMS_snd",nil,1000],
                        ["optic_SOS",nil,1000],

			["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
                        ["Rangefinder",nil,1000],                        
                        ["NVGoggles",nil,1000],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

             case (__GETC__(life_coplevel) == 10):
            {
                ["Sergeant Major Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["arifle_mas_m4_m203_d",nil,15000],
                        ["arifle_mas_mk16_l_gl",nil,15000],
                        ["30Rnd_mas_556x45_Stanag",nil,500],

                        ["LMG_mas_M249_F",nil,7500],
                        ["200Rnd_mas_556x45_Stanag",nil,1000],

                        ["hlc_rifle_SAMR",nil,17500],
                        ["30Rnd_556x45_Stanag",nil,100],

                        ["arifle_MX_GL_F",nil,20000],
                        ["arifle_MXC_F",nil,20000],
                        ["arifle_MXM_F",nil,20000],
                        ["30Rnd_65x39_caseless_mag",nil,1000],

                        ["arifle_MX_SW_F",nil,20000],
                        ["100Rnd_65x39_caseless_mag",nil,1000],

                        ["arifle_mas_mk17_gl",nil,20000],
                        ["srifle_mas_sr25_d",nil,20000],
                        ["arifle_mas_hk417c_d",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["LMG_mas_mk48_F_d",nil,20000],
                        ["100Rnd_mas_762x51_Stanag",nil,1000],

                        ["rhs_weap_M136_hedp",nil,20000],
                        ["rhs_m136_hedp_mag",nil,1000],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],
                        ["FHQ_optic_HWS_G33_tan",nil,500],
                        ["FHQ_optic_ACOG_tan",nil,1000],
                        ["optic_AMS_snd",nil,1000],
                        ["optic_SOS",nil,1000],

                        ["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
                        ["Rangefinder",nil,1000], 
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

             case (__GETC__(life_coplevel) == 11):
            {
                ["Command Sgt Major Waffenspind",
                    [
                        ["rhs_weap_m16a4",nil,1000],
                        ["arifle_mas_m4c",nil,1000],
                        ["arifle_mas_m4",nil,1000],
                        ["arifle_mas_g36c",nil,7500],
                        ["arifle_mas_m4_m203_d",nil,15000],
                        ["arifle_mas_mk16_l_gl",nil,15000],
                        ["30Rnd_mas_556x45_Stanag",nil,500],

                        ["LMG_mas_M249_F",nil,7500],
                        ["200Rnd_mas_556x45_Stanag",nil,1000],

                        ["hlc_rifle_SAMR",nil,17500],
                        ["30Rnd_556x45_Stanag",nil,100],

                        ["arifle_MX_GL_F",nil,20000],
                        ["arifle_MXC_F",nil,20000],
                        ["arifle_MXM_F",nil,20000],
                        ["30Rnd_65x39_caseless_mag",nil,1000],

                        ["arifle_MX_SW_F",nil,20000],
                        ["100Rnd_65x39_caseless_mag",nil,1000],

                        ["arifle_mas_mk17_gl",nil,20000],
                        ["srifle_mas_sr25_d",nil,20000],
                        ["arifle_mas_hk417c_d",nil,20000],
                        ["srifle_mas_hk417_d",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["srifle_mas_m24_d",nil,20000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["LMG_mas_mk48_F_d",nil,20000],
                        ["100Rnd_mas_762x51_Stanag",nil,1000],

                        ["rhs_weap_M136_hedp",nil,20000],
                        ["rhs_m136_hedp_mag",nil,1000],

                        ["hgun_mas_bhp_F",nil,1000],
                        ["15Rnd_mas_9x21_Mag",nil,100],

                        ["FHQ_optic_AC12136",nil,500],
                        ["FHQ_optic_AIM_tan",nil,500],
                        ["FHQ_optic_HWS_tan",nil,500],
                        ["FHQ_optic_ACOG",nil, 500],
                        ["FHQ_optic_HWS_G33_tan",nil,500],
                        ["FHQ_optic_ACOG_tan",nil,1000],
                        ["optic_AMS_snd",nil,1000],
                        ["optic_SOS",nil,1000],
                        ["FHQ_optic_LeupoldERT_tan",nil,1000],

                        ["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
                        ["Rangefinder",nil,1000], 
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };
		};
	};
};
