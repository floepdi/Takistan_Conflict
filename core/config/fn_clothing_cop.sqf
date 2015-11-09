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
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["TRYK_B_TRYK_OCP_T","Ausbildungsuniform",25];

		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["TRYK_U_B_3c","Mannschaftsuniform I",25];

		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["TRYK_U_B_3cr","Mannschaftsuniform II",25];

		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["TRYK_U_B_ARO1_CombatUniform","Mannschaftsuniform III",25];

		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["TRYK_U_B_ARO1R_CombatUniform","Mannschaftsuniform IV",25];

		};
		if(__GETC__(life_coplevel) >= 7) then
		{
			_ret pushBack ["TRYK_U_B_3CD_Delta_BDU","Unteroffiziersuniform I",25];

		};
		if(__GETC__(life_coplevel) >= 10) then
		{
			_ret pushBack ["TRYK_U_B_3CD_Delta_BDUTshirt","Unteroffiziersuniform II",25];

		};
		if(__GETC__(life_coplevel) >= 12) then
		{
			_ret pushBack ["TRYK_U_B_MARPAT_Desert_Tshirt","Offiziersuniform I",25];

		};
		if(__GETC__(life_coplevel) >= 14) then
		{
			_ret pushBack ["TRYK_U_B_BLKTAN_CombatUniform","Captain Uniform",25];

		};
		if(__GETC__(life_coplevel) >= 15) then
		{
			_ret pushBack ["TRYK_U_B_MARPAT_Desert","Offiziersuniform II",25];

		};
		if(__GETC__(life_coplevel) >= 17) then
		{
			_ret pushBack ["TRYK_U_B_BLKBLK_CombatUniform","Leitungsuniform",25];
			_ret pushBack ["TRYK_U_B_BLK","Leitungsuniform",25];

		};
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["H_Cap_tan_specops_US","Recruiten Kappe",10];

		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["rhsusf_ach_bare_tan","Mannschaftshelm I",10];

		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["H_HelmetB_sand","Mannschaftshelm II",10];

		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["H_HelmetSpecB_sand","Mannschaftshelm III",10];

		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["rhsusf_ach_helmet_ESS_ocp","Mannschaftshelm IV",10];

		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["TRYK_H_Booniehat_CC","Mannschaftshelm V",10];

		};
		if(__GETC__(life_coplevel) >= 7) then
		{
			_ret pushBack ["H_PilotHelmetHeli_O","Unteroffiziershelm I",10];
			_ret pushBack ["TRYK_H_Helmet_3C","Unteroffiziershelm I",10];
      			_ret pushBack ["H_Beret_blk","Unteroffiziersbarett",10];

		};
		if(__GETC__(life_coplevel) >= 10) then
		{
			_ret pushBack ["TRYK_H_AOR1","Unteroffiziershelm II",10];

		};

		if(__GETC__(life_coplevel) >= 12) then
		{
			_ret pushBack ["H_Beret_02","Offiziersbarett",10];
      _ret pushBack ["TRYK_H_Helmet_MARPAT_Desert","Offiziershelm I",10];

		};
		if(__GETC__(life_coplevel) >= 15) then
		{
			_ret pushBack ["TRYK_H_Helmet_CC","Offiziershelm II",10];

		};
    		if(__GETC__(life_coplevel) >= 16) then
		{
			_ret pushBack ["H_Beret_Colonel","Leitungsbarett",10];

		};
		if(__GETC__(life_coplevel) >= 17) then
		{
			_ret pushBack ["Kio_No1_Hat","LARGO HUT",10];
			_ret pushBack ["Kio_Spinning_Hat","MOERTI HUT",10];
			_ret pushBack ["Kio_Capital_Hat","PHIL HUT",10];
		};
	};

	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["G_mas_wpn_gog_m","Taktische Brille",10];
			_ret pushBack ["SFG_Tac_moustacheD","Taktischer Bart",10];
			_ret pushBack ["SFG_Tac_moustacheB","Taktischer Bart",10];
			_ret pushBack ["SFG_Tac_BeardD","Taktischer Bart",10];
			_ret pushBack ["SFG_Tac_BeardB","Taktischer Bart",10];
			_ret pushBack ["SFG_Tac_smallBeardD","Taktischer Bart",10];
			_ret pushBack ["SFG_Tac_smallBeardB","Taktischer Bart",10];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["G_mas_wpn_mask","Taktische Maske",10];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["TRYK_Shemagh_ESS","Taktisches Shemag",10];
		};
		if(__GETC__(life_coplevel) > 17) then
		{
			_ret pushBack ["G_Aviator","Fliegerbrille für Moertini",10];
			_ret pushBack ["TRYK_kio_balaclava_BLK","Balaclava Schwarz",10];
			_ret pushBack ["TRYK_kio_balaclavas","Balaclava Geist",10];
			
		};
	};

	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["V_HarnessO_gry","Ausbildungsweste",10];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["V_TacVest_khk","Mannschaftsweste I",10];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["rhsusf_iotv_ocp_Repair","Mannschaftsweste II",10];
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["rhsusf_iotv_ocp_Grenadier","Mannschaftsweste III",10];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["rhsusf_iotv_ocp_Squadleader","Mannschaftsweste IV",10];
		};
		if(__GETC__(life_coplevel) >= 7) then
		{
			_ret pushBack ["V_PlateCarrier_Kerry","Unteroffiziersweste I",10];
		};
		if(__GETC__(life_coplevel) >= 8) then
		{
			_ret pushBack ["TRYK_V_PlateCarrier_coyo_L","Unteroffiziersweste II",10];
		};
		if(__GETC__(life_coplevel) >= 10) then
		{
			_ret pushBack ["TRYK_V_tacv1LC_CY","Unteroffiziersweste III",10];
		};
		if(__GETC__(life_coplevel) >= 12) then
		{
			_ret pushBack ["TRYK_V_ArmorVest_tan","Offiziersweste",10];
		};
		if(__GETC__(life_coplevel) >= 17) then
		{
			_ret pushBack ["TRYK_V_ArmorVest_Delta","Leitungsweste I",10];
			_ret pushBack ["TRYK_V_ArmorVest_Delta2","Leitungsweste II",10];
		};
	};

	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) >= 1) then
		{
			_ret pushBack ["rhs_sidor","Ausbildungsrucksack",10];
		};
		if(__GETC__(life_coplevel) >= 2) then
		{
			_ret pushBack ["B_AssaultPack_cbr","Mannschaftsrucksack I",10];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_ret pushBack ["TRYK_B_AssaultPack_MARPAT_Desert","Mannschaftsrucksack II",10];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_ret pushBack ["B_mas_Kitbag_des","Mannschaftsrucksack III",10];
		};
		if(__GETC__(life_coplevel) >= 5) then
		{
			_ret pushBack ["TRYK_B_Coyotebackpack","Mannschaftsrucksack IV",10];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_ret pushBack ["B_Carryall_cbr","Mannschaftsrucksack V",10];
		};
	};
};

_ret;
