/*
File: fn_addExp.sqf
Author: Jacob "PapaBear" Tyler

Description:
Add exp to given prof
*/
//add exp
_type = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;
_vorzeichen = _this select 2;

_profData = missionNamespace getVariable (_type);
//0 = level
//1 = exp

_level = (_profData select 0);
_exp = (_profData select 1);
_nextLevel = 0;
_nextLevel = 4 * ( _level^3 );
_nextLevel2 =  6 * ( _level^2 );
_nextLevel = _nextLevel - _nextLevel2;
_nextLevel3 = 20 * _level;
_nextLevel = _nextLevel + _nextLevel3 + 200;

if(_type == "Abzeichen_Prof") then
{

	if(_vorzeichen == 1) then
	{
		 _exp = _exp + _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};

	if(_vorzeichen == 0) then
	{
		_exp = _exp - _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
};


if(_type == "Payday_Prof") then
{

	if(_vorzeichen == 1) then
	{
		 _exp = _exp + _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};

	if(_vorzeichen == 0) then
	{
		_exp = _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
};


if(_type == "Paytime_Prof") then
{

	if(_vorzeichen == 1) then
	{
		 _exp = _exp + _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};

	if(_vorzeichen == 0) then
	{
		_exp = _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
};

if(_type == "Level_Prof") then
{

	if(_vorzeichen == 1) then
	{
		 _exp = _exp + _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};

	if(_vorzeichen == 0) then
	{
		_exp = _exp - _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
};

if(_type == "Quest_Prof") then
{

	if(_vorzeichen == 1) then
	{
		 _exp = _exp + _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};

	if(_vorzeichen == 0) then
	{
		_exp = _exp - _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
};

if(_type == "QuestInfo_Prof") then
{

	if(_vorzeichen == 1) then
	{
		 _exp = _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};

	if(_vorzeichen == 0) then
	{
		_exp = _amount;
		missionNamespace setVariable [_type,[(_profData select 0),(_exp)]];
	};
};
