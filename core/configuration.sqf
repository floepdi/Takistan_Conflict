#include <macro.h>
/*
    Master Life Configuration File
    This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_HC_Timer = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
Life_request_timer = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_i = false;
life_space = false;
D41_IsBuying = 0;
life_removeWanted = false;
life_action_gathering = false;
life_smartphoneTarget = ObjNull;
life_channel_send = true;
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,100); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,5000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
D41_Tankt = false;
life_delivery_in_progress = false;
life_transport_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_exp = 0;
life_level = 1;
life_quest = 0;
life_questinfo = 0;
life_payday = 0;
life_paytime = 0;
life_abzeichen = 0;
life_kopf = "";
life_blood = 100;
life_bloodmulti = 0;
life_morphin = false;
life_morphin_cd = false;
life_unconscious = false;
__CONST__(life_paycheck_period,50000); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,500);
__CONST__(life_impound_boat,500);
__CONST__(life_impound_air,1000);
life_istazed = false;
life_my_gang = ObjNull;
life_muted = false;
life_failed = false;
life_bekanntschaften = [];
life_kills = 0;
life_ishealing = false;

life_vehicles = [];
bank_robber = [];
life_bloodstatus = "";
switch (playerSide) do
{
    case west:
    {
        life_cop_atmcash = 10000; //Starting Bank Money
        life_cash= 100;    //Starting Cash Money
    };
    case civilian:
    {
        life_atmcash = 500; //Starting Bank Money
        life_cash= 100;    //Starting Cash Money

    };

    case independent: {
        life_atmcash = 10000;

    };
};

/*
    Master Array of items?
*/
life_masked = [
"H_Shemag_olive",
"kio_vfv_mask",
"kio_skl_msk_grn",
"kio_skl_msk_red",
"kio_skl_msk",
"H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_blue_F",
"H_RacingHelmet_1_red_F",
"H_RacingHelmet_1_orange_F",
"H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_white_F",
"H_RacingHelmet_1_yellow_F",
"U_C_Driver_2",
"U_C_Driver_1",
"U_C_Driver_3",
"U_C_Driver_4",
"IS_shemag_black",
"H_Shemag_tan",
"H_ShemagOpen_khk",
"IS_Balaclava",
"G_Balaclava_oli",
"TRYK_Shemagh_G",
"H_Shemag_olive",
"G_mas_wpn_bala_mask_b",
"G_Bandanna_shades",
"G_Bandanna_beast"
];

