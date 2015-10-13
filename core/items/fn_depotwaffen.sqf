/*
    File: fn_depotwaffen.sqf
    Author: Jester

    Description:
    Geklaute Waffen aus dem Depot spawnen lassen
*/

//Close inventory
closeDialog 0;

_pos = position player;

_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
_weapon_holder addWeaponCargoGlobal ["srifle_mas_hk417_d", 1];
_weapon_holder addMagazineCargoGlobal ["20Rnd_mas_762x51_Stanag", 5];


/*
adduniformcargo
addvestcargo
addmagazinecargo
addBackpackCargoGlobal
*/
//weapon1 = createVehicle ["groundweaponHolder",Position player,[], 0, "can_collide"] ;weapon1 addweaponcargo ["srifle_mas_hk417_d", 1];