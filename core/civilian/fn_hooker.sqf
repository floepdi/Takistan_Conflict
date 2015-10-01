/*
	File: fn_hooker.sqf
	Author: Zaickz
	Version: 0.2
	
	Description:
	You can have Sex with prostitutes and may get ill ;)
*/

_mode = _this select 3;

switch (_mode) do 
{
	case "ficken": 
				{
					if(playerSide == west) exitWith
					{
						hint "Jetzt geht es nicht, der Commander hat gleich einen ""Termin"" bei mir. Geh schnell wieder Dienst schieben!";
					};
					if(currentWeapon player != "") exitWith
					{
						hint "Pack deine Waffe weg, sonst wird das zu pervers.";
					};

						//Prices
							_number = ceil(random 7);
							if(_number == 0) then { hookerprice = 100;};
							if(_number == 1) then { hookerprice = 1000;};
							if(_number == 2) then { hookerprice = 2500;};
							if(_number == 3) then { hookerprice = 5000;};
							if(_number == 4) then { hookerprice = 8500;};
							if(_number == 5) then { hookerprice = 10000;};
							if(_number == 6) then { hookerprice = 15000;};
							if(_number == 7) then { hookerprice = 20000;};
							_pplayer = _this select 0;
							
							//Chance of get some sexualill
							_number1 = ceil(random 100);
							if(_number1<33) then { sexualill = 0;};
							if(_number1>33) then { sexualill = 0;};
							if(_number1>66) then { sexualill = 0;};
					
					sleep 1;
					_playercosts = hookerprice;
					_playersexill = sexualill;						
						if(life_cash < hookerprice) exitWith 
						{
							hint "Du hast nicht genug Geld? ...Ohne Kohle kriegste hier nicht mal Handjob. Verpiss dich!";
						};
						/*
						if(life_sex_ill > 0) exitWith
						{
							hint "Geschlechtskrankheit? Geh erstmal zum Arzt bevor du hier rum vögelst!";
						};
						*/
						hint format["Das hat mir gefallen suesser :* \n Du musst %1 $ zahlen. \n\n Ach ja, ich glaube der Captain hat mir neulich einen Tripper verpasst...evtl. solltest du mal zum Arzt.",_playercosts];
						life_cash = life_cash - _playercosts;
						//life_sex_ill = life_sex_ill + _playersexill;

						/*
						if(_playersexill == 1) then
						{
							player setDamage 0.25;
						};
						if(_playersexill == 2) then
						{
							player setDamage 0.50;
						};	
						*/
				};
};