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
		_ret pushBack ["TRYK_B_TRYK_OCP_T","Recruit Uniform",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["TRYK_U_B_3c","Private Uniform",550];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["TRYK_U_B_3cr","Private 1st Class Uniform",550];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["TRYK_U_B_ARO1_CombatUniform","Specialist Uniform",550];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["TRYK_U_B_ARO1R_CombatUniform","Corporal Uniform",550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["TRYK_U_B_ARO1R_CombatUniform","Sergeant Uniform",550];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["TRYK_U_Bts_PCUODs","Offizier Uniform",350];
			_ret pushBack ["TRYK_U_B_ODTAN_Tshirt","Offizier Uniform 2",350];
		};
	};

	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Cap_tan_specops_US",nil,75]];

		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["rhsusf_ach_bare_tan","Private Helm",550];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_HelmetB_sand","Private 1st Class Helm",550];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["H_HelmetSpecB_sand","Specialist Helm",550];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["rhsusf_ach_helmet_ocp","Corporal Helm",550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["TRYK_H_Booniehat_CC","Sergeant Hut",550];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret set[count _ret,["H_Watchcap_camo",nil,100]];
			_ret set[count _ret,["H_Watchcap_sgg",nil,100]];
			_ret set[count _ret,["H_Watchcap_khk",nil,100]];
			_ret set[count _ret,["H_Beret_blk",nil,100]];
		};

			if(__GETC__(life_coplevel) >= 8) then
		{
			_ret set[count _ret,["H_beret_02",nil,100]];
			_ret set[count _ret,["h_beret_colonel",nil,100]];
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
			if(__GETC__(life_coplevel) >= 1) then
			{
			_ret set[count _ret,["V_HarnessO_gry",nil,1000]];
			};
	
			if(__GETC__(life_coplevel) >= 2) then
			{
			_ret set[count _ret,["V_TacVest_khk",nil,1000]];
			};

			if(__GETC__(life_coplevel) >= 4) then
			{
			_ret set[count _ret,["rhsusf_iotv_ucp_Repair",nil,5000]];
			};
			
			if(__GETC__(life_coplevel) >= 5) then
			{
			_ret set[count _ret,["rhsusf_iotv_ucp_Grenadier",nil,1000]];
			};

			if(__GETC__(life_coplevel) >= 6) then
			{
			_ret set[count _ret,["rhsusf_iotv_ocp_Squadleader",nil,10000]];
			};
	};

	//Backpacks
	case 4:
	{
		_ret pushBack ["rhs_sidor","Recruiten Rucksack",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["B_AssaultPack_cbr","Private Rucksack",550];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["TRYK_B_AssaultPack_MARPAT_Desert","Private 1st Class Rucksack",550];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["B_mas_Kitbag_des","Specialist Rucksack",550];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["TRYK_B_Coyotebackpack","Corporal Rucksack",550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["B_Carryall_cbr","Sergeant Rucksack",550];
		};
	};
};

_ret;
