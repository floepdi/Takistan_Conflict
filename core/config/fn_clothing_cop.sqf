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
		_ret pushBack ["TRYK_U_B_TANTAN_CombatUniform","Private Uniform",25];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["TRYK_U_B_3c","Soldaten Uniform",550];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["rhs_uniform_cu_ocp_patchless","Sergeant Uniform Tan",550];
			_ret pushBack ["TRYK_U_B_ARO1_GR_CombatUniform","Sergeant Uniform Green",550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["TRYK_U_pad_hood_tan","Sergeant Major Uniform",350];
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
		_ret set[count _ret,["TRYK_H_headsetcap_od",nil,75]];

		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret set[count _ret,["TRYK_H_Helmet_3C",nil,100]];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret set[count _ret,["TRYK_H_PASGT_OD",nil,100]];
			_ret set[count _ret,["TRYK_H_PASGT_COYO",nil,100]];
			_ret set[count _ret,["H_Booniehat_dgtl",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk",nil,100]];
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
		_ret =
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,100],
			["SFG_Tac_smallBeardD",nil,100],
			["SFG_Tac_chinlessbD",nil,100],
			["SFG_Tac_moustacheB",nil,100],
			["SFG_Tac_moustacheD",nil,100]
		];
	};

	//Vest
	case 3:
	{
			if(__GETC__(life_coplevel) >= 1) then
			{
			_ret set[count _ret,["V_Chestrig_khk",nil,1000]];
			};
	
			if(__GETC__(life_coplevel) >= 2) then
			{
			_ret set[count _ret,["V_TacVest_khk",nil,1000]];
			_ret set[count _ret,["V_TacVest_oli",nil,1000]];
			};
		
			if(__GETC__(life_coplevel) >= 4) then
			{
			_ret set[count _ret,["V_PlateCarrier1_rgr",nil,5000]];
			};
		
			if(__GETC__(life_coplevel) >= 6) then
			{
			_ret set[count _ret,["TRYK_V_ArmorVest_tan",nil,10000]];
			_ret set[count _ret,["TRYK_V_ArmorVest_green",nil,10000]];
			_ret set[count _ret,["TRYK_V_ArmorVest_coyo",nil,10000]];
			};
	};

	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_mas_Kitbag_black",nil,500],
			["B_mas_Kitbag_des",nil,500],
			["B_mas_Kitbag_mul",nil,500],
			["B_Bergen_blk",nil,1000],
			["TRYK_B_Coyotebackpack_BLK",nil,1500],
			["TRYK_B_Coyotebackpack",nil,1500],
			["TRYK_B_Coyotebackpack_OD",nil,1500],
			["B_Carryall_cbr",nil,2500],
			["TRYK_B_Carryall_blk",nil,2500]
		];
	};
};

_ret;
