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
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,200],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["srifle_mas_ebr",nil,200],
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

                       case (__GETC__(life_coplevel) == 13):
            {
                ["First Lieutenant Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,200],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["srifle_mas_ebr",nil,200],
                        ["srifle_mas_m110",nil,20000],
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
                        ["optic_LRPS",nil,1000],

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

                       case (__GETC__(life_coplevel) == 14):
            {
                ["Captain Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,200],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["srifle_mas_ebr",nil,200],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["srifle_mas_m24_d",nil,200],
                        ["5Rnd_mas_762x51_Stanag",nil,10],

                        ["rhs_weap_XM2010_d",nil,200],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,10],

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
			["rhsusf_acc_ACOG3",nil,50],
			["rhsusf_acc_LEUPOLDMK4_2",nil,50],
                        ["optic_SOS",nil,50],
                        ["FHQ_optic_LeupoldERT_tan",nil,50],
                        ["optic_LRPS",nil,50],
			
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

                       case (__GETC__(life_coplevel) == 15):
            {
                ["Major Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,200],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["srifle_mas_ebr",nil,200],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["srifle_mas_m24_d",nil,200],
                        ["5Rnd_mas_762x51_Stanag",nil,10],

                        ["rhs_weap_XM2010_d",nil,200],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,10],

                        ["srifle_mas_lrr",nil,200],
                        ["10Rnd_mas_338_Stanag",nil,10],

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
			["rhsusf_acc_ACOG3",nil,50],
			["rhsusf_acc_LEUPOLDMK4_2",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],
                        ["FHQ_optic_LeupoldERT_tan",nil,50],
                        ["optic_LRPS",nil,50],

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

                       case (__GETC__(life_coplevel) == 16):
            {
                ["Colonel Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,200],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["srifle_mas_ebr",nil,200],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["srifle_mas_m24_d",nil,200],
                        ["5Rnd_mas_762x51_Stanag",nil,10],

                        ["rhs_weap_XM2010_d",nil,200],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,10],

                        ["srifle_mas_lrr",nil,200],
                        ["10Rnd_mas_338_Stanag",nil,10],

                        ["MMG_02_sand_F",nil,200],
                        ["130Rnd_338_Mag",nil,10],

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
			["rhsusf_acc_ACOG3",nil,50],
			["rhsusf_acc_LEUPOLDMK4_2",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],
                        ["FHQ_optic_LeupoldERT_tan",nil,50],
                        ["optic_LRPS",nil,50],

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
			["ACE_Banana",nil,100],
			["ACE_Kestrel4500",nil,50],
			["ACE_HuntIR_monitor",nil,50],
			["ACE_HuntIR_M203",nil,50]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 17):
            {
                ["General Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,200],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["srifle_mas_ebr",nil,200],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["srifle_mas_m24_d",nil,200],
                        ["5Rnd_mas_762x51_Stanag",nil,10],

                        ["rhs_weap_XM2010_d",nil,200],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,10],

                        ["srifle_mas_lrr",nil,200],
                        ["10Rnd_mas_338_Stanag",nil,10],

                        ["srifle_DMR_05_tan_f",nil,200],
                        ["10Rnd_93x64_DMR_05_Mag",nil,10],

                        ["srifle_LRR_camo_F",nil,200],
                        ["7Rnd_408_Mag",nil,10],

                        ["MMG_02_sand_F",nil,200],
                        ["130Rnd_338_Mag",nil,10],

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
			["rhsusf_acc_ACOG3",nil,50],
			["rhsusf_acc_LEUPOLDMK4_2",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],
                        ["FHQ_optic_LeupoldERT_tan",nil,50],
                        ["optic_LRPS",nil,50],

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
			["ACE_Banana",nil,100],
			["ACE_Kestrel4500",nil,50],
			["ACE_HuntIR_monitor",nil,50],
			["ACE_HuntIR_M203",nil,50]
                    ]
                ];
            };

                       case (__GETC__(life_coplevel) == 18):
            {
                ["Commander in Chief Waffenspind",
                    [
                        ["arifle_mas_m16",nil,200],
                        ["arifle_mas_m4c",nil,200],
                        ["arifle_mas_m4",nil,200],
                        ["arifle_mas_g36c",nil,200],
                        ["arifle_mas_m4_m203_d",nil,200],
                        ["arifle_mas_mk16_l_gl",nil,200],
                        ["30Rnd_mas_556x45_Stanag",nil,10],

                        ["LMG_mas_M249_F",nil,200],
                        ["200Rnd_mas_556x45_Stanag",nil,200],

                        ["hlc_rifle_SAMR",nil,200],
                        ["30Rnd_556x45_Stanag",nil,10],

                        ["arifle_mas_g3",nil,200],
                        ["arifle_mas_g3_m203",nil,200],
                        ["arifle_mas_mk17",nil,200],
                        ["arifle_mas_mk17_gl",nil,200],
                        ["srifle_mas_sr25_d",nil,200],
                        ["arifle_mas_hk417c_d",nil,200],
                        ["srifle_mas_hk417_d",nil,200],
                        ["srifle_mas_ebr",nil,200],
                        ["srifle_mas_m110",nil,20000],
                        ["20Rnd_mas_762x51_Stanag",nil,10],

                        ["LMG_mas_mk48_F_d",nil,200],
                        ["100Rnd_mas_762x51_Stanag",nil,10],

                        ["srifle_mas_m24_d",nil,200],
                        ["5Rnd_mas_762x51_Stanag",nil,10],

                        ["rhs_weap_XM2010_d",nil,200],
                        ["rhsusf_5Rnd_300winmag_xm2010",nil,10],

                        ["srifle_mas_lrr",nil,200],
                        ["10Rnd_mas_338_Stanag",nil,10],

                        ["srifle_DMR_05_tan_f",nil,200],
                        ["10Rnd_93x64_DMR_05_Mag",nil,10],

                        ["srifle_LRR_camo_F",nil,200],
                        ["7Rnd_408_Mag",nil,10],

                        ["srifle_DMR_04_Tan_F",nil,200],
                        ["10Rnd_127x54_Mag",nil,10],

                        ["MMG_02_sand_F",nil,200],
                        ["130Rnd_338_Mag",nil,10],

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
			["rhsusf_acc_ACOG3",nil,50],
			["rhsusf_acc_LEUPOLDMK4_2",nil,50],
                        ["optic_AMS_snd",nil,50],
                        ["optic_SOS",nil,50],
                        ["FHQ_optic_LeupoldERT_tan",nil,50],
                        ["optic_LRPS",nil,50],

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
			["ACE_Banana",nil,100],
			["ACE_Kestrel4500",nil,50],
			["ACE_HuntIR_monitor",nil,50],
			["ACE_HuntIR_M203",nil,50]
                    ]
                ];
            };
		};
    };
};

