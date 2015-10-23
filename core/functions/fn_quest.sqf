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
				[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ein neuer Anfang?<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Lass dich als Terrorist anwerben! <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
				["Quest_Prof",1,1] call life_fnc_addLevel;
				[] call life_fnc_profSetup;
				};
				if (_progress == 1) then{
				if (life_quest == 1) then {

					playSound "schakaleins_1_1_1";
					"schakaleins_1_1_0" setMarkerAlphaLocal 0;
					"schakaleins_1_1_1" setMarkerAlphaLocal 1;
					[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ein neuer Anfang? - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Quest: Nachschube freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
					["Quest_Prof",1,1] call life_fnc_addLevel;
					[] call life_fnc_profSetup;
				};
				};
			};
		};

		if (_nr == 2) then { // Nachschub
		if ((side _user) == civilian) then {
			if (_progress == 0) then{
				if (life_quest == 2) then {
				playSound "schakaleins_1_2_0";
				"schakaleins_1_2_0" setMarkerAlphaLocal 1;
				[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Nachschub<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Erledige 3 Anfänger-Transporte für mich! <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
				["Quest_Prof",1,1] call life_fnc_addLevel;
				[] call life_fnc_profSetup;
				};
				};
				if (_progress == 1) then{
				if ((life_quest == 3) AND (life_questinfo == 3)) then {

					playSound "schakaleins_1_2_1";
					"schakaleins_1_2_0" setMarkerAlphaLocal 0;
					"schakaleins_1_2_1" setMarkerAlphaLocal 1;
					[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Nachschub - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Questreihe: 69 Blonde Schönheiten freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
					["Quest_Prof",1,1] call life_fnc_addLevel;
					["QuestInfo_Prof",0,0] call life_fnc_addLevel;
					[] call life_fnc_profSetup;

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
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Fremde - Abgeschlossen! <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Gehe zum Eremiten! <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaleins_1_2_1" setMarkerAlphaLocal 0;
								"blond_1_1_0" setMarkerAlphaLocal 1;
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								};
							};
					if (_progress == 1) then
							{
							if (life_quest == 5) then {
								{
										 playsound "blond_1_1_1";
										"blond_1_1_0" setMarkerAlphaLocal 0;
										"blond_1_1_1" setMarkerAlphaLocal 1;
										["Level_Prof",100,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Fremde - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Quest: Geschichtenerzähler freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

								}
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
										["Level_Prof",100,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Geschichtenerzähler - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Quest: Das Paradies freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Paradies<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Gehe zum Imam! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_2_1" setMarkerAlphaLocal 0;
								"blond_1_3_0" setMarkerAlphaLocal 1;
								};
							};
					if (_progress == 1) then //Questabgabe 1 3 1
							{
								if (life_quest == 9) then

										playsound "blond_1_3_1";
										"blond_1_3_0" setMarkerAlphaLocal 0;
										"blond_1_3_1" setMarkerAlphaLocal 1;
										["Level_Prof",250,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Paradies - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 250 Erfahrung <br /> + Quest: Vorbereitungen freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Vorbereitungen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Stelle Sprengstoff her! <br /> + Besorge einen Guertel beim Markt! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_3_1" setMarkerAlphaLocal 0;
								"blond_1_4_0" setMarkerAlphaLocal 1;
								};
							};
					if (_progress == 1) then //Questabgabe 1 4 1
							{
							_p = _user getVariable "quest";
								if (life_quest == 11) then
								{
										if (([false,"guertel",1] call life_fnc_handleInv) AND ([false,"sprengstoff",1] call life_fnc_handleInv)) then
										{
										[true,"sprengstoff",1] call life_fnc_handleInv;
										[true,"guertel",1] call life_fnc_handleInv;
										playsound "blond_1_4_1";
										//Marker
										"blond_1_4_0" setMarkerAlphaLocal 0;
										"blond_1_4_1" setMarkerAlphaLocal 1;
										["Level_Prof",250,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										life_cash = life_cash + 10000;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Vorbereitungen - Abgeschlossen! <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: 69 Blonde Schönheiten freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
										}
										else
										{
										hint "Besorg zuerst einen Guertel und Sprengstoff!";
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
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> 69 Blonde Schönheiten<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Baue eine Sprengstoffweste! <br /> + Sprenge dich samt eines Soldaten in die Luft!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"blond_1_4_1" setMarkerAlphaLocal 0;
								"blond_1_5_0" setMarkerAlphaLocal 1;
								};
							};
					if (_progress == 1) then //Questabgabe 1 5 1
							{
								if (life_quest == 13) then
								{
										if (([false,"guertel",1] call life_fnc_handleInv) AND ([false,"sprengstoff",1] call life_fnc_handleInv)) then
										{
										[true,"sprengstoff",1] call life_fnc_handleInv;
										[true,"guertel",1] call life_fnc_handleInv;

										playsound "blond_1_5_1";
										//Marker
										"blond_1_5_0" setMarkerAlphaLocal 0;
										"blond_1_5_1" setMarkerAlphaLocal 1;
										["Level_Prof",250,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										life_cash = life_cash + 10000;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> 69 Blonde Schönheiten - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Questreihe: Aus dem Leben eines Schakals Teil 2 freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
										}
										else
										{
										hint "Besorg zuerst einen Guertel und Sprengstoff!";
										};
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


					};
				};
				if (_progress == 1) then {
					if (life_quest == 15) then {
						if ([false,"dogtag",2] call life_fnc_handleInv) then
								{
								[true,"dogtag",2] call life_fnc_handleInv;
								playsound "schakalzwei_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Befreie uns von der Geißel - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Questreihe: Für den Glauben aufrüsten freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakalzwei_1_1_0" setMarkerAlphaLocal 0;
								"schakalzwei_1_1_1" setMarkerAlphaLocal 1;
								}								}
								else
								{
								hint "Besorg zuerst zwei DogTags!";
								};

					};
				};
			};
};
