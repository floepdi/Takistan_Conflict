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

	 case "army_weapon2":
    {
		switch(true) do
        {
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
            case (__GETC__(life_coplevel) == 0): {"Du bist nicht als Soldat gemeldet!"};
			case (__GETC__(life_coplevel) < 12): {"Du bist hier falsch!"};

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
						["rhsusf_acc_ACOG3",nil,1000],
						["rhsusf_acc_LEUPOLDMK4_2",nil,1000],
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
						["rhsusf_acc_ACOG3",nil,1000],
						["rhsusf_acc_LEUPOLDMK4_2",nil,1000],
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
						["rhsusf_acc_ACOG3",nil,1000],
						["rhsusf_acc_LEUPOLDMK4_2",nil,1000],
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
						["rhsusf_acc_ACOG3",nil,1000],
						["rhsusf_acc_LEUPOLDMK4_2",nil,1000],
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
						["rhsusf_acc_ACOG3",nil,1000],
						["rhsusf_acc_LEUPOLDMK4_2",nil,1000],
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
};

