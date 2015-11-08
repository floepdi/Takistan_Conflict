/*
	File: fn_Quest.sqf
	Author: synced-gaming.de - Phil

	Description:
	Questreihe
*/
private["_user","_reward","_paket","_progress","_nr","_r","_pos","_level"];
disableSerialization;
_reihe = _this select 0;
_progress = _this select 1;
_nr = _this select 2;
_user = player;
_p = (_user getVariable["quest",0]);
if (side _user != civilian) exitWith { hint "Mit dir will ich nichts zutun haben, Soldat!" };
if ((_progress == 0) AND (_p != 0)) exitWith {hint "Du hast bereits eine Mission"};


if ("schakaleins" == _reihe) then
{
	if (_nr == 1) then { // Ein neuer Anfang?
		if ((side _user) == civilian) then {
			if (_progress == 0) then{
				playSound "schakaleins_1_1_0";
				"schakaleins_1_1_0" setMarkerAlphaLocal 1;
				"Terroristenanwärter_1" setMarkerAlphaLocal 0;
				"Terroristenanwärter_2" setMarkerAlphaLocal 0;
				"Terroristenanwärter" setMarkerAlphaLocal 0;
				[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ein neuer Anfang?<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Lass dich als Terrorist anwerben! <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
				["Quest_Prof",1,1] call life_fnc_addLevel;
				[] call life_fnc_profSetup;
					player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Ein neuer Anfang
                                                Lass dich als Terrorist anwerben!
								"
						]
					];
				};
				if (_progress == 1) then{
				if (life_quest == 1) then {

					playSound "schakaleins_1_1_1";
					"schakaleins_1_1_0" setMarkerAlphaLocal 0;
					"schakaleins_1_1_1" setMarkerAlphaLocal 1;
					[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ein neuer Anfang? - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + 100$ <br /> + Quest: Nachschub freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
					["Level_Prof",100,1] call life_fnc_addLevel; // Erfahrung
          			        life_cash = life_cash + 100; // Geld
					["Quest_Prof",1,1] call life_fnc_addLevel;
					[] call life_fnc_profSetup;
					player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Ein neuer Anfang - Abgeschlossen!
                                                Neue Quest: Nachschub
								"
						]
					];
				};
				};
			};
		};

		if (_nr == 2) then { // Nachschub
		if ((side _user) == civilian) then {
			if (_progress == 0) then{
				if (life_quest == 2) then {
				playSound "schakaleins_1_2_0";
				"schakaleins_1_1_1" setMarkerAlphaLocal 0;
				"schakaleins_1_2_0" setMarkerAlphaLocal 1;
				[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Nachschub<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Erledige 3 Anfänger-Transporte für mich! <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
				["Quest_Prof",1,1] call life_fnc_addLevel;
				[] call life_fnc_profSetup;
					player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Nachschub
                                                Erledige 3 Transporte für mich
								"
						]
					];
				};
			};
				if (_progress == 1) then{
				if (life_quest == 3 && life_questinfo == 3) then {
					_reward = "arifle_mas_ak74";
					if !((player canAddItemtoBackpack _reward) OR (PrimaryWeapon Player == "")) exitWith {hint "Mach zuerst Platz für eine Waffe, um die Belohnung entgegen zu nehmen"};
					playSound "schakaleins_1_2_1";
					"schakaleins_1_2_0" setMarkerAlphaLocal 0;
					"schakaleins_1_2_1" setMarkerAlphaLocal 1;
					[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Nachschub - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 300 Erfahrung <br /> + AK-74 <br /> + Questreihe: 69 Blonde Schönheiten freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
					["Level_Prof",300,1] call life_fnc_addLevel;
          			        ["Quest_Prof",1,1] call life_fnc_addLevel;
					["QuestInfo_Prof",0,0] call life_fnc_addLevel;
					[] call life_fnc_profSetup;
					if (PrimaryWeapon Player != "") then
											{
												player addItemToBackpack _reward;
												player addItemToUniform "30Rnd_mas_545x39_mag";
												player addItemToUniform "30Rnd_mas_545x39_mag";
											}
											else
											{
												 player addWeapon _reward;
												 player addItemToUniform "30Rnd_mas_545x39_mag";
												 player addItemToUniform "30Rnd_mas_545x39_mag";
											};
					player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Nachschub - Abgeschlossen!
                                                Neue Questreihe: 69 Blonde Schönheiten
								"
						]
					];
				}
				else
				{
 				hint "Erledige erst 3 Transporte!"
				};
			};
		};
	};
};

