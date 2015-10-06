/*
	File: fn_Transport.sqf
	Author: synced-gaming.de - Phil

	Description:
	Transportquests vom Feinsten
*/
private["_user","_reward","_paket","_progress","_nr","_r","_pos","_level"];
disableSerialization;
_paket = _this select 0;
_progress = _this select 1;
_nr = _this select 2;
_user = player;
_p = (_user getVariable["transport",0]);
if (side _user != civilian) exitWith { hint "Mit dir will ich nichts zutun haben, Soldat!" };
if ((_progress == 0) AND (_p != 0)) exitWith {hint "Du hast bereits eine Mission"};

if (1 == _paket) then // Jobs für Anfänger
	{
		if (0 == _progress) then // Laufbursche 40%, Hungersnot 40%, Audienz beim Lord 20%
			{
				_r = random 100;
				if (_r < 40) then {_nr = 1;};
				if ((_r > 40) AND (_r < 80)) then {_nr = 2;};
				if (_r > 80) then {_nr = 3;};
			};


			if (_nr == 1) then //Laufbursche
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								if ([true,"pistolenlieferung",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 11, false];
								[format[" Du bist der Neue, oder?"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Abdul braucht neue Ware in seinem Laden."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Bring ihm diese Pistolen, Bruder!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Laufbursche "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Kiste mit Pistolen erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_1_1" setMarkerAlphaLocal 1;
								}
								else
								{
									hint "Du hast nicht genug Platz in deinem Z-Inventar";
								};
							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 11) then
								{
									if ([false,"pistolenlieferung",1] call life_fnc_handleInv) then
									{
										_user setVariable ["transport", 0, false];
										[format["sukran Bruder, die hatten mich fast schon leergekauft."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										"Transport_1_1" setMarkerAlphaLocal 0;
										_reward  = 10000;
										life_cash = life_cash + _reward;
										_level = 10;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + 10000$ <br /> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
									};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";

								};
							};
					};
			};
			if (_nr == 2) then //Hungersnot
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								if ([true,"nahrungsmittel",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 12, false];
								[format[" Diese ungläubigen Hunde haben die Versorgung unserer Familien abgeschnitten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Loy Manara hungert! Diese Vorräte müssen dort verteilt werden!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Hungersnot "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Kiste mit Nahrungsmitteln erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_1_2" setMarkerAlphaLocal 1;
								}
								else
								{
									hint "Du hast nicht genug Platz in deinem Z-Inventar";
								};
							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 12) then
								{
									if ([false,"nahrungsmittel",1] call life_fnc_handleInv) then
									{
										_user setVariable ["transport", 0, false];
										[format["Dich muss Allah schicken! Lange hätten wir es nicht mehr ausgehalten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										"Transport_1_2" setMarkerAlphaLocal 0;
										_level = 20;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
									};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";
								};
							};
					};
			};
			if (_nr == 3) then //Audienz beim Lord
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								if ([true,"munitionslieferung",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 13, false];
								[format[" Der Warlord braucht dringend Munition. Bring ihm diese Kisten umgehend!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Er hasst Unpünktlichkeit, also solltest du in einer halben Stunde da sein, sonst könnte es deiner Familie übel ergehen."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Allahu Akbar, Bruder!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Audienz beim Lord "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Kiste mit Munition erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_1_3" setMarkerAlphaLocal 1;
								}
								else
								{
									hint "Du hast nicht genug Platz in deinem Z-Inventar";
								};
							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 13) then
								{
									if ([false,"munitionslieferung",1] call life_fnc_handleInv) then
									{
										_user setVariable ["transport", 0, false];
										[format["Einen guten Mann hat Mehmet mir da geschickt."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										[format["Wenn du weiterhin so zuverlässig bist werde ich den ein oder anderen Job für dich haben."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										"Transport_1_3" setMarkerAlphaLocal 0;
										_reward  = 15000;
										life_cash = life_cash + _reward;
										_level = 15;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + 15000$ <br /> + 150 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
									};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";
								};
							};
					};
			};
		};

if (2 == _paket) then // Jobs für Fortgeschrittene
	{
		if (life_level < 10) exitWith {hint "Diese Quests sind erst ab Level 10!";};
		if (0 == _progress) then // Mehr Aks für den Heiligen Krieg 45%, Diebesgut 45%, Nachschub für unsere Offiziere 10%
			{
				_r = random 100;
				if (_r < 45) then {_nr = 1;};
				if ((_r > 45) AND (_r < 90)) then {_nr = 2;};
				if (_r > 90) then {_nr = 3;};
			};


			if (_nr == 1) then //Mehr Aks für den Heiligen Krieg
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								if ([true,"aklieferung",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 21, false];
								[format[" Abdul, der Waffenhändler, hat frische Kämpfer angeworben und braucht neue Ausrüstung."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Bring ihm ein paar alte AKs, damit unsere Brüder die Besatzer vertreiben können."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Mehr AKs für den Heiligen Krieg "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Kiste mit AKs erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_2_1" setMarkerAlphaLocal 1;
								}
								else
								{
									hint "Du hast nicht genug Platz in deinem Z-Inventar";
								};
							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 21) then
								{
									_reward = "rhs_weap_ak74m_folded";
									if !((player canAddItemtoBackpack _reward) OR (PrimaryWeapon Player == "")) exitWith {hint "Mach zuerst Platz für eine Waffe, um die Belohnung entgegen zu nehmen"};
										if ([false,"aklieferung",1] call life_fnc_handleInv) then
										{
											_user setVariable ["transport", 0, false];
											[format["Allah segne dich, der heilige Krieg kann nun weitergehen."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
											sleep 6;
											"Transport_2_1" setMarkerAlphaLocal 0;
											_level = 25;
											["Level_Prof",_level,1] call life_fnc_addLevel;
											[] call life_fnc_profSetup;
											[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + AK74M (Folded) <br /> + 250 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

											if (PrimaryWeapon Player != "") then
											{
												player addItemToBackpack _reward;
												player addItemToUniform "rhs_30Rnd_545x39_AK";
												player addItemToUniform "rhs_30Rnd_545x39_AK";
											}
											else
											{
												 player addWeapon _reward;
												 player addItemToUniform "rhs_30Rnd_545x39_AK";
												 player addItemToUniform "rhs_30Rnd_545x39_AK";
											};
										};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";

								};
							};
					};
			};
			if (_nr == 2) then //Diebesgut
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								if ([true,"gestohlenevisiere",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 22, false];
								[format[" Meine Jungs haben gestern einen Konvoi der U.S. Army gekapert."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format["Mit diesen Visieren können unsere Kämpfer sicher einige Ungläubige töten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Bring die Ware ins Lager, aber lass dich nicht erwischen!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Diebesgut "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Kiste mit Visieren erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_2_2" setMarkerAlphaLocal 1;
								}
								else
								{
									hint "Du hast nicht genug Platz in deinem Z-Inventar";
								};
							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 22) then
								{
									_reward = "optic_Aco";
									if !(player canAddItemtoBackpack _reward) exitWith {hint "Mach zuerst Platz für eine Waffe, um die Belohnung entgegen zu nehmen"};
									if ([false,"gestohlenevisiere",1] call life_fnc_handleInv) then
									{
										_user setVariable ["transport", 0, false];
										[format["Hätte Allah gewollt, dass die Amis die verwenden, würde kein Blut auf der Linse kleben. <br /> Danke, Bruder!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										"Transport_2_2" setMarkerAlphaLocal 0;
										player addItemToBackpack _reward;
										_reward  = 20000;
										life_cash = life_cash + _reward;
										_level = 25;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'>+ ACO (rot) <br /> + 20000$ <br /> + 250 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

									};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";
								};


							};
					};
			};
			if (_nr == 3) then //Nachschub für unsere Offiziere
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								if ([true,"uniformen",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 23, false];
								[format[" Wer aussieht wie ein räudiger Hund, dem wird niemand folgen."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Ein Offizier muss auch als solcher erkennbar sein."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Bring diese neuen Uniformen zu Feruz, damit er sie umschneidern kann!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Nachschub für unsere Offiziere "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Kiste mit Uniformen erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_2_3" setMarkerAlphaLocal 1;
								}
								else
								{
									hint "Du hast nicht genug Platz in deinem Z-Inventar";
								};

							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 23) then
								{
									if ([false,"uniformen",1] call life_fnc_handleInv) then
									{
									_user setVariable ["transport", 0, false];
									[format["Dabei wollte ich grad Feierabend machen..."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
									sleep 6;
									"Transport_2_3" setMarkerAlphaLocal 0;
									_reward  = 30000;
									life_cash = life_cash + _reward;
									_level = 300;
									["Level_Prof",_level,1] call life_fnc_addLevel;
									[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + 30000$ <br /> + 300 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

									};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";
								};
							};
					};
			};
		};



if (3 == _paket) then // Schwere Jobs
	{
		if (life_level < 25) exitWith {hint "Diese Quests sind erst ab Level 25!";};
		if (0 == _progress) then // Der Heilige Krieg 50%, Niemand möchte Tripper 50%
			{
				_r = random 100;
				if (_r < 50) then {_nr = 1;};
				if (_r > 50) then {_nr = 2;};
			};


			if (_nr == 1) then //Der Heilige Krieg
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								if ([true,"koran",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 31, false];
								[format[" Naja, da wir ohne Religion keinen Krieg hätten, tun wir wenigstens so als würde uns das hier interessieren. "],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Bring diese Fetzen hier nach Rasman, zum Moschee Turm, damit sie bei der nächsten Bücherverbrennung nicht mit verschwinden."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Der Heiligen Krieg "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Koran erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_3_1" setMarkerAlphaLocal 1;
								}
								else
								{
									hint "Du hast nicht genug Platz in deinem Z-Inventar";
								};

							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 31) then
								{
									if ([false,"koran",1] call life_fnc_handleInv) then
										{
											_user setVariable ["transport", 0, false];
											[format["Allah dankt dir für das Sichern der Heiligen Schriften!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
											sleep 6;
											"Transport_3_1" setMarkerAlphaLocal 0;
											_reward  = 30000;
											life_cash = life_cash + _reward;
											_level = 50;
											["Level_Prof",_level,1] call life_fnc_addLevel;
											[] call life_fnc_profSetup;
											[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + 30000$ <br /> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

										};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";

								};
							};
					};
			};

			if (_nr == 2) then //Niemand möchte Tripper
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								_user setVariable ["transport", 321, false];
								[format[" Die Dreilochstute hier neben mir verpasst unseren ganzen Männern Tripper!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" wenn die hier schon nur am Vögeln ist, vergewisser dich wenigstens, dass Sie aufhört uns alle damit anzustecken."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Besorg der Natomatratze ein paar Kondome vom Dirty Doc!"],0,0,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Niemand möchte Tripper <br /> (Teil 1) "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_3_2_1" setMarkerAlphaLocal 1;

							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 321) then
								{
									if ([true,"kondome",1] call life_fnc_handleInv) then
									{
										_user setVariable ["transport", 322, false];
										[format[" In die Bakterienwanne würd ich meine Fleischpeitsche zwar nicht schlagen, "],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										[format[" aber wenn dir der Schafsdarm keine Krankheit gibt, dann überlebst du auch das Flittchen."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										[format[" Die Verhütungschance liegt übrigens nur bei 40%, also viel Glück mit der Ische."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										[format[" Neue Quest - Niemand möchte Tripper <br /> (Teil 2) "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Kondome erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
										"Transport_3_2_1" setMarkerAlphaLocal 0;
										"Transport_3_2_2" setMarkerAlphaLocal 1;
									}
									else
									{
										hint "Du hast nicht genug Platz in deinem Z-Inventar";
									};
								}
								else
								{
									hint "Du kannst hier nichts abholen";
								};
							};

					if (_progress == 2) then
							{
							_p = _user getVariable "transport";
								if (_p == 322) then
								{
									if ([false,"kondome",1] call life_fnc_handleInv) then
									{
										_user setVariable ["transport", 0, false];
										[format["Oh, was ist das denn? Nein, ich benutze keine Kondome, das fühlt sich nicht richtig an."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										"Transport_3_2_2" setMarkerAlphaLocal 0;
										_reward  = 50000;
										life_cash = life_cash + _reward;
										_level = 350;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + 50000$ <br /> + 350 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

									};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";
								};
							};
					};
				};
			};
/*
if (4 == _paket) then // Schwächung der Nato
	{
		if (life_level < 40) exitWith {hint "Mit Neulingen mache ich keine Geschäfte";};
		if (0 == _progress) then //// Schwächung der Nato 100%
			{
				_r = random 100;
				if (_r < 101) then {_nr = 1;};
			};


			if (_nr == 1) then // Schwächung der Nato
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Missionstart
							{
								_user setVariable ["transport", 31, false];
								[format[" Du siehst mir aus wie ein fähiger Mann. "],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Wenn du mir eine Kiste mit schweren Waffen beschaffen kannst, dann wird es sich sicher für dich lohnen. "],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Schwächung der Nato "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + Koran erhalten <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_3_1" setMarkerAlphaLocal 1;

							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 31) then
								{
									if ([false,"koran",1] call life_fnc_handleInv) then
										{
											_user setVariable ["transport", 0, false];
											[format["Allah dankt dir für das Sichern der Heiligen Schriften!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
											sleep 6;
											"Transport_3_1" setMarkerAlphaLocal 0;
											_reward  = 30000;
											life_cash = life_cash + _reward;
											_level = 50;
											["Level_Prof",_level,1] call life_fnc_addLevel;
											[] call life_fnc_profSetup;
											[format ["<t align='left'><t size='0.8' font='Zeppelin33' shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6' font='Zeppelin33' shadow='1' color='#EFFBEF'> + 30000$ <br /> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

										};
								}
								else
								{
									hint "Du kannst hier nichts abgeben";

								};
							};
					};
			};
		};


	};
	case 4: //Mehr Aks für den Heiligen Krieg
	{

	};
	case 5: //Diebesgut
	{

	};
	case 6: //Nachschub für unsere Offiziere
	{

	};
	case 7: //Der Heilige Krieg
	{

	};
	case 8: //Niemand möchte Tripper
	{

	};
	case 9: //Schwächung der Nato
	{

	};
	case 10: //Stullen Andi möchte seine Dörte
	{

	};
 */
