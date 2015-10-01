/*
File: fn_processAction.sqf
Author: Bryan "Tonic" Boardwine

edited by theInfinit (to process 2 Item to a combination)
Description:
Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_oldVal2","_ui","_progress","_pgText","_cP","_error"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

_error = false; // used below check the comment there ;) 
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ...",processing 2Items?, (only for processing with 2) second Item.
_itemInfo = switch (_type) do
{
  case "oil": {["oilu","oilp",1000,(localize "STR_Process_Oil"),false];}; //added param (true or false) true if processing with 2 Items.
  case "diamond": {["diamond","diamondc",1000,(localize "STR_Process_Diamond"),false]};
  case "heroin": {["heroinu","heroinp",1000,(localize "STR_Process_Heroin"),false]};
  case "copper": {["copperore","copper_r",500,(localize "STR_Process_Copper"),false]};
  case "iron": {["ironore","iron_r",800,(localize "STR_Process_Iron"),false]};
  case "sand": {["sand","glass",450,(localize "STR_Process_Sand"),false]};
  case "salt": {["salt","salt_r",450,(localize "STR_Process_Salt"),false]};
  case "schnaps": {["peach","schnaps",450,(localize "STR_Process_Schnaps"),true,"apple"]};
  case "bier": {["malz","bier",1000,(localize "STR_Process_Bier"),true,"hopfen"]};
  case "cocaine": {["cocaine","cocainep",1000,(localize "STR_Process_Cocaine"),false]};
  case "marijuana": {["cannabis","marijuana",800,(localize "STR_Process_Marijuana"),false]};
  case "cement": {["rock","cement",650,(localize "STR_Process_Cement"),false]};
  case "coal": {["coalu","coalp",650,(localize "STR_Process_Coal"),false]};
  case "pilze": {["pilze","magicmushrooms",650,(localize "STR_Process_Pilze"),false]};
  case "steel": {["iron_r","steel",650,(localize "STR_Process_Steel"),true,"coalp"]};
  case "plastic": {["oilp","plastic",650,(localize "STR_Process_Plastic"),true,"coalp"]};
  case "bluesyn": {["cocainep","bluesyn",650,(localize "STR_Process_BlueSyn"),true,"heroinp"]};
  




};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_2var = _itemInfo select 4;  // true if process action is with 2 Items and false if processing with 1 Item.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;






//2vars
if(_2var) then { _oldItem2 = _itemInfo select 5; }; //set Itemname if (processing with 2 Items = true) 

_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

//2vars
if(_2var) then { _oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle); }; //calculate the amount of the second Item (for example Iron)

if(_2var) then { 
       if(_oldVal !=_oldVal2) then {
              _error = true; // True if amount of Item1 =! amount of Item 2 to prevent processing 20 FuelF with 20x oilp  and 1x iron_r)
       };
};
if(_error) exitWith{hint "please use equal amounts"};

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
while{true} do
{
sleep  0.3;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
if(_cP >= 1) exitWith {};
if(player distance _vendor > 10) exitWith {};
};


if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process.."; 5 cutText ["","PLAIN"]; life_is_processing = false;};

//2vars
if(_2var) then 
{
([false,_oldItem2,_oldVal2] call life_fnc_handleInv); //delete the second items (for example Iron)
};
if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format["You have processed %1 into %2.",_oldVal,_itemName],"PLAIN"];
life_is_processing = false;

}
else
{
if(life_cash < _cost) exitWith {hint format["You need $%1 to process without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};


while{true} do
{
sleep  0.9;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
if(_cP >= 1) exitWith {};
if(player distance _vendor > 10) exitWith {};
};


if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};

if(life_cash < _cost) exitWith {hint format["You need $%1 to process  without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
//2vars
if(_2var) then 
{
([false,_oldItem2,_oldVal2] call life_fnc_handleInv); //delete the second items (for example Iron)
};

if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format["You have processed %1 into %2 for $%3",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash - _cost;
life_is_processing = false;
}; 