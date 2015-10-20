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

if (1 == _reihe) then // 72 Jungfrauen
	{
			if (_nr == 1) then //Der Fremde
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 1 0
							{
								_user setVariable ["quest", 111, false];
								/*
								[format[" Du bist neu in der Stadt, oder?"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Ich sehe dir an, dass du ein treuer Diener Allahs bist."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Oben auf dem Berg wohnt ein alter Eremit, der große Kenntnis der heiligen Schriften hat."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Besuche ihn doch mal, er wird dich sicher erleuchten!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Laufbursche "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								*/
								playsound "quest_1_1_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Gehe zum Eremiten! <br /> + Questziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Quest_1_1_1" setMarkerAlphaLocal 1;

							};
					if (_progress == 1) then
							{
							_p = _user getVariable "quest"; //Questabgabe 1 1 1
								if (_p == 111) then
								{
										_user setVariable ["quest", 0, false];
										/*
										[format["marḥaba, Fremder. Kommst du mich besuchen um über die Größe Allahs zu hören und ihm zu dienen?"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										 */
										 playsound "quest_1_1_1";
										"Quest_1_1_1" setMarkerAlphaLocal 0;
										["Level_Prof",100,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Quest: Geschichtenerzähler freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

								}
							};
					};
			};

			if (_nr == 2) then //Geschichtenerzähler
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 2 0
							{
								if (life_quest == 1) then
								{
								_user setVariable ["quest", 121, false];
								/*
								[format[" Diese ungläubigen Hunde haben die Versorgung unserer Familien abgeschnitten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Loy Manara hungert! Diese Vorräte müssen dort verteilt werden!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Hungersnot "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								*/
								playsound "quest_1_2_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Besorge ein Glas Ziegenmilch vom Markt! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Quest_1_2_1" setMarkerAlphaLocal 1;
								};
							};
					if (_progress == 1) then //Questabgabe 1 2 1
							{
							_p = _user getVariable "quest";
								if ((_p == 121) AND (life_quest == 2)) then
								{
									if ([false,"ziegenmilch",1] call life_fnc_handleInv) then
									{
										_user setVariable ["quest", 0, false];
										/*
										[format["Dich muss Allah schicken! Lange hätten wir es nicht mehr ausgehalten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										*/
										playsound "quest_1_2_1";
										"Quest_1_2_1" setMarkerAlphaLocal 0;
										["Level_Prof",100,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 100 Erfahrung <br /> + Quest: Das Paradies freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
									};
								}
								else
								{
									hint "Besorg zuerst Ziegenmilch für mich!";
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
								if (life_quest == 3) then
								{
								_user setVariable ["quest", 131, false];
								/*
								[format[" Diese ungläubigen Hunde haben die Versorgung unserer Familien abgeschnitten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Loy Manara hungert! Diese Vorräte müssen dort verteilt werden!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Hungersnot "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								*/
								playsound "quest_1_3_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Gehe zum Imam! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Quest_1_3_1" setMarkerAlphaLocal 1;
								};
							};
					if (_progress == 1) then //Questabgabe 1 3 1
							{
							_p = _user getVariable "quest";
								if ((_p == 131) AND (life_quest == 4)) then
								{

										_user setVariable ["quest", 0, false];
										/*
										[format["Dich muss Allah schicken! Lange hätten wir es nicht mehr ausgehalten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										*/
										playsound "quest_1_3_1";
										"Quest_1_3_1" setMarkerAlphaLocal 0;
										["Level_Prof",250,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 250 Erfahrung <br /> + Quest: Vorbereitungen freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								};
							};
					};
			};

			if (_nr == 4) then //Vorbereitungen
			{
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 4 0
							{
								if (life_quest == 5) then
								{
								_user setVariable ["quest", 141, false];
								/*
								[format[" Diese ungläubigen Hunde haben die Versorgung unserer Familien abgeschnitten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Loy Manara hungert! Diese Vorräte müssen dort verteilt werden!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Hungersnot "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								*/
								playsound "quest_1_4_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Stelle Sprengstoff her! <br /> + Besorge einen Guertel beim Markt! <br /> + Questziel markiert!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Quest_1_4_1" setMarkerAlphaLocal 1;
								};
							};
					if (_progress == 1) then //Questabgabe 1 4 1
							{
							_p = _user getVariable "quest";
								if ((_p == 141) AND (life_quest == 6)) then
								{
										if (([false,"guertel",1] call life_fnc_handleInv) AND ([false,"sprengstoff",1] call life_fnc_handleInv)) then
										{
										[true,"sprengstoff",1] call life_fnc_handleInv;
										[true,"guertel",1] call life_fnc_handleInv;
										_user setVariable ["quest", 0, false];
										/*
										[format["Dich muss Allah schicken! Lange hätten wir es nicht mehr ausgehalten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										*/
										playsound "quest_1_4_1";
										"Quest_1_4_1" setMarkerAlphaLocal 0;
										["Level_Prof",250,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										life_cash = life_cash + 10000;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: 72 Jungfrauen freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
				if ((side _user) == civilian) then
					{
					if (_progress == 0) then //Queststart 1 5 0
							{
								if (life_quest == 7) then
								{
								_user setVariable ["quest", 151, false];
								/*
								[format[" Diese ungläubigen Hunde haben die Versorgung unserer Familien abgeschnitten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Loy Manara hungert! Diese Vorräte müssen dort verteilt werden!"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Hungersnot "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								*/
								playsound "quest_1_5_0";
								["Quest_Prof",1,1] call life_fnc_addLevel;
								[] call life_fnc_profSetup;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ Baue eine Sprengstoffweste! <br /> + Sprenge dich samt eines Soldaten in die Luft!"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Quest_1_5_1" setMarkerAlphaLocal 1;
								};
							};
					if (_progress == 1) then //Questabgabe 1 5 1
							{
							_p = _user getVariable "quest";
								if ((_p == 151) AND (life_quest == 8)) then
								{
										if (([false,"guertel",1] call life_fnc_handleInv) AND ([false,"sprengstoff",1] call life_fnc_handleInv)) then
										{
										[true,"sprengstoff",1] call life_fnc_handleInv;
										[true,"guertel",1] call life_fnc_handleInv;
										_user setVariable ["quest", 0, false];
										/*
										[format["Dich muss Allah schicken! Lange hätten wir es nicht mehr ausgehalten."],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
										sleep 6;
										*/
										playsound "quest_1_4_1";
										"Quest_1_4_1" setMarkerAlphaLocal 0;
										["Level_Prof",250,1] call life_fnc_addLevel;
										["Quest_Prof",1,1] call life_fnc_addLevel;
										[] call life_fnc_profSetup;
										life_cash = life_cash + 10000;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 250 Erfahrung <br /> + Quest: 72 Jungfrauen freigeschalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