if ("blond" == _reihe) then // 69 Blonde Schönheiten
	{
			if (_nr == 1) then //Der Fremde
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then
							{
							if (life_quest == 4) then {
								playsound "blond_1_1_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Fremde<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Gehe zum Eremiten! <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaleins_1_2_1" setMarkerAlphaLocal 0;
								"blond_1_1_0" setMarkerAlphaLocal 1;
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Der Fremde
                                                Gehe zum Eremiten
								"
						]
					];
								};
							};
					if (_progress == 1) then
							{
							if (life_quest == 5) then
								{
										 playsound "blond_1_1_1";
										"blond_1_1_0" setMarkerAlphaLocal 0;
										"blond_1_1_1" setMarkerAlphaLocal 1;
										["Level_Prof",100,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Fremde - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Quest: Geschichtenerzähler freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
                    player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Der Fremde - Abgeschlossen!
                                                Neue Quest: Geschichtenerzähler
								"
						]
					];

								};
							};
					};
			};
			if (_nr == 2) then //Geschichtenerzähler
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 2 0
							{
								if (life_quest == 6) then
								{
								playsound "blond_1_2_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Geschichtenerzähler - Abgeschlossen!<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Besorge ein Glas Ziegenmilch vom Markt! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_1_1" setMarkerAlphaLocal 0;
								"blond_1_2_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Geschichtenerzähler
                                                Bringe dem Eremiten ein Glas Ziegenmilch vom Markt
								"
						]
					];

								};
							};
					if (_progress == 1) then //Questabgabe 1 2 1
							{
								if (life_quest == 7) then
								{
									if ([false,"ziegenmilch",1] call life_fnc_handleInv) then
									{
										playsound "blond_1_2_1";
										"blond_1_2_0" setMarkerAlphaLocal 0;
										"blond_1_2_1" setMarkerAlphaLocal 1;
										["Level_Prof",150,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Geschichtenerzähler - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 150 Erfahrung <br /> + Quest: Das Paradies freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
									  player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Geschichtenerzähler - Abgeschlossen!
                                                Neue Quest: Das Paradies
								"
						]
					];

									}
								else
								{
									hint "Besorg zuerst Ziegenmilch für mich!";
                 				};
							};
						};
					};
			};
			if (_nr == 3) then //Das Paradies
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 3 0
							{
								if (life_quest == 8) then
								{
								playsound "blond_1_3_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Paradies<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Gehe zum Dorfältestenen! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_2_1" setMarkerAlphaLocal 0;
								"blond_1_3_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Das Paradies
                                                Gehe zum Imam
								"
						]
					];
								};
							};
					if (_progress == 1) then //Questabgabe 1 3 1
							{
								if (life_quest == 9) then

										playsound "blond_1_3_1";
										"blond_1_3_0" setMarkerAlphaLocal 0;
										"blond_1_3_1" setMarkerAlphaLocal 1;
										["Level_Prof",100,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Paradies - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Quest: Vorbereitungen freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
                    player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Das Paradies - Abgeschlossen!
                                                Neue Quest: Vorbereitungen
								"
						]
					];
								};
							};
			};


			if (_nr == 4) then //Vorbereitungen
			{
				if (life_level < 2) exitWith {hint "Diese Quest ist erst ab Level 2 verfügbar!"};
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 4 0
							{
								if (life_quest == 10) then
								{
								playsound "blond_1_4_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Vorbereitungen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Stelle Sprengstoff her! <br /> + Besorge einen Guertel beim Markt! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_3_1" setMarkerAlphaLocal 0;
								"blond_1_4_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Vorbereitungen
                                                Gehe zum Markt und hole einen Gürtel. Besorge dann Sprengstoff.
								"
						]
					];
								};
							};
					if (_progress == 1) then //Questabgabe 1 4 1
							{
							_p = _user getVariable "quest";
								if (life_quest == 11) then
								{
										if ([false,"guertel",1] call life_fnc_handleInv) then
										{
										[true,"guertel",1] call life_fnc_handleInv;
										if ([false,"explosive",1] call life_fnc_handleInv) then
										{
										[true,"explosive",1] call life_fnc_handleInv;

										playsound "blond_1_4_1";
										//Marker
										"blond_1_4_0" setMarkerAlphaLocal 0;
										"blond_1_4_1" setMarkerAlphaLocal 1;
										["Level_Prof",400,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										life_cash = life_cash + 250;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Vorbereitungen - Abgeschlossen! <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 250$ <br /> + 400 Erfahrung <br /> + Quest: 69 Blonde Schönheiten freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
										 player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Vorbereitungen - Abgeschlossen!
                                                Neue Quest: 69 Blonde Schönheiten
								"
						]
					];
										}
										else
										{
										hint "Besorg zuerst Sprengstoff!";
                  						};
										}
										else
										{
										hint "Besorg zuerst einen Gürtel";
										};
							};
					};
			};
		};
			if (_nr == 5) then //72 Jungfrauen
			{
				if (life_level < 2) exitWith {hint "Diese Quest ist erst ab Level 2 verfügbar!"};
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 5 0
							{
								if (life_quest == 12) then
								{
								playsound "blond_1_5_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> 69 Blonde Schönheiten<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Baue eine Sprengstoffweste! <br /> + Sprenge dich samt eines Soldaten in die Luft!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_4_1" setMarkerAlphaLocal 0;
								"blond_1_5_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             69 Blonde Schönheiten
                                                Baue eine Sprengstoffweste. Wenn du überlebst sprenge dich in die Luft.
								"
						]
					];
								};
							};
					if (_progress == 1) then //Questabgabe 1 5 1
							{
								if (life_quest == 13) then
								{
										//Marker
										"blond_1_5_0" setMarkerAlphaLocal 0;
										"blond_1_5_1" setMarkerAlphaLocal 1;
										["Level_Prof",250,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										life_cash = life_cash + 150;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> 69 Blonde Schönheiten - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 150$ <br /> + 250 Erfahrung <br /> + Questreihe: Aus dem Leben eines Schakals Teil 2 freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
                    player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             69 Blonde Schönheiten - Abgeschlossen!
                                                Neue Questreihe: Aus dem Leben eines Schakals Part 2
								"
						]
					];
								};
							};
					};
			};
	};