life_vShop_rentalOnly = ["C_Van_01_transport_F","rhs_gaz66_ammo_vmf","rhs_gaz66_vmf","RHS_Ural_Open_Civ_01","RHS_Ural_Fuel_MSV_01","B_Truck_01_ammo_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items =
[
    "life_inv_oilu",
    "life_inv_steel",
    "life_inv_plastic",
    "life_inv_coalu",
    "life_inv_coalp",
    "life_inv_oilp",
    "life_inv_heroinu",
    "life_inv_heroinp",
    "life_inv_heroinr",
    "life_inv_cannabis",
    "life_inv_marijuana",
    "life_inv_marijuanar",
    "life_inv_apple",
    "life_inv_rabbit",
    "life_inv_barrier",
    "life_inv_barricade",
    "life_inv_strahler",
    "life_inv_salema",
    "life_inv_ornate",
    "life_inv_mackerel",
    "life_inv_tuna",
    "life_inv_mullet",
    "life_inv_catshark",
    "life_inv_turtle",
    "life_inv_fishingpoles",
    "life_inv_water",
    "life_inv_donuts",
    "life_inv_bluesyn",
    "life_inv_turtlesoup",
    "life_inv_coffee",
    "life_inv_fuelF",
    "life_inv_fuelE",
    "life_inv_pickaxe",
    "life_inv_copperore",
    "life_inv_ironore",
    "life_inv_ironr",
    "life_inv_copperr",
    "life_inv_sand",
    "life_inv_salt",
    "life_inv_saltr",
    "life_inv_glass",
    "life_inv_tbacon",
    "life_inv_lockpick",
    "life_inv_redgull",
    "life_inv_peach",
    "life_inv_diamond",
    "life_inv_coke",
    "life_inv_cokep",
    "life_inv_diamondr",
    "life_inv_spikeStrip",
    "life_inv_rock",
    "life_inv_hopfen",
    "life_inv_malz",
    "life_inv_bier",
    "life_inv_schnaps",
    "life_inv_pilze",
    "life_inv_guertel",
    "life_inv_sprengstoff",
    "life_inv_magicmushrooms",
    "life_inv_schlafmittel",
    "life_inv_cement",
    "life_inv_goldbar",
    "life_inv_blastingcharge",
    "life_inv_boltcutter",
    "life_inv_defusekit",
    "life_inv_Box_IND_AmmoVeh_F",
    "life_inv_Box_IND_Grenades_F",
    "life_inv_B_supplyCrate_F",
    "life_inv_Box_IND_WpsSpecial_F",
    "life_inv_fladenbrot",
    "life_inv_dattel",
    "life_inv_ziegenmilch",
    "life_inv_burger",
    "life_inv_cola",
    "life_inv_zipties",
    "life_inv_sprengsatz",
    "life_inv_fernzuender",
    "life_inv_battery",
    "life_inv_antenne",
    "life_inv_gehaeuse",
    "life_inv_pipe",
    "life_inv_behaelter",
    "life_inv_pistolenlieferung",
    "life_inv_nahrungsmittel",
    "life_inv_munitionslieferung",
    "life_inv_aklieferung",
    "life_inv_gestohlenevisiere",
    "life_inv_uniformen",
    "life_inv_koran",
    "life_inv_kondome",
    "life_inv_sniperkiste",
    "life_inv_altpapier",
    "life_inv_blumenerde",
    "life_inv_golderz",
    "life_inv_goldbarren",
    "life_inv_depotwaffen",
    "life_inv_information",
    "life_inv_abhoergeraet",
    "life_inv_sulfuru",
    "life_inv_sulfurp",
    "life_inv_nitre",
    "life_inv_potassiumnitrate",
    "life_inv_gunpowder",
    "life_inv_nitroglycerin",
    "life_inv_flask",
    "life_inv_explosive",
    "life_inv_dogtag",
    "life_inv_kochsalz",
    "life_inv_bandage",
    "life_inv_traumakit",
    "life_inv_morphin",
    "life_inv_epikit"
];


//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
    ["license_cop_air","cop"],
    ["license_cop_drone","cop"],
    ["license_cop_swat","cop"],
    ["license_cop_cg","cop"],
    ["license_civ_driver","civ"],
    ["license_civ_air","civ"],
    ["license_civ_air1","civ"],
    ["license_civ_heroin","civ"],
    ["license_civ_heroinr","civ"],
    ["license_civ_marijuana","civ"],
    ["license_civ_cannabis","civ"],
    ["license_civ_gang","civ"],
    ["license_civ_boat","civ"],
    ["license_civ_oil","civ"],
    ["license_civ_dive","civ"],
    ["license_civ_truck","civ"],
    ["license_civ_gun","civ"],
    ["license_civ_bluesyn","civ"],
    ["license_civ_rebel","civ"],
    ["license_civ_coke","civ"],
    ["license_civ_diamond","civ"],
    ["license_civ_copper","civ"],
    ["license_civ_iron","civ"],
    ["license_civ_sand","civ"],
    ["license_civ_salt","civ"],
    ["license_civ_cement","civ"],
    ["license_med_air","med"],
    ["license_civ_home","civ"],
    ["license_civ_steel","civ"],
    ["license_civ_coal","civ"],
    ["license_civ_plastic","civ"],
    ["license_civ_bier","civ"],
    ["license_civ_schnaps","civ"],
    ["license_civ_pilze","civ"],
    ["license_civ_gold","civ"],
    ["license_civ_sulfur","civ"],
    ["license_civ_nitre","civ"],
    ["license_civ_gunpowder","civ"],
    ["license_civ_explosive","civ"]
    ];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_prof =
