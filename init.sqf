enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "core\welcome.sqf";
[] execVM "zlt_fastrope.sqf";​
//[] execVM "core\market\fn_sysM.sqf";


/*
config_territory_markers = compileFinal preprocessFileLineNumbers "mapConfig\territories.sqf";
if (count (["config_territory_markers", []] call getPublicVar) > 0) then
{
	A3W_fnc_territoryActivityHandler = "territory\client\territoryActivityHandler.sqf" call mf_compile;
	[] execVM "territory\client\setupCaptureTriggers.sqf";
};
*/


//SLX_XEH_EXCL_CLASSES=["C_Offroad_01_F","DAR_TahoeCivRed","DAR_TahoeCivBlue","DAR_TahoeCivSilver","DAR_TahoeCivBlack","C_SUV_01_F","U_I_HeliPilotCoveralls","Jonzie_Viper","C_Hatchback_01_F"];
//Start server fsm
//[] execFSM "core\fsm\server.fsm";
//diag_log "Server FSM executed";


/*
O_Heli_Transport_04_medevac_F disableTIEquipment true;
O_Heli_Transport_04_F disableTIEquipment true;
O_Heli_Transport_04_bench_F disableTIEquipment true;
O_Heli_Transport_04_covered_F disableTIEquipment true;
*/

StartProgress = true;

// Grass (3.25 most / 50 least)
setTerrainGrid 50;

// Environment (Geräusche, Tiere, etc.)
enableEnvironment false;

//TaskForceRadio controls
//Stop spawning new long range radios
tf_no_auto_long_range_radio = true;
//Give out personal radios
TF_give_personal_radio_to_regular_soldier = false;

//Same frequencies for everyone
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;