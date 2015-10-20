#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];


_profName = ["level"] call life_fnc_profType;
if( _profName != "" ) then
{
_data = missionNamespace getVariable (_profName);
_level = _data select 1;
};



//_data1 = missionNamespace getVariable ("Mafia_Prof");
//_mafia = _data1 select 0;


switch (_shop) do
{
	/*
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",80000],
			["C_Kart_01_Fuel_F",80000],
			["C_Kart_01_Red_F",80000],
			["C_Kart_01_Vrana_F",80000]
		];
	};
	*/
	
	case "med_shop":
	{
		_return = [
			
		];
	};

	case "med_air_hs1": {
		_return = [

			["RHS_UH60M_MEV",5000]
		];
	};
	
	case "cop_car":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["rhsusf_m998_d_2dr",550];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["rhsusf_m998_d_4dr",550];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["DAR_M1152",550];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack ["rhsusf_m1025_d",550];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack ["rhsusf_m1025_d_m2",550];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_return pushBack ["DAR_M1165_GMV",550];
		};
		if(__GETC__(life_coplevel) > 9) then
		{
			_return pushBack ["DAR_M1151",550];
		};
		if(__GETC__(life_coplevel) > 11) then
		{
			_return pushBack ["DAR_M1151_Deploy",550];
		};
		if(__GETC__(life_coplevel) > 13) then
		{
			_return pushBack ["DAR_M1167",550];
		};
		if(__GETC__(life_coplevel) > 16) then
		{
			_return pushBack ["rhsusf_m113d_usarmy",550];
		};
	};

	/*
	case "civ_air":
	{
		_return =
		[

			["I_mas_MI8",500000],
			["I_mas_MI8MTV",1000000],
			["I_mas_MI24V",1000000]
		];
	};
	*/

	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack ["B_Heli_Light_01_F",10000];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_return pushBack ["B_mas_UH1Y_UNA_F",15000];
		};
		if(__GETC__(life_coplevel) > 10) then
		{
			_return pushBack  ["RHS_UH60M",20000];
		};
		if(__GETC__(life_coplevel) > 16) then
		{
			_return pushBack ["B_Heli_Light_01_armed_F",20000];
		};
		/*
		if(license_cop_swat) then
		{
		_return pushBack
			["B_Heli_Transport_01_camo_F",40000];
		};
		*/
	};
	
	case "cop_drone":
	{
		if(__GETC__(life_coplevel) >= 8) then
		{
			_return pushBack
			["B_UAV_02_F",10000];
		};
	};

	/*
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) >= 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",10000];
		};
		if(__GETC__(life_coplevel) >= 3) then
		{
			_return pushBack
			["B_mas_UH1Y_UNA_F",15000];
		};
		if(__GETC__(life_coplevel) >= 4) then
		{
			_return pushBack
			["B_mas_UH60M",20000];
			_return pushBack
			["B_mas_CH_47F",40000];
		};
		if(__GETC__(life_coplevel) >= 6) then
		{
			_return pushBack
			["B_Heli_Light_01_armed_F",20000];
		};

		if(license_cop_swat) then
		{
		_return pushBack
			["B_Heli_Transport_01_camo_F",40000];
		};
	};
	*/

	/*
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",25000],
			["C_Boat_Civil_01_F",35000]
		];
	};


	case "donator_car":
	{
		if(__GETC__(life_donator) >= 1) then
		{

			_return pushBack
			["cl3_r8_spyder_2tone1",500000];
			_return pushBack
			["cl3_r8_spyder_2tone2",500000];
			_return pushBack
			["cl3_r8_spyder_2tone3",500000];
			_return pushBack
			["cl3_r8_spyder_2tone4",500000];
			_return pushBack
			["cl3_r8_spyder_2tone5",500000];
			_return pushBack
			["cl3_r8_spyder_flame",500000];
			_return pushBack
			["cl3_r8_spyder_flame1",500000];
			_return pushBack
			["cl3_r8_spyder_flame2",500000];
			_return pushBack
			["cl3_458_2tone1",500000];
			_return pushBack
			["cl3_458_2tone2",500000];
			_return pushBack
			["cl3_458_2tone3",500000];
			_return pushBack
			["cl3_458_2tone4",500000];
			_return pushBack
			["cl3_458_2tone5",500000];
			_return pushBack
			["cl3_458_flame",500000];
			_return pushBack
			["cl3_458_flame1",500000];
			_return pushBack
			["cl3_458_flame2",500000];
			_return pushBack
			["cl3_e60_m5_lime",100000];
			_return pushBack
			["cl3_e63_amg_orange",350000];
			_return pushBack
			["cl3_e60_m5_camo",100000];
			_return pushBack
			["cl3_dbs_volante_camo_urban",500000];
			_return pushBack
			["cl3_taurus_camo",40000];
			_return pushBack
			["cl3_458_babypink",500000];
		};

	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
	*/

case "civ_car":
	{
		_return =
		[
			["RDS_Lada_Civ_01",5000],
			["RDS_Gaz24_Civ_01",6000],
			["RDS_S1203_Civ_01",7500],
			["RHS_Ural_Open_Civ_01",8500],
			["RDS_Ikarus_Civ_02",10000],
			["O_mas_cars_UAZ_Unarmed",12500],
			["isc_is_hilux_Unarmed_o",25000],
			["DAR_4X4",5000]
		];
	};
	
	case "autolieferung_car":
	{
		_return =
		[
			["isc_is_hilux_Unarmed_o",5000],
			["isc_is_hilux_Unarmed_o",6000]
		];
	};
	
case "level_car":
	{
		if(call life_fnc_getLevel >= 100) then
		{
		_return pushBack
		["B_G_Offroad_01_F",10000];
		_return pushBack
		["rhs_gaz66_vmf",15000];
		};
		
		if(call life_fnc_getLevel >= 200) then
		{
		_return pushBack
		["Tal_Wrangler_Black",20000];
		_return pushBack
		["Tal_Wrangler_Pink",20000];
		_return pushBack
		["Tal_Wrangler_Blue",20000];
		_return pushBack
		["Tal_Wrangler_Grey",20000];
		};
	
		if(call life_fnc_getLevel >= 300) then
		{
		_return pushBack
		["I_mas_cars_UAZ_MG",30000];
		_return pushBack
		["isc_is_hilux_MG_o",50000];
		};
		
		if(call life_fnc_getLevel >= 400) then
		{
		_return pushBack
		["rhs_tigr_vv",50000];
		};
		
		if(call life_fnc_getLevel >= 500) then
		{
		_return pushBack
		["I_mas_cars_UAZ_M2",75000];
		//_return pushBack
		//["isc_is_hilux_AGS30_o",100000];
		};
		
	};	

	
};

_return;
