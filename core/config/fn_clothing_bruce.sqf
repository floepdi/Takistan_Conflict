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

_retUniforms = [];
_retHats = [];
_retGlasses = [];
_retVests = [];
_retBackpack = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(life_level >= 1){
			_retUniforms pushBack ["TRYK_U_B_Denim_T_BK"];
			_retUniforms pushBack ["U_C_Poloshirt_salmon"];
			_retUniforms pushBack ["U_C_Poloshirt_blue"];
		};
		if(life_level >= 2){
			_retUniforms pushBack ["rds_uniform_citizen2"];
			_retUniforms pushBack ["rds_uniform_citizen3"];
			_retUniforms pushBack ["U_C_Journalist"];
		};
		if(life_level >= 4){
			_retUniforms pushBack ["U_BG_Guerilla2_2"];
		};
		if(life_level >= 5){
			_retUniforms pushBack ["TRYK_U_taki_wh"];
		};
		if(life_level >= 6){
			_retUniforms pushBack ["U_BG_Guerilla2_3"];
		};
		if(life_level >= 7){
			_retUniforms pushBack ["TRYK_U_taki_COY"];
		};
		if(life_level >= 8){
			_retUniforms pushBack ["U_BG_Guerilla2_1"];
		};
		if(life_level >= 9){
			_retUniforms pushBack ["TRYK_OVERALL_flesh"];
		};
		if(life_level >= 10){
			_retUniforms pushBack ["rds_uniform_Profiteer1"];
		};
		if(life_level >= 11){
			_retUniforms pushBack ["TRYK_SUITS_BLK_F"];
			_retUniforms pushBack ["TRYK_SUITS_BR_F"];
		};
		if(life_level >= 12){
			_retUniforms pushBack ["TRYK_U_denim_jersey_blk"];
			_retUniforms pushBack ["TRYK_U_denim_jersey_blu"];
		};
		if(life_level >= 13){
			_retUniforms pushBack ["TRYK_U_denim_hood_mc"];
		};
		if(life_level >= 15){
			_retUniforms pushBack ["U_BG_Guerilla1_1"];
		};
		if(life_level >= 17){
			_retUniforms pushBack ["IS_uniform_squad_leader_o"];
		};
		if(life_level >= 18){
			_retUniforms pushBack ["TRYK_U_taki_BLK"];
		};
		if(life_level >= 20){
			_retUniforms pushBack ["U_BG_Guerrilla_6_1"];
		};
		if(life_level >= 21){
			_retUniforms pushBack ["U_Marshal"];
		};
		if(life_level >= 22){
			_retUniforms pushBack ["TRYK_C_AOR2_T"];
		};
		if(life_level >= 24){
			_retUniforms pushBack ["U_BG_leader"];
		};
		if(life_level >= 25){
			_retUniforms pushBack ["TRYK_U_B_AOR2_Rollup_CombatUniform"];
		};
		if(life_level >= 26){
			_retUniforms pushBack ["TRYK_U_B_AOR2_BLK_R_CombatUniform"];
		};
		if(life_level >= 27){
			_retUniforms pushBack ["rhs_uniform_mflora_patchless"];
		};
		if(life_level >= 30){
			_retUniforms pushBack ["U_I_FullGhillie_ard"];
		};
		if(life_level >= 31){
			_retUniforms pushBack ["TRYK_U_B_fleece"];
		};
		if(life_level >= 32){
			_retUniforms pushBack ["SAA_uniform_medic_o"];
		};
		if(life_level >= 33){
			_retUniforms pushBack ["SAA_uniform_officer_o"];
		};
		if(life_level >= 35){
			_retUniforms pushBack ["TRYK_U_B_PCUGs_gry"];
		};
		if(life_level >= 37){
			_retUniforms pushBack ["TRYK_U_pad_hood_Blk"];
		};
		if(life_level >= 38){
			_retUniforms pushBack ["IS_uniform_irregular_o"];
		};
		if(life_level >= 40){
			_retUniforms pushBack ["TRYK_U_B_PCUGHs"];
		};
		if(life_level >= 50){
			_retUniforms pushBack ["rds_uniform_Villager2"];
		};
		_retUniforms;
	};

	//Hats
	case 1:
	{
		if(life_level >= 1){
			_retHats pushBack ["rds_worker_cap1"];
			_retHats pushBack ["rds_Woodlander_cap3"];
			_retHats pushBack ["rds_Villager_cap4"];
		};
		if(life_level >= 2){
			_retHats pushBack ["rds_Profiteer_cap3"];
		};
		if(life_level >= 3){
			_retHatsk pushBack ["rds_worker_cap3"];
			_retHats pushBack ["rds_Villager_cap2"];
			_retHats pushBack ["rds_Woodlander_cap1"];
		};
		if(life_level >= 4){
			_retHats pushBack ["H_Booniehat_khk"];
		};
		if(life_level >= 5){
			_retHats pushBack ["rds_worker_cap2"];
			_retHats pushBack ["rds_Villager_cap3"];
			_retHats pushBack ["rds_Woodlander_cap4"];
		};
		if(life_level >= 6){
			_retHats pushBack ["H_Hat_tan"];
		};
		if(life_level >= 7){
			_retHats pushBack ["rds_worker_cap4"];
			_retHats pushBack ["rds_Villager_cap1"];
			_retHats pushBack ["rds_Woodlander_cap2"];
		};
		if(life_level >= 8){
			_retHats pushBack ["TRYK_H_pakol2"];
		};
		if(life_level >= 9){
			_retHats pushBack ["H_Bandanna_camo"];
		};
		if(life_level >= 12){
			_retHats pushBack ["H_ShemagOpen_tan"];
		};
		if(life_level >= 14){
			_retHats pushBack ["TRYK_H_Bandana_H"];
		};
		if(life_level >= 24){
			_retHats pushBack ["H_Shemag_olive"];
		};
		if(life_level >= 30){
			_retHats pushBack ["TRYK_H_woolhat"];
		};
		if(life_level >= 38){
			_retHats pushBack ["IS_shemag_black"];
		};

		_retHats;
	};

	//Glasses
	case 2:
	{
		if(life_level >= 10){
			_retGlasses pushBack ["rhs_scarf"];
		};
		if(life_level >= 12){
			_retGlasses pushBack ["TRYK_Shemagh"];
		};
		if(life_level >= 5){
			_retGlasses pushBack ["SFG_Tac_BeardD"];
			_retGlasses pushBack ["SFG_Tac_BeardO"];
		};
		if(life_level >= 18){
			_retGlasses pushBack ["G_mas_wpn_shemag_gog"];
		};
		if(life_level >= 13){
			_retGlasses pushBack ["SFG_Tac_moustacheD"];
			_retGlasses pushBack ["SFG_Tac_moustacheO"];
		};
		if(life_level >= 26){
			_retGlasses pushBack ["G_Balaclava_oli"];
		};
		if(life_level >= 31){
			_retGlasses pushBack ["TRYK_Shemagh_G"];
		};
		if(life_level >= 38){
			_retGlasses pushBack ["G_mas_wpn_wrap_b"];
		};
		_retGlasses;
	};

	//Vest
	case 3:
	{
		if(life_level >= 1){
			_retVests pushBack ["rhs_6sh46"];
		};
		if(life_level >= 3){
			_retVests pushBack ["UO_AK_VEST_Tan"];
		};
		if(life_level >= 5){
			_retVests pushBack ["V_Chestrig_khk"];
		};
		if(life_level >= 8){
			_retVests pushBack ["V_HarnessO_brn"];
		};
		if(life_level >= 13){
			_retVests pushBack ["V_TacVest_khk"];
		};
		if(life_level >= 20){
			_retVests pushBack ["TRYK_V_tacv1_CY"];
		};
		_retVests;
	};

	//Backpacks
	case 4:
	{
		if(life_level >= 1){
			_retBackpack pushBack ["rhs_sidor"];
		};
		if(life_level >= 3){
			_retBackpack pushBack ["B_AssaultPack_khk"];
		};
		if(life_level >= 6){
			_retBackpack pushBack ["B_FieldPack_khk"];
		};
		if(life_level >= 9){
			_retBackpack pushBack ["B_TacticalPack_oli"];
		};
		if(life_level >= 10){
			_retBackpack pushBack ["rds_uniform_Profiteer1"];
		};
		if(life_level >= 11){
			_retBackpack pushBack ["B_mas_Kitbag_rng"];
		};
		if(life_level >= 13){
			_retBackpack pushBack ["TRYK_B_Coyotebackpack_OD"];
		};
		if(life_level >= 16){
			_retBackpack pushBack ["B_Carryall_khk"];
		};
		if(life_level >= 35){
			_retBackpack pushBack ["B_mas_AssaultPack_rng_AT4"];
		};
		_retBackpack;
	};
};