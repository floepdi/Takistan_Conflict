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

	case "cop_basic":
	{
		switch(true) do
		{

			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};

			default
			{
				["Army Shop",
					[

						["arifle_mas_mp5",nil,1000],
						["30Rnd_mas_9x21_Stanag",nil,100],

                        ["arifle_mas_m4",nil,1500],
						["30Rnd_mas_556x45_Stanag",nil,200],
						
						["hgun_P07_F",nil,250],
						["16Rnd_9x21_Mag",nil,25],
						
						["tf_rf7800str",nil,500],
						["tf_anprc152",nil,500],
                   		["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Binocular",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["acc_flashlight",nil,100]

					]
				];
			};
		};
	};

	case "cop_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};

			case (__GETC__(life_coplevel) < 2): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Private 1st Shop",
					[

						["arifle_mas_g36c",nil,1000],

						["arifle_mas_m4_gl",nil,2000],
						["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,250],

						["arifle_mas_l119_d",nil,1000],
						["30Rnd_mas_556x45_Stanag",nil,200],

						["optic_mas_acog",nil,500],
						["optic_Holosight_smg",nil,500]

					]
				];
			};
		};
	};

	case "cop_wrt":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
			case (__GETC__(life_coplevel) < 3): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Corporal Shop",
					[

						["arifle_mas_g36c",nil,1000],
						["arifle_mas_m16",nil,3000],
                        ["arifle_mas_m16_gl",nil,5000],
                        ["arifle_mas_hk416_v",nil,5000],

                        ["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_HE_Grenade_shell",nil,500],

						["30Rnd_mas_556x45_Stanag",nil,200],

						["optic_mas_acog",nil,500],
						["optic_Holosight_smg",nil,500],

                        ["NVGoggles_mas_h",nil,2500]

					]
				];
			};
		};
	};


	case "cop_sergeant2":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
			case (__GETC__(life_coplevel) < 4): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Sergeant Shop",
					[
						["LMG_mas_M249_F",nil,7500],
						["200Rnd_mas_556x45_Stanag",nil,1000],

						["arifle_mas_hk417c_d",nil,10000],
						["20Rnd_762x51_Mag",nil,500],

						["arifle_mas_g36c",nil,1000],
						["arifle_mas_m16",nil,3000],
                        ["arifle_mas_m16_gl",nil,5000],
                        ["arifle_mas_hk416_v",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_HE_Grenade_shell",nil,500],

						["optic_mas_aim",nil,1000],
						["optic_mas_aim_c",nil,1000],
						["optic_mas_acog",nil,1000],
						["optic_Holosight_smg",nil,500],

						["HandGrenade_Stone","Flashbang",2500],
						["NVGoggles_mas_h",nil,2500]

					]
				];
			};
		};
	};

	case "cop_sergeant1":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
			case (__GETC__(life_coplevel) < 5): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Master Sergeant Shop",
					[

					    ["srifle_mas_hk417",nil,15000],
						["20Rnd_762x51_Mag",nil,500],

						["LMG_mas_M249_F",nil,7500],
						["200Rnd_mas_556x45_Stanag",nil,1000],

						["arifle_mas_g36c",nil,1000],
						["arifle_mas_m16",nil,3000],
                        ["arifle_mas_m16_gl",nil,5000],
                        ["arifle_mas_hk416_v",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_HE_Grenade_shell",nil,500],

						["optic_mas_aim",nil,1000],
						["optic_mas_aim_c",nil,1000],
						["optic_mas_acog_rd",nil,1000],
						["optic_mas_zeiss",nil,1000],
						["optic_Holosight_smg",nil,1000],
						["optic_SOS",nil,10000],

						["Rangefinder",nil,5000],
						["HandGrenade_Stone","Flashbang",2500],
						["NVGoggles_mas_h",nil,2500]

					]
				];
			};
		};
	};
	case "cop_detective2":
	{
		switch(true) do
		{
			case (playerSide != west): {"FFinger weg, du bist kein Soldat!"};
			case (__GETC__(life_coplevel) < 6): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Sergeant Major Shop",
					[
						["LMG_mas_Mk48_F",nil,17500],
						["100Rnd_mas_762x51_Stanag",nil,1000],

						["srifle_mas_m110",nil,20000],
						["20Rnd_mas_762x51_Stanag",nil,1000],

						["srifle_mas_hk417",nil,15000],
						["20Rnd_762x51_Mag",nil,500],

						["LMG_mas_M249_F",nil,7500],
						["200Rnd_mas_556x45_Stanag",nil,1000],

						["arifle_mas_g36c",nil,1000],
						["arifle_mas_m16",nil,3000],
                        ["arifle_mas_m16_gl",nil,5000],
                        ["arifle_mas_hk416_v",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_HE_Grenade_shell",nil,500],

						["optic_mas_aim",nil,1000],
						["optic_mas_aim_c",nil,1000],
						["optic_mas_acog_rd",nil,1000],
						["optic_mas_zeiss",nil,1000],
						["optic_Holosight_smg",nil,1000],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,10000],
						["optic_mas_DMS_c",nil,10000],

						["Rangefinder",nil,5000],
						["HandGrenade_Stone","Flashbang",2500],
						["NVGoggles_mas_h",nil,2500]

					]
				];
			};
		};
	};
	case "cop_detective1":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
			case (__GETC__(life_coplevel) < 7): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Command Sergeant Major Shop",
					[
						["srifle_DMR_03_tan_F",nil,18000],
						["20Rnd_762x51_Mag",nil,1000],

						["LMG_mas_Mk48_F",nil,17500],
						["100Rnd_mas_762x51_Stanag",nil,1000],

						["srifle_mas_m110",nil,20000],
						["20Rnd_mas_762x51_Stanag",nil,1000],

						["srifle_mas_hk417",nil,15000],
						["20Rnd_762x51_Mag",nil,500],

						["LMG_mas_M249_F",nil,7500],
						["200Rnd_mas_556x45_Stanag",nil,1000],

						["arifle_mas_g36c",nil,1000],
						["arifle_mas_m16",nil,3000],
                        ["arifle_mas_m16_gl",nil,5000],
                        ["arifle_mas_hk416_v",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_HE_Grenade_shell",nil,500],

						["optic_mas_aim",nil,1000],
						["optic_mas_aim_c",nil,1000],
						["optic_mas_acog_rd",nil,1000],
						["optic_mas_zeiss",nil,1000],
						["optic_Holosight_smg",nil,1000],
						["optic_SOS",nil,10000],
						["optic_LRPS",nil,10000],
						["optic_mas_DMS_c",nil,10000],

						["Rangefinder",nil,5000],
						["HandGrenade_Stone","Flashbang",2500],
						["NVGoggles_mas_h",nil,2500]

					]
				];
			};
		};
	};
	case "cop_lt":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
			case (__GETC__(life_coplevel) < 8): {"Dir fehlen noch ein paar Abzeichen!"};
			default
			{
				["Lieutenant Shop",
					[

					    ["srifle_mas_m24_v",nil,20000],
						["5Rnd_mas_762x51_Stanag",nil,1000],

						["srifle_DMR_03_tan_F",nil,18000],
						["20Rnd_762x51_Mag",nil,1000],

						["LMG_mas_Mk48_F",nil,17500],
						["100Rnd_mas_762x51_Stanag",nil,1000],

						["srifle_mas_m110",nil,20000],
						["20Rnd_mas_762x51_Stanag",nil,1000],

						["srifle_mas_hk417",nil,15000],
						["20Rnd_762x51_Mag",nil,500],

						["LMG_mas_M249_F",nil,7500],
						["200Rnd_mas_556x45_Stanag",nil,1000],

						["arifle_mas_g36c",nil,1000],
						["arifle_mas_m16",nil,3000],
                        ["arifle_mas_m16_gl",nil,5000],
                        ["arifle_mas_hk416_v",nil,5000],
						["30Rnd_mas_556x45_Stanag",nil,200],
						["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,250],
						["1Rnd_HE_Grenade_shell",nil,500],

						["optic_LRPS",nil,10000],
						["optic_mas_aim",nil,1000],
						["optic_mas_aim_c",nil,1000],
						["optic_mas_acog_rd",nil,1000],
						["optic_mas_zeiss",nil,1000],
						["optic_Holosight_smg",nil,1000],
						["optic_SOS",nil,10000],
						["optic_mas_DMS_c",nil,10000],

						["Rangefinder",nil,5000],
						["HandGrenade_Stone","Flashbang",2500],
						["NVGoggles_mas_h",nil,2500]

					]
				];
			};
		};
	};

	case "cop_marksman":
	{
		switch(true) do
		{
			case (playerSide != west): {"Finger weg, du bist kein Soldat!"};
			case (!license_cop_swat): {"Du bist kein DELTA!"};
			default
			{
				["Delta Force",
					[
						["srifle_mas_m107",nil,1000],
						["5Rnd_mas_127x99_Stanag",nil,1000],

						["srifle_DMR_05_blk_F",nil,1000],
						["10Rnd_93x64_DMR_05_Mag",nil,1000],

						["optic_AMS",nil,1000],
						["optic_NVS",nil,1000],
						["optic_DMS",nil,1000],
						["optic_LRPS",nil,1000],
						
						["muzzle_mas_snds_SMc",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_93mmg",nil,5000],
						["bipod_02_F_blk",nil,5000],

						["B_UAV_01_backpack_F",nil,1000],
						["B_UavTerminal",nil,500],

						["TRYK_U_B_BLK",nil,500],
						["TRYK_V_ArmorVest_Delta2",nil,500],
						["TRYK_H_DELTAHELM_NV",nil,500],
						["G_mas_wpn_bala_mask_b",nil,500],
						["TRYK_R_CAP_BLK",nil,500],
						["H_Watchcap_blk",nil,500],
						["G_mas_wpn_gog",nil,500],

						["Rangefinder",nil,5000],
						["HandGrenade_Stone","Flashbang",2500],
						["NVGoggles_mas_h",nil,2500],

						["U_B_FullGhillie_lsh",nil,5000],
						["U_B_FullGhillie_ard",nil,5000],
						["U_B_FullGhillie_sard",nil,5000]
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
		["zipties",nil,5000]


		]

	];
	};

	case "genstore":
	{
		["Synced Gemischtwaren",
			[
				["Binocular",nil,300],
				["ItemGPS",nil,10000],
				["ItemMap",nil,5],
				["ItemCompass",nil,5],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,500],
				//["NVGoggles",nil,25000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300]
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

					["arifle_mas_aks74u",nil,10000],
					["30Rnd_mas_545x39_mag",nil,500],
					
					["acc_flashlight",nil,500]

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
						
						["acc_flashlight",nil,500],
						["ItemGPS",nil,10000]
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
						["arifle_mas_akm",nil,75000],
						["30Rnd_mas_762x39_mag",nil,5000],
					
						["arifle_mas_fal",nil,40000],
						["20Rnd_mas_762x51_Stanag",nil,1000],
						
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
						
						["arifle_mas_fal",nil,40000],
						["20Rnd_mas_762x51_Stanag",nil,1000],
						
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
						["arifle_mas_fal",nil,40000],
						["20Rnd_mas_762x51_Stanag",nil,1000],
						
						["optic_mas_pso",nil,10000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["NVGoggles",nil,25000],
						["Rangefinder",nil,25000]
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
						["arifle_mas_fal",nil,40000],
						["20Rnd_mas_762x51_Stanag",nil,1000],
						
						["optic_mas_PSO_eo",nil,10000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["NVGoggles",nil,25000],
						["Rangefinder",nil,25000],
						["HandGrenade_Stone","Blindmacher",5000]
					]
				];
			};
		};
	};

};
