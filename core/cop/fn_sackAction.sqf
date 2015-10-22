/*
	File: fn_sackAction.sqf
	Author: Jester

*/

player SetVariable ["Sack",true,true];

"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1,1,1,[0,0,0,0],[0,0,0,0],[0,0,0,0]];
"colorCorrections" ppEffectCommit 1;


titleText["Dir wurde ein Sack ueber den Kopf gezogen.","PLAIN"];
life_kopf = headgear player;
player addHeadgear "mgsr_headbag";

