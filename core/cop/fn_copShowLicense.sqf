#include <macro.h>
/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Noldy and CYNX
Link : http://www.global-gamer.com/home/wbb/index.php/Thread/509-Turorial-Polizeimarke-zeigen/

Beschreibung : Fuegt einen 'Polizeiausweis' hinzu, den man ueber scrollen Zivilisten zeigen kann
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Du bist kein Soldat!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = (__GETC__(life_coplevel));

switch ( _coplevel ) do
{
	case 1: { _rang = "US Army"; };
	case 2: { _rang = "US Army"; };
	case 3: { _rang = "US Army"; };
	case 4: { _rang = "US Army"; };
	case 5: { _rang = "US Army"; };
	case 6: { _rang = "US Army"; };
	case 7: { _rang = "US Army"; };
	default {_rang =  "US Army";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\usarmy.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>synced-gaming.de</t>", name player, _rang];


[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;

