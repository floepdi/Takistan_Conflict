#include <macro.h>

/*
File: fn_profSetUp.sqf
Author: Jacob "PapaBear" Tyler

Description:
Opens gui and fills info
*/

//fill text block profs
//format
// NAME LVL:1 EXP: xxx/yyyy
//character count? or 2 different textboxes

disableSerialization;
_dialog = findDisplay 7730;
_Names = _dialog displayCtrl 7731;
_Lvls = _dialog displayCtrl 7732;
_Exp = _dialog displayCtrl 7733;
_struct = "";
_struct2 = "";
_struct3 = "";
_spacesTill = 20;

_level0 = 0;
_level1 = 1250;
_level2 = 2250;
_level3 = 3500;
_level4 = 5000;
_level5 = 6750;
_level6 = 8750;
_level7 = 11000;
_level8 = 13500;
_level9 = 16250;
_level10 = 19250;
_level11 = 22750;
_level12 = 26750;
_level13 = 31250;
_level14 = 36250;
_level15 = 42250;
_level16 = 49250;
_level17 = 57250;
_level18 = 66250;
_level19 = 76250;
_level20 = 87250;
_level21 = 99250;
_level22 = 112750;
_level23 = 126750;
_level24 = 141750;
_level25 = 157750;
_level26 = 174750;
_level27 = 192750;
_level28 = 211750;
_level29 = 231750;
_level30 = 252750;
_level31 = 274750;
_level32 = 297750;
_level33 = 321750;
_level34 = 346750;
_level35 = 371750;
_level36 = 396750;
_level37 = 421750;
_level38 = 446750;
_level39 = 471750;
_level40 = 498750;
_level41 = 527750;
_level42 = 558750;
_level43 = 591750;
_level44 = 627750;
_level45 = 667750;
_level46 = 712750;
_level47 = 764750;
_level48 = 824750;
_level49 = 894750;
_level50 = 1618500;