if ("schakalzwei" == _reihe) then // Aus dem Leben eines Schakals Part 2
	{
	if (life_level < 3) exitWith {hint "Diese Quest ist erst ab Level 3 verfügbar!"};
		if ((side _user) == civilian) then {
			if (_nr == 1) then	{
				if (_progress == 0) then {
					if (life_quest == 14) then {
								playsound "schakalzwei_1_1_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Befreie uns von der Geißel<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Besorge 2 Dog-Tags!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_5_1" setMarkerAlphaLocal 0;
								"schakalzwei_1_1_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Befreie uns von der Geißel
                                                Sammle 2 Nato Dog Tags
								"
						]
					];


					};
				};
				if (_progress == 1) then {
					if (life_quest == 15) then {
						if ([false,"dogtag",2] call life_fnc_handleInv) then
								{
								playsound "schakalzwei_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
				                		["Level_Prof",800,1] call life_fnc_addLevel;
				                		life_cash = life_cash + 500;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Befreie uns von der Geißel - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 500$ <br /> + 800 Erfahrung <br /> + Questreihe: Für den Glauben aufrüsten freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakalzwei_1_1_0" setMarkerAlphaLocal 0;
								"schakalzwei_1_1_1" setMarkerAlphaLocal 1;
								player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Befreie uns von der Geißel - Abgeschlossen!
                                                Neue Questreihe: Für den Glauben aufrüsten
								"
						]
					];
								}
								else
								{
								hint "Besorg zuerst zwei DogTags!";
     							};

					};
				};
			};
		};
	};
if ("glauben" == _reihe) then // Für den Glauben aufrüsten
	{
		if ((side _user) == civilian) then { // nicht modifizieren
			if (_nr == 1) then	{ // nicht modifizieren
        if (life_level < 4) exitWith {hint "Diese Quest ist erst ab Level 4 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 16) then { // um 1 erhöhen
								playsound "glauben_1_1_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Erweiterung deines Fuhrparks<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Kaufe dir einen GAZ-24!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakalzwei_1_1_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"glauben_1_1_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Erweiterung deines Fuhrparks
                                                Kaufe dir einen GAZ-24
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if (life_quest == 17) then {
					_vehiclecount = count life_vehicles;
					for "_x" from 0 to _vehiclecount do{
					_currentcar = life_vehicles select _x;
					if (_currentcar isKindOf "RDS_Gaz24_Civ_01") exitWith {player setVariable ["gazquest",true];};
					};
					if (player getVariable ["gazquest",false]) then{
								// TO DO
								playsound "glauben_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
                						["Level_Prof",250,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Erweiterung deines Fuhrparks - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 250 Erfahrung <br /> + Quest: Dunkles Geheimnis freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_1_0" setMarkerAlphaLocal 0;
								"glauben_1_1_1" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Erweiterung deines Fuhrparks - Abgeschlossen!
                                                Neue Quest: Dunkles Geheimnis
								"
						]
					];
								};

					};
				};
			};


        if (_nr == 2) then	{ // nicht modifizieren
        if (life_level < 5) exitWith {hint "Diese Quest ist erst ab Level 5 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 18) then { // um 1 erhöhen
								playsound "glauben_1_2_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Dunkles Geheimnis<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Besorge dir eine Map-Flashlight!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_1_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"glauben_1_2_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Dunkles Geheimnis
                                                Besorge dir eine Mapflash
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if (life_quest == 19) then {
						if (("ACE_Flashlight_XL50" in uniformItems player) OR ("ACE_Flashlight_XL50" in vestItems player) OR ("ACE_Flashlight_XL50" in backpackItems player)) then {
								playsound "glauben_1_2_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
                						["Level_Prof",300,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Dunkles Geheimnis - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 300 Erfahrung <br /> + Quest: Dope für den Kampf freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_2_0" setMarkerAlphaLocal 0;
								"glauben_1_2_1" setMarkerAlphaLocal 1;
							}
							else
							{
								hint "Du hast noch kein Map-Flashlight dabei!";
                                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Dunkles Geheimnis - Abgeschlossen!
                                                Neue Quest: Dope für den Kampf
								"
						]
					];
							};
						};
					};
				};





       if (_nr == 3) then	{ // nicht modifizieren
        if (life_level < 6) exitWith {hint "Diese Quest ist erst ab Level 6 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 20) then { // um 1 erhöhen
								playsound "glauben_1_3_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Dope für den Kampf<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ farme Haschisch und gib es im Terroristenlager ab"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_2_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"glauben_1_3_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Dope für den Kampf
                                                Farme Haschisch und gib es im Terroristenlager ab
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if (life_quest == 21) then {
							if ([false,"marijuana",5] call life_fnc_handleInv) then // TO DO MENGE
								{
								playsound "glauben_1_3_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
				                		["Level_Prof",750,1] call life_fnc_addLevel;
				                		life_cash = life_cash + 500;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Dope für den Kampf - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 500$ <br /> + 750 Erfahrung <br /> + Questreihe: Propagandastudio freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_3_0" setMarkerAlphaLocal 0;
								"glauben_1_3_1" setMarkerAlphaLocal 1;
								player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             DOpe für den Kampf - Abgeschlossen!
                                                Neue Questreihe: Propagandastudio
								"
						]
					];
								}
								else
								{
								hint "Du hast noch nicht genug Haschisch dabei!";
                				};
							};
					};
			};

	};
};