[

["Level_Prof","civ"],
["Quest_Prof","civ"],
["QuestInfo_Prof","civ"],
["Payday_Prof","civ"],
["Paytime_Prof","civ"],
["Abzeichen_Prof","cop"]
/*
["Mafia_Prof","civ"],
["Oil_Prof","civ"],
["Iron_Prof","civ"],
["Copper_Prof","civ"],
["Heroin_Prof","civ"],
["Canabis_Prof","civ"],
["Cocain_Prof","civ"],
["Salt_Prof","civ"],
["Fruit_Prof","civ"],
["Diamond_Prof","civ"],
["Rock_Prof","civ"],
["Coal_Prof","civ"],
["Sand_Prof","civ"],
["Malz_Prof","civ"],
["Hopfen_Prof","civ"],
["Pilze_Prof","civ"]
*/

];


//Setup License Variables
{missionNamespace setVariable[(_x select 0),[1,0]];} foreach life_prof;


life_dp_points = ["di_1","di_2","di_3","di_4","di_5","di_6","di_7","di_8","di_9","di_10","di_11"];
//[shortVar,reward]
life_illegal_items =
    [
        ["heroinu",15],
        ["heroinp",16],
        ["heroinr",17],
        ["cocaine",15],
        ["cocainep",16],
        ["cannabis",13],
        ["marijuana",14],
        ["marijuanar",15],
        ["turtle",5],
        ["blastingcharge",100],
        ["boltcutter",100],
        ["bluesyn",1],
        ["pilze",1],
        ["magicmushrooms",1],
        ["schlafmittel",1],
        ["goldbar",20],
        ["sprengstoff",200],
        ["sprengsatz",200],
        ["spikeStrip",50],
        ["munitionslieferung",100],
        ["aklieferung",125],
        ["gestohlenevisiere",125],
        ["uniformen",150],
        ["kondome",1337],
        ["sniperkiste",2000],
        ["golderz",18],
        ["goldbarren",20],
        ["infomation",100],
        ["abhoergeraet",200],
        ["sulfuru",17],
        ["sulfurp",18],
        ["nitre",19],
        ["potassiumnitrate",20],
        ["gunpowder",20],
        ["nitroglycerin",25],
        ["explosive", 200],
        ["dogtag", 100]
        ];


/*
    Sell / buy arrays
*/
sell_array =
{[
    ["heroinu",5],
    ["heroinp",25],
    ["heroinr",30],
    ["oilp",20],
    ["water",0],
    ["coffee",0],
    ["donuts",0],
    ["cannabis",5],
    ["marijuana",20],
    ["marijuanar",25],
    ["tbacon",0],
    ["lockpick",0],
    ["spikeStrip",0],
    ["barrier",0],
    ["barricade",0],
    ["strahler",0],
    ["zipties",0],
    ["sprengstoff",0],
    ["guertel",0],
    ["fladenbrot",0],
    ["dattel",0],
    ["ziegenmilch",0],
    ["burger",0],
    ["cola",0],
    ["sprengsatz",0],
    ["fernzuender",0],
    ["battery",0],
    ["pipe",0],
    ["gehaeuse",0],
    ["antenne",0],
    ["schlafmittel",0],
    ["behaelter",0],
    ["pistolenlieferung",0],
    ["nahrungsmittel",0],
    ["munitionslieferung",0],
    ["aklieferung",0],
    ["gestohlenevisiere",0],
    ["uniformen",0],
    ["koran",0],
    ["kondome",0],
    ["sniperkiste",0],
    ["golderz",5],
    ["goldbarren",50],
    ["infomation",50],
    ["sulfuru",0],
    ["sulfurp",0],
    ["nitre", 0],
    ["potassiumnitrate", 0],
    ["nitroglycerin", 0],
    ["gunpowder", 0],
    ["explosive", 0]
];};
//__CONST__(sell_array,sell_array);

