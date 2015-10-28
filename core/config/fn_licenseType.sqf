/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "pilot1": {_var = "license_civ_air1"};

			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "oil": {_var = "license_civ_oil"}; //Oil processing license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "drone": {_var = "license_cop_drone"}; //Cop Drone Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "uncarbomb": {_var = "license_cop_uncarbomb"};
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "heroinr": {_var = "license_civ_heroinr"};
			case "cannabis": {_var = "license_civ_cannabis"}; //Marijuana processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "salt": {_var = "license_civ_salt"};
			case "cocaine": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};
			case "bluesyn": {_var = "license_civ_bluesyn"};

			case "schnaps": {_var = "license_civ_schnaps"};
			case "pilze": {_var = "license_civ_pilze"};
			case "bier": {_var = "license_civ_bier"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "cement": {_var = "license_civ_cement"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "steel": {_var = "license_civ_steel"};
			case "plastic": {_var = "license_civ_plastic"};
			case "coal": {_var = "license_civ_coal"};
			case "gold": {_var = "license_civ_gold"};
			case "carbomb" : {_var = "license_civ_carbomb"};
			case "sulfur": {_var = "license_civ_sulfur"};
			case "nitre": {_var = "license_civ_nitre"};
			case "gunpowder": {_var = "license_civ_gunpowder"};
			case "explosive": {_var = "license_civ_explosive"};
			default {_var = ""};
		};
	};

	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_air1": {_var = "pilot1"};
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_civ_oil": {_var = "oil"}; //Oil processing license cost
			case "license_cop_air": {_var = "cair"};//Cop Pilot License cost

			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_uncarbomb" : {_var = "uncarbomb"};
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_heroinr": {_var = "heroinr"};
			case "license_civ_cannabis": {_var = "cannabis"}; //Marijuana processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_salt": {_var = "salt"};
			case "license_civ_bluesyn": {_var = "bluesyn"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_civ_cement": {_var = "cement"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_steel": {_var = "steel"};
			case "license_civ_plastic": {_var = "plastic"};
			case "license_civ_coal": {_var = "coal"};
			case "license_civ_bier": {_var = "bier"};
			case "license_civ_schnaps": {_var = "schnaps"};
			case "license_civ_pilze": {_var = "pilze"};
			case "license_civ_gold": {_var = "gold"}; //Gold processing license cost
			case "license_civ_carbomb": {_var = "carbomb"};
			case "license_civ_sulfur": {_var = "sulfur"};
			case "license_civ_nitre": {_var = "nitre"};
			case "license_civ_gunpowder": {_var = "gunpowder"};
			case "license_civ_explosive": {_var = "explosive"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;