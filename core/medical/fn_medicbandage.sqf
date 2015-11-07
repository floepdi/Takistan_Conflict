/*
    File: fn_bandagemate
    Author: Phil

    Description:
    heilt eine Blutung bei einem Kollegen
*/
private ["_blood","_bloodmulti"];


_blood = cursorTarget getVariable ["blood",100];
_bloodmulti = cursorTarget getVariable ["bloodmulti", 0];

if (_bloodmulti == 0) exitWith {hint "Du kannst hier nichts heilen!"};

player playActionNow "Medic";
[[1],"life_fnc_medicbandaged",cursorTarget,false] spawn life_fnc_MP;

life_ishealing = false;