buy_array =
{[
    ["donuts",4],
    ["coffee",3],
    ["tbacon",5],
    ["lockpick",200],
    ["fuelF",50],
    ["spikeStrip",10],
    ["barrier",10],
    ["barricade",10],
    ["strahler",10],
    ["blastingcharge",500],
    ["boltcutter",500],
    ["defusekit",10],
    ["guertel",50],
    ["dattel",3],
    ["fladenbrot",4],
    ["ziegenmilch",3],
    ["burger",4],
    ["cola",5],
    ["battery",50],
    ["pipe",50],
    ["gehaeuse",50],
    ["antenne",50],
    ["coalp",10],
    ["behaelter",50],
    ["flask",100],
    ["nitroglycerin",200],
    ["altpapier",50],
    ["blumenerde",20],
    ["epikit",100],
    ["bandage",25],
    ["kochsalz",50],
    ["morphin",100]
];};
//__CONST__(buy_array,buy_array);

life_garage_prices =
[

    //Helis
    ["GR_Bell412_3",750],
    ["GR_Mi8_1",2000],
    ["GR_Mi_171_2",3500],

    //Level
    ["RDS_Lada_Civ_01",20],
    ["RDS_S1203_Civ_01",25],
    ["RDS_Gaz24_Civ_01",35],
    ["rhs_uaz_open_MSV_01",45],
    ["UAZ_Unarmed",45],
    ["RDS_Octavia_Civ_01",50],
    ["C_Quadbike_01_F",20],
    ["RDS_Ikarus_Civ_01",55],
    ["B_mas_cars_Hilux_Unarmed",60],
    ["B_mas_cars_LR_Unarmed",65],
    ["I_mas_cars_UAZ_M2",85],
    ["B_mas_cars_Hilux_M2",90],
    ["I_mas_cars_LR_soft_M2",95],
    ["I_mas_cars_UAZ_MG",100],
    ["B_mas_cars_Hilux_MG",105],
    ["B_G_Offroad_01_armed_F",110],
    ["rhs_tigr_vdv",125],
    ["C_Hatchback_01_F",100],
    ["C_SUV_01_F",150],
    ["max_Dodge_multy",175],
    ["I_mas_cars_UAZ_SPG9",250],
    ["B_mas_cars_Hilux_SPG9",260],
    ["O_MRAP_02_F",300]



];

__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
    //Helis
    ["GR_Bell412_3",0],
    ["GR_Mi8_1",0],
    ["GR_Mi_171_2",0],

    //Level
    ["RDS_Lada_Civ_01",0],
    ["RDS_S1203_Civ_01",0],
    ["RDS_Gaz24_Civ_01",0],
    ["rhs_uaz_open_MSV_01",0],
    ["UAZ_Unarmed",0],
    ["RDS_Octavia_Civ_01",0],
    ["C_Quadbike_01_F",0],
    ["RDS_Ikarus_Civ_01",0],
    ["B_mas_cars_Hilux_Unarmed",0],
    ["B_mas_cars_LR_Unarmed",0],
    ["I_mas_cars_UAZ_M2",0],
    ["B_mas_cars_Hilux_M2",0],
    ["I_mas_cars_LR_soft_M2",0],
    ["I_mas_cars_UAZ_MG",0],
    ["B_mas_cars_Hilux_MG",0],
    ["B_G_Offroad_01_armed_F",0],
    ["rhs_tigr_vdv",0],
    ["C_Hatchback_01_F",0],
    ["C_SUV_01_F",0],
    ["max_Dodge_multy",0],
    ["I_mas_cars_UAZ_SPG9",0],
    ["B_mas_cars_Hilux_SPG9",0],
    ["O_MRAP_02_F",0]
];
__CONST__(life_garage_sell,life_garage_sell);

life_rebAmount = 10000
