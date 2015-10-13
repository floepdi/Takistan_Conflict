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

	 /*
	 if(_profText == "mafia") then
	 {

		_nextLevel = 0;
		_nextLevel = 4 * ( _profLevel^3 ) ;
		_nextLevel2 =  10 * ( _profLevel^2 ) ;
		_nextLevel = _nextLevel - _nextLevel2;
		_nextLevel3 = 50 * _profLevel ;
		_nextLevel = _nextLevel + _nextLevel3;


		 if((__GETC__(life_mafialevel) > 0)) then
		 {
				hint "mafia";
				_struct3 = _struct3 + (format["Exp: %1/%2<br/>", _profExp,_nextLevel ]);
				_struct2 = _struct2 + (format["LvL: %1<br/>",_profLevel]);
				_struct = _struct + format["%1<br/>",_profText];

		 };
	 }
	 else
	 {
	 */

		_nextLevel = 0;
		_nextLevel = 8 * ( _profLevel^3 ) ;
		_nextLevel2 =  6 * ( _profLevel^2 ) ;
		_nextLevel = _nextLevel - _nextLevel2;
		_nextLevel3 = 20 * _profLevel ;
		_nextLevel = _nextLevel + _nextLevel3;


		if(_profText=="mafia") then
		{

		_nextLevel = 0;
		_nextLevel = 4 * ( _profLevel^3 ) ;
		_nextLevel2 =  10 * ( _profLevel^2 ) ;
		_nextLevel = _nextLevel - _nextLevel2;
		_nextLevel3 = 50 * _profLevel ;
		_nextLevel = _nextLevel + _nextLevel3;
		};


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

};

	//};

	if(_profText=="Mafia" && (__GETC__(life_mafialevel)) == 0) then
	{
	}
	else
	{
	if(_profText=="Level") then
			{
				_struct3 = _struct3 + (format["%1<br/> %2 %", _profExp,_profLevel ]);
				_struct2 = _struct2 + (format["<br/>"]);
				_struct = _struct + format["%1<br/>",_profText];
			}
			else
			{
				_struct3 = _struct3 + (format["Exp: %1/%2<br/>", _profExp,_nextLevel ]);
				_struct2 = _struct2 + (format["LvL: %1<br/>",_profLevel]);
				_struct = _struct + format["%1<br/>",_profText];
			};
	};




} foreach life_prof;
