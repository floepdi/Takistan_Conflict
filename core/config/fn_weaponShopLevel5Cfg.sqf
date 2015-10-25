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

	 case "civ_weapon2":
    {
		switch(true) do
        {
            case (playerSide != civilian): {"Finger weg, Soldat!"};
			case ((life_level < 26) OR (life_level >= 40)): {"Du bist hier falsch!"};

            case ((life_level == 26) OR (life_level == 27)):
            {
                ["Level 26/27 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]

                    ]
                ];
            };

            case ((life_level == 28) OR (life_level == 29)):
            {
                ["Level 28/29 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100]

                    ]
                ];
            };

            case (life_level == 30):
            {
                ["Level 30 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["10Rnd_mas_762x54_mag",nil,100]

                    ]
                ];
            };

            case ((life_level == 31) OR (life_level == 32)):
            {
                ["Level 31/32 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,3500],
                        ["rhs_rpg7_PG7VL_mag","Anti-Fahrzeug Munition I",650]

                    ]
                ];
            };

            case (life_level == 33):
            {
                ["Level 33 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,3500],
                        ["rhs_rpg7_PG7VL_mag","Anti-Fahrzeug Munition I",650],
                        ["arifle_mas_akm",nil,2000],
                        ["30Rnd_mas_762x39_mag",nil,200]
                    ]
                ];
            };

            case ((life_level == 34) OR (life_level == 35)):
            {
                ["Level 34/35 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["srifle_mas_m91",nil,1950],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,3500],
                        ["rhs_rpg7_PG7VL_mag","Anti-Fahrzeug Munition I",650],
                        ["arifle_mas_akm",nil,2000],
                        ["30Rnd_mas_762x39_mag",nil,200]
                    ]
                ];
            };

            case (life_level == 36):
            {
                ["Level 36 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["srifle_mas_m91",nil,1950],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,3500],
                        ["rhs_rpg7_PG7VL_mag","Anti-Fahrzeug Munition I",650],
                        ["arifle_mas_akm",nil,2000],
                        ["arifle_mas_akm_gl",nil,2500],
                        ["30Rnd_mas_762x39_mag",nil,200]
                    ]
                ];
            };


           case (life_level == 37):
            {
                ["Level 37 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["srifle_mas_m91",nil,1950],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,3500],
                        ["rhs_rpg7_PG7VL_mag","Anti-Fahrzeug Munition I",650],
                        ["arifle_mas_akm",nil,2000],
                        ["arifle_mas_akm_gl",nil,2500],
                        ["30Rnd_mas_762x39_mag",nil,200],
                        ["LMG_mas_pkm_F",nil,2750],
                        ["100Rnd_mas_762x54_mag",nil,300]
                    ]
                ];
            };

            case (life_level == 38):
            {
                ["Level 38 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["srifle_mas_m91",nil,1950],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,3500],
                        ["rhs_rpg7_PG7VL_mag","Anti-Fahrzeug Munition I",650],
                        ["rhs_rpg7_OG7V_mag","Anti-Personen Munition I",650],
                        ["arifle_mas_akm",nil,2000],
                        ["arifle_mas_akm_gl",nil,2500],
                        ["30Rnd_mas_762x39_mag",nil,200],
                        ["LMG_mas_pkm_F",nil,2750],
                        ["100Rnd_mas_762x54_mag",nil,300]
                    ]
                ];
            };

            case (life_level == 39):
            {
                ["Level 39 Waffenladen",
                    [
                        ["hgun_mas_mak_F",nil,100],
                        ["8Rnd_mas_9x18_Mag",nil,10],
                        ["hgun_mas_acp_F",nil,125],
                        ["12Rnd_mas_45acp_Mag",nil,10],
                        ["hgun_mas_sa61_F",nil,175],
                        ["20Rnd_mas_765x17_Mag",nil,15],
                        ["arifle_mas_aks74u",nil,350],
                        ["arifle_mas_ak74",nil,400],
                        ["arifle_mas_aks_74_sf",nil,500],
                        ["arifle_mas_ak_74m",nil,550],
                        ["arifle_mas_ak_74m_sf",nil,600],
                        ["arifle_mas_ak_74m_gl",nil,800],
                        ["arifle_mas_ak_74m_sf_gl",nil,850],
                        ["30Rnd_mas_545x39_mag",nil,25],
                        ["1Rnd_HE_Grenade_shell",nil,450],
                        ["arifle_mas_lee",nil,850],
                        ["5Rnd_mas_762x51_Stanag",nil,50],
                        ["LMG_mas_rpk_F",nil,1000],
                        ["100Rnd_mas_545x39_mag",nil,150],
                        ["srifle_DMR_01_F",nil,1250],
                        ["10Rnd_762x54_Mag",nil,100],
                        ["arifle_mas_fal_m203",nil,1500],
                        ["20Rnd_mas_762x51_Stanag",nil,150]
                        ["rhs_weap_svdp",nil,1650],
                        ["rhs_10Rnd_762x54mmR_7N1",nil,100],
                        ["srifle_mas_svd",nil,1800],
                        ["srifle_mas_m91",nil,1950],
                        ["10Rnd_mas_762x54_mag",nil,100],
                        ["rhs_weap_rpg7",nil,3500],
                        ["rhs_rpg7_PG7VL_mag","Anti-Fahrzeug Munition I",650],
                        ["rhs_rpg7_OG7V_mag","Anti-Personen Munition I",650],
                        ["arifle_mas_akm",nil,2000],
                        ["arifle_mas_akm_gl",nil,2500],
                        ["arifle_mas_m70_gl",nil,2250],
                        ["30Rnd_mas_762x39_mag",nil,200],
                        ["LMG_mas_pkm_F",nil,2750],
                        ["100Rnd_mas_762x54_mag",nil,300]
                    ]
                ];
            };


		};

	};
};

