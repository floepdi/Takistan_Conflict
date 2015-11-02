private["_veh, _newPos"];
_veh = cursorTarget; //Why isn't the cursorTarget given over by vInteraction? Doesn't matter.
if(isNull _veh) exitWith {}; //Exit if Null
if(_veh isKindOf "Air") exitWith {titleText["Das ist kein Fahrzeug.","PLAIN"];}; //Exit if no car or boat
if({alive _x} count crew _veh > 0) exitWith {titleText["Da ist noch jemand in deinem Fahrzeug.","PLAIN"];}; //Exit if crew in car
if(damage _veh > 0.5) exitWith {titleText["Reparier zuerst dein Fahrzeug!.","PLAIN"];};//Exit if car is damaged
if (!(_veh in life_vehicles)) exitWith {titleText["Das ist nicht dein Fahrzeug!.","PLAIN"];};//Exit if car is not owned by player

titleText["Bitte nimm etwas Abstand, dein Fahrzeug wird in 4 Sekunden repositioniert.","PLAIN"]; //Announce

sleep 4;
_newPos = getPosASL _veh;
_newPos set [2, (_newPos select 2)+1];
_veh setVectorUp (surfaceNormal _newPos);
_veh setPosASL _newPos;