{
	_numSpaces = 0;
	_profText = [_x select 0] call life_fnc_profType;
	_charCount = count _profText;
	_numSpaces = _spacesTill - _charCount;
	_data = missionNamespace getVariable (_x select 0);
	_profLevel = _data select 0;
	_profExp = _data select 1;

if (_profText == "abzeichen") then {

  life_abzeichen = _profExp;
};

if (_profText == "paytime") then {

  life_paytime = _profExp;
};

if (_profText == "payday") then {

  life_payday = _profExp;
};

if (_profText == "quest") then {

  life_quest = _profExp;
};

if (_profText == "questinfo") then {

  life_questinfo = _profExp;
};

if (_profText == "level") then {
switch (true) do {
	 case (_profExp == _level0):
	 {
		 life_level = 1;
		 life_exp = 0;
	 };

	case ((_profExp > _level0) AND (_profExp < _level1)):
	 {
		  life_level = 1;
		  _prozentsatz = (_profExp / _level1);
		  life_exp = (_prozentsatz * 100);
	 };

	case ((_profExp >= _level1) AND (_profExp < _level2)):
	 {
		  life_level = 2;
		  _levelexp = (_profExp - _level1);
		  _prozentsatz = (_levelexp / _level2);
		   if (_prozentsatz == 0) then {
	    	 life_exp = 1;
	     	}
	    	else
	    	{
	 		 life_exp = (_prozentsatz * 100);
	    	};
	 };

  	case ((_profExp >= _level2) AND (_profExp < _level3)):
	 {
		  life_level = 3;
		  _levelexp = (_profExp - _level2);
		  _prozentsatz = (_levelexp / _level3);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

	case ((_profExp >= _level3) AND (_profExp < _level4)):
	 {
		  life_level = 4;
		  _levelexp = (_profExp - _level3);
		  _prozentsatz = (_levelexp / _level4);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

	 case ((_profExp >= _level4) AND (_profExp < _level5)):
   {
      life_level = 5;
      _levelexp = (_profExp - _level4);
      _prozentsatz = (_levelexp / _level5);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };



    case ((_profExp >= _level5) AND (_profExp < _level6)):
   {
      life_level = 6;
      _levelexp = (_profExp - _level5);
      _prozentsatz = (_levelexp / _level6);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level6) AND (_profExp < _level7)):
   {
      life_level = 7;
      _levelexp = (_profExp - _level6);
      _prozentsatz = (_levelexp / _level7);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level7) AND (_profExp < _level8)):
   {
      life_level = 8;
      _levelexp = (_profExp - _level7);
      _prozentsatz = (_levelexp / _level8);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level8) AND (_profExp < _level9)):
   {
      life_level = 9;
      _levelexp = (_profExp - _level8);
      _prozentsatz = (_levelexp / _level9);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level9) AND (_profExp < _level10)):
   {
      life_level = 10;
      _levelexp = (_profExp - _level9);
      _prozentsatz = (_levelexp / _level10);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level10) AND (_profExp < _level11)):
   {
      life_level = 11;
      _levelexp = (_profExp - _level10);
      _prozentsatz = (_levelexp / _level11);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level11) AND (_profExp < _level12)):
   {
      life_level = 12;
      _levelexp = (_profExp - _level11);
      _prozentsatz = (_levelexp / _level12);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level12) AND (_profExp < _level13)):
   {
      life_level = 13;
      _levelexp = (_profExp - _level12);
      _prozentsatz = (_levelexp / _level13);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level13) AND (_profExp < _level14)):
   {
      life_level = 14;
      _levelexp = (_profExp - _level13);
      _prozentsatz = (_levelexp / _level14);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level14) AND (_profExp < _level15)):
   {
      life_level = 15;
      _levelexp = (_profExp - _level14);
      _prozentsatz = (_levelexp / _level15);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level15) AND (_profExp < _level16)):
   {
      life_level = 16;
      _levelexp = (_profExp - _level15);
      _prozentsatz = (_levelexp / _level16);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

      case ((_profExp >= _level16) AND (_profExp < _level17)):
   {
      life_level = 17;
      _levelexp = (_profExp - _level16);
      _prozentsatz = (_levelexp / _level17);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

        case ((_profExp >= _level17) AND (_profExp < _level18)):
   {
      life_level = 18;
      _levelexp = (_profExp - _level17);
      _prozentsatz = (_levelexp / _level18);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

        case ((_profExp >= _level18) AND (_profExp < _level19)):
   {
      life_level = 19;
      _levelexp = (_profExp - _level18);
      _prozentsatz = (_levelexp / _level19);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

        case ((_profExp >= _level19) AND (_profExp < _level20)):
   {
      life_level = 20;
      _levelexp = (_profExp - _level19);
      _prozentsatz = (_levelexp / _level20);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

        case ((_profExp >= _level20) AND (_profExp < _level21)):
   {
      life_level = 21;
      _levelexp = (_profExp - _level20);
      _prozentsatz = (_levelexp / _level21);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

        case ((_profExp >= _level21) AND (_profExp < _level22)):
   {
      life_level = 22;
      _levelexp = (_profExp - _level21);
      _prozentsatz = (_levelexp / _level22);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

        case ((_profExp >= _level22) AND (_profExp < _level23)):
   {
      life_level = 23;
      _levelexp = (_profExp - _level22);
      _prozentsatz = (_levelexp / _level23);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

        case ((_profExp >= _level23) AND (_profExp < _level24)):
   {
      life_level = 24;
      _levelexp = (_profExp - _level23);
      _prozentsatz = (_levelexp / _level24);
         if (_prozentsatz == 0) then {
          life_exp = 1;
        }
        else
        {
       life_exp = (_prozentsatz * 100);
        };
  };

		case ((_profExp >= _level24) AND (_profExp < _level25)):
	 {
		  life_level = 25;
		  _levelexp = (_profExp - _level24);
		  _prozentsatz = (_levelexp / _level25);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level25) AND (_profExp < _level26)):
	 {
		  life_level = 26;
		  _levelexp = (_profExp - _level25);
		  _prozentsatz = (_levelexp / _level26);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level26) AND (_profExp < _level27)):
	 {
		  life_level = 27;
		  _levelexp = (_profExp - _level26);
		  _prozentsatz = (_levelexp / _level27);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};


			case ((_profExp >= _level27) AND (_profExp < _level28)):
	 {
		  life_level = 28;
		  _levelexp = (_profExp - _level27);
		  _prozentsatz = (_levelexp / _level28);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

				case ((_profExp >= _level28) AND (_profExp < _level29)):
	 {
		  life_level = 29;
		  _levelexp = (_profExp - _level28);
		  _prozentsatz = (_levelexp / _level29);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level29) AND (_profExp < _level30)):
	 {
		  life_level = 30;
		  _levelexp = (_profExp - _level29);
		  _prozentsatz = (_levelexp / _level30);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level30) AND (_profExp < _level31)):
	 {
		  life_level = 31;
		  _levelexp = (_profExp - _level30);
		  _prozentsatz = (_levelexp / _level31);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level31) AND (_profExp < _level32)):
	 {
		  life_level = 32;
		  _levelexp = (_profExp - _level31);
		  _prozentsatz = (_levelexp / _level32);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level32) AND (_profExp < _level33)):
	 {
		  life_level = 33;
		  _levelexp = (_profExp - _level32);
		  _prozentsatz = (_levelexp / _level33);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level33) AND (_profExp < _level34)):
	 {
		  life_level = 34;
		  _levelexp = (_profExp - _level33);
		  _prozentsatz = (_levelexp / _level34);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level34) AND (_profExp < _level35)):
	 {
		  life_level = 35;
		  _levelexp = (_profExp - _level34);
		  _prozentsatz = (_levelexp / _level35);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level35) AND (_profExp < _level36)):
	 {
		  life_level = 36;
		  _levelexp = (_profExp - _level35);
		  _prozentsatz = (_levelexp / _level36);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level36) AND (_profExp < _level37)):
	 {
		  life_level = 37;
		  _levelexp = (_profExp - _level36);
		  _prozentsatz = (_levelexp / _level37);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level37) AND (_profExp < _level38)):
	 {
		  life_level = 38;
		  _levelexp = (_profExp - _level37);
		  _prozentsatz = (_levelexp / _level38);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level38) AND (_profExp < _level39)):
	 {
		  life_level = 39;
		  _levelexp = (_profExp - _level38);
		  _prozentsatz = (_levelexp / _level39);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level39) AND (_profExp < _level40)):
	 {
		  life_level = 40;
		  _levelexp = (_profExp - _level39);
		  _prozentsatz = (_levelexp / _level40);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level40) AND (_profExp < _level41)):
	 {
		  life_level = 41;
		  _levelexp = (_profExp - _level40);
		  _prozentsatz = (_levelexp / _level41);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level41) AND (_profExp < _level42)):
	 {
		  life_level = 42;
		  _levelexp = (_profExp - _level41);
		  _prozentsatz = (_levelexp / _level42);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level42) AND (_profExp < _level43)):
	 {
		  life_level = 43;
		  _levelexp = (_profExp - _level42);
		  _prozentsatz = (_levelexp / _level43);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level43) AND (_profExp < _level44)):
	 {
		  life_level = 44;
		  _levelexp = (_profExp - _level43);
		  _prozentsatz = (_levelexp / _level44);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level44) AND (_profExp < _level45)):
	 {
		  life_level = 45;
		  _levelexp = (_profExp - _level44);
		  _prozentsatz = (_levelexp / _level45);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level45) AND (_profExp < _level46)):
	 {
		  life_level = 46;
		  _levelexp = (_profExp - _level45);
		  _prozentsatz = (_levelexp / _level46);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level46) AND (_profExp < _level47)):
	 {
		  life_level = 47;
		  _levelexp = (_profExp - _level46);
		  _prozentsatz = (_levelexp / _level47);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level47) AND (_profExp < _level48)):
	 {
		  life_level = 48;
		  _levelexp = (_profExp - _level47);
		  _prozentsatz = (_levelexp / _level48);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case ((_profExp >= _level48) AND (_profExp < _level49)):
	 {
		  life_level = 49;
		  _levelexp = (_profExp - _level47);
		  _prozentsatz = (_levelexp / _level48);
  			 if (_prozentsatz == 0) then {
   			  life_exp = 1;
    		}
     		else
   			{
 			 life_exp = (_prozentsatz * 100);
    		};
	};

			case (_profExp >= _level49):
	 {
		  life_level = 50;
 		  life_exp = 1;
	};


};
};
} foreach life_prof;