if ("propaganda" == _reihe) then // Propagandastudio
	{
		if ((side _user) == civilian) then { // nicht modifizieren
			if (_nr == 1) then	{ // nicht modifizieren
        if (life_level < 7) exitWith {hint "Diese Quest ist erst ab Level 7 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 22) then { // um 1 erhöhen
								playsound "propaganda_1_1_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Filmreif<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ bringe eine UAZ zum Terroristenlager!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_3_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"propaganda_1_1_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Filmreif
                                                Bringe einen UAZ zum Terroristenlager
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if (life_quest == 23) then {
						_cars = position player nearObjects ["UAZ_Unarmed", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {
								// TO DO
								playsound "propaganda_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
                						["Level_Prof",500,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Filmreif - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 500 Erfahrung <br /> + Quest: Teures Terroristenleben freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_1_0" setMarkerAlphaLocal 0;
								"propaganda_1_1_1" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Filmreif - Abgeschlossen!
                                                Neue Quest: Teures Terroristenleben
								"
						]
					];

							}
							else
							{
								hint "Besorg zuerst einen UAZ";
							};

					};
				};
			};


        if (_nr == 2) then	{ // nicht modifizieren
        if (life_level < 8) exitWith {hint "Diese Quest ist erst ab Level 8 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 24) then { // um 1 erhöhen
								playsound "propaganda_1_2_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Teures Terroristenleben<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ kaufe eine AK 74"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_1_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"propaganda_1_2_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Teures Terroristenleben
                                                Kaufe eine AK 74
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if (life_quest == 25) then {
						if (("arifle_mas_ak74" in uniformItems player) OR ("arifle_mas_ak74" in vestItems player) OR ("arifle_mas_ak74" in backpackItems player) OR ("arifle_mas_ak74" in weapons player)) then {
								playsound "propaganda_1_2_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
                						["Level_Prof",750,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Teures Terroristenleben - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 750 Erfahrung <br /> + Quest: Moviestar freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_2_0" setMarkerAlphaLocal 0;
								"propaganda_1_2_1" setMarkerAlphaLocal 1;
								}
								else
								{
								hint "Du hast keine AK-74 dabei!";
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Teures Terroristenleben - Abgeschlossen!
                                                Neue Quest: Moviestar
								"
						]
					];
								};
					};
				};
	};


       if (_nr == 3) then	{ // nicht modifizieren
        if (life_level < 9) exitWith {hint "Diese Quest ist erst ab Level 9 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 26) then { // um 1 erhöhen
								playsound "propaganda_1_3_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Moviestar<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Stell dich 10 Sekunden vor die Kamera"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_2_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"propaganda_1_3_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Moviestar
                                                Stell dich 10 Sekunden vor die Kamera und sprich deine Botschaft
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if (life_quest == 27) then {
								titleText ["So... bleib stehen!", "PLAIN",3];
								sleep 10;
								titleText ["","PLAIN",1];
								playsound "propaganda_1_3_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
				                		["Level_Prof",1000,1] call life_fnc_addLevel;
				                		life_cash = life_cash + 500;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Moviestar - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 500$ <br /> + 1000 Erfahrung <br /> + Questreihe: Aus dem Leben eines Schakals Part 3 freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_3_0" setMarkerAlphaLocal 0;
								"propaganda_1_3_1" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Moviestar - Abgeschlossen!
                                                Neue Questreihe: Aus dem Leben eines Schakals Part 3
								"
						]
					];
								};
							};
					};
			};

};



if ("schakaldrei" == _reihe) then // Aus dem Leben eines Schakals Part 3
	{
		if ((side _user) == civilian) then { // nicht modifizieren
			if (_nr == 1) then	{ // nicht modifizieren
        if (life_level < 10) exitWith {hint "Diese Quest ist erst ab Level 10 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 28) then { // um 1 erhöhen
								playsound "schakaldrei_1_1_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Aufstieg der Bösen<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Spreche mit dem Warlord!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_3_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"schakaldrei_1_1_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Aufstieg des Bösen
                                                Sprich mit dem Warlord
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if (life_quest == 29) then {
								playsound "schakaldrei_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
                						["Level_Prof",1000,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Aufstieg der Bösen - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 1000 Erfahrung <br /> + Quest: Schon wieder Nachschub freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_1_0" setMarkerAlphaLocal 0;
								"schakaldrei_1_1_1" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Aufstieg des Bösen - Abgeschlossen!
                                                Neue Quest: Schon wieder Nachschub
								"
						]
					];
								};

					};
				};



        if (_nr == 2) then	{ // nicht modifizieren
        if (life_level < 11) exitWith {hint "Diese Quest ist erst ab Level 11 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 30) then { // um 1 erhöhen
								playsound "schakaldrei_1_2_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schon wieder Nachschub<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Erledige 3 Transporte für Fortgeschrittene"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_1_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"schakaldrei_1_2_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Schon wieder Nachschub
                                                Erledige 3 Transporte für mich
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if ((life_quest == 31) AND (life_questinfo >= 3)) then {
						_reward = "arifle_mas_fal_m203";
						if !((player canAddItemtoBackpack _reward) OR (PrimaryWeapon Player == "")) exitWith {hint "Mach zuerst Platz für eine Waffe, um die Belohnung entgegen zu nehmen"};
								playsound "schakaldrei_1_2_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								["QuestInfo_Prof",0,0] call life_fnc_addLevel;
								["Level_Prof",1000,1] call life_fnc_addLevel; // Erfahrung
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schon wieder Nachschub - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + FN Fal <br /> + 1000EXP <br /> + Quest: Befreiung unserer Städte"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_2_0" setMarkerAlphaLocal 0;
								"schakaldrei_1_2_1" setMarkerAlphaLocal 1;
								if (PrimaryWeapon Player != "") then
											{
												player addItemToBackpack _reward;
												player addItemToUniform "20Rnd_mas_762x51_Stanag";
												player addItemToUniform "20Rnd_mas_762x51_Stanag";
											}
											else
											{
												 player addWeapon _reward;
												 player addItemToUniform "20Rnd_mas_762x51_Stanag";
												 player addItemToUniform "20Rnd_mas_762x51_Stanag";
											};
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Schon wieder Nachschub - Abgeschlossen!
                                                Neue Quest: Befreiung unserer Städte
								"
						]
					];
								}
								else
								{
									hint "Erledige erst 3 Transporte für mich!";
								};
							};
					};





       if (_nr == 3) then	{ // nicht modifizieren
        if (life_level < 12) exitWith {hint "Diese Quest ist erst ab Level 12 verfügbar!"}; // in Questreihen-Doc schauen
				if (_progress == 0) then { // nicht modifizieren
					if (life_quest == 32) then { // um 1 erhöhen
								playsound "schakaldrei_1_3_0"; // aus Vertonungsdokument nehmen
								["Quest_Prof",1,1] call life_fnc_addLevel; // nicht modifizieren
								[] call life_fnc_profSetup; // nicht modifizieren
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Befreiung unserer Städte<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Gewinne einen Gebietskampf"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_2_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"schakaldrei_1_3_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Befreiung unserer Städte
                                                Gewinne einen Gebietskampf
								"
						]
					];
						};
				};
				if (_progress == 1) then {
					if ((life_quest == 33) AND (life_questinfo == 1)) then {
								playsound "schakaldrei_1_3_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								["QuestInfo_Prof",0,0] call life_fnc_addLevel;
                ["Level_Prof",1500,1] call life_fnc_addLevel;
                life_cash = life_cash + 750;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Befreiung unserer Städte - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 750$ <br /> + 1500 Erfahrung <br /> + Questreihe: Abhören freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_3_0" setMarkerAlphaLocal 0;
								"schakaldrei_1_3_1" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Befreiung unserer Städte - Abgeschlossen!
                                                Neue Questreihe: Abhören
								"
						]
					];
								};
							};
					};
			};

};

