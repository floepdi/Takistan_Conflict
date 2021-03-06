#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_vehStoreItem.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Used in the vehicle trunk menu, stores the selected item and puts it in the vehicles virtual inventory
	if the vehicle has room for the item.
*/
private["_ctrl","_num","_totalWeight","_itemWeight","_veh_data","_inv","_index","_val"];
disableSerialization;

_ctrl = ctrlSelData(3503);
_num = ctrlText 3506;
if((life_trunk_vehicle getVariable ["trunk_in_use",false]) && (life_trunk_vehicle getVariable ["trunk_in_use_by",false] != name player)) exitWith {
    closeDialog 0;
    hint localize "STR_MISC_VehInvUse";
};if(!([_num] call TON_fnc_isnumber)) exitWith {hint "Du musst eine Zahl angeben!";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint "Du musst eine Zahl über 0 angeben!";};

_boxslots = 0;
if (life_trunk_vehicle isKindOf "House_F") then {
	_content = cursorTarget getVariable "content";
	{
		if (_x select 0 == "B_supplyCrate_F") then {_boxslots = _boxslots + 700;};
		if (_x select 0 == "Box_IND_AmmoVeh_F") then {_boxslots = _boxslots + 900;};
		if (_x select 0 == "Box_IND_WpsSpecial_F") then {_boxslots = _boxslots + 100;};
		if (_x select 0 == "Box_IND_Grenades_F") then {_boxslots = _boxslots + 80;};
	} forEach _content;
};

if(life_trunk_vehicle isKindOf "House_F") then {
	_mWeight = _boxslots;
	_totalWeight = [_mWeight,(life_trunk_vehicle getVariable["Trunk",[[],0]]) select 1];
} else {
	_totalWeight = [life_trunk_vehicle] call life_fnc_vehicleWeight;
};
_itemWeight = ([_ctrl] call life_fnc_itemWeight) * _num;
_veh_data = life_trunk_vehicle getVariable ["Trunk",[[],0]];
_inv = _veh_data select 0;

if(_ctrl == "goldbar" && (life_trunk_vehicle isKindOf "House_F")) exitWith {hint "Du kannst das hier nicht lagern!"};
if(_ctrl == "goldbar" && {!(life_trunk_vehicle isKindOf "LandVehicle")}) exitWith {hint "Du kannst das hier nicht lagern!"};
if(!(_ctrl == "oilp" OR _ctrl == "oilu") && (life_trunk_vehicle isKindOf "RHS_Ural_Fuel_MSV_01")) exitWith {hint "Du kannst hier nur Öl einlagern!"};
if(_ctrl == "money") then
{
	_index = [_ctrl,_inv] call TON_fnc_index;
	if(life_cash < _num) exitWith {hint "You don't have that much cash on you to store in the vehicle!"};
	if(_index == -1) then
	{
		_inv pushBack [_ctrl,_num];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};

	life_cash = life_cash - _num;
	life_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[life_trunk_vehicle] call life_fnc_vehInventory;
}
	else
{
	if(((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {hint "Das ist voll!"};

	if(!([false,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint "Da ist grad etwas schiefgegangen!";};
	_index = [_ctrl,_inv] call TON_fnc_index;
	if(_index == -1) then
	{
		_inv pushBack [_ctrl,_num];
	}
		else
	{
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};

	life_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[life_trunk_vehicle] call life_fnc_vehInventory;
};