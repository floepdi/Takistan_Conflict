/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName), price

//Shop Title Name
ctrlSetText[3103,"Outfits"];

_return = [];
switch (_filter) do
 {
	//Uniforms
	case 0:
	 {
		if(life_mediclevel >= 1) then {
			_return pushBack ["TRYK_U_B_wh_blk_Rollup_CombatUniform","PJ Standard",25];
		};
		if(life_mediclevel >= 3) then {
			_return pushBack ["TRYK_U_B_Snowt","PJ Gehoben",25];
		};
	
	};

	//Hats
	case 1:
	 {
		if(life_mediclevel >= 1) then {
			_return pushBack ["TRYK_H_woolhat","PJ Wollmütze",25];
			_return pushBack ["SP_PASGTHelmet_Blue1","PJ Helm(blau)",25];
		};
		if(life_mediclevel >= 3) then {
			_return pushBack ["TRYK_H_Helmet_Snow","PJ Helm(weiß)",25];
		};
	};



	//Glasses
	/*
	case 2:
	  {
		if(life_level >= 10) then {
			_return pushBack ["rhs_scarf",nil,25];
		};
		if(life_level >= 12) then {
			_return pushBack ["TRYK_Shemagh",nil,65];
		};
		if(life_level >= 5) then {
			_return pushBack ["SFG_Tac_BeardD",nil,50];
			_return pushBack ["SFG_Tac_BeardO",nil,50];
		};
		if(life_level >= 18) then {
			_return pushBack ["G_mas_wpn_shemag_gog",nil,85];
		};
		if(life_level >= 13) then {
			_return pushBack ["SFG_Tac_moustacheD",nil,50];
			_return pushBack ["SFG_Tac_moustacheO",nil,50];
		};
		if(life_level >= 26) then {
			_return pushBack ["G_Balaclava_oli",nil,100];
		};
		if(life_level >= 31) then {
			_return pushBack ["TRYK_Shemagh_G",nil,125];
		};
		if(life_level >= 38) then {
			_return pushBack ["G_mas_wpn_wrap_b",nil,150];
		};
	};
	*/

	//Vest
	case 3:
	 {
		if(life_mediclevel >= 2) then {
			_return pushBack ["TRYK_V_tacv1_BK","PJ Weste I",25];
		};
		if(life_mediclevel >= 4) then {
			_return pushBack ["TRYK_V_tacv1LC_BK","PJ Weste II",25];
		};
	};

	//Backpacks
	case 4:
	 {
		if(life_mediclevel >= 1) then {
			_return pushBack ["TRYK_B_Medbag_BK","PJ Rucksack",25];
		};
	};

};
_return;
