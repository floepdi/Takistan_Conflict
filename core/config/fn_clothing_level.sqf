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

_ret = [];
_level = [] call life_fnc_getLevel;

if(_level > 0) then
{

	switch (_filter) do
	{
		//Uniforms
		case 0:
		{

			if(_level >= 10) then
			{
				_ret pushBack ["TRYK_U_denim_jersey_blu","Hoody",2500];
				_ret pushBack ["TRYK_U_denim_hood_nc","Jersey",2500];
		
			if(_level >= 20) then
			{
				_ret pushBack ["SAA_uniform_machinegunner_o",nil,3500];
				_ret pushBack ["rhs_uniform_mflora_patchless",nil,3500];
			
			if(_level >= 40) then
			{
				_ret pushBack ["U_I_FullGhillie_lsh",nil,10000];
				_ret pushBack ["U_I_FullGhillie_sard",nil,10000];
				_ret pushBack ["U_I_FullGhillie_ard",nil,10000];
			};
			};
			};

		};
		
		//Hats
		case 1:
		{
			if(_level >= 40) then
			{
				_ret pushBack ["rhs_6b27m_ml","Cap",1000];
			};
		};

		//Glasses
		case 2:
		{
			if(_level >= 10) then
			{
				_ret pushBack ["G_Bandanna_shades","Bandana",500];
				_ret pushBack ["G_Bandanna_beast","Bandana Beast",500];
				_ret pushBack ["IS_Balaclava","Balaclava",1000];
			
			if(_level >= 20) then
			{
				_ret pushBack ["SFG_Tac_BeardD","Dunkler Bart",2500];
				_ret pushBack ["SFG_Tac_BeardO","Grauer Bart",2500];
			};
			};
		};

		//Vest
		case 3:
		{
			if(_level >= 20) then
			{
				_ret pushBack ["V_TacVest_brn",nil,25000];
				_ret pushBack ["V_TacVest_oli",nil,25000];
			};
			if(_level >= 50) then
			{
				_ret pushBack ["TRYK_V_tacv1","Kampfweste Gruen",50000];
				_ret pushBack ["TRYK_V_tacv1_CY","Kampfweste Wueste",50000];
			};
			
		};

		//Backpacks
		case 4:
		{
			if(_level >= 10) then
			{
				_ret pushBack ["rhs_assault_umbts_demo",nil,4000],
				_ret pushBack ["TRYK_B_Coyotebackpack",nil,5000],
				_ret pushBack ["TRYK_B_Coyotebackpack_OD",nil,5000],
			
			if(_level >= 20) then
			{
				_ret pushBack ["B_Carryall_oli",nil,8000],
				_ret pushBack ["B_Carryall_khk",nil,8000]
			};
			};

		};
	};
};

_ret;