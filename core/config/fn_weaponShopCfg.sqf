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

//_data = missionNamespace getVariable ("Mafia_Prof");
//_mafia = _data select 0;

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
						["ACE_microDAGR",nil,10000],
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
						["ACE_Flashlight_XL50",nil,100],
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
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 12):
            {
                ["Second Lieutenant Waffenspind",
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
                        ["srifle_mas_ebr",nil,20000],
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
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
		 	["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 13):
            {
                ["First Lieutenant Waffenspind",
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
                        ["srifle_mas_ebr",nil,20000],
                        ["srifle_mas_m110",nil,20000],
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
                        ["optic_LRPS",nil,10000],

			["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 14):
            {
                ["Captain Waffenspind",
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
                        ["srifle_mas_ebr",nil,20000],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["srifle_mas_m24_d",nil,20000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["rhs_weap_XM2010_d",nil,1000],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,1000],

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
                        ["optic_LRPS",nil,10000],
                        ["rhsusf_acc_LEUPOLDMK4_2",nil,10000],
			
			["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 15):
            {
                ["Major Waffenspind",
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
                        ["srifle_mas_ebr",nil,20000],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["srifle_mas_m24_d",nil,20000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["rhs_weap_XM2010_d",nil,1000],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,1000],

                        ["srifle_mas_lrr",nil,1000],
                        ["10Rnd_mas_338_Stanag",nil,1000],

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
                        ["optic_LRPS",nil,10000],

                        ["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 16):
            {
                ["Colonel Waffenspind",
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
                        ["srifle_mas_ebr",nil,20000],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["srifle_mas_m24_d",nil,20000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["rhs_weap_XM2010_d",nil,1000],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,1000],

                        ["srifle_mas_lrr",nil,1000],
                        ["10Rnd_mas_338_Stanag",nil,1000],

                        ["LMG_mas_mk48_F_d",nil,20000],
                        ["100Rnd_mas_762x51_Stanag",nil,1000],

                        ["MMG_02_sand_F",nil,20000],
                        ["130Rnd_338_Mag",nil,1000],

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
                        ["optic_LRPS",nil,10000],

			["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Banana",nil,100],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 17):
            {
                ["General Waffenspind",
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
                        ["srifle_mas_ebr",nil,20000],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["srifle_mas_m24_d",nil,20000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["rhs_weap_XM2010_d",nil,1000],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,1000],

                        ["srifle_mas_lrr",nil,1000],
                        ["10Rnd_mas_338_Stanag",nil,1000],

                        ["srifle_DMR_05_tan_f",nil,1000],
                        ["10Rnd_93x64_DMR_05_Mag",nil,1000],

                        ["srifle_LRR_camo_F",nil,1000],
                        ["7Rnd_408_Mag",nil,1000],

                        ["LMG_mas_mk48_F_d",nil,20000],
                        ["100Rnd_mas_762x51_Stanag",nil,1000],

                        ["MMG_02_sand_F",nil,20000],
                        ["130Rnd_338_Mag",nil,1000],

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
                        ["optic_LRPS",nil,10000],

			["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Banana",nil,100],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 18):
            {
                ["Commander in Chief Waffenspind",
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
                        ["srifle_mas_ebr",nil,20000],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["srifle_mas_m24_d",nil,20000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["rhs_weap_XM2010_d",nil,1000],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,1000],

                        ["srifle_mas_lrr",nil,1000],
                        ["10Rnd_mas_338_Stanag",nil,1000],

                        ["srifle_DMR_05_tan_f",nil,1000],
                        ["10Rnd_93x64_DMR_05_Mag",nil,1000],

                        ["srifle_LRR_camo_F",nil,1000],
                        ["7Rnd_408_Mag",nil,1000],

                        ["srifle_DMR_04_Tan_F",nil,1000],
                        ["10Rnd_127x54_Mag",nil,1000],

                        ["LMG_mas_mk48_F_d",nil,20000],
                        ["100Rnd_mas_762x51_Stanag",nil,1000],

                        ["MMG_02_sand_F",nil,20000],
                        ["130Rnd_338_Mag",nil,1000],

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
                        ["optic_LRPS",nil,10000],

			["ACE_RangeCard",nil,1000],
                        ["MiniGrenade",nil,1000],
                        ["1Rnd_HE_Grenade_shell",nil,1000],
                        ["HandGrenade",nil,1000],
                        ["rhs_mag_mk84",nil,1000],
                        ["bipod_01_F_snd",nil,1000],
                        ["ACE_Vector",nil,1000],
			["ACE_Yardage450",nil,5000],
                        ["NVGoggles",nil,1000],
			["ACE_ATragMX",nil,1000],
			["ACE_Banana",nil,100],
			["ACE_Kestrel4500",nil,500],
			["ACE_HuntIR_monitor",nil,500],
			["ACE_HuntIR_M203",nil,100]
                    ]
                ];
            };

        };
    };

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
                ["ToolKit",nil,1000],
                ["FirstAidKit",nil,500],
                //["NVGoggles",nil,25000],
                ["Chemlight_red",nil,300],
                ["Chemlight_yellow",nil,300],
		["ACE_CableTie",nil,1000],
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

            default
            {
                ["Waffenhändler",
                    [

                    ["hgun_mas_glocksf_F",nil,1000],
                    ["12Rnd_mas_45acp_Mag",nil,100],

                    ["hgun_mas_sa61_F",nil,5000],
                    ["20Rnd_mas_765x17_Mag",nil,500],

                    ["arifle_mas_aks74u",nil,12000],
                    ["30Rnd_mas_545x39_mag",nil,500],

                    ["acc_flashlight",nil,500]

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


    case "civ_sonstiges": // SORTIEREN - 1. VISIERE -  2. AUFSÄTZE - 3. EQUIPMENT / GEAR &&&
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

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

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

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

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

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };
            case ((life_level == 15) OR (life_level == 16)):
            {
                ["Level 15/16 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                                                ["FHQ_optic_AC12136",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

                        ["ACE_CableTie",nil,100],
                        ["ACE_EarPlugs",nil,100],
                        ["ACE_Flashlight_XL50",nil,100],
                        ["FirstAidKit",nil,100],
                        ["ACE_DAGR",nil,100]
                    ]
                ];
            };

            case (life_level == 17):
            {
                ["Level 17 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                                                ["FHQ_optic_AC12136",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["IEDLandSmall_Remote_Mag",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

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

                        ["IEDLandSmall_Remote_Mag",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

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

                        ["IEDLandSmall_Remote_Mag",nil,100],

                        ["rhsusf_ANPVS_14",nil,100],
                        ["Binocular",nil,100],

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

                        ["IEDLandSmall_Remote_Mag",nil,100],

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

                        ["IEDLandSmall_Remote_Mag",nil,100],
                        ["IEDUrbanSmall_Remote_Mag",nil,100],

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
            case ((life_level == 22) OR (life_level == 23) OR (life_level == 24)):
            {
                ["Level 22/23/24 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                                                ["FHQ_optic_AC12136",nil,100],
                                                ["optic_mas_acog",nil,100],
                                                ["optic_mas_PSO_day",nil,100],
                                                ["optic_mas_PSO_eo",nil,100],

                                                ["muzzle_mas_snds_AK",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["IEDLandSmall_Remote_Mag",nil,100],
                        ["IEDUrbanSmall_Remote_Mag",nil,100],

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
            case ((life_level == 25) OR (life_level == 26)):
            {
                ["Level 25/26 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                                                ["FHQ_optic_AC12136",nil,100],
                                                ["optic_mas_acog",nil,100],
                                                ["optic_mas_PSO_day",nil,100],
                                                ["optic_mas_PSO_eo",nil,100],

                                                ["muzzle_mas_snds_AK",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["IEDLandSmall_Remote_Mag",nil,100],
                        ["IEDUrbanSmall_Remote_Mag",nil,100],

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
            case (life_level == 27):
            {
                ["Level 27 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                                                ["FHQ_optic_AC12136",nil,100],
                                                ["optic_mas_acog",nil,100],
                                                ["optic_mas_PSO_day",nil,100],
                                                ["optic_mas_PSO_eo",nil,100],

                                                ["muzzle_mas_snds_AK",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["IEDLandSmall_Remote_Mag",nil,100],
                        ["IEDUrbanSmall_Remote_Mag",nil,100],

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
            case (life_level == 28):
            {
                ["Level 28 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                                                ["FHQ_optic_AC12136",nil,100],
                                                ["optic_mas_acog",nil,100],
                                                ["optic_mas_PSO_day",nil,100],
                                                ["optic_mas_PSO_eo",nil,100],
                                                ["rhs_acc_pso1m2",nil,100],

                                                ["muzzle_mas_snds_AK",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["IEDLandSmall_Remote_Mag",nil,100],
                        ["IEDUrbanSmall_Remote_Mag",nil,100],

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
            case (life_level == 29):
            {
                ["Level 29 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
                        ["FHQ_optic_AC12136",nil,100],
                        ["optic_mas_acog",nil,100],
                        ["optic_mas_PSO_day",nil,100],
                        ["optic_mas_PSO_eo",nil,100],
                        ["rhs_acc_pso1m2",nil,100],
                        ["optic_mas_PSO_nv_day",nil,100],

                        ["muzzle_mas_snds_AK",nil,100],

                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100],
                        ["I_mas_Tripod_h_Bag",nil,100],
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_Tripod_Bag",nil,100],

                        ["IEDLandSmall_Remote_Mag",nil,100],
                        ["IEDUrbanSmall_Remote_Mag",nil,100],

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
		 case ((life_level == 30) OR (life_level == 31)):
            {
                ["Level 30/31 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
												["FHQ_optic_AC12136",nil,100],
												["optic_mas_acog",nil,100],  
												["optic_mas_PSO_day",nil,100],
												["optic_mas_PSO_eo",nil,100], 
												["rhs_acc_pso1m2",nil,100], 
												["optic_mas_PSO_nv_day",nil,100],                      
                      
												["muzzle_mas_snds_AK",nil,100],                       
                      
                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],   
                      
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
            case ((life_level == 32) OR (life_level == 33) OR (life_level == 34)):
            {
                ["Level 32/33/34 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
												["FHQ_optic_AC12136",nil,100],
												["optic_mas_acog",nil,100],  
												["optic_mas_PSO_day",nil,100],
												["optic_mas_PSO_eo",nil,100], 
												["rhs_acc_pso1m2",nil,100], 
												["optic_mas_PSO_nv_day",nil,100],                      
                      
												["muzzle_mas_snds_AK",nil,100],                       
                      
                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],   
                      
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
            case ((life_level == 35) OR (life_level == 36)):
            {
                ["Level 35/36 Aufsätze & Equipment",
                    [
                        ["optic_ACO_grn",nil,100],
												["FHQ_optic_AC12136",nil,100],
												["optic_mas_acog",nil,100],  
												["optic_mas_PSO_day",nil,100],
												["optic_mas_PSO_eo",nil,100], 
												["rhs_acc_pso1m2",nil,100], 
												["optic_mas_PSO_nv_day",nil,100],  
												["optic_mas_PSO_nv",nil,100],                         
                      
												["muzzle_mas_snds_AK",nil,100],                       
                      
                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],                        
                      
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
            case ((life_level == 37) OR (life_level == 38) OR (life_level == 39)):
            {
                ["Level 37/38/39 Aufsätze & Equipment",
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
                      
												["muzzle_mas_snds_AK",nil,100],                       
                      
                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_Bag",nil,100],                       
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],                        
                      
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
                      
												["muzzle_mas_snds_AK",nil,100],                       
                      
                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],                        
                      	["I_mas_Tripod_Bag",nil,100],                                              
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],                        
                      
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
                      
												["muzzle_mas_snds_AK",nil,100],                       
                      
                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],                        
                      	["I_mas_Tripod_Bag",nil,100],                                              
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],                        
                      
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
                      
												["muzzle_mas_snds_AK",nil,100],                       
                      
                        ["I_mas_DShkM_h_Gun_Bag",nil,100],
                        ["I_mas_Kord_h_Gun_Bag",nil,100], 
                        ["I_mas_M2_h_Gun_Bag",nil,100],                      
                      	["I_mas_Tripod_h_Bag",nil,100],    
                        ["I_mas_DShkM_Gun_Bag",nil,100],
                        ["I_mas_Kord_Gun_Bag",nil,100],
                        ["I_mas_M2_Gun_Bag",nil,100],  
                        ["I_mas_SPG9_Gun_Bag",nil,100],                        
                      	["I_mas_Tripod_Bag",nil,100],                                              
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],                        
                      
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
                      
												["muzzle_mas_snds_AK",nil,100],  
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
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],                        
                      
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
                      
												["muzzle_mas_snds_AK",nil,100],  
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
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],                        
                      
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
                      
												["muzzle_mas_snds_AK",nil,100],  
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
                      
                        ["IEDLandSmall_Remote_Mag",nil,100], 
                        ["IEDUrbanSmall_Remote_Mag",nil,100],  
                        ["IEDLandBig_Remote_Mag",nil,100],   
                        ["IEDUrbanBig_Remote_Mag",nil,100],                        
                      
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

    case "civ_weapon": // SORTIEREN - 1. WAFFE - 1. MUNITION - 2. WAFFE - 2. MUNITION &&&
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Finger weg, Soldat!"};
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

            case ((life_level == 8) OR (life_level == 9)):
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

            case ((life_level == 10) OR (life_level == 11)):
            {
                ["Level 10/11 Waffenladen",
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
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 12) OR (life_level == 13) OR (life_level == 14)):
            {
                ["Level 12/13/14 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 15) OR (life_level == 16)):
            {
                ["Level 15/16 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 17) OR (life_level == 18)):
            {
                ["Level 17/18 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case (life_level == 19):
            {
                ["Level 19 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case (life_level == 20):
            {
                ["Level 20 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 21) OR (life_level == 22)):
            {
                ["Level 21/22 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100]

                    ]
                ];
            };

            case ((life_level == 23) OR (life_level == 24)):
            {
                ["Level 23/24 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100]

                    ]
                ];
            };

            case ((life_level == 25) OR (life_level == 26) OR (life_level == 27)):
            {
                ["Level 25/26/27 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100]

                    ]
                ];
            };

            case ((life_level == 28) OR (life_level == 29)):
            {
                ["Level 28/29 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100]

                    ]
                ];
            };

            case (life_level == 30):
            {
                ["Level 30 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100]

                    ]
                ];
            };

            case ((life_level == 31) OR (life_level == 32)):
            {
                ["Level 31/32 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100]

                    ]
                ];
            };

            case (life_level == 33):
            {
                ["Level 33 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100]
                    ]
                ];
            };

            case ((life_level == 34) OR (life_level == 35)):
            {
                ["Level 34/35 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100]
                    ]
                ];
            };

            case (life_level == 36):
            {
                ["Level 36 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100]
                    ]
                ];
            };


           case (life_level == 37):
            {
                ["Level 37 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100]
                    ]
                ];
            };

            case (life_level == 38):
            {
                ["Level 38 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100]
                    ]
                ];
            };

            case ((life_level == 39) OR (life_level == 40)):
            {
                ["Level 39/40 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100]
                    ]
                ];
            };

            case (life_level == 41):
            {
                ["Level 41 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100]
                    ]
                ];
            };

            case (life_level == 42):
            {
                ["Level 42 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100]
                    ]
                ];
            };

            case ((life_level == 43) OR (life_level == 44)):
            {
                ["Level 43/44 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["LMG_mas_m72_F",nil,1000],
                        ["100Rnd_mas_762x39_mag",nil,100]
                    ]
                ];
            };

            case (life_level == 45):
            {
                ["Level 45 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["LMG_mas_m72_F",nil,1000],
                        ["100Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_ksvk",nil,1000],
                        ["5Rnd_mas_127x108_T_mag",nil,100]
                    ]
                ];
            };

            case (life_level == 46):
            {
                ["Level 46 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["LMG_mas_m72_F",nil,1000],
                        ["100Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_ksvk",nil,1000],
                        ["5Rnd_mas_127x108_T_mag",nil,100],
                        ["srifle_DMR_04_Tan_F",nil,1000],
                        ["10Rnd_127x54_Mag",nil,100]
                    ]
                ];
            };

            case (life_level == 47):
            {
                ["Level 47 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["LMG_mas_m72_F",nil,1000],
                        ["100Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_ksvk",nil,1000],
                        ["5Rnd_mas_127x108_T_mag",nil,100],
                        ["5Rnd_mas_127x108_mag",nil,100],
                        ["srifle_DMR_04_Tan_F",nil,1000],
                        ["10Rnd_127x54_Mag",nil,100]
                    ]
                ];
            };

            case (life_level == 48):
            {
                ["Level 48 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["LMG_mas_m72_F",nil,1000],
                        ["100Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_ksvk",nil,1000],
                        ["5Rnd_mas_127x108_T_mag",nil,100],
                        ["5Rnd_mas_127x108_mag",nil,100],
                        ["srifle_DMR_04_Tan_F",nil,1000],
                        ["10Rnd_127x54_Mag",nil,100],
                        ["LMG_mas_mg3_F",nil,1000],
                        ["150Rnd_762x51_Box",nil,100]
                    ]
                ];
            };


            case (life_level == 49):
            {
                ["Level 49 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["LMG_mas_m72_F",nil,1000],
                        ["100Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_ksvk",nil,1000],
                        ["5Rnd_mas_127x108_T_mag",nil,100],
                        ["5Rnd_mas_127x108_mag",nil,100],
                        ["5Rnd_mas_127x108_dem_mag",nil,100],
                        ["srifle_DMR_04_Tan_F",nil,1000],
                        ["10Rnd_127x54_Mag",nil,100],
                        ["LMG_mas_mg3_F",nil,1000],
                        ["150Rnd_762x51_Box",nil,100]
                    ]
                ];
            };

            case (life_level == 50):
            {
                ["Level 50 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,1000],
                        ["8Rnd_mas_9x18_Mag",nil,100],
                        ["hgun_mas_acp_F",nil,1000],
                        ["12Rnd_mas_45acp_Mag",nil,100],
                        ["hgun_mas_sa61_F",nil,1000],
                        ["20Rnd_mas_765x17_Mag",nil,100],
                        ["arifle_mas_aks74u",nil,1000],
                        ["arifle_mas_ak74",nil,1000],
                        ["arifle_mas_ak_74m",nil,1000],
                        ["arifle_mas_ak_74m_sf",nil,1000],
                        ["arifle_mas_ak_74m_gl",nil,1000],
                        ["arifle_mas_ak_74m_sf_gl",nil,1000],
                        ["30Rnd_mas_545x39_mag",nil,100],
                        ["1Rnd_HE_Grenade_shell",nil,100],
                        ["arifle_mas_lee",nil,1000],
                        ["5Rnd_mas_762x51_Stanag",nil,100],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,100],
                        ["srifle_DMR_01_F",nil,1000],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1000],
                        ["20Rnd_mas_762x51_Stanag",nil,100],
                        ["rhs_weap_svdp",nil,1000],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,1000],
                        ["rhs_rpg7_PG7VL_mag",nil,100],
                        ["rhs_rpg7_OG7V_mag",nil,100],
                        ["rhs_rpg7_PG7VR_mag",nil,100],
                        ["rhs_rpg7_TBG7V_mag",nil,100],
                        ["arifle_mas_akm",nil,1000],
                        ["arifle_mas_akm_gl",nil,1000],
                        ["arifle_mas_m70_gl",nil,1000],
                        ["30Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["srifle_mas_m91",nil,1000],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["LMG_mas_pkm_F",nil,1000],
                        ["100Rnd_mas_762x54_mag",nil,100],
                        ["srifle_DMR_06_olive_F",nil,1000],
                        ["20Rnd_762x51_Mag",nil,100],
                        ["LMG_mas_m72_F",nil,1000],
                        ["100Rnd_mas_762x39_mag",nil,100],
                        ["srifle_mas_ksvk",nil,1000],
                        ["5Rnd_mas_127x108_T_mag",nil,100],
                        ["5Rnd_mas_127x108_mag",nil,100],
                        ["5Rnd_mas_127x108_dem_mag",nil,100],
                        ["srifle_DMR_04_Tan_F",nil,1000],
                        ["10Rnd_127x54_Mag",nil,100],
                        ["LMG_mas_mg3_F",nil,1000],
                        ["150Rnd_762x51_Box",nil,100]
                    ]
                ];
            };
     };
    };

    case "med_basic":
    {
        switch (true) do
        {
            case (playerSide != independent): {"Du bist kein PJ"};
            default {
                ["PJ Shop",
                    [
                        ["hlc_smg_MP5N",nil,1000],
                        ["hlc_30Rnd_9x19_B_MP5",nil,150],
                        ["FHQ_optic_AC11704",nil,250],
                        ["acc_flashlight",nil,100],

                        ["TRYK_H_woolhat",nil,100],
                        ["TRYK_H_PASGT_BLK",nil,100],
                        ["rhsusf_hgu56p",nil,100],
                        ["TRYK_V_tacv1LC_BK",nil,100],
                        ["TRYK_B_Medbag_BK",nil,500],
                        ["ToolKit",nil,250],
                        ["NVGoggles_mas_h",nil,500],
                        ["ACE_DAGR",nil,100],
                        ["ACE_Vector",nil,100],
                        ["Chemlight_green",nil,100],
                        ["Chemlight_blue",nil,100],
                        ["SmokeShell",nil,100],
                        ["SmokeShellRed",nil,100],
                        ["SmokeShellGreen",nil,100],
                        ["tf_anprc148jem",nil,100],
						["ACE_Altimeter",nil,100],
						["ACE_NonSteerableParachute",nil,100],
						["ACE_ReserveParachute",nil,100],
						["ACE_EarPlugs",nil,100],
						["ACE_MapTools",nil,100]

						/*
						//Medical Gear
						["ACE_atropine",nil,100],
						["ACE_epinephrine",nil,100],
						["ACE_morphine",nil,100],
						["ACE_fieldDressing",nil,100],
						["ACE_elasticBandage",nil,100],
						["ACE_quikclot",nil,100],
						["ACE_bloodIV_250",nil,100],
						["ACE_bloodIV_500",nil,100],
						["ACE_bloodIV",nil,100],
						["ACE_bodyBag",nil,100],
						["ACE_packingBandage",nil,100],
						["ACE_personalAidKit",nil,100],
						["ACE_plasmaIV_250",nil,100],
						["ACE_plasmaIV_500",nil,100],
						["ACE_plasmaIV",nil,100],
						["ACE_salineIV_250",nil,100],
						["ACE_salineIV_500",nil,100],
						["ACE_salineIV",nil,100],
						["ACE_surgicalKit",nil,100],
						["ACE_tourniquet",nil,100]
						*/
						["FirstAidKit",nil,150],
                        ["Medikit",nil,250]

                    ]
                ];
            };
        };
    };
};
