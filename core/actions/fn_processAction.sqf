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
  case "diamond": {["diamond","diamondc",1000,(localize "STR_Process_Diamond"),false]};
  case "heroin": {["heroinu","heroinp",200,(localize "STR_Process_Heroin"),false]};
  case "heroinr": {["heroinp","heroinr",200,(localize "STR_Process_HeroinR"),false]}; //
  case "copper": {["copperore","copper_r",500,(localize "STR_Process_Copper"),false]};
  case "iron": {["ironore","iron_r",800,(localize "STR_Process_Iron"),false]};
  case "sand": {["sand","glass",450,(localize "STR_Process_Sand"),false]};
  case "salt": {["salt","salt_r",450,(localize "STR_Process_Salt"),false]};
  case "schnaps": {["peach","schnaps",450,(localize "STR_Process_Schnaps"),true,"apple"]};
  case "bier": {["malz","bier",1000,(localize "STR_Process_Bier"),true,"hopfen"]};
  case "cocaine": {["cocaine","cocainep",200,(localize "STR_Process_Cocaine"),false]};
  case "cannabis": {["cannabis","marijuana",150,(localize "STR_Process_Marijuana"),false]}; //
  case "marijuana": {["marijuana","marijuanar",200,(localize "STR_Process_MarijuanaR"),false]}; //
  case "cement": {["rock","cement",650,(localize "STR_Process_Cement"),false]};
  case "coal": {["coalu","coalp",650,(localize "STR_Process_Coal"),false]};
  case "pilze": {["pilze","magicmushrooms",650,(localize "STR_Process_Pilze"),false]};
  case "steel": {["iron_r","steel",650,(localize "STR_Process_Steel"),true,"coalp"]};
  case "plastic": {["oilp","plastic",650,(localize "STR_Process_Plastic"),true,"coalp"]};
  case "bluesyn": {["cocainep","bluesyn",650,(localize "STR_Process_BlueSyn"),true,"heroinp"]};
  case "sulfur": {["sulfuru","sulfurp",250,(localize "STR_Process_Sulfur"),false]};
  case "nitre": {["nitre","potassiumnitrate",250,(localize "STR_Process_Nitre"),false]};
  case "gunpowder": {["suflurp","gunpowder",400,(localize "STR_Process_Gunpowder"),true,"potassiumnitrate","coalp"]};
  case "explosive": {["gunpowder","sprengstoff",500,(localize "STR_Process_Explosive"),true,"nitroglycerin","flask"]};
  case "gold": {["goldore","goldbar",200,(localize "STR_Process_Gold"),true,"coalp"];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_moreVars = _itemInfo select 4;  // true if process action is with 2 Items and false if processing with 1 Item.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;



//morevars
if(_moreVars) then {
  _count = count _itemInfo;
  if (_count >= 5) then{
    _item2 = _itemInfo select 5;
    _item2Val = missionNamespace getVariable ([_item2,0] call life_fnc_varHandle);
  };
  if (_count >= 6) then{
    _item3 = _itemInfo select 6;
    _item3Val = missionNamespace getVariable ([_item3,0] call life_fnc_varHandle);
  };
  if (_count >= 7) then{
    _item4 = _itemInfo select 7;
    _item3Val = missionNamespace getVariable ([_item4,0] call life_fnc_varHandle);
  };
};


_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

// True if amount of Item1 =! amount of Item 2 to prevent processing 20 FuelF with 20x oilp  and 1x iron_r)
if (_count >= 5) then{
  if(_oldVal !=_item2Val) then {
    _error = true;
  };
};
if (_count >= 6) then{
  if(_oldVal !=_item2Val && _oldVal !=_item3Val) then {
    _error = true;
  }
};
if (_count >= 7) then{
  if(_oldVal !=_item2Val && _oldVal !=_item3Val && _oldVal != _item4Val) then {
    _error = true;
  };
};
if(_error) exitWith{hint "please use equal amounts"};

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};


// Inform army if gold
if(_type == "gold") then {
  [[5,format["<t size='1.2'><t color='#FFFF00'>Goldschmelze %1</t></t><br/><br/><t size='1'> Jemand schmilzt Gold! <br/> Stoppe ihn! </t>",life_territory_marker]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
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

if(_hasLicense) then {
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

//Delete additional items
if (_count >= 5) then {
  ([false,_item2,_item2Val] call life_fnc_handleInv);
};
if (_count >= 6) then {
  ([false,_item3,_item3Val] call life_fnc_handleInv);
};
if (_count >= 7) then {
  ([false,_item4,_item4Val] call life_fnc_handleInv);
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


if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format["You have processed %1 into %2 for $%3",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
life_cash = life_cash - _cost;
life_is_processing = false;
};