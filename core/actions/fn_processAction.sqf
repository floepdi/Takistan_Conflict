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
  case "oil": {["oilu","oilp",100,(localize "STR_Process_Oil"),false];}; //added param (true or false) true if processing with 2 Items.
  case "heroin": {["heroinu","heroinp",200,(localize "STR_Process_Heroin"),false]};
  case "heroinr": {["heroinp","heroinr",200,(localize "STR_Process_HeroinR"),false]}; //
  case "cannabis": {["cannabis","marijuana",150,(localize "STR_Process_Marijuana"),false]}; //
  case "marijuana": {["marijuana","marijuanar",200,(localize "STR_Process_MarijuanaR"),false]}; //
  case "sulfur": {["sulfuru","sulfurp",250,(localize "STR_Process_Sulfur"),false]};
  case "nitre": {["nitre","potassiumnitrate",250,(localize "STR_Process_Nitre"),false]};
  case "getreide": {["getreide","mehl",250,(localize "STR_Process_Getreide"),false]};
  case "fladen": {["mehl","fladen",250,(localize "STR_Process_Fladen"),true,"wasser"]};
  case "gold": {["goldore","goldbar",200,(localize "STR_Process_Gold"),true,"coalp"];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

_morevars = _itemInfo select 4;  // true if process action is with 2 Items and false if processing with 1 Item.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;






//2vars
if(_morevars) then { _oldItem2 = _itemInfo select 5; }; //set Itemname if (processing with 2 Items = true)

;
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

//2vars
if(_morevars) then { _oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle); }; //calculate the amount of the second Item (for example Iron)

if(_morevars) then {
       if(_oldVal !=_oldVal2) then {
              _error = true; // True if amount of Item1 =! amount of Item 2 to prevent processing 20 FuelF with 20x oilp  and 1x iron_r)
       };
};
if(_error) exitWith{hint "please use equal amounts"};

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

// Inform army if gold
if(_type == "gold") then {
  [[5,format["<t size='1.2'><t color='#FFFF00'>Goldschmelze</t></t><br/><br/><t size='1'> Jemand schmilzt Gold! <br/> Stoppe ihn! </t>"]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};

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


if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format["You have processed %1 into %2.",_oldVal,_itemName],"PLAIN"];
life_is_processing = false;

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


if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format["You have processed %1 into %2 for $%3",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash - _cost;
life_is_processing = false;
