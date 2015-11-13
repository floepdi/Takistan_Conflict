#include <macro.h>
/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{

		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//ROB
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget =="Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];


		life_actions = life_actions + [player addAction["Brieftasche zeigen",life_fnc_showLicenseAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget']];

		life_actions = life_actions + [player addAction["Aktiviere Bombe",life_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];

		life_actions = life_actions + [player addAction["Sack überziehen",life_fnc_sack,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 5 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (cursorTarget getVariable ["ace_captives_isHandcuffed", false]) && !(cursorTarget getVariable "Sack")']];
		life_actions = life_actions + [player addAction["Sack selber entfernen",life_fnc_sackremove,"",0,false,false,"",'(player getVariable "Sack") && !(player getVariable "restrained")']];
		life_actions = life_actions + [player addAction["Sack entfernen",life_fnc_sackremove,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 5 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (cursorTarget getVariable "Sack")']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\bandage.paa'/> <t color ='#F5A9A9'>Selbst-Bandagieren",life_fnc_bandage,"",0,false,false,"",'(life_blood < 100) && speed player < 5 && (life_bloodmulti > 0) && !(life_ishealing) && (life_inv_bandage > 0)  && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\bandage.paa'/> <t color ='#A9F5BC'>Kamerad bandagieren",life_fnc_bandagemate,"",0,false,false,"",'!isNull cursorTarget && (cursorTarget getVariable ["blood",100] < 100) && (cursorTarget getVariable ["bloodmulti",0] > 0) && speed cursorTarget < 2 && speed player < 5 && !(life_ishealing) && (life_inv_bandage > 0) && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\kochsalz.paa'/> <t color ='#A9F5BC'>Kochsalz verabreichen",life_fnc_kochsalzmate,"",0,false,false,"",'!isNull cursorTarget && (cursorTarget getVariable ["blood",100] < 100)  && speed cursorTarget < 2 && speed player < 5 && !(life_ishealing) && (life_inv_kochsalz > 0) && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\morphin.paa'/> <t color ='#A9F5BC'>Morphin benutzen",life_fnc_morphin,"",0,false,false,"",'(((damage player > 0) OR (life_blood < 100)) && speed player < 5 && !(life_ishealing) && !(life_morphin_cd)) && (life_inv_morphin > 0) && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\epi.paa'/> <t color ='#FE2E2E'>Epinephrin-Kit benutzen",life_fnc_epimate,"",0,false,false,"",'!isNull cursorTarget  && (cursorTarget getVariable ["unconscious",false]) && speed cursorTarget < 2 && speed player < 5 && (life_inv_epikit > 0) && !(life_ishealing)']];
		life_actions = life_actions + [player addAction["Fahrzeug flippen",life_fnc_flipaction,"",0,false,false,"",'!isNull cursorTarget  && cursortarget isKindOf "Landvehicle"  && speed cursorTarget < 2 && speed player < 5 && (vectorUp cursorTarget select 2 < 0)']];

		};
	case independent:
	{
	life_actions = life_actions + [player addAction["Ausweis zeigen",life_fnc_showLicenseAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget']];
	life_actions = life_actions + [player addAction["<img size= '1' image='icons\bandage.paa'/> <t color ='#A9F5BC'>Patient bandagieren",life_fnc_medicbandage,"",0,false,false,"",'!isNull cursorTarget && (cursorTarget getVariable ["blood",100] < 100) && (cursorTarget getVariable ["bloodmulti",0] > 0) && speed cursorTarget < 2 && speed player < 5 && !(life_ishealing) && !(player getVariable ["unconscious",false])']];
	life_actions = life_actions + [player addAction["<img size= '1' image='icons\kochsalz.paa'/> <t color ='#A9F5BC'>Transfusion verabreichen",life_fnc_medictrans,"",0,false,false,"",'!isNull cursorTarget && (cursorTarget getVariable ["blood",100] < 100)  && speed cursorTarget < 2 && speed player < 5 && !(life_ishealing) && !(player getVariable ["unconscious",false])']];
	life_actions = life_actions + [player addAction["<img size= '1' image='icons\morphin.paa'/> <t color ='#A9F5BC'>Surgical-Kit benutzen",life_fnc_medicsurgical,"",0,false,false,"",'(damage cursorTarget >= 0.45) && speed player < 5 && !(life_ishealing) && !(player getVariable ["unconscious",false])']];
	life_actions = life_actions + [player addAction["<img size= '1' image='icons\epi.paa'/> <t color ='#FE2E2E'>Herz-Lungen-Massage",life_fnc_medichlw,"",0,false,false,"",'!isNull cursorTarget  && (cursorTarget getVariable ["unconscious",false]) && speed cursorTarget < 2 && speed player < 5 && !(life_ishealing)']];
	};

	case west: {
    // ...
    //Seize PlayerWeapons
    life_actions = life_actions + [player addAction["Ins Gefängnis stecken",life_fnc_showArrestDialog,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && !(side cursorTarget == WEST) && (cursorTarget getVariable ["ace_captives_isHandcuffed", false]) && ((player distance (getMarkerPos "Correctional Facility_1") < 100) OR (player distance (getMarkerPos "cop_spawn_1") < 30) OR (player distance (getMarkerPos "cop_spawn_2") < 30))']];

    //...
	life_actions = life_actions + [player addAction["Objekte Beschlagnahmen",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["CamoNet_OPFOR_F","Land_Razorwire_F","Land_PortableLight_double_F","TapeSign_F","RoadBarrier_small_F","WeaponHolderSimulated","weaponholder","GroundWeaponHolder","Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F", "Land_Can_V3_F","Land_Money_F","Land_Suitcase_F"],3])>0']];

	life_actions = life_actions + [player addAction["Sack überziehen",life_fnc_sack,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 5 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (cursorTarget getVariable ["ace_captives_isHandcuffed", false]) && !(cursorTarget getVariable "Sack")']];
		life_actions = life_actions + [player addAction["Sack selber entfernen",life_fnc_sackremove,"",0,false,false,"",'(player getVariable "Sack") && !(player getVariable "restrained")']];
		life_actions = life_actions + [player addAction["Sack entfernen",life_fnc_sackremove,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 5 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (cursorTarget getVariable "Sack")']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\bandage.paa'/> <t color ='#F5A9A9'>Selbst-Bandagieren",life_fnc_bandage,"",0,false,false,"",'(life_blood < 100) && speed player < 5 && (life_bloodmulti > 0) && !(life_ishealing) && (life_inv_bandage > 0)  && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\bandage.paa'/> <t color ='#A9F5BC'>Kamerad bandagieren",life_fnc_bandagemate,"",0,false,false,"",'!isNull cursorTarget && (cursorTarget getVariable ["blood",100] < 100) && (cursorTarget getVariable ["bloodmulti",0] > 0) && speed cursorTarget < 2 && speed player < 5 && !(life_ishealing) && (life_inv_bandage > 0) && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\kochsalz.paa'/> <t color ='#A9F5BC'>Kochsalz verabreichen",life_fnc_kochsalzmate,"",0,false,false,"",'!isNull cursorTarget && (cursorTarget getVariable ["blood",100] < 100)  && speed cursorTarget < 2 && speed player < 5 && !(life_ishealing) && (life_inv_kochsalz > 0) && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\morphin.paa'/> <t color ='#A9F5BC'>Morphin benutzen",life_fnc_morphin,"",0,false,false,"",'(((damage player > 0) OR (life_blood < 100)) && speed player < 5 && !(life_ishealing) && !(life_morphin_cd)) && (life_inv_morphin > 0) && !(player getVariable ["unconscious",false])']];
		life_actions = life_actions + [player addAction["<img size= '1' image='icons\epi.paa'/> <t color ='#FE2E2E'>Epinephrin-Kit benutzen",life_fnc_epimate,"",0,false,false,"",'!isNull cursorTarget  && (cursorTarget getVariable ["unconscious",false]) && speed cursorTarget < 2 && speed player < 5 && (life_inv_epikit > 0) && !(life_ishealing)']];

	life_actions = life_actions + [player addAction["<t color='#00FF00'>Dienstausweis zeigen</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && player distance cursorTarget < 3.5 && isPlayer cursorTarget']];



	life_actions = life_actions + [player addAction["<t color='#FF0000'>Absperrband einpacken</t>",life_fnc_packUpBarrier,"",0,false,false,"",'
		_barrier = nearestObjects[getPos player, ["TapeSign_F"],3] select 0; !isNil "_barrier" && !isNil {(_barrier getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Strahler einpacken</t>",life_fnc_packUpStrahler,"",0,false,false,"",'
		_strahler = nearestObjects[getPos player, ["Land_PortableLight_double_F"],3] select 0; !isNil "_strahler" && !isNil {(_strahler getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Barriere einpacken</t>",life_fnc_packUpBarricade,"",0,false,false,"",'
		_barricade = nearestObjects[getPos player, ["RoadBarrier_small_F"],5] select 0; !isNil "_barricade" && !isNil {(_barricade getVariable "item")}']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>Spikes einpacken</t>",life_fnc_packupSpikes,"",0,false,false,"",'
		_spikes = nearestObjects[getPos player, ["Land_Razorwire_F"],5] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}']];


};

};