if("abhoeren" == _reihe) then { // Abhören
	if (life_level < 13) exitWith {hint "Diese Quest ist erst ab Level 13 verfügbar"};
		if((side _user) == civilian) then {
			if(_nr == 1) then {						//Neues Sortiment
				if(_progress == 0) then {
					if(life_quest == 34) then {
						playSound "abhoeren_1_1_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Neues Sortiment <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe zu Abduls Elektronikladen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakaldrei_1_3_1" setMarkerAlphaLocal 0;
						"abhoeren_1_1_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Neues Sortiment
                                                Gehe zu Abduls Elektronikladen
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 35) then {
						playSound "abhoeren_1_1_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
            ["Level_Prof",750,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Neues Sortiment - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 750 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_1_0" setMarkerAlphaLocal 0;
						"abhoeren_1_1_1" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Neues Sortiment - Abgeschlossen!
                                                Neue Quest: Besorgungen
								"
						]
					];
					};
				};
			};
			if(_nr == 2) then {						//Besorgungen
				if(_progress == 0) then {
					if(life_quest == 36) then {
						playSound "abhoeren_1_2_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Besorgungen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe ins Terroristenlager"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_1_1" setMarkerAlphaLocal 0;
						"abhoeren_1_2_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Besorgungen
                                                Gehe ins Terroristenlager
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 37) then {
						playSound "abhoeren_1_2_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
            ["Level_Prof",750,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Besorgungen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 750 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_2_0" setMarkerAlphaLocal 0;
						"abhoeren_1_2_1" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Besorgungen - Abgeschlossen!
                                                Neue Quest: Langfinger
								"
						]
					];
					};
				};
			};
			if(_nr == 3) then {						//Langfinger
				if(_progress == 0) then {
					if(life_quest == 38) then {
						playSound "abhoeren_1_3_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Langfinger <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Klaue ein Army-Fahrzeug und bring es zu Abdul!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"abhoeren_1_2_1" setMarkerAlphaLocal 0;
						"abhoeren_1_3_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Langfinger
                                                Stiehl ein Army-Fahrzeug und bringe es zu Abduls Elektronikladen
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 39) then {
						_cars = position player nearObjects ["rhsusf_m998_d_2dr", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m998_d_4dr", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1152", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m1025_d", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m1025_d_m2", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1165_GMV", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1151", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1151_Deploy", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1167", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m113d_usarmy", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						if (player getVariable ["armyvehquest",false]) then {
							playSound "abhoeren_1_3_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
              				["Level_Prof",2000,1] call life_fnc_addLevel;
             				 life_cash = life_cash + 1500;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Langfinger - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 1500$ <br/> + 2000 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"abhoeren_1_3_0" setMarkerAlphaLocal 0;
							"abhoeren_1_3_1" setMarkerAlphaLocal 1;
					 	} else{
						hint "Besorg dir das verdammte Auto!";
						};

					};
				};
			};
			if(_nr == 4) then {						//Pole
				if(_progress == 0) then {
					if(life_quest == 40) then {
						playSound "abhoeren_1_4_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pole <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Knacke das Fahrzeug!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_3_1" setMarkerAlphaLocal 0;
						"abhoeren_1_4_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Pole
                                                Knacke das Fahrzeug
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if( (life_quest == 41)  && (life_questinfo > 0))then {

						//Schlüssel abfrage

						playSound "abhoeren_1_4_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						["QuestInfo_Prof",0,0] call life_fnc_addLevel;
            			["Level_Prof",250,1] call life_fnc_addLevel;
            			life_cash = life_cash + 250;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pole - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 250$ <br/> + 250 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_4_0" setMarkerAlphaLocal 0;
						"abhoeren_1_4_1" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Pole - Abgeschlossen!
                                                Neue Quest: Überraschung
								"
						]
					];
					};
				};
			};
			if(_nr == 5) then {						//Überraschung
				if(_progress == 0) then {
					if(life_quest == 42) then {

						// Abhörgerätkauf freischalten

						playSound "abhoeren_1_5_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Überraschung <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Kaufe das Abhörgerät"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_4_1" setMarkerAlphaLocal 0;
						"abhoeren_1_5_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Überraschung
                                                Kaufe das Abhörgerät
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 43) then {
							playSound "abhoeren_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
              ["Level_Prof",250,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Überraschung - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 250 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"abhoeren_1_5_0" setMarkerAlphaLocal 0;
							"abhoeren_1_5_1" setMarkerAlphaLocal 1;
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Überraschung - Abgeschlossen!
                                                Neue Quest: Spion
								"
						]
					];
					};
				};
			};
			if(_nr == 6) then {						//Spion
				if(_progress == 0) then {
					if(life_quest == 44) then {
						playSound "abhoeren_1_6_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Spion <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>Besorge dir 10 Informationen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_5_1" setMarkerAlphaLocal 0;
						"abhoeren_1_6_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Spion
                                                Bringe 10 Informationen zum Terroristenlager
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 45) then {
						if([false,"information",10] call life_fnc_handleInv) then {
							playSound "abhoeren_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
				            ["Level_Prof",1250,1] call life_fnc_addLevel;
				            life_cash = life_cash + 500;
							[] call life_fnc_profSetup;

							// Informationspreis also Belohnung

							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Spion - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 1250 Erfahrung <br/> +500$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"abhoeren_1_6_0" setMarkerAlphaLocal 0;
							"abhoeren_1_6_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorge erst 10 Informationen";
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Spion - Abgeschlossen!
                                                Neue Quest: Das Attentat
								"
						]
					];
						};
					};
				};
			};
			if(_nr == 7) then {						//Das Attentat
				if(_progress == 0) then {
					if(life_quest == 46) then {
						playSound "abhoeren_1_7_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Attentat <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Besorge 4 DogTags"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"abhoeren_1_6_1" setMarkerAlphaLocal 0;
						"abhoeren_1_7_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Das Attentat
                                                Gib 4 Dogtags im Terroristenlager ab
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 47) then {
						if ([false,"dogtag",4] call life_fnc_handleInv) then {
							playSound "abhoeren_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
              ["Level_Prof",2500,1] call life_fnc_addLevel;
              life_cash = life_cash + 1500;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Attentat - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 1500$ <br/> + 2500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"abhoeren_1_7_0" setMarkerAlphaLocal 0;
							"abhoeren_1_7_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorge erst 4 DogTags";
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Das Attentat - Abgeschlossen!
                                                Neue Questreihe: Höllenfeuer
								"
						]
					];
						};
					};
				};
			};
		};
};

