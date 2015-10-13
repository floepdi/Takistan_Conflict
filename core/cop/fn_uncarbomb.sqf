/*
	File: fn_uncarbbomb.sqf
	Author: synced-gaming.de - Phil

	Description:
	Leider kein Knick Knack Bumm Bumm :(
 */

private["_unit","_zuender"];
_car = cursorTarget;
_bombe = _car getVariable ["bombe",false];
_leger = _car getVariable ["leger",false];

if (playerSide != west) exitWith {};
if (!(_bombe)) exitWith {hint "Da ist nix zum entschärfen"};
if (count attachedObjects _car == 0) exitWith {hint "Da ist nix zum entschärfen!"};

_title = format[localize "STR_UnBomb_Progress"];

//Setup our progress bar
life_action_inUse = true;
if (license_cop_uncarbomb) then {
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNamespace getVariable ["life_progress",displayNull];
	_progressBar = _ui displayCtrl 38201;
	_titleText = _ui displayCtrl 38202;
	_titleText ctrlSetText format["%2 (1%1)...","%",_title];
	_progressBar progressSetPosition 0.01;
	_cP = 0.01;

		while {true} do
	{
			if(animationState player != "AinvPknlMstpsnonWnonDnon_medic_1" ) then {
				player action ["SwitchWeapon", player, player, 100];
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
				player playActionNow "stop";
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
				player playActionNow "stop";
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
			};
	sleep 0.15;
	_cP = _cP + 0.05;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1) exitWith {};
	if (!alive player) exitWith {life_failed = true;};
	if(life_istazed) exitWith {life_failed = true;}; //Tazed
	if(life_interrupted) exitWith {life_failed = true;};
	if((player getVariable["restrained",false])) exitWith {life_failed = true;};
};
	if (life_failed) exitWith {5 cutText ["","PLAIN"]; };
	life_action_inUse = false;
	5 cutText ["","PLAIN"]; //kill progress bar

	if(player distance _car > 7) exitWith {hint "Du bist zu weit entfernt!"};

	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Bombe entschärft"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

	_bomb = "Land_TinContainer_F" createVehicle position _car;
	_bomb attachTo [_car, [0, -3, -0.5], "Bombe"];
    _car setVariable["leger",false,false];
    _car setVariable["bombe",false,false];
   	[[true],"life_fnc_carbomb",_leger,false] spawn life_fnc_MP;
 }
 else
 {
 	_r = (random 100);
 	if (_r > 85) then {
 		_car say3D "peep";
 		sleep 2;
 		_car say3D "peep";
 		sleep 2;
 		_car say3D "peep";
 		sleep 2;
 		_car setDamage 1;
 	}
 	else
 	{
 	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNamespace getVariable ["life_progress",displayNull];
	_progressBar = _ui displayCtrl 38201;
	_titleText = _ui displayCtrl 38202;
	_titleText ctrlSetText format["%2 (1%1)...","%",_title];
	_progressBar progressSetPosition 0.01;
	_cP = 0.01;

 	while {true} do
	{
			if(animationState player != "AinvPknlMstpsnonWnonDnon_medic_1" ) then {
				player action ["SwitchWeapon", player, player, 100];
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
				player playActionNow "stop";
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
				player playActionNow "stop";
				player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
			};
	sleep 0.15;
	_cP = _cP + 0.02;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1) exitWith {};
	if (!alive player) exitWith {life_failed = true;};
	if(life_istazed) exitWith {life_failed = true;}; //Tazed
	if(life_interrupted) exitWith {life_failed = true;};
	if((player getVariable["restrained",false])) exitWith {life_failed = true;};
};
	if (life_failed) exitWith {5 cutText ["","PLAIN"]; };

	5 cutText ["","PLAIN"]; //kill progress bar



	life_action_inUse = false;

	if(player distance _car > 7) exitWith {hint "Du bist zu weit entfernt!"};

	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Bombe entschärft"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

	_bomb = "Land_TinContainer_F" createVehicle position _car;
	_bomb attachTo [_car, [0, -3, -0.5], "Bombe"];
    _car setVariable["leger",false,false];
    _car setVariable["bombe",false,false];
   	[[true],"life_fnc_carbomb",_leger,false] spawn life_fnc_MP;

	};
};
