#include <macro.h>
/*
Author: Rene

Description:

Sets base Paycheck based on jobs/licenses/other stuff


*/
private ["_level"];


_level = [] call life_fnc_getLevel;

switch(true) do
{
	case _level >= 2: 
	{
	life_paycheck = 750;
	};
	case _level >= 5: 
	{
	life_paycheck = 1000;
	};
	case _level >= 7:
	{
	life_paycheck = 1250;
	};
	case _level >= 10:
	{
	life_paycheck = 1500;
	};
};