/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["heroin_1","oil_1","cocaine_1","weed_1","gold_1","sulfur_1","nitre_1","getreide_1"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.

if (animationState player == "AmovPercMstpSnonWnonDnon_Ease" || player getVariable["surrender",FALSE]) exitWith {}; //yolo
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...

switch(true) do {
	case (_zone in ["oil_1"]): {_gather = "oilu"; _val = 1;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["gold_1"]): {_gather = "goldore"; _val = 1;};
	case (_zone in ["sulfur_1"]): {_gather = "sulfuru"; _val =1;};
	case (_zone in ["nitre_1"]): {_gather = "nitre"; _val =1;};
	case (_zone in ["getreide_1"]): {_gather = "getreide"; _val =1;};
	default {""};
};

//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;


_time = 2;

for "_i" from 0 to 2 do
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep _time;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_gathering = false;