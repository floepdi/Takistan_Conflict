#include <macro.h>
/*
	File: fn_weaponShopBuySell.sqf
	Author: Bryan "Tonic" Boardwine + Phil "Phil" Phil

	Description:
	Master handling of the weapon shop for buying / selling an item.
*/
disableSerialization;
private["_price","_item","_itemInfo","_bad"];
if((lbCurSel 88403) == -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
_price = lbValue[88403,(lbCurSel 88403)]; if(isNil "_price") then {_price = 0;};
_item = lbData[88403,(lbCurSel 88403)];
_itemInfo = [_item] call life_fnc_fetchCfgDetails;

_bad = "";

if
((_itemInfo select 6) != "CfgVehicles") then
{
	if((_itemInfo select 4) in [4096,131072]) then
	{
		if(!(player canAdd _item) && (uiNamespace getVariable["Weapon_Shop_Filter",0]) != 1) exitWith {_bad = (localize "STR_NOTF_NoRoom")};
	};
};


if(_bad != "") exitWith {hint _bad};


if((uiNamespace getVariable["Weapon_Shop_Filter",0]) == 1) then {

	life_cash = life_cash + _price;
	[_item,false] call life_fnc_handleItem;
	hint parseText format[localize "STR_Shop_Weapon_Sold",_itemInfo select 1,[_price] call life_fnc_numberText];
	[nil,(uiNamespace getVariable["Weapon_Shop_Filter",0])] call life_fnc_weaponShopFilter; //Update the menu.
	// [[format ["4|%1 Item verkauft: %2, Gewinn: %3, Bargeld: %4",player getVariable["realname",name player],_iteminfo select 1,_price,life_cash]],"Arma3Log",false,false] call life_fnc_MP;
};
		if(_price > life_abzeichen) exitWith {hint "Du hast nicht genug Abzeichen!"};
		hint parseText format[localize "STR_Shop_Weapon_BoughtItem",_itemInfo select 1,[_price] call life_fnc_numberText];
		["Abzeichen_Prof",_price,0] call life_fnc_addLevel;
		[_item,true] spawn life_fnc_handleItem;
		// [[format ["4|%1 Waffe gekauft: %2",player getVariable["realname",name player],_iteminfo select 1]],"Arma3Log",false,false] call life_fnc_MP;

[] call life_fnc_saveGear;