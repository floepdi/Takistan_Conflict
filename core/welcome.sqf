/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Edit: synced-gaming.de
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 8;

sleep 15; //Wait in seconds before the credits start after player is in-game

_role1 = "Willkommen auf dem Takistan Server von:";
_role1names = ["synced-gaming.de"];
_role2 = "Administration";
_role2names = ["Phil","Largo","Jester"];
_role3 = "Entwickler";
_role3names = ["Phil","Jester","xydra"];
_role4 = "Koordination";
_role4names = ["Largo","Sechmoo","steini","di Mentana"];
_role5 = "Support";
_role5names = ["-Joe","Harris","Yahell","Ben"];
_role6 = "Website:";
_role6names = ["www.synced-gaming.de"];
_role7 = "Teamspeak:";
_role7names = ["ts3.synced-gaming.de"];
_role8 = "Regeln:";
_role8names = ["Lest die Regeln unter synced-gaming.de!"];
/*
_role8 = "Wiki:";
_role7names = ["Alle Informationen unter synced-gaming.enjin.com/wiki/"];
*/
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.55' color='#a6f20b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
//[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
//[_role8, _role7names]
];