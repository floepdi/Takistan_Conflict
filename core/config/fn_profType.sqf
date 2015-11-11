/*
File: fn_profType
Author: Jacob "PapaBear" Tyler

Description:
Text changing
*/
//convert name to prof name
_type = [_this,0,"",[""]] call BIS_fnc_param;

if(_type == "" ) exitWith {[]};

_profName = "";
switch ( _type ) do
{
//text to license
case "level": {_profName = "Level_Prof"; };
case "quest": {_profName = "Quest_Prof"; };
case "questinfo": {_profName = "QuestInfo_Prof"; };
case "payday": {_profName = "Payday_Prof"; };
case "paytime": {_profName = "Paytime_Prof"; };
case "abzeichen": {_profName = "Abzeichen_Prof"; };
case "paytimearmy": {_profName = "PaytimeArmy_Prof"; };
case "paydayarmy": {_profName = "PaydayArmy_Prof"; };
/*
case "mafia": { _profName = "Mafia_Prof";};
case "heroin": {_profName = "Heroin_Prof"; };
case "cocaine": { _profName = "Cocain_Prof";};
case "marijuana": { _profName = "Canabis_Prof";};
case "copper": { _profName = "Copper_Prof"; };
case "iron": { _profName = "Iron_Prof";};
case "salt": {_profName = "Salt_Prof"; };
case "sand": { _profName = "Sand_Prof";};
case "diamond": { _profName = "Diamond_Prof";};
case "oil": { _profName = "Oil_Prof";};
case "cement": { _profName = "Rock_Prof";};
case "apple": { _profName = "Fruit_Prof"; };
case "peach": { _profName = "Fruit_Prof";};
case "heroinu": {_profName = "Heroin_Prof"; };
case "cannabis": { _profName = "Canabis_Prof";};
case "copperore": { _profName = "Copper_Prof"; };
case "ironore": { _profName = "Iron_Prof";};
case "oilu": { _profName = "Oil_Prof";};
case "rock": { _profName = "Rock_Prof";};
case "coalu": { _profName = "Coal_Prof";};
case "malz": { _profName = "Malz_Prof";};
case "hopfen": { _profName = "Hopfen_Prof";};
case "pilze": { _profName = "Pilze_Prof";};
*/


//license to text
case "Level_Prof": { _profName = "Level";};
case "Quest_Prof": { _profName = "quest";};
case "QuestInfo_Prof": { _profName = "questinfo";};
case "Payday_Prof": {_profName = "payday";};
case "Paytime_Prof": {_profName = "paytime";};
case "Abzeichen_Prof": {_profName = "abzeichen";};
case "PaydayArmy_Prof": {_profName = "payday";};
case "PaytimeArmy_Prof": {_profName = "paytime";};
/*
case "Mafia_Prof": {_profName = "Mafia"; };
case "Heroin_Prof": {_profName = "Heroin"; };
case "Cocain_Prof": { _profName = "Cocaine";};
case "Canabis_Prof": { _profName = "Cannabis";};
case "Copper_Prof": { _profName = "Copper"; };
case "Iron_Prof": { _profName = "Iron";};
case "Salt_Prof": {_profName = "Salt"; };
case "Sand_Prof": { _profName = "Sand";};
case "Diamond_Prof": { _profName = "Diamond";};
case "Oil_Prof": { _profName = "Oil";};
case "Rock_Prof": { _profName = "Rock";};
case "Fruit_Prof": { _profName = "Fruit";};
case "Coal_Prof": { _profName = "Coal";};
case "Malz_Prof": { _profName = "Malz";};
case "Hopfen_Prof": { _profName = "Hopfen";};
case "Pilze_Prof": { _profName = "Pilze";};
*/

default{""};
};



_profName;