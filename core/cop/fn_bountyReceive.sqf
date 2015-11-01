/*
	File: fn_bountyReceive.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Notifies the player he has received a bounty and gives him the cash.
*/
private["_val","_total"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_total = [_this,1,"",["",0]] call BIS_fnc_param;

if(_val == _total) then
{
	titleText[format[localize "STR_Cop_BountyRecieve",[_val] call life_fnc_numberText],"PLAIN"];
}
	else
{
	titleText[format[localize "STR_Cop_BountyKill",[_val] call life_fnc_numberText,[_total] call life_fnc_numberText],"PLAIN"];
};

life_atmcash = life_atmcash + _val;

["Abzeichen_Prof",1,2] call life_fnc_addLevel;
[] call life_fnc_profSetup;
[format ["<t align='left'><t size='0.6' shadow='1'><t color='#9FF781'><br /> + 2 Abzeichen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;