if("hoellenfeuer" == _reihe) then { // Höllenfeuer
	if (life_level < 17) exitWith {hint "Diese Quest ist erst ab Level 17 verfügbar"};
		if((side _user) == civilian) then {
			if(_nr == 1) then {						//Kein Zurück mehr
				if(_progress == 0) then {
					if(life_quest == 48) then {
						playSound "hoellenfeuer_1_1_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kein Zurück mehr <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Beschaffe ein Dog Tag"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_7_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_1_0" setMarkerAlphaLocal 1;
            			player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Kein Zurück mehr
                                                Beschaffe ein Dog Tag
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 49) then {
						if ([false,"dogtag",1] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_1_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							["Level_Prof",1000,1] call life_fnc_addLevel;
              						life_cash = life_cash + 500;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kein Zurück mehr - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 500$ <br/> + 1000 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_1_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_1_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorge erst ein DogTag";
           				   player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Kein Zurück mehr - Abgeschlossen!
                                                Neue Quest: Uniformiert
								"
						]
					];
						};
					};
				};
			};
			if(_nr == 2) then {						//Uniformiert
				if(_progress == 0) then {
					if(life_quest == 50) then {
						playSound "hoellenfeuer_1_2_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Uniformiert <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Besorge dir ein Kampfanzug Weiße Hose"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_1_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_2_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Uniformiert
                                                Besorge dir eine weiße Hose
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 51) then {
						_unif = uniform player;
						if(_unif == "IS_uniform_squad_leader_o") then {
							playSound "hoellenfeuer_1_2_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							["Level_Prof",750,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Uniformiert - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 750 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_2_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_2_1" setMarkerAlphaLocal 1;
							  player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Uniformiert - Abgeschlossen!
                                                Neue Quest: Wolf im Schafspelz
								"
						]
					];
						} else {
							hint "Wie siehst du denn aus? Zieh dir die weiße Hose an!"
           				};
					};
				};
			};
			if(_nr == 3) then {						//Wolf im Schafspelz
				if(_progress == 0) then {
					if(life_quest == 52) then {
						playSound "hoellenfeuer_1_3_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wolf im Schafspelz <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Beschaffe dir einen Double Whopper ohne Blutvergießen."],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_2_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_3_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Wolf im Schafspelz
                                                Beschaffe dir einen Double Whopper ohne Blutvergießen
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 53) then {
						if ([false,"burger",1] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_3_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							["Level_Prof",750,1] call life_fnc_addLevel;
              						life_cash = life_cash + 250;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wolf im Schafspelz - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 250$ <br/> + 750 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_3_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_3_1" setMarkerAlphaLocal 1;
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Wolf im Schafspelz - Abgeschlossen!
                                                Neue Quest: Ausnutzen
								"
						]
					];
					};
				};
			};
		};
			if(_nr == 4) then {						//Ausnutzen
				if(_progress == 0) then {
					if(life_quest == 54) then {
						playSound "hoellenfeuer_1_4_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ausnutzen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>Stiehl ein Army Fahrzeug und bring es zum Schwarzmarkt"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_3_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_4_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Ausnutzen
                                                Stiehl ein Army-Fahrzeug und bringe es zum Schwarzmarkt
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 55) then {
						_cars = position player nearObjects ["rhsusf_m998_d_2dr", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m998_d_4dr", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1152", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m1025_d", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m1025_d_m2", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1165_GMV", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1151", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1151_Deploy", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["DAR_M1167", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						_cars = position player nearObjects ["rhsusf_m113d_usarmy", 50];
						_vehiclecount = count _cars;
						if (_vehiclecount > 0) then {player setVariable ["armyvehquest",true];};
						if (player getVariable ["armyvehquest",false]) then {
							playSound "hoellenfeuer_1_4_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							["Level_Prof",2250,1] call life_fnc_addLevel;
              						life_cash = life_cash + 1500;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ausnutzen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 1500$ <br/> + 2250 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_4_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_4_1" setMarkerAlphaLocal 1;
						} else{
							hint "Besorg dir das verdammte Auto!";
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Ausnutzen - Abgeschlossen!
                                                Neue Quest: Kreuzzug
								"
						]
					];
						};
					};
				};
			};
			if(_nr == 5) then {						//Kreuzzug
				if(_progress == 0) then {
					if(life_quest == 56) then {
						playSound "hoellenfeuer_1_5_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kreuzzug <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Besorge 5 Dog Tags"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_4_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_5_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Kreuzzug
                                                Besorge 5 Dog Tags
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 57) then {
						if ([false,"dogtag",5] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							["Level_Prof",3500,1] call life_fnc_addLevel;
              						life_cash = life_cash + 2000;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kreuzzug - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 2000$ <br/> + 3500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_5_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_5_1" setMarkerAlphaLocal 1;
							player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Kreuzzug - Abgeschlossen!
                                                Neue Quest: Wocheneinkauf
								"
						]
					];
						} else {
							hint "Weichei! Schlachte sie und bring mir 5 DogTags!";
             			};
					};
				};
			};
			if(_nr == 6) then {						//Wocheinkauf
				if(_progress == 0) then {
					if(life_quest == 58) then {
						waitUntil { (6 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_6_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wocheinkauf <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Besorge 1x Batterie und 1x Behaelter"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_5_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_6_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Wocheneinkauf
                                                Besorge 1x Batterie, 1x Zünder, 1x Behälter
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 59) then {

						// Zündername?

						if ([false,"battery",1] call life_fnc_handleInv AND [false,"behaelter",1] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_6_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							["Level_Prof",500,1] call life_fnc_addLevel;
              						life_cash = life_cash + 250;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wocheinkauf - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 500 Erfahrung <br/> + 250$"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_6_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_6_1" setMarkerAlphaLocal 1;
							player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Wocheneinkauf - Abgeschlossen!
                                                Neue Quest: Pyrotechnik
								"
						]
					];
						} else {
							hint "Dir fehlt noch etwas! Ich brauche einen Zünder, einen Behälter und eine Batterie!";
              			};
					};
				};
			};
			if(_nr == 7) then {						//Pyrotechnik
				if(_progress == 0) then {
					if(life_quest == 60) then {
						playSound "hoellenfeuer_1_7_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pyrotechnik <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Besorge 1x Sprengsatz"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_6_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_7_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Pyrotechnik
                                                Besorge 1x Sprengstoff
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 61) then {
						if ([false,"explosive",1] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_7_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							life_cash = life_cash + 500;
							["Level_Prof",1000,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pyrotechnik - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 500$ <br/> + 1000 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"hoellenfeuer_1_7_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_7_1" setMarkerAlphaLocal 1;
							player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Pyrotechnik - Abgeschlossen!
                                                Neue Quest: Handwerker
								"
						]
					];
						} else {
							hint "Mit dem Staub in deiner Tasche kann ich nichts anfangen. Bring mir Sprengstoff!"
         				};
					};
				};
			};
			if(_nr == 8) then {						//Handwerker
				if(_progress == 0) then {
					if(life_quest == 62) then {
						playSound "hoellenfeuer_1_8_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Handwerker <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Baue 1x Small IED Dug In"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_7_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_8_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Handwerker
                                                Baue 1x Small IED Dug In
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 63) then {

						// Small IED Bug IN Arma oder Z-Item?
							if ("IEDLandSmall_Remote_Mag" in items player) then {
							playSound "hoellenfeuer_1_8_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							life_cash = life_cash + 250;
							["Level_Prof",500,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Handwerker - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 250$ <br/> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"hoellenfeuer_1_8_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_8_1" setMarkerAlphaLocal 1;
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Handwerker - Abgeschlossen!
                                                Neue Quest: Höllenfeuer
								"
						]
					];
					};
				};
			};
		};
			if(_nr == 9) then {						//Höllenfeuer
				if(_progress == 0) then {
					if(life_quest == 64) then {
						playSound "hoellenfeuer_1_9_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Höllenfeuer <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Sprenge eine IED"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_8_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_9_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

            Höllenfeuer
                                                Sprenge eine IED
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 65) then {

						if ("IEDLandSmall_Remote_Mag" in items player) then {

							playSound "hoellenfeuer_1_9_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							life_cash = life_cash + 250;
							["Level_Prof",500,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Höllenfeuer - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'> + 250$ <br/> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"hoellenfeuer_1_9_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_9_1" setMarkerAlphaLocal 1;
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Höllenfeuer - Abgeschlossen!
                                                Neue Questreihe: Aus dem Leben eines Schakals Part 4
								"
						]
					];
					};
				};
				};
			};
		};
};
// Ab hier TO DO
if("schakalvier" == _reihe) then { // Aus dem Leben eines Schakals part vier
	if (life_level < 26) exitWith {hint "Diese Quest ist erst ab Level 26 verfügbar"};
		if((side _user) == civilian) then {
			if(_nr == 1) then {						//Kondome für die Alte neben mir und Unsere Heiligen Schriften.
				if(_progress == 0) then {
					if(life_quest == 66) then {

						//Irgendwelche Missions abschließen?

						playSound "schakalvier_1_1_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kondome für die Alte neben mir und Unsere Heiligen Schriften. <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe zu Abduls Elektronikladen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_7_1" setMarkerAlphaLocal 0;
						"schakalvier_1_1_0" setMarkerAlphaLocal 1;
                player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Kondome für die Alte neben mir. Oder unsere Heiligen Schriften.
                                                Schliesse die Mission Der Heilige Krieg und Niemand möchte Tripper ab.
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 67) then {

						//Irgendwelche Missions abschließen?

						playSound "schakalvier_1_1_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kondome für die Alte neben mir und Unsere Heiligen Schriften. - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_1_0" setMarkerAlphaLocal 0;
						"schakalvier_1_1_1" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Kondome für die Alte neben mir. Oder unsere Heiligen Schriften. - Abgeschlossen!
                                                Neue Quest: Die Positon festigen
								"
						]
					];
					};
				};
			};
			if(_nr == 2) then {						//Die Position festigen
				if(_progress == 0) then {
					if(life_quest == 68) then {
						playSound "schakalvier_1_2_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Die Position festigen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe ins Terroristenlager"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_1_1" setMarkerAlphaLocal 0;
						"schakalvier_1_2_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Die Position festigen
                                                Besorge 5 Dogtags
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 69) then {
						if([false,"dogtag",5] call life_fnc_handleInv) then {
							playSound "schakalvier_1_2_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Die Position festigen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_2_0" setMarkerAlphaLocal 0;
							"schakalvier_1_2_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorg dir 5 DogTags!";
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Die Position festigen - Abgeschlossen!
                                                Neue Quest: Der Befreiungsschlag
								"
						]
					];
						};
					};
				};
			};
			if(_nr == 3) then {						//Der Befreiungsschlag
				if(_progress == 0) then {
					if(life_quest == 70) then {
						playSound "schakalvier_1_3_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Befreiungsschlag <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Klaue ein Army-Fahrzeug und bring es zu Abdul!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"schakalvier_1_2_1" setMarkerAlphaLocal 0;
						"schakalvier_1_3_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Der Befreiungsschlag
                                                Gewinne 3 Gebietskämpfe
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 71) then {

							//Gewinne 3 Gebietskämpfe Check

							playSound "schakalvier_1_3_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Befreiungsschlag - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_3_0" setMarkerAlphaLocal 0;
							"schakalvier_1_3_1" setMarkerAlphaLocal 1;
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Der Befreiungsschlag - Abgeschlossen!
                                                Neue Quest: Schmerzen
								"
						]
					];
					};
				};
			};
			if(_nr == 4) then {						//Schmerzen
				if(_progress == 0) then {
					if(life_quest == 72) then {
						playSound "schakalvier_1_4_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schmerzen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Knacke das Fahrzeug!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_3_1" setMarkerAlphaLocal 0;
						"schakalvier_1_4_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Schmerzen
                                                Foltere 20x Armysoldaten
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 73) then {

						//20 Soldaten foltern Check

						playSound "schakalvier_1_4_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schmerzen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_4_0" setMarkerAlphaLocal 0;
						"schakalvier_1_4_1" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Schmerzen - Abgeschlossen!
                                                Neue Quest: Schwäche die Ungläubigen
								"
						]
					];
					};
				};
			};
			if(_nr == 5) then {						//Schwäche die Ungläubigen
				if(_progress == 0) then {
					if(life_quest == 74) then {
						playSound "abhoeren_1_5_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schwäche die Ungläubigen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Kaufe das Abhörgerät"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_4_1" setMarkerAlphaLocal 0;
						"abhoeren_1_5_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Schwäche die Ungläubigen
                                                Raube das Waffenlager aus und bringe mir 1x Scharfschützengewehr und 1x Sturmgewehr
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 75) then {

						//Waffenlager Check

							playSound "schakalvier_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schwäche die Ungläubigen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_5_0" setMarkerAlphaLocal 0;
							"schakalvier_1_5_1" setMarkerAlphaLocal 1;
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Schwäche die Ungläubigen - Abgeschlossen!
                                                Neue Quest: Totaler Krieg
								"
						]
					];
					};
				};
			};
			if(_nr == 6) then {						//Totaler Krieg
				if(_progress == 0) then {
					if(life_quest == 76) then {
						playSound "schakalvier_1_6_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Totaler Krieg <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>Besorge dir 10 Informationen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_5_1" setMarkerAlphaLocal 0;
						"schakalvier_1_6_0" setMarkerAlphaLocal 1;
            player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Totaler Krieg
                                                Halte alle 3 Gebiete und eliminiere 2 hohe Offiziere. Gib 2 Offizier-Dogtags beim Warlord ab.
								"
						]
					];
					};
				};
				if(_progress == 1) then {
					if(life_quest == 77) then {

						//Halte alle 3 Gebiete und elimiere 2 hohe Offiziere. Gib 2 Offizier Dog Tags beim Warlord ab.

							playSound "schakalvier_1_6_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Totaler Krieg - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_6_0" setMarkerAlphaLocal 0;
							"schakalvier_1_6_1" setMarkerAlphaLocal 1;
              player createDiaryRecord["questbuch",
					[
							"Quest-Buch",
								"

             Totaler Krieg - Abgeschlossen!
                                                to be continued
								"
						]
					];
					};
				};
			};
		};
};