[] call life_fnc_hudUpdate;
[] spawn
{
_levelup = (life_level + 1);
while {true} do
  {
  if (life_level == _levelup) then {
    if (_levelup == 2) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Uniform erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 3) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Equipment erhalten <br /> + neuen Rucksack erhalten <br /> + neue Weste erhalten <br /> + neue Kopfbedeckung erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 4) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Uniform erhalten <br /> + neues Fahrzeug erhalten <br /> + neue Kopfbedeckung erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 5) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Uniform erhalten <br /> + neue Weste erhalten <br /> + neues Equipment erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 6) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Uniform erhalten <br /> + neuen Rucksack erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 7) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Uniform erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 8) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Uniform erhalten <br /> + neues Equipment erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 9) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Uniform erhalten <br /> + neues Craftingrezept erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neuen Rucksack erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 10) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Uniform erhalten <br /> + neues Equipment erhalten <br /> + neues Accessoire erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 11) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neuen Rucksack erhalten <br /> + neue Uniform erhalten <br /> + neues Equipment erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 12) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neuen Zünder erhalten <br /> + neue Uniform erhalten <br /> + neues Visier erhalten <br /> + neues Accessoire erhalten <br /> + neue Kopfbedeckung erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 13) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Visier erhalten <br /> + neue Uniform erhalten <br /> + neuen Rucksack erhalten <br /> + neue Weste erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 14) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Visier erhalten <br /> + neues Equipment erhalten <br /> + neue Kopfbedeckung erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 15) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Equipment erhalten <br /> + neue Uniform erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 16) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Accessoire erhalten <br /> + neuen Rucksack erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 17) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Craftingrezept erhalten <br /> + neues Equipment erhalten <br /> + neue Uniform erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 18) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Visier erhalten <br /> + neue Uniform erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 19) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Visier erhalten <br /> + neue Accessoire erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 20) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Equipment erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 21) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Craftingrezept erhalten <br /> + neues Visier erhalten <br /> + neues Equipment erhalten <br /> + neue Uniform erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 22) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Fahrzeug erhalten <br /> + neues Equipment erhalten <br /> + neues Accessoire erhalten <br /> + neue Uniform erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 23) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 24) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Uniform erhalten <br /> + neues Equipment erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neuen Helikopter erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 25) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Equipment erhalten <br /> + neue Uniform erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 26) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Uniform erhalten <br /> + neues Equipment erhalten <br /> + neues Accessoire erhalten <br /> + neues Craftingrezept erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 27) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Uniform erhalten <br /> + neues Equipment erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 28) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Visier erhalten <br /> + neues Equipment erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 29) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Uniform erhalten <br /> + neues Visier erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 30) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neues Fahrzeug erhalten <br /> + neues Equipment erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 31) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Uniform erhalten <br /> + neues Accessoire erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 32) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Equipment erhalten <br /> + neue Uniform erhalten <br /> + neuen Helikopter erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 33) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neue Uniform erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 34) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neuen Rucksack erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText; /////////////////////////
    _levelup = (life_level + 1);
    };
    if (_levelup == 35) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Visier erhalten <br /> + neue Uniform erhalten <br /> + neues Craftingrezept erhalten <br /> + neues Equipment erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 36) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Equipment erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 37) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Visier erhalten <br /> + neue Uniform erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 38) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Munition erhalten <br /> + neue Uniform erhalten <br /> + neue Kopfbedeckung erhalten <br /> + neues Accessoire erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 39) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 40) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Equipment erhalten <br /> + neue Uniform erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 41) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Visier erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 42) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Munition erhalten <br /> + neues Equipment erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 43) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 44) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neues Equipment erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 45) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 46) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten <br /> + neues Visier erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 47) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Munition erhalten <br /> + neues Equipment erhalten <br /> + neues Fahrzeug erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 48) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Waffe erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 49) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Munition erhalten <br /> + neuen Helikopter erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
    if (_levelup == 50) then {
    [format ["<t align='left'><t size='0.8'  shadow='1'><t color='#A9F5A9'><br /> Level aufgestiegen! <br /></t><t size='0.6'  shadow='1' color='#EFFBEF'> + neue Munition erhalten <br /> + neue Uniform erhalten"],-0.7,0.5,15,0,0,1] spawn BIS_fnc_dynamicText;
    _levelup = (life_level + 1);
    };
  }

  };


};

if (playerSide == west) then {life_level = life_abzeichen;};