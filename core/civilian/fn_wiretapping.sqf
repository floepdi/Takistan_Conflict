/*
	File: fn_wiretapping.sqf
	Author: synced-gaming.de - xydra
	
	Description:
	Main functionality for gathering information (wiretapping a military car).
*/

private["_car","_spy"];
_spy = _this select 0;
_car = cursorTarget;
_weight = 0;


/* Check if it is possible wiretap the vehicle */
if( !(side _car == west)) exitWith {hint "Du kannst nur Militärfahrzeuge abhören"};
if( !(_car getVariable ["restrained",false])) exitWith {hint "Du bist gefesselt!"};
if(player distance _car > 4) exitWith {hint "Du bist zu weit entfernt!"};
closeDialog 0;

/* place wiretapping device on car */
life_action_inUse = true;

player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};

life_action_inUse = false;

if(player distance _car > 7) exitWith {hint "Du bist zu weit entfernt!"};

_bomb = "Land_TinContainer_F" createVehicle position _car;
_bomb attachTo [_car, [0, -3, -0.5], "Bombe"];
_spotted = false;
[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br /> Abhörgerät angebracht"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;


/* gather info */
while(true) do {
		/* give player 1 information if they have place in inv */
	_weight = ["information",5,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
	if(_weight > 0) then {
		life_action_inUse = true;
		if(([true,"information",_weight]call life_fnc_handleInv)) then {
			hint "Du hast eine Information aufgeschnappt";
		};
		life_action_inUse = false;
	};

	/* check if wiretapping device is spotted (10% chance)*/
	_rand = random 100;
	if(_rand <= 10) exitWith{hint "Dein Abhörgerät wurde entdeckt!"};
	
	sleep 60;
};