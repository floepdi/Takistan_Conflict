/*
    File: fn_medichwl
    Author: Phil

    Description:
    Herz-Lunge
*/
private ["_blood","_bloodmulti"];


_blood = cursorTarget getVariable ["blood",100];
_bloodmulti = cursorTarget getVariable ["bloodmulti", 0];

if (!(cursorTarget getVariable ["unconscious",false])) exitWith {hint "Du kannst hier nichts heilen!"};
life_ishealing = true;
[[],"life_fnc_medichlwed",cursorTarget,false] spawn life_fnc_MP;
player playActionNow "Medic";
sleep 9;
player playActionNow "Medic";
life_ishealing = false;