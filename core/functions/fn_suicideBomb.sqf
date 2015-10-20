/*
ALAH SNACKBAR!
*/
private["_test","_p"];
if(vest player != "V_HarnessOGL_brn") exitWith {};
_test = "Bo_Mk82" createVehicle [0,0,9999];
_test setPos (getPos player);
_test setVelocity [100,0,0];

_p = player getVariable "quest";
if {((_p == 151) OR (life_quest == 8))} then
{
 [[1,5,1],"life_fnc_quest",player,false] spawn life_fnc_MP;
};
if(alive player) then {player setDamage 1;};
removeVest player;
[[0,format["%1 hat sich in die Luft gesprengt.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;