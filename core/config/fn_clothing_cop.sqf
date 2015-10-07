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
ctrlSetText[3103,"NATO Kleiderkammer"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret pushBack ["TRYK_B_TRYK_OCP_T","Uniform",25];
			
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["TRYK_U_B_3c","Uniform",550];
			
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["TRYK_U_B_3cr","Uniform",550];
			
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["TRYK_U_B_ARO1_CombatUniform","Uniform",550];
			
		};
		if(__GETC__(life_coplevel) == 5 OR __GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["TRYK_U_B_ARO1R_CombatUniform","Uniform",550];
			
		};
		if(__GETC__(life_coplevel) == 7 OR __GETC__(life_coplevel) == 8 OR __GETC__(life_coplevel) == 9) then
		{
			_ret pushBack ["TRYK_U_B_3CD_Delta_BDU","Uniform",25];
			
		};
		if(__GETC__(life_coplevel) == 10 OR __GETC__(life_coplevel) == 11) then
		{
			_ret pushBack ["TRYK_U_B_3CD_Delta_BDUTshirt","Uniform",550];
			
		};
		if(__GETC__(life_coplevel) == 12 OR __GETC__(life_coplevel) == 13 OR __GETC__(life_coplevel) == 14) then
		{
			_ret pushBack ["TRYK_U_B_MARPAT_Desert_Tshirt","Uniform",550];
			
		};
		if(__GETC__(life_coplevel) == 15 OR __GETC__(life_coplevel) == 16) then
		{
			_ret pushBack ["TRYK_U_B_MARPAT_Desert","Uniform",550];
			
		};
		if(__GETC__(life_coplevel) == 17 OR __GETC__(life_coplevel) == 18) then
		{
			_ret pushBack ["TRYK_U_B_BLKTAN_CombatUniform","Uniform",550];
			
		};
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret pushBack ["H_Cap_tan_specops_US","Recruiten Kappe",25];
			
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["rhsusf_ach_bare_tan","Dein Helm",550];
			
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["H_HelmetB_sand","Dein Helm",550];
			
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["H_HelmetSpecB_sand","Dein Helm",550];
			
		};
		if(__GETC__(life_coplevel) == 5 OR __GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["rhsusf_ach_helmet_ESS_ocp","Dein Helm",550];
			
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["TRYK_H_Booniehat_CC",nil,550];
			
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["H_PilotHelmetHeli_O","Dein Helm",25];
			_ret pushBack ["TRYK_H_Helmet_3C","Dein Helm",25];
		};
		if(__GETC__(life_coplevel) == 8 OR __GETC__(life_coplevel) == 9 OR __GETC__(life_coplevel) == 10 OR __GETC__(life_coplevel) == 11) then
		{
			_ret pushBack ["H_Beret_blk","Dein Beret",550];
			
		};
	
		if(__GETC__(life_coplevel) == 12 OR __GETC__(life_coplevel) == 13 OR __GETC__(life_coplevel) == 14 OR __GETC__(life_coplevel) == 15) then
		{
			_ret pushBack ["H_Beret_02","Dein Beret",550];
			
		};
		if(__GETC__(life_coplevel) == 16 OR __GETC__(life_coplevel) == 17 OR __GETC__(life_coplevel) == 18) then
		{
			_ret pushBack ["H_Beret_Colonel","Dein Beret",550];
			
		};
	};

	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["G_mas_wpn_gog_m","Tactical Glasses",550];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["G_mas_wpn_mask","Tactical Mask",550];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["TRYK_Shemagh_ESS","Tactical Shemagh ESS",550];
		};
	};

	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret pushBack ["V_HarnessO_gry","Weste",25];
		};
		if(__GETC__(life_coplevel) == 2 OR __GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["V_TacVest_khk","Weste",550];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["rhsusf_iotv_ocp_Repair","Weste",550];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["rhsusf_iotv_ocp_Grenadier","Weste",550];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["rhsusf_iotv_ocp_Squadleader","Weste",550];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["V_PlateCarrier_Kerry","Weste",25];
		};
		if(__GETC__(life_coplevel) == 8 OR __GETC__(life_coplevel) == 9) then
		{
			_ret pushBack ["TRYK_V_PlateCarrier_coyo_L","Weste",550];
		};
		if(__GETC__(life_coplevel) == 10 OR __GETC__(life_coplevel) == 11) then
		{
			_ret pushBack ["TRYK_V_tacv1LC_CY","Weste",550];
		};
		if(__GETC__(life_coplevel) >= 12) then
		{
			_ret pushBack ["TRYK_V_ArmorVest_tan","Weste",550];
		};
	};

	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret pushBack ["rhs_sidor","Rucksack",25];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["B_AssaultPack_cbr","Rucksack",550];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["TRYK_B_AssaultPack_MARPAT_Desert","Rucksack",550];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["B_mas_Kitbag_des","Rucksack",550];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["TRYK_B_Coyotebackpack","Rucksack",550];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["B_Carryall_cbr","Rucksack",550];
		};
		if(__GETC__(life_coplevel) >= 7) then
		{
			_ret pushBack ["mas_TitanS","Rucksack",550];
		};
	};
};

_ret;
