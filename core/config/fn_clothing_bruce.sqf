/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName), price

//Shop Title Name
ctrlSetText[3103,"Outfits"];

_return = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(life_level >= 1){
			_return pushBack ["TRYK_U_B_Denim_T_BK",nil,1000];
			_return pushBack ["U_C_Poloshirt_salmon",nil,1000];
			_return pushBack ["U_C_Poloshirt_blue",nil,1000];
		};
		if(life_level >= 2){
			_return pushBack ["rds_uniform_citizen2",nil,1000];
			_return pushBack ["rds_uniform_citizen3",nil,1000];
			_return pushBack ["U_C_Journalist",nil,1000];
		};
		if(life_level >= 4){
			_return pushBack ["U_BG_Guerilla2_2",nil,1000];
		};
		if(life_level >= 5){
			_return pushBack ["TRYK_U_taki_wh",nil,1000];
		};
		if(life_level >= 6){
			_return pushBack ["U_BG_Guerilla2_3",nil,1000];
		};
		if(life_level >= 7){
			_return pushBack ["TRYK_U_taki_COY",nil,1000];
		};
		if(life_level >= 8){
			_return pushBack ["U_BG_Guerilla2_1",nil,1000];
		};
		if(life_level >= 9){
			_return pushBack ["TRYK_OVERALL_flesh",nil,1000];
		};
		if(life_level >= 10){
			_return pushBack ["rds_uniform_Profiteer1",nil,1000];
		};
		if(life_level >= 11){
			_return pushBack ["TRYK_SUITS_BLK_F",nil,1000];
			_return pushBack ["TRYK_SUITS_BR_F",nil,1000];
		};
		if(life_level >= 12){
			_return pushBack ["TRYK_U_denim_jersey_blk",nil,1000];
			_return pushBack ["TRYK_U_denim_jersey_blu",nil,1000];
		};
		if(life_level >= 13){
			_return pushBack ["TRYK_U_denim_hood_mc",nil,1000];
		};
		if(life_level >= 15){
			_return pushBack ["U_BG_Guerilla1_1",nil,1000];
		};
		if(life_level >= 17){
			_return pushBack ["IS_uniform_squad_leader_o",nil,1000];
		};
		if(life_level >= 18){
			_return pushBack ["TRYK_U_taki_BLK",nil,1000];
		};
		if(life_level >= 20){
			_return pushBack ["U_BG_Guerrilla_6_1",nil,1000];
		};
		if(life_level >= 21){
			_return pushBack ["U_Marshal",nil,1000];
		};
		if(life_level >= 22){
			_return pushBack ["TRYK_C_AOR2_T",nil,1000];
		};
		if(life_level >= 24){
			_return pushBack ["U_BG_leader",nil,1000];
		};
		if(life_level >= 25){
			_return pushBack ["TRYK_U_B_AOR2_Rollup_CombatUniform",nil,1000];
		};
		if(life_level >= 26){
			_return pushBack ["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,1000];
		};
		if(life_level >= 27){
			_return pushBack ["rhs_uniform_mflora_patchless",nil,1000];
		};
		if(life_level >= 30){
			_return pushBack ["U_I_FullGhillie_ard",nil,1000];
		};
		if(life_level >= 31){
			_return pushBack ["TRYK_U_B_fleece",nil,1000];
		};
		if(life_level >= 32){
			_return pushBack ["SAA_uniform_medic_o",nil,1000];
		};
		if(life_level >= 33){
			_return pushBack ["SAA_uniform_officer_o",nil,1000];
		};
		if(life_level >= 35){
			_return pushBack ["TRYK_U_B_PCUGs_gry",nil,1000];
		};
		if(life_level >= 37){
			_return pushBack ["TRYK_U_pad_hood_Blk",nil,1000];
		};
		if(life_level >= 38){
			_return pushBack ["IS_uniform_irregular_o",nil,1000];
		};
		if(life_level >= 40){
			_return pushBack ["TRYK_U_B_PCUGHs",nil,1000];
		};
		if(life_level >= 50){
			_return pushBack ["rds_uniform_Villager2",nil,1000];
		};
	};

	//Hats
	case 1:
	{
		if(life_level >= 1){
			_return pushBack ["rds_worker_cap1",nil,100];
			_return pushBack ["rds_Woodlander_cap3",nil,100];
			_return pushBack ["rds_Villager_cap4",nil,100];
		};
		if(life_level >= 2){
			_return pushBack ["rds_Profiteer_cap3",nil,100];
		};
		if(life_level >= 3){
			_returnk pushBack ["rds_worker_cap3",nil,100];
			_return pushBack ["rds_Villager_cap2",nil,100];
			_return pushBack ["rds_Woodlander_cap1",nil,100];
		};
		if(life_level >= 4){
			_return pushBack ["H_Booniehat_khk",nil,100];
		};
		if(life_level >= 5){
			_return pushBack ["rds_worker_cap2",nil,100];
			_return pushBack ["rds_Villager_cap3",nil,100];
			_return pushBack ["rds_Woodlander_cap4",nil,100];
		};
		if(life_level >= 6){
			_return pushBack ["H_Hat_tan",nil,100];
		};
		if(life_level >= 7){
			_return pushBack ["rds_worker_cap4",nil,100];
			_return pushBack ["rds_Villager_cap1",nil,100];
			_return pushBack ["rds_Woodlander_cap2",nil,100];
		};
		if(life_level >= 8){
			_return pushBack ["TRYK_H_pakol2",nil,100];
		};
		if(life_level >= 9){
			_return pushBack ["H_Bandanna_camo",nil,100];
		};
		if(life_level >= 12){
			_return pushBack ["H_ShemagOpen_tan",nil,100];
		};
		if(life_level >= 14){
			_return pushBack ["TRYK_H_Bandana_H",nil,100];
		};
		if(life_level >= 24){
			_return pushBack ["H_Shemag_olive",nil,100];
		};
		if(life_level >= 30){
			_return pushBack ["TRYK_H_woolhat",nil,100];
		};
		if(life_level >= 38){
			_return pushBack ["IS_shemag_black",nil,100];
		};
	};

	//Glasses
	case 2:
	{
		if(life_level >= 10){
			_return pushBack ["rhs_scarf",nil,500];
		};
		if(life_level >= 12){
			_return pushBack ["TRYK_Shemagh",nil,500];
		};
		if(life_level >= 5){
			_return pushBack ["SFG_Tac_BeardD",nil,500];
			_return pushBack ["SFG_Tac_BeardO",nil,500];
		};
		if(life_level >= 18){
			_return pushBack ["G_mas_wpn_shemag_gog",nil,500];
		};
		if(life_level >= 13){
			_return pushBack ["SFG_Tac_moustacheD",nil,500];
			_return pushBack ["SFG_Tac_moustacheO",nil,500];
		};
		if(life_level >= 26){
			_return pushBack ["G_Balaclava_oli",nil,500];
		};
		if(life_level >= 31){
			_return pushBack ["TRYK_Shemagh_G",nil,500];
		};
		if(life_level >= 38){
			_return pushBack ["G_mas_wpn_wrap_b",nil,500];
		};
	};

	//Vest
	case 3:
	{
		if(life_level >= 1){
			_return pushBack ["rhs_6sh46",nil,2500];
		};
		if(life_level >= 3){
			_return pushBack ["UO_AK_VEST_Tan",nil,2500];
		};
		if(life_level >= 5){
			_return pushBack ["V_Chestrig_khk",nil,2500];
		};
		if(life_level >= 8){
			_return pushBack ["V_HarnessO_brn",nil,2500];
		};
		if(life_level >= 13){
			_return pushBack ["V_TacVest_khk",nil,2500];
		};
		if(life_level >= 20){
			_return pushBack ["TRYK_V_tacv1_CY",nil,2500];
		};
	};

	//Backpacks
	case 4:
	{
		if(life_level >= 1){
			_return pushBack ["rhs_sidor",nil,5000];
		};
		if(life_level >= 3){
			_return pushBack ["B_AssaultPack_khk",nil,5000];
		};
		if(life_level >= 6){
			_return pushBack ["B_FieldPack_khk",nil,5000];
		};
		if(life_level >= 9){
			_return pushBack ["B_TacticalPack_oli",nil,5000];
		};
		if(life_level >= 10){
			_return pushBack ["rds_uniform_Profiteer1",nil,5000];
		};
		if(life_level >= 11){
			_return pushBack ["B_mas_Kitbag_rng",nil,5000];
		};
		if(life_level >= 13){
			_return pushBack ["TRYK_B_Coyotebackpack_OD",nil,5000];
		};
		if(life_level >= 16){
			_return pushBack ["B_Carryall_khk",nil,5000];
		};
		if(life_level >= 35){
			_return pushBack ["B_mas_AssaultPack_rng_AT4",nil,5000];
		};
	};
};
_return;