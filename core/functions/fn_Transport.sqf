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
								life_transport_in_progress = true;
								_user setVariable ["transport", 11, false];
								playSound "transport_1_1_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Kiste mit Pistolen erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
										life_transport_in_progress = false;
										_user setVariable ["transport", 0, false];
										playSound "transport_1_1_1";
										"Transport_1_1" setMarkerAlphaLocal 0;
										_reward  = 10000;
										life_cash = life_cash + _reward;
										_level = 100;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										if (life_quest == 3) then {["QuestInfo_Prof",1,1] call life_fnc_addLevel;};
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 10000$ <br /> + 100 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
								life_transport_in_progress = true;
								_user setVariable ["transport", 12, false];
								playSound "transport_1_2_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Kiste mit Nahrungsmitteln erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
										life_transport_in_progress = false;
										_user setVariable ["transport", 0, false];
										playSound "transport_1_2_1";
										"Transport_1_2" setMarkerAlphaLocal 0;
										_level = 200;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										if (life_quest == 3) then {["QuestInfo_Prof",1,1] call life_fnc_addLevel;};
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 200 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
								life_transport_in_progress = true;
								_user setVariable ["transport", 13, false];
								playSound "transport_1_3_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Kiste mit Munition erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
										life_transport_in_progress = false;
										_user setVariable ["transport", 0, false];
										playSound "transport_1_3_1";
										"Transport_1_3" setMarkerAlphaLocal 0;
										_reward  = 15000;
										life_cash = life_cash + _reward;
										_level = 15;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										if (life_quest == 3) then {["QuestInfo_Prof",1,1] call life_fnc_addLevel;};
										[] call life_fnc_profSetup;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 15000$ <br /> + 150 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
								life_transport_in_progress = true;
								_user setVariable ["transport", 21, false];
								playSound "transport_2_1_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Kiste mit AKs erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
											life_transport_in_progress = false;
											_user setVariable ["transport", 0, false];
											playSound "transport_2_1_1";
											"Transport_2_1" setMarkerAlphaLocal 0;
											_level = 25;
											["Level_Prof",_level,1] call life_fnc_addLevel;
											if (life_quest == 31) then {["QuestInfo_Prof",1,1] call life_fnc_addLevel;};
											[] call life_fnc_profSetup;
											[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + AK74M (Folded) <br /> + 250 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

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
								life_transport_in_progress = true;
								_user setVariable ["transport", 22, false];
								playSound "transport_2_2_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Kiste mit Visieren erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
									if (!(player canAddItemtoBackpack _reward) OR !(player canAddITemtoUniform _reward) OR (player canADdItemToVest _rewward)) exitWith {hint "Mach zuerst Platz für eine Waffe, um die Belohnung entgegen zu nehmen"};
									if ([false,"gestohlenevisiere",1] call life_fnc_handleInv) then
									{
										life_transport_in_progress = false;
										_user setVariable ["transport", 0, false];
										playSound "transport_2_2_1";
										"Transport_2_2" setMarkerAlphaLocal 0;
										player addItemToBackpack _reward;
										_reward  = 20000;
										life_cash = life_cash + _reward;
										_level = 25;
										if (life_quest == 31) then {["QuestInfo_Prof",1,1] call life_fnc_addLevel;};
										["Level_Prof",_level,1] call life_fnc_addLevel;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'>+ ACO (rot) <br /> + 20000$ <br /> + 250 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

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
								life_transport_in_progress = true;
								_user setVariable ["transport", 23, false];
								playSound "transport_2_3_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Kiste mit Uniformen erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
									life_transport_in_progress = false;
									_user setVariable ["transport", 0, false];
									playSound "transport_2_3_1";
									"Transport_2_3" setMarkerAlphaLocal 0;
									_reward  = 30000;
									life_cash = life_cash + _reward;
									_level = 300;
									if (life_quest == 31) then {["QuestInfo_Prof",1,1] call life_fnc_addLevel;};
									["Level_Prof",_level,1] call life_fnc_addLevel;
									[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 30000$ <br /> + 300 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

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
								life_transport_in_progress = true;
								if ([true,"koran",1] call life_fnc_handleInv) then
								{
								_user setVariable ["transport", 31, false];
								playSound "transport_3_1_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Koran erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
											life_transport_in_progress = false;
											_user setVariable ["transport", 0, false];
											playSound "transport_3_1_1";
											"Transport_3_1" setMarkerAlphaLocal 0;
											_reward  = 30000;
											life_cash = life_cash + _reward;
											_level = 50;
											["Level_Prof",_level,1] call life_fnc_addLevel;
											[] call life_fnc_profSetup;
											[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 30000$ <br /> + 500 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

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
								life_transport_in_progress = true;
								_user setVariable ["transport", 321, false];
								playSound "transport_3_2_0";
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
										playSound "transport_3_2_1";
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Kondome erhalten <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
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
										life_transport_in_progress = false;
										_user setVariable ["transport", 0, false];
										playSound "transport_3_2_2";
										"Transport_3_2_2" setMarkerAlphaLocal 0;
										_reward  = 50000;
										life_cash = life_cash + _reward;
										_level = 350;
										["Level_Prof",_level,1] call life_fnc_addLevel;
										[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 50000$ <br /> + 350 Erfahrung"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

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
								life_transport_in_progress = true;
								_user setVariable ["transport", 41, false];
								[format[" Du siehst mir aus wie ein fähiger Mann. "],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Wenn du mir eine Kiste mit schweren Waffen beschaffen kannst, dann wird es sich sicher für dich lohnen. "],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format[" Neue Quest - Schwächung der Nato "],0,0,5,0,0.1,1] spawn BIS_fnc_dynamicText;
								sleep 6;
								[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Neue Questinfo <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + Besorge Scharfschützengewehre <br /> + Transportziel markiert"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
								//Marker
								"Transport_4_1" setMarkerAlphaLocal 1;
								"Transport_4_2" setMarkerAlphaLocal 1;

							};
					if (_progress == 1) then
							{
							_p = _user getVariable "transport";
								if (_p == 41) then
								{
									if ([false,"depotwaffen",1] call life_fnc_handleInv) then
										{
											life_transport_in_progress = false;
											_user setVariable ["transport", 0, false];
											[format["Das ist die beste Ware, die ich in meinem Leben hier gesehen habe. !"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
											[format["Als bester Zulieferer bekommst du dafür exklusiven Zugang zu unserem Lackierer. Mit dieser Lackierung wird jeder sehen, welch großer Krieger du bist. Allahu Akbar, Bruder! !"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
											[format[" Allahu Akbar, Bruder! !"],0,0.8,5,0,0,1] spawn BIS_fnc_dynamicText;
											sleep 6;
											"Transport_4_1" setMarkerAlphaLocal 0;
											"Transport_4_2" setMarkerAlphaLocal 0;
											_reward  = 30000;
											life_cash = life_cash + _reward;
											_level = 50;
											["Level_Prof",_level,1] call life_fnc_addLevel;
											[] call life_fnc_profSetup;
											[format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Belohnung erhalten <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + 30000$ <br /> + 500 Erfahrung <br /> + neue Lackierung verfügbar"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;

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
