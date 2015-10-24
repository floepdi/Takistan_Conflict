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
						};
				};
				if (_progress == 1) then {
					if (life_quest == 17) then {
								playsound "glauben_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Erweiterung deines Fuhrparks - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: Dunkles Geheimnis freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_1_0" setMarkerAlphaLocal 0;
								"glauben_1_1_1" setMarkerAlphaLocal 1;
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
						};
				};
				if (_progress == 1) then {
					if (life_quest == 19) then {
								playsound "glauben_1_2_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Dunkles Geheimnis - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: Dope für den Kampf freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_2_0" setMarkerAlphaLocal 0;
								"glauben_1_2_1" setMarkerAlphaLocal 1;
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
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Dope für den Kampf<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ farme Haschisch und gib es im Terrorlager ab"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_2_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"glauben_1_3_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
						};
				};
				if (_progress == 1) then {
					if (life_quest == 21) then {
								playsound "glauben_1_3_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Dope für den Kampf - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Questreihe: Propagandastudio freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"glauben_1_3_0" setMarkerAlphaLocal 0;
								"glauben_1_3_1" setMarkerAlphaLocal 1;
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
						};
				};
				if (_progress == 1) then {
					if (life_quest == 23) then {
								playsound "propaganda_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Filmreif - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: Teures Terroristenleben freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_1_0" setMarkerAlphaLocal 0;
								"propaganda_1_1_1" setMarkerAlphaLocal 1;
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
						};
				};
				if (_progress == 1) then {
					if (life_quest == 25) then {
								playsound "propaganda_1_2_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Teures Terroristenleben - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: Moviestar freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_2_0" setMarkerAlphaLocal 0;
								"propaganda_1_2_1" setMarkerAlphaLocal 1;
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
						};
				};
				if (_progress == 1) then {
					if (life_quest == 27) then {
								playsound "propaganda_1_3_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Moviestar - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Questreihe: Aus dem Leben eines Schakals Part 3 freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"propaganda_1_3_0" setMarkerAlphaLocal 0;
								"propaganda_1_3_1" setMarkerAlphaLocal 1;
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
						};
				};
				if (_progress == 1) then {
					if (life_quest == 29) then {
								playsound "schakaldrei_1_1_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Aufstieg der Bösen - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: Schon wieder Nachschub freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_1_0" setMarkerAlphaLocal 0;
								"schakaldrei_1_1_1" setMarkerAlphaLocal 1;
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
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schon wieder Nachschub<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Erledige 3 Transporte für mich"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_1_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"schakaldrei_1_2_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
						};
				};
				if (_progress == 1) then {
					if (life_quest == 31) then {
								playsound "schakaldrei_1_2_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schon wieder Nachschub - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: Befreiung unserer Städte"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_2_0" setMarkerAlphaLocal 0;
								"schakaldrei_1_2_1" setMarkerAlphaLocal 1;
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
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Befreiung unserer Städte<br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Gewinne einen Gebietskampf"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_2_1" setMarkerAlphaLocal 0; // Marker von letzter Quest
								"schakaldrei_1_3_0" setMarkerAlphaLocal 1; // Marker von dieser Quest
						};
				};
				if (_progress == 1) then {
					if (life_quest == 33) then {
								playsound "schakaldrei_1_3_1";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Befreiung unserer Städte - Abgeschlossen!<br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Questreihe: Abhören freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"schakaldrei_1_3_0" setMarkerAlphaLocal 0;
								"schakaldrei_1_3_1" setMarkerAlphaLocal 1;
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
					if(life_quest == 666) then {
						playSound "abhoeren_1_1_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Neues Sortiment <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe zu Abduls Elektronikladen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakaldrei_1_3_1" setMarkerAlphaLocal 0;
						"abhoeren_1_1_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						playSound "abhoeren_1_1_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Neues Sortiment - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_1_0" setMarkerAlphaLocal 0;
						"abhoeren_1_1_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 2) then {						//Besorgungen
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "abhoeren_1_2_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Besorgungen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe ins Terroristenlager"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_1_1" setMarkerAlphaLocal 0;
						"abhoeren_1_2_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						playSound "abhoeren_1_2_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Besorgungen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_2_0" setMarkerAlphaLocal 0;
						"abhoeren_1_2_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 3) then {						//Langfinger
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "abhoeren_1_3_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Langfinger <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Klaue ein Army-Fahrzeug und bring es zu Abdul!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"abhoeren_1_2_1" setMarkerAlphaLocal 0;
						"abhoeren_1_3_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						_armyCars = ["rhsusf_m998_d_2dr","rhsusf_m998_d_4dr","DAR_M1152","rhsusf_m1025_d","rhsusf_m1025_d_m2","DAR_M1165_GMV","DAR_M1151","DAR_M1151_Deploy","DAR_M1167","rhsusf_m113d_usarmy"];
						_nearObj = nearObjects [player, ["_armyCars"],50];
						if ((count _nearObj)>0) then {
							playSound "abhoeren_1_3_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Langfinger - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
					if(life_quest == 666) then {
						playSound "abhoeren_1_4_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pole <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Knacke das Fahrzeug!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_3_1" setMarkerAlphaLocal 0;
						"abhoeren_1_4_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						//Schlüssel abfrage

						playSound "abhoeren_1_4_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pole - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_4_0" setMarkerAlphaLocal 0;
						"abhoeren_1_4_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 5) then {						//Überraschung
				if(_progress == 0) then {
					if(life_quest == 666) then {

						// Abhörgerätkauf freischalten

						playSound "abhoeren_1_5_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Überraschung <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Kaufe das Abhörgerät"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_4_1" setMarkerAlphaLocal 0;
						"abhoeren_1_5_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
							playSound "abhoeren_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Überraschung - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"abhoeren_1_5_0" setMarkerAlphaLocal 0;
							"abhoeren_1_5_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 6) then {						//Spion
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (6 >= (west countSide playableUnits)) };
						playSound "abhoeren_1_6_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Spion <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>Besorge dir 10 Informationen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_5_1" setMarkerAlphaLocal 0;
						"abhoeren_1_6_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						if([false,"information",10] call life_fnc_handleInv) then {
							[true,"information",10] call life_fnc_handleInv;
							playSound "abhoeren_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;

							// Informationspreis also Belohnung

							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Spion - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"abhoeren_1_6_0" setMarkerAlphaLocal 0;
							"abhoeren_1_6_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorge erst 10 Informationen";
						};
					};
				};
			};
			if(_nr == 7) then {						//Das Attentat
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "abhoeren_1_7_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Attentat <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Lösche ein Squad aus! <br/> Besorge 4 DogTags"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"abhoeren_1_6_1" setMarkerAlphaLocal 0;
						"abhoeren_1_7_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						if ([false,"dogtag",4] call life_fnc_handleInv) then {
							playSound "abhoeren_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Das Attentat - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+2000$ <br/> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"abhoeren_1_7_0" setMarkerAlphaLocal 0;
							"abhoeren_1_7_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorge erst 4 DogTags";
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
					if(life_quest == 666) then {
						waitUntil { (5 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_1_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kein Zurück mehr <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Beschaffe ein Dog Tag"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_7_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_1_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						if ([false,"dogtag",1] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_1_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kein Zurück mehr - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_1_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_1_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorge erst ein DogTag";
						};
					};
				};
			};
			if(_nr == 2) then {						//Uniformiert
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "hoellenfeuer_1_2_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Uniformiert <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Besorge dir ein IS Kampfanzug Weiße Hose"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_1_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_2_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						_unif = uniform player;
						if(_unif == "IS_uniform_squad_leader_o") then {
							playSound "hoellenfeuer_1_2_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Uniformiert - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_2_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_2_1" setMarkerAlphaLocal 1;
						} else {
							hint "Wie siehst du denn aus? Zieh dir die weiße Hose an!"
						};
					};
				};
			};
			if(_nr == 3) then {						//Wolf im Schafspelz
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (1 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_3_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wolf im Schafspelz <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Beschaffe dir einen Double Whopper ohne Blutvergießen."],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_2_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_3_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						ife_quest == 666) then {
						if ([false,"burger",1] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_3_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wolf im Schafspelz - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_3_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_3_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 4) then {						//Ausnutzen
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (6 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_4_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ausnutzen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>Stiehl ein Army Fahrzeug und bring es zum Schwarzmarkt"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_3_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_4_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						_armyCars = ["rhsusf_m998_d_2dr","rhsusf_m998_d_4dr","DAR_M1152","rhsusf_m1025_d","rhsusf_m1025_d_m2","DAR_M1165_GMV","DAR_M1151","DAR_M1151_Deploy","DAR_M1167","rhsusf_m113d_usarmy"];
						_nearObj = nearObjects [player, ["_armyCars"],50];
						if ((count _nearObj)>0) then {
							playSound "hoellenfeuer_1_4_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Ausnutzen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_4_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_4_1" setMarkerAlphaLocal 1;
						} else{
							hint "Besorg dir das verdammte Auto!";
						};
					};
				};
			};
			if(_nr == 5) then {						//Kreuzzug
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (6 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_5_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kreuzzug <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Besorge 5 Dog Tags"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_4_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_5_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						if ([false,"dogtag",5] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kreuzzug - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_5_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_5_1" setMarkerAlphaLocal 1;
						} else {
							hint "Weichei! Schlachte sie und bring mir 5 DogTags!";
						};
					};
				};
			};
			if(_nr == 6) then {						//Wocheinkauf
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (6 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_6_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wocheinkauf <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>Besorge 1x Batterie, 1x Zünder, 1x Behaelter"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"hoellenfeuer_1_5_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_6_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						// Zündername?

						if ([false,"battery",1] call life_fnc_handleInv AND [false,"behaelter",1] call life_fnc_handleInv AND [false,"???",1] call life_fnc_handleInv) then {
							playSound "hoellenfeuer_1_6_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Wocheinkauf - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"hoellenfeuer_1_6_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_6_1" setMarkerAlphaLocal 1;
						} else {
							hint "Dir fehlt noch etwas! Ich brauche einen Zünder, einen Behälter und eine Batterie!";
						};
					};
				};
			};
			if(_nr == 7) then {						//Pyrotechnik
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (2 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_7_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pyrotechnik <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Besorge 1x Sprengsatz"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_6_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_7_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						if ([false,"explosive",1] call life_fnc_handleInv) {
							playSound "hoellenfeuer_1_7_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Pyrotechnik - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+2000$ <br/> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"hoellenfeuer_1_7_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_7_1" setMarkerAlphaLocal 1;
						} else {
							hint "Mit dem Staub in deiner Tasche kann ich nichts anfangen. Bring mir Sprengstoff!"
						};
					};
				};
			};
			if(_nr == 8) then {						//Handwerker
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (2 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_8_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Handwerker <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Baue 1x Small IED Dug In<br/> Besorge 4 DogTags"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_7_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_8_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						// Small IED Bug IN Arma oder Z-Item?

							playSound "hoellenfeuer_1_8_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Handwerker - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+2000$ <br/> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"hoellenfeuer_1_8_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_8_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 9) then {						//Höllenfeuer
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (10 >= (west countSide playableUnits)) };
						playSound "hoellenfeuer_1_9_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Höllenfeuer <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Sprenge eine IED"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"hoellenfeuer_1_8_1" setMarkerAlphaLocal 0;
						"hoellenfeuer_1_9_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						//Check Bombe explodiert

							playSound "hoellenfeuer_1_9_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Höllenfeuer - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+2000$ <br/> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							//Marker
							"hoellenfeuer_1_9_0" setMarkerAlphaLocal 0;
							"hoellenfeuer_1_9_1" setMarkerAlphaLocal 1;
					};
				};
			};
		};
};

