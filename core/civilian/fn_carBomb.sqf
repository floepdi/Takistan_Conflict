/*
	File: fn_carbbomb.sqf
	Author: synced-gaming.de - Phil

	Description:
	Knick Knack Bumm Bumm
*/

private["_unit","_zuender"];
_scharf = _this select 0;
_car = cursorTarget;

if((!(_car isKindOf "LandVehicle"))&&(!(_car getVariable ["restrained",false]))) exitWith {hint "Du kannst hier keine Autobombe anbringen."};
if(player distance _car > 4) exitWith {hint "Du bist zu weit entfernt!"};
closeDialog 0;

if (_scharf == 1) then {
life_action_inUse = true;
life_failed = false;
life_interrupted = false;
_title = format[localize "STR_Bomb_Progress"];

//Setup our progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable ["life_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
if (license_civ_carbomb) then {

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
	if (life_failed) exitWith {5 cutText ["","PLAIN"]; player playActionNow "stop"; life_action_inUse = false;  life_failed = false; life_interrupted = false; };

	life_action_inUse = false;
	5 cutText ["","PLAIN"]; //kill progress bar
	if(player distance _car > 7) exitWith {hint "Du bist zu weit entfernt!"};

	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Bombe angebracht"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
	_car setVariable["bombe",true,true];
	_car setVariable["leger",name player,true];
	_bomb = "Land_TinContainer_F" createVehicle position _car;
	_bomb attachTo [_car, [0, -3, -0.5], "Bombe"];


	[_car] spawn
	{
	while {true} do {
		_veh = _this select 0;
		_isOn = isEngineOn _veh;
		if (_isOn) then {
		_veh say3D "peep";
		sleep 3;
		_veh setDamage 1;
		[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Eine von dir angebrachte Bombe ist explodiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
		};

	};
	};

 }
 else
 {
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
	_cP = _cP + 0.003;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1) exitWith {};
	if (!alive player) exitWith {life_failed = true;};
	if(life_istazed) exitWith {life_failed = true;}; //Tazed
	if(life_interrupted) exitWith {life_failed = true;};
	if((player getVariable["restrained",false])) exitWith {life_failed = true;};
};
	if (life_failed) exitWith {5 cutText ["","PLAIN"]; player playActionNow "stop"; life_action_inUse = false;  life_failed = false; life_interrupted = false;};
	life_action_inUse = false;

	if(player distance _car > 7) exitWith {hint "Du bist zu weit entfernt!"};

	[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Bombe angebracht"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

	_car setVariable["bombe",true,true];
	_car setVariable["leger",name player,true];
	_bomb = "Land_TinContainer_F" createVehicle position _car;
	_bomb attachTo [_car, [0, -3, -0.5], "Bombe"];


	[_car] spawn
	{
	_r = (random 100);
	if (_r > 20) then {
	while {true} do {
		_veh = _this select 0;
		_isOn = isEngineOn _veh;
		if (_isOn) then {
		_veh say3D "peep";
		sleep 3;
		_veh setDamage 1;
		[format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Eine von dir angebrachte Bombe ist explodiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
		};
	};
	}
    else
    {
    detach _bomb;
    deleteVehicle _bomb;
    [format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Eine von dir angebrachte Bombe war eine Fehlkonstruktion!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _car setVariable["leger",false,false];
    _car setVariable["bombe",false,false];
    };

	};

	};
}
else
{
	 detach _bomb;
	 deleteVehicle _bomb;
    [format ["<t align='left'><t size='0.6' shadow='1'><t color='#F78181'><br />Eine von dir angebrachte Bombe wurde entdeckt!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _car setVariable["leger",false,false];
    _car setVariable["bombe",false,false];

};
