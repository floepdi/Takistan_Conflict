/*
    File: fn_depotwaffen.sqf
    Author: Jester

    Description:
    Geklaute Waffen spawnen lassen
*/

//Close inventory
closeDialog 0;

weapon1 = createVehicle ["groundweaponHolder",Position player,[], 0, "can_collide"] ;weapon1 addweaponcargo ["srifle_mas_hk417_d", 1];
ammo1   = createVehicle ["groundweaponHolder",Position player,[], 0, "can_collide"] ;ammo1 addmagazinecargo  ["20Rnd_mas_762x51_Stanag", 5];

/*
adduniformcargo 
addvestcargo
*/