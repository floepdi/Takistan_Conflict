#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.


switch(_craft) do
{
	case "vest":
	{
		switch(true) do
		{
			default
			{
				["Weste",
					[
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["V_HarnessOGL_brn", ["life_inv_sprengstoff",1,"life_inv_guertel",1]]
					]
				];
			};
		};
	};
	
	case "ied1":
	{
		switch(true) do
		{
			default
			{
				["IED",
					[
						["IEDLandBig_Remote_Mag", ["life_inv_sprengsatz",1,"life_inv_battery",1,"life_inv_fernzuender",1,"life_inv_behaelter",1]]
					]
				];
			};
		};
	};
	
	case "funkgeraet":
	{
		switch(true) do
		{
			default
			{
				["Funkgeraet",
					[
						["tf_anprc148jem", ["life_inv_gehaeuse",1,"life_inv_battery",1,"life_inv_antenne",1]]
					]
				];
			};
		};
	};
	
};