/*
    File: fn_bandage
    Author: Phil

    Description:
    heilt alle Blutungen
*/
if (life_bloodmulti == 0) exitWith {hint "Du kannst hier nichts heilen!"};

if (life_bloodmulti > 0) then {
titleText ["Dieses Trauma-Kit heilt gerade alle Blutungen", "PLAIN",10];
sleep 30;
titleText ["", "PLAIN"];



life_bloodmulti = 0;
player setVariable ["olddamage3", 0, false];
player setVariable ["olddamage2", 0, false];
player setVariable ["olddamage", 0, false];
};
