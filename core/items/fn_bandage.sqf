/*
    File: fn_bandage
    Author: Phil

    Description:
    heilt eine Blutung
*/
private ["_mate"];
_mate = _this select 0;
if (isNil "_mate") then {_mate = 0};


if (_mate == player) then {
		if (life_bloodmulti == 0) exitWith {hint "Du kannst hier nichts heilen!"};
			if ([false,"bandage",1] call life_fnc_handleInv) then {
			life_ishealing = true;
			if (life_bloodmulti >=1) then {
			titleText ["Diese Bandage heilt eine Blutung", "PLAIN",5];
			player playActionNow "Medic";
			sleep 10;
			titleText ["", "PLAIN",5];


			if (life_bloodmulti ==1) then {
			life_bloodmulti = 0;
			player setVariable ["olddamage", 2, false];
			};

			if (life_bloodmulti ==2) then {
			life_bloodmulti = 1;
			player setVariable ["olddamage2", 0, false];
			};

			if (life_bloodmulti == 3) then {

			life_bloodmulti = 2;
			player setVariable ["olddamage3", 0, false];
			};
			titleText ["Du hast eine Blutung gestoppt", "PLAIN",5];
			sleep 2;
			titleText ["", "PLAIN",5];
			life_ishealing = false;
			};
		}
		else
		{
			hint "Du hast keine Bandage übrig!";
		};

}
else
{
		if (life_bloodmulti == 0) exitWith {};

		if (life_bloodmulti >=1) then {
		titleText ["Dein Kamerad versorgt dich mit einer Bandage", "PLAIN",5];
		sleep 10;
		titleText ["", "PLAIN",5];

		if (life_bloodmulti ==1) then {
		life_bloodmulti = 0;
		player setVariable ["olddamage", 2, false];
		};

		if (life_bloodmulti ==2) then {
		life_bloodmulti = 1;
		player setVariable ["olddamage2", 0, false];
		};

		if (life_bloodmulti == 3) then {

		life_bloodmulti = 2;
		player setVariable ["olddamage3", 0, false];
		};
		titleText ["Dein Kamerad hat eine Blutung gestoppt!", "PLAIN",1];
		sleep 5;
		titleText ["", "PLAIN",5];
		};

};