if("schakalvier" == _reihe) then { // Aus dem Leben eines Schakals part vier
	if (life_level < 26) exitWith {hint "Diese Quest ist erst ab Level 26 verfügbar"};
		if((side _user) == civilian) then {
			if(_nr == 1) then {						//Kondome für die Alte neben mir und Unsere Heiligen Schriften.
				if(_progress == 0) then {
					if(life_quest == 666) then {

						//Irgendwelche Missions abschließen?

						playSound "schakalvier_1_1_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kondome für die Alte neben mir und Unsere Heiligen Schriften. <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe zu Abduls Elektronikladen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_7_1" setMarkerAlphaLocal 0;
						"schakalvier_1_1_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						//Irgendwelche Missions abschließen?

						playSound "schakalvier_1_1_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Kondome für die Alte neben mir und Unsere Heiligen Schriften. - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_1_0" setMarkerAlphaLocal 0;
						"schakalvier_1_1_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 2) then {						//Die Position festigen
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "schakalvier_1_2_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Die Position festigen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Gehe ins Terroristenlager"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_1_1" setMarkerAlphaLocal 0;
						"schakalvier_1_2_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {
						if([false,"dogtag",10] call life_fnc_handleInv){
							playSound "schakalvier_1_2_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Die Position festigen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_2_0" setMarkerAlphaLocal 0;
							"schakalvier_1_2_1" setMarkerAlphaLocal 1;
						} else {
							hint "Besorg dir 10 DogTags!";
						};
					};
				};
			};
			if(_nr == 3) then {						//Der Befreiungsschlag
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "schakalvier_1_3_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Befreiungsschlag <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Klaue ein Army-Fahrzeug und bring es zu Abdul!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						//Marker
						"schakalvier_1_2_1" setMarkerAlphaLocal 0;
						"schakalvier_1_3_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

							//Gewinne 3 Gebietskämpfe Check

							playSound "schakalvier_1_3_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Der Befreiungsschlag - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_3_0" setMarkerAlphaLocal 0;
							"schakalvier_1_3_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 4) then {						//Schmerzen
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "schakalvier_1_4_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schmerzen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Knacke das Fahrzeug!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_3_1" setMarkerAlphaLocal 0;
						"schakalvier_1_4_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						//20 Soldaten foltern Check

						playSound "schakalvier_1_4_1";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schmerzen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_4_0" setMarkerAlphaLocal 0;
						"schakalvier_1_4_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 5) then {						//Schwäche die Ungläubigen
				if(_progress == 0) then {
					if(life_quest == 666) then {
						playSound "abhoeren_1_5_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schwäche die Ungläubigen <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> Kaufe das Abhörgerät"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"abhoeren_1_4_1" setMarkerAlphaLocal 0;
						"abhoeren_1_5_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						//Waffenlager Check

							playSound "schakalvier_1_5_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Schwäche die Ungläubigen - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+5000$ <br/> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_5_0" setMarkerAlphaLocal 0;
							"schakalvier_1_5_1" setMarkerAlphaLocal 1;
					};
				};
			};
			if(_nr == 6) then {						//Totaler Krieg
				if(_progress == 0) then {
					if(life_quest == 666) then {
						waitUntil { (6 >= (west countSide playableUnits)) };
						playSound "schakalvier_1_6_0";
						["Quest_Prof",1,1] call life_fnc_addLevel;
						[] call life_fnc_profSetup;
						[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Totaler Krieg <br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>Besorge dir 10 Informationen"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
						"schakalvier_1_5_1" setMarkerAlphaLocal 0;
						"schakalvier_1_6_0" setMarkerAlphaLocal 1;
					};
				};
				if(_progress == 1) then {
					if(life_quest == 666) then {

						//Halte alle 3 Gebiete und elimiere 2 hohe Offiziere. Gib 2 Offizier Dog Tags beim Warlord ab.

							playSound "schakalvier_1_6_1";
							["Quest_Prof",1,1] call life_fnc_addLevel;
							[] call life_fnc_profSetup;
							[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'> Totaler Krieg - Abgeschlossen! <br/> Belohnung erhalten <br /></t><t size='0.6' shadow='1' color='#EFFBEF'>+ 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
							"schakalvier_1_6_0" setMarkerAlphaLocal 0;
							"schakalvier_1_6_1" setMarkerAlphaLocal 1;
					};
				};
			};
		};
};