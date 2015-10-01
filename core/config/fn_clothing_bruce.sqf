/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["TRYK_U_taki_COY","Einheimische Kleidung",2500],
		["IS_uniform_machinegunner_i","Kampfanzug",2500],
		["IS_uniform_team_leader_o","Kampfanzug 2",2500],
		["U_IG_Guerilla1_1","Guerilla",5000],
		["U_IG_Guerilla3_2","Guerilla 2",5000],
		["U_IG_leader","Guerilla Leader",5000]
		];
	};

	//Hats
	case 1:
	{
		[
			["IS_shemag_black","Shemag Schwarz",2500],
			["H_Shemag_tan","Shemag Braun",2500],
			["H_ShemagOpen_khk","Shemag Khk",2500],
			["IS_bandanna_black_logo2","Bandana Schwarz",1000],
			["TRYK_H_Bandana_H","Bandana",1000],
			["H_Bandanna_sand",nil,1000],
			["H_Bandanna_gry",nil,1000],
			["TRYK_H_pakol2","Einheimischer Hut",1000],
			["rds_Villager_cap1",nil,1000],
			["rds_Villager_cap3",nil,1000]
		];
	};

	//Glasses
	case 2:
	{
		[
			["G_Shades_Blue",nil,20],
			["G_Shades_Black",nil,25],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};

	//Vest
	case 3:
	{
		[
		    ["V_BandollierB_blk",nil,5000],
			["V_Chestrig_khk",nil,10000]
			//["V_TacVest_brn",nil,25000],
			//["V_TacVest_oli",nil,25000]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_blk","Smallbag Schwarz",4000],
			["B_AssaultPack_cbr","Smallbag Wueste",4000],
			["B_AssaultPack_rgr","Smallbag Gruen",4000],
			["B_mas_Kitbag_black","Fastbag Schwarz",8000],
			["B_mas_Kitbag_des","Fastbag Wueste",8000],
			["B_mas_Kitbag_rng","Fastbag Gruen",8000]

		];
	};
};