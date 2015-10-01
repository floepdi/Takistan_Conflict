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


				_profExp = (_profExp/10); //5,4 / 5,6
				_profExp2 = round(_profExp); //5 / 6
				if (_profExp2 > _profExp) then //  5 > 5,4 = else / 6 > 5,6 = if
				{
				_profLevelanzeige = (_profExp2 - 1); // Level 5 (6-1)
				_profExpanzeige = (_profExp - _profLevelanzeige); // Exp 0,6
				_profExpanzeige = (_profExpanzeige *100); // Exp 60 (%)
				life_level = round(_profLevelanzeige);
				life_exp = round(_profExpanzeige);
				[] call life_fnc_hudUpdate;
				} else {
				_profLevelanzeige = _profExp2; // Level 5
				_profExpanzeige = _profExp - _profExp2; // Exp 0,4
				_profExpanzeige = (_profExpanzeige * 100); // Exp 40 (%)
				life_level = round(_profLevelanzeige);
				life_exp = round(_profExpanzeige);
				[] call life_fnc_hudUpdate;
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
