#include <macro.h>
/*
	File: fn_virt_sell.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Sell a virtual item to the store / shop
*/
private["_type","_index","_price","_var","_amount","_name","_marketprice","_mafia"];
if(D41_IsBuying == 1) exitWith {hint "Nicht den Verkaufsbutton spammen! Danke.";};
D41_IsBuying = 1;
if((lbCurSel 2402) == -1) exitWith {D41_IsBuying = 0;};
_type = lbData[2402,(lbCurSel 2402)];
_index = [_type,__GETC__(sell_array)] call TON_fnc_index;
if(_index == -1) exitWith {D41_IsBuying = 0;};
_price = (__GETC__(sell_array) select _index) select 1;
_var = [_type,0] call life_fnc_varHandle;

_Heroin = [
		"heroinp",
		"heroinr"
		];

_Haschoel = [
		"marijuana",
		"marijuanar",
		"oilp"
		];
_Gold = [
		"goldbarren"
		];
_Fladen = [
		"fladen"
		];


_amount = ctrlText 2405;
if(!([_amount] call fnc_isnumber)) exitWith {D41_IsBuying = 0; hint "You didn't enter an actual number";};
_amount = parseNumber (_amount);
if(_amount > (missionNameSpace getVariable _var)) exitWith {D41_IsBuying = 0; hint "You don't have that many items to sell!"};

if (_type in _Heroin) then {
_exp = (_amount * 5);
["Level_Prof",_exp,1] call life_fnc_addLevel; // Erfahrung
[] call life_fnc_profSetup;
};
if (_type in _Haschoel) then {
_exp = (_amount * 4);
["Level_Prof",_exp,1] call life_fnc_addLevel; // Erfahrung
[] call life_fnc_profSetup;
};
if (_type in _Gold) then {
_exp = (_amount * 8);
["Level_Prof",_exp,1] call life_fnc_addLevel; // Erfahrung
[] call life_fnc_profSetup;
};

if (_type in _Fladen) then {
_exp = (_amount * 2);
["Level_Prof",_exp,1] call life_fnc_addLevel; // Erfahrung
[] call life_fnc_profSetup;
};
_price = (_price * _amount);


_name = [_var] call life_fnc_vartostr;
if(([false,_type,_amount] call life_fnc_handleInv)) then
{

	life_cash = life_cash + _price;
	hint format["Du hast %1 %2 für $%3 verkauft.",_amount,_name,[_price] call life_fnc_numberText];
	if(_type in _StockListe)then{[[_type, [_amount] call life_fnc_numberText,"2",getPlayerUID player],"TON_fnc_insertStockSys",false,false] call life_fnc_MP;};
	[] call life_fnc_virt_update;
};


if(life_shop_type == "heroin") then
{
	private["_array","_ind","_val"];
	_array = life_shop_npc getVariable["sellers",[]];
	_ind = [getPlayerUID player,_array] call TON_fnc_index;
	if(_ind != -1) then
	{
		_val = (_array select _ind) select 2;
		_val = _val + _price;
		_array set[_ind,[getPlayerUID player,profileName,_val]];
		life_shop_npc setVariable["sellers",_array,true];
	}
		else
	{
		_array pushBack [getPlayerUID player,profileName,_price];
		life_shop_npc setVariable["sellers",_array,true];
	};
};
//[[format ["4|%1 Ware verkauft: %2,%3x, Gewinn:%4, Bargeld: %5",player getVariable["realname",name player],_name,_amount,_price,life_cash]],"Arma3Log",false,false] call life_fnc_MP;
D41_IsBuying = 0;
[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;