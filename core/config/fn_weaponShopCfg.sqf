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


_data = missionNamespace getVariable ("Level_Prof");
_level = _data select 1;
_level = [] call life_fnc_getLevel;

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
                        //["FirstAidKit",nil,150],
                        ["Binocular",nil,300],
                        ["Chemlight_green",nil,300],
                        ["Chemlight_blue",nil,300],
                        ["SmokeShell",nil,300],
                        ["SmokeShellRed",nil,300],
                        ["SmokeShellGreen",nil,300],
                        ["acc_flashlight",nil,100],
						["ACE_CableTie",nil,100],
						["ACE_SpareBarrel",nil,100],
						["ACE_RangeCard",nil,100],
						["ACE_Altimeter",nil,100],
						["ACE_TacticalLadder_Pack",nil,100],
						["ACE_EarPlugs",nil,100],
						["ACE_Flashlight_XL50",nil,100],
						["ACE_Flashlight_KSF1",nil,1000],
						["ACE_Flashlight_MX991",nil,1000],
						["ACE_MapTools",nil,100],
						["ACE_quikclot",nil,100],
						["ACE_personalAidKit",nil,100],
						["ACE_atropine",nil,100],
						["ACE_epinephrine",nil,100]
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
        //["FirstAidKit",nil,1500],
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
                //["FirstAidKit",nil,500],
                //["NVGoggles",nil,25000],
                ["Chemlight_red",nil,300],
                ["Chemlight_yellow",nil,300],
				["ACE_CableTie",nil,1000],
				["ACE_EarPlugs",nil,100],
				["ACE_MapTools",nil,100],
				["ACE_quikclot",nil,100],
				["ACE_personalAidKit",nil,100],
				["ACE_atropine",nil,100],
				["ACE_epinephrine",nil,100]
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


//Warlord Level 10
case "level10":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist!"};
            case (_level < 100): {"Dein Level ist zu niedrig!"};
            default
            {
                ["Level 10",
                    [
                        ["arifle_mas_fal",nil,40000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["acc_flashlight",nil,500]
                    ]
                ];
            };
        };
    };

//Warlord Level 20
case "level20":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist!"};
            case (_level < 200): {"Dein Level ist zu niedrig!"};
            default
            {
                ["Level 20",
                    [
                        ["LMG_mas_rpk_F",nil,50000],
                        ["100Rnd_mas_545x39_T_mag",nil,1000],

                        ["arifle_mas_lee",nil,50000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["arifle_mas_fal",nil,40000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["FHQ_optic_VCOG",nil,6000],
                        ["optic_Aco",nil,5000],
                        ["optic_ACO_grn",nil,5000]
                    ]
                ];
            };
        };
    };

//Warlord Level 30
case "level30":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist!"};
            case (_level < 300): {"Dein Level ist zu niedrig!"};
            default
            {
                ["Level 30",
                    [


                        ["arifle_mas_akm",nil,75000],
                        ["30Rnd_mas_762x39_mag",nil,5000],

                        ["LMG_mas_rpk_F",nil,50000],
                        ["100Rnd_mas_545x39_T_mag",nil,1000],

                        ["arifle_mas_lee",nil,50000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],

                        ["arifle_mas_fal",nil,40000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["optic_mas_PSO_day",nil,10000],
                        ["FHQ_optic_VCOG",nil,6000],
                        ["optic_Aco",nil,5000],
                        ["optic_ACO_grn",nil,5000],
                        ["NVGoggles",nil,25000]
                    ]
                ];
            };
        };
    };

//Warlord Level 40
case "level40":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist!"};
            case (_level < 400): {"Dein Level ist zu niedrig!"};
            default
            {
                ["Level 40",
                    [
                        ["srifle_mas_m91",nil,100000],
                        ["10Rnd_mas_762x54_mag",nil,10000],

                        ["arifle_mas_akm",nil,75000],
                        ["30Rnd_mas_762x39_mag",nil,5000],
                        ["LMG_mas_rpk_F",nil,50000],
                        ["100Rnd_mas_545x39_T_mag",nil,1000],
                        ["arifle_mas_lee",nil,50000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],
                        ["arifle_mas_fal",nil,40000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["optic_mas_PSO_day",nil,10000],
                        ["FHQ_optic_VCOG",nil,6000],
                        ["optic_Aco",nil,5000],
                        ["optic_ACO_grn",nil,5000],
                        ["NVGoggles",nil,25000],
                        ["ACE_Vector",nil,25000],
						["ACE_Kestrel4500",nil,500]
                    ]
                ];
            };
        };
    };

//Warlord Level 50
case "level50":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"Du bist kein Zivilist!"};
            case (_level < 500): {"Dein Level ist zu niedrig!"};
            default
            {
                ["Level 50",
                    [
                        ["LMG_mas_pkm_F",nil,250000],
                        ["100Rnd_mas_762x54_mag",nil,15000],
                        ["srifle_mas_svd",nil,125000],
                        ["10Rnd_mas_762x54_mag",nil,10000],
                        ["srifle_mas_ksvk",nil,350000],
                        ["5Rnd_mas_127x108_mag",nil,10000],
                        ["mas_launch_RPG7_F",nil,500000],
                        ["mas_PG7V",nil,50000],

                        ["srifle_mas_m91",nil,100000],
                        ["10Rnd_mas_762x54_mag",nil,10000],
                        ["arifle_mas_akm",nil,75000],
                        ["30Rnd_mas_762x39_mag",nil,5000],
                        ["LMG_mas_rpk_F",nil,50000],
                        ["100Rnd_mas_545x39_T_mag",nil,1000],
                        ["arifle_mas_lee",nil,50000],
                        ["5Rnd_mas_762x51_Stanag",nil,1000],
                        ["arifle_mas_fal",nil,40000],
                        ["20Rnd_mas_762x51_Stanag",nil,1000],

                        ["optic_mas_PSO_eo",nil,25000],
                        ["FHQ_optic_VCOG",nil,6000],
                        ["optic_Aco",nil,5000],
                        ["optic_ACO_grn",nil,5000],
                        ["NVGoggles",nil,25000],
                        ["ACE_Vector",nil,25000],
						["ACE_Yardage450",nil,5000],
                        ["HandGrenade_Stone","Blindmacher",5000],
						["ACE_ATragMX",nil,1000],
						["ACE_Kestrel4500",nil,500]
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
                        //["FirstAidKit",nil,150],
                        //["Medikit",nil,250],
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
						
                    ]
                ];
            };
        };
    };
};
