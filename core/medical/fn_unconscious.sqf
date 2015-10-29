/*
    File: fn_bandage
    Author: Phil

    Description:
    setzt den Spieler bewusstlos
*/
	private["_countdown"];

			player playMove "AinjPpneMstpSnonWnonDnon";
			player setVariable ["unconscious",true, true];
			_countdown = 120;

			while {player getVariable ["unconscious",false]} do {
			"colorCorrections" ppEffectAdjust [0.7, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.1, 0, 0, 1.0]];  "colorCorrections" ppEffectCommit 1;  "colorCorrections" ppEffectEnable TRUE;
			"dynamicBlur" ppEffectEnable true; "dynamicBlur" ppEffectAdjust [5]; "dynamicBlur" ppEffectCommit 2; enableCamShake true;
			while {player getVariable ["unconscious",false]} do { onEachFrame {if(player getVariable "unconscious") then {player switchCamera "Internal"; if (life_blood > 0)} exitWith {};};};
			if  (life_blood > 0) then {
			player switchMove "amovppnemstpsraswrfldnon";
			player setVariable ["unconscious",false, false];
			player setVariable ["olddamage", 0 , false];
 			player setVariable ["olddamage2", 0, false];
 			player setVariable ["olddamage3", 0 , false];
 			};
 			_countdown = _countdown - 1;
 			sleep 1;
 			if (_countdown == 0) then {
 				player setDamage 1;
 				player setVariable ["unconscious",false, false];
				player setVariable ["olddamage", 0 , false];
	 			player setVariable ["olddamage2", 0, false];
	 			player setVariable ["olddamage3", 0 , false];
 			}
 			};