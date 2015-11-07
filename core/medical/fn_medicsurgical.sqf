/*
    File: fn_surgical
    Author: Phil

    Description:
    healt auf 55 Leben
*/
private ["_blood","_bloodmulti"];


_blood = cursorTarget getVariable ["blood",100];
_bloodmulti = cursorTarget getVariable ["bloodmulti", 0];
life_ishealing = true;
if (damage player == 0) exitWith {hint "Du kannst hier nichts heilen!"};

player playActionNow "Medic";
[[],"life_fnc_medicsurgicaled",cursorTarget,false] spawn life_fnc_MP;

life_ishealing = false;