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

_dialog = findDisplay 7730;
_Names = _dialog displayCtrl 7731;
_Lvls = _dialog displayCtrl 7732;
_Exp = _dialog displayCtrl 7733;
_struct = "";
_struct2 = "";
_struct3 = "";
_spacesTill = 20;

_level0 = 0;
_level1 = 250;
_level2 = 750;
_level3 = 1750;
_level4 = 3000;
_level5 = 4750;
_level6 = 6750;
_level7 = 9000;
_level8 = 11500;
_level9 = 14250;
_level10 = 17250;
_level11 = 20500;
_level12 = 24000;
_level13 = 27750;
_level14 = 31750;
_level15 = 36000;
_level16 = 40500;
_level17 = 45500;
_level18 = 51000;
_level19 = 57000;
_level20 = 63500;
_level21 = 70500;
_level22 = 78000;
_level23 = 86000;
_level24 = 94500;
_level25 = 103500;
_level26 = 113000;
_level27 = 123000;
_level28 = 134000;
_level29 = 146000;
_level30 = 159000;
_level31 = 173000;
_level32 = 188000;
_level33 = 205000;
_level34 = 224000;
_level35 = 245500;
_level36 = 269500;
_level37 = 297500;
_level38 = 331500;
_level39 = 372500;
_level40 = 421500;
_level41 = 481500;
_level42 = 543500;
_level43 = 618500;
_level44 = 708500;
_level45 = 818500;
_level46 = 938500;
_level47 = 1078500;
_level48 = 1238500;
_level49 = 1418500;
_level50 = 1618500;


{
	_numSpaces = 0;
	_profText = [_x select 0] call life_fnc_profType;
	_charCount = count _profText;
	_numSpaces = _spacesTill - _charCount;
	_data = missionNamespace getVariable (_x select 0);
	_profLevel = _data select 0;
	_profExp = _data select 1;

switch (true) do {
	 case (_profExp == _level0):
	 {
		 life_level = 1;
		 life_exp = 1;
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

} foreach life_prof;
