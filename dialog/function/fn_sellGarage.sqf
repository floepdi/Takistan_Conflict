#include <macro.h>
/*
	File: fn_sellGarage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sells a vehicle from the garage.
*/
private["_vehicle","_vid","_pid","_unit","_price"];
disableSerialization;
if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;
if (life_action_inUse) exitWith{};
if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};
life_action_inUse = true;
// sleep 5;
_price = [_vehicle,__GETC__(life_garage_sell)] call TON_fnc_index;
if(_price == -1) then {_price = 1000;} else {_price = (__GETC__(life_garage_sell) select _price) select 1;};

[[_vid,_pid,_price,player,life_garage_type],"TON_fnc_vehicleDelete",false,false] spawn life_fnc_MP;
hint format[localize "STR_Garage_SoldCar",[_price] call life_fnc_numberText];
life_atmcash = life_atmcash + _price;
_vehicleInfo = [_vehicle] call life_fnc_fetchCfgDetails;
[[format ["0|%1 Fahrzeug verkauft: %2, Gewinn:%3, Konto:%4",player getVariable["realname",name player],_vehicleInfo select 1,_price,life_atmcash]],"Arma3Log",false,false] call life_fnc_MP;


life_action_inUse = false;
closeDialog 0;