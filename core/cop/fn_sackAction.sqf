/*
	File: fn_sackAction.sqf
	Author: Jester

*/

"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1,1,1,[0,0,0,0],[0,0,0,0],[0,0,0,0]];
"colorCorrections" ppEffectCommit 1;
player SetVariable ["Sack",1,true];

titleText["Dir wurde ein Sack ueber den Kopf gezogen.","PLAIN"];
