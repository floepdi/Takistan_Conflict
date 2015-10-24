/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "RDS_Lada_Civ_01": {15};
	case "RDS_S1203_Civ_01": {17};
	case "RDS_Gaz24_Civ_01": {17};
	case "rhs_uaz_open_MSV_01": {15};
	case "C_Van_01_transport_F": {40};
	case "UAZ_Unarmed": {17};
	case "RDS_Octavia_Civ_01": {19};
	case "C_Quadbike_01_F": {5};
	case "RDS_Ikarus_Civ_01": {20};
	case "B_mas_cars_Hilux_Unarmed": {20};
	case "B_mas_cars_LR_Unarmed": {20};
	case "rhs_gaz66_ammo_vmf": {65};
	case "rhs_gaz66_vmf": {20};
	case "I_mas_cars_UAZ_M2": {10};
	case "B_mas_cars_Hilux_M2": {10};
	case "I_mas_cars_LR_soft_M2": {10};
	case "I_mas_cars_UAZ_MG": {10};
	case "B_mas_cars_Hilux_MG": {10};
	case "GR_Bell412_3": {10};
	case "RHS_Ural_Open_Civ_01": {80};
	case "RHS_Ural_Fuel_MSV_01": {100};
	case "B_G_Offroad_01_armed_F": {15};
	case "rhs_tigr_vdv": {10};
	case "GR_Mi8_1": {40};
	case "C_Hatchback_01_F": {17};
	case "C_SUV_01_F": {20};
	case "max_Dodge_multy": {10};
	case "I_mas_cars_UAZ_SPG9": {10};
	case "B_mas_cars_Hilux_SPG9": {10};
	case "O_MRAP_02_F": {10};
	case "B_Truck_01_ammo_F": {100};
	case "GR_Mi_171_2": {10};

	
	default {-1};
};
