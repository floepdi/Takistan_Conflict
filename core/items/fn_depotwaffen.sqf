/*
    File: fn_depotwaffen.sqf
    Author: Jester

    Description:
    Geklaute Waffen aus dem Depot spawnen lassen
*/

//Close inventory
closeDialog 0;

_pos = position player;

_random = round (random 17);

switch (_random) do
{
	case 0:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_g36c", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_mas_556x45_Stanag", 5];
	};

	case 1:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["hlc_smg_mp5a2", 1];
		_weapon_holder addMagazineCargoGlobal ["hlc_30Rnd_9x19_B_MP5", 5];
	};
	case 2:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["hlc_smg_mp5a3", 1];
		_weapon_holder addMagazineCargoGlobal ["hlc_30Rnd_9x19_B_MP5", 5];
	};
  case 3:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["hlc_smg_mp5a4", 1];
		_weapon_holder addMagazineCargoGlobal ["hlc_30Rnd_9x19_B_MP5", 5];
	};
  case 4:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_hk416", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_mas_556x45_Stanag", 5];
	};
  case 5:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["srifle_mas_hk417", 1];
		_weapon_holder addMagazineCargoGlobal ["20Rnd_mas_762x51_Stanag", 5];
	};
  case 6:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_l119", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_mas_556x45_Stanag", 5];
	};
  case 7:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["srifle_mas_lrr", 1];
		_weapon_holder addMagazineCargoGlobal ["10Rnd_mas_338_Stanag", 5];
	};
  case 8:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_m16", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_mas_556x45_Stanag", 5];
	};
  case 9:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["srifle_mas_m24", 1];
		_weapon_holder addMagazineCargoGlobal ["5Rnd_mas_762x51_Stanag", 5];
	};
  case 10:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["LMG_mas_M249_F_d", 1];
		_weapon_holder addMagazineCargoGlobal ["200Rnd_mas_556x45_Stanag", 5];
	};
 case 11:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_m4", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_mas_556x45_Stanag", 5];
	};
 case 12:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_m4c", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_mas_556x45_Stanag", 5];
	};
 case 13:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_mk17", 1];
		_weapon_holder addMagazineCargoGlobal ["20Rnd_mas_762x51_Stanag", 5];
	};
 case 14:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["arifle_mas_mk16_l", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_mas_556x45_Stanag", 5];
	};
  case 15:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["hlc_rifle_SAMR", 1];
		_weapon_holder addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 5];
	};
 case 16:
	{
		_weapon_holder = createVehicle ["groundWeaponHolder", _pos, [], 0, "can_collide"];
		_weapon_holder addWeaponCargoGlobal ["srifle_mas_m110", 1];
		_weapon_holder addMagazineCargoGlobal ["20Rnd_mas_762x51_Stanag", 5];
	};

};

/*
adduniformcargo
addvestcargo
addmagazinecargo
addBackpackCargoGlobal
*/
//weapon1 = createVehicle ["groundweaponHolder",Position player,[], 0, "can_collide"] ;weapon1 addweaponcargo ["srifle_mas_hk417_d", 1];