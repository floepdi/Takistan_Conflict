/*
	File: fn_bountyReward.sqf
	Author: xydra
	
	Money Money Money 
*/

_bountyVictim = this select 0;
_bountyReward = this select 1;

//Checks
if(getPlayerUID player == getPlayerUID _bountyVictim) then {
	life_cash = (life_cash + _bountyReward);
};