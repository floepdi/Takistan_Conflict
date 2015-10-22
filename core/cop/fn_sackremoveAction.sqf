/*
	File: fn_sackremoveAction.sqf
	Author: Jester

*/
player SetVariable ["Sack",false,true];

"colorCorrections" ppEffectEnable false;
titleText["Dir wurde der Sack wieder abgenommen.","PLAIN"];
removeHeadgear player;
player addHeadgear life_kopf;



