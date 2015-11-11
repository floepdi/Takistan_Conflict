#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Warlord"];

_return = [];
switch (_filter) do
 {
	//Uniforms
	case 0:
	 {
		if(life_level >= 1) then {
			_return pushBack ["TRYK_U_B_Denim_T_BK","T-Shirt und Jeans",25];
			_return pushBack ["U_C_Poloshirt_salmon","Poloshirt Salmon",25];
			_return pushBack ["U_C_Poloshirt_blue","Poloshirt Blau",25];
		};
		if(life_level >= 2) then {
			_return pushBack ["rds_uniform_citizen2","Billigklamotten",30];
			_return pushBack ["rds_uniform_citizen3","Billigklamotten",30];
			_return pushBack ["U_C_Journalist","Presseoutfit",35];
		};
		if(life_level >= 4) then {
			_return pushBack ["U_BG_Guerilla2_2","Guerilla Outfit",60];
		};
		if(life_level >= 5) then {
			_return pushBack ["TRYK_U_taki_wh","Einheimischen Klamotten Weiß",60];
		};
		if(life_level >= 6) then {
			_return pushBack ["U_BG_Guerilla2_3","Guerilla Outfit(hell)",70];
		};
		if(life_level >= 7) then {
			_return pushBack ["TRYK_U_taki_COY","Einheimischen Klamotten Coyote",65];
		};
		if(life_level >= 8) then {
			_return pushBack ["U_BG_Guerilla2_1","Guerilla Outfit(dunkel)",75];
		};
		if(life_level >= 9) then {
			_return pushBack ["TRYK_OVERALL_flesh","Overall",75];
		};
		if(life_level >= 10) then {
			_return pushBack ["rds_uniform_Profiteer1","Billiganzug",80];
		};
		if(life_level >= 11) then {
			_return pushBack ["TRYK_SUITS_BLK_F","Schwarzer Anzug",100];
			_return pushBack ["TRYK_SUITS_BR_F","Brauner Anzug",100];
		};
		if(life_level >= 12) then {
			_return pushBack ["TRYK_U_denim_jersey_blk","Gestreifte Jacke Schwarz",80];
			_return pushBack ["TRYK_U_denim_jersey_blu","Gestreifte Jacke Blau",80];
		};
		if(life_level >= 13) then {
			_return pushBack ["TRYK_U_denim_hood_mc","Tarnklamotten mit Jeans",80];
		};
		if(life_level >= 15) then {
			_return pushBack ["U_BG_Guerilla1_1","Guerilla Guarnment",120];
		};
		if(life_level >= 17) then {
			_return pushBack ["IS_uniform_squad_leader_o","Kampfanzug weiße Hose",150];
		};
		if(life_level >= 18) then {
			_return pushBack ["TRYK_U_taki_BLK","Einheimischen Klamotten Schwarz",85];
		};
		if(life_level >= 20) then {
			_return pushBack ["U_BG_Guerrilla_6_1","Guerilla Apparell",125];
		};
		if(life_level >= 21) then {
			_return pushBack ["U_Marshal","Marshall Uniform",100];
		};
		if(life_level >= 22) then {
			_return pushBack ["TRYK_C_AOR2_T","AOIR T-Shirt",110];
		};
		if(life_level >= 24) then {
			_return pushBack ["U_BG_leader","Guerilla Uniform Anführer",130];
		};
		if(life_level >= 25) then {
			_return pushBack ["TRYK_U_B_AOR2_Rollup_CombatUniform","Kampfunifrom hochgekrempelt",140];
		};
		if(life_level >= 26) then {
			_return pushBack ["TRYK_U_B_AOR2_BLK_R_CombatUniform","Kampfuniform",145];
		};
		if(life_level >= 27) then {
			_return pushBack ["rhs_uniform_mflora_patchless","Uniform Mountain Flora",160];
		};
		if(life_level >= 29) then {
			_return pushBack ["U_I_FullGhillie_ard","Full Ghuillie Arid",250];
		};
		if(life_level >= 31) then {
			_return pushBack ["TRYK_U_B_fleece","Fließ Anzug",180];
		};
		if(life_level >= 32) then {
			_return pushBack ["SAA_uniform_medic_o","SAA Uniform",190];
		};
		if(life_level >= 33) then {
			_return pushBack ["U_O_OfficerUniform_ocamo","Hex Uniform Anführer",200];
		};
		if(life_level >= 35) then {
			_return pushBack ["TRYK_U_B_PCUGs_gry","Jacke Denim",175];
		};
		if(life_level >= 37) then {
			_return pushBack ["TRYK_U_pad_hood_Blk","Kapuzenhoodie",195];
		};
		if(life_level >= 38) then {
			_return pushBack ["IS_uniform_irregular_o","Kampfanzug schwarz",225];
		};
		if(life_level >= 40) then {
			_return pushBack ["TRYK_U_B_PCUGHs","Kapuzenhoodie (Kapuze oben)",230];
		};
		if(life_level >= 50) then {
			_return pushBack ["rds_uniform_Villager2","ULTIMATIVE KAMPFUNIFORM",1];
		};
	};

	//Hats
	case 1:
	 {
		if(life_level >= 1) then {
			_return pushBack ["rds_worker_cap1",nil,10];
			_return pushBack ["rds_Woodlander_cap3",nil,10];
			_return pushBack ["rds_Villager_cap4",nil,10];
		};
		if(life_level >= 2) then {
			_return pushBack ["rds_Profiteer_cap3",nil,15];
		};
		if(life_level >= 3) then {
			_return pushBack ["rds_worker_cap3",nil,15];
			_return pushBack ["rds_Villager_cap2",nil,15];
			_return pushBack ["rds_Woodlander_cap1",nil,15];
		};
		if(life_level >= 4) then {
			_return pushBack ["H_Booniehat_khk",nil,25];
		};
		if(life_level >= 5) then {
			_return pushBack ["rds_worker_cap2",nil,20];
			_return pushBack ["rds_Villager_cap3",nil,20];
			_return pushBack ["rds_Woodlander_cap4",nil,20];
		};
		if(life_level >= 6) then {
			_return pushBack ["H_Hat_tan",nil,25];
		};
		if(life_level >= 7) then {
			_return pushBack ["rds_worker_cap4",nil,25];
			_return pushBack ["rds_Villager_cap1",nil,25];
			_return pushBack ["rds_Woodlander_cap2",nil,25];
		};
		if(life_level >= 8) then {
			_return pushBack ["TRYK_H_pakol2",nil,30];
		};
		if(life_level >= 9) then {
			_return pushBack ["H_Bandanna_camo",nil,35];
		};
		if(life_level >= 12) then {
			_return pushBack ["H_ShemagOpen_tan",nil,65];
		};
		if(life_level >= 14) then {
			_return pushBack ["TRYK_H_Bandana_H",nil,50];
		};
		if(life_level >= 24) then {
			_return pushBack ["H_Shemag_olive",nil,85];
		};
		if(life_level >= 30) then {
			_return pushBack ["TRYK_H_woolhat",nil,100];
		};
		if(life_level >= 38) then {
			_return pushBack ["IS_shemag_black","Schwarzes Shemag",150];
		};
	};

	//Glasses
	case 2:
	  {
		if(life_level >= 5) then {
			_return pushBack ["SFG_Tac_BeardD",nil,50];
			_return pushBack ["SFG_Tac_BeardO",nil,50];
		};
		if(life_level >= 10) then {
			_return pushBack ["rhs_scarf",nil,25];
		};
		if(life_level >= 12) then {
			_return pushBack ["TRYK_Shemagh",nil,65];
		};
		if(life_level >= 18) then {
			_return pushBack ["G_mas_wpn_shemag_gog",nil,85];
		};
		if(life_level >= 13) then {
			_return pushBack ["SFG_Tac_moustacheD",nil,50];
			_return pushBack ["SFG_Tac_moustacheO",nil,50];
		};
		if(life_level >= 26) then {
			_return pushBack ["G_Balaclava_oli",nil,100];
		};
		if(life_level >= 31) then {
			_return pushBack ["TRYK_Shemagh_G",nil,125];
		};
		if(life_level >= 38) then {
			_return pushBack ["G_mas_wpn_wrap_b",nil,150];
		};
	};

	//Vest
	case 3:
	 {
		if(life_level >= 1) then {
			_return pushBack ["rhs_6sh46",nil,25];
		};
		if(life_level >= 3) then {
			_return pushBack ["UO_AK_VEST_Tan",nil,50];
		};
		if(life_level >= 5) then {
			_return pushBack ["V_Chestrig_khk",nil,100];
		};
		if(life_level >= 8) then {
			_return pushBack ["V_HarnessO_brn",nil,200];
		};
		if(life_level >= 13) then {
			_return pushBack ["V_TacVest_khk",nil,350];
		};
		if(life_level >= 20) then {
			_return pushBack ["TRYK_V_tacv1_CY",nil,450];
		};
	};

	//Backpacks
	case 4:
	 {
		if(life_level >= 1) then {
			_return pushBack ["rhs_sidor",nil,25];
		};
		if(life_level >= 3) then {
			_return pushBack ["B_AssaultPack_khk",nil,50];
		};
		if(life_level >= 6) then {
			_return pushBack ["B_FieldPack_khk",nil,75];
		};
		if(life_level >= 9) then {
			_return pushBack ["B_TacticalPack_oli",nil,100];
		};
		if(life_level >= 11) then {
			_return pushBack ["B_mas_Kitbag_rng",nil,125];
		};
		if(life_level >= 13) then {
			_return pushBack ["TRYK_B_Coyotebackpack_OD",nil,150];
		};
		if(life_level >= 16) then {
			_return pushBack ["B_Carryall_khk",nil,175];
		};
		if(life_level >= 35) then {
			_return pushBack ["B_mas_AssaultPack_rng_AT4",nil,200];
		};
	};
};
_return;
