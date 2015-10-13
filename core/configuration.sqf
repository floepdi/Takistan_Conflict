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
__CONST__(life_revive_fee,5000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,50000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
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
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_exp = 0;
life_level = 1;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,500);
__CONST__(life_impound_boat,500);
__CONST__(life_impound_air,1000);
life_istazed = false;
life_my_gang = ObjNull;
life_muted = false;
life_failed = false;
life_bekanntschaften = [];


life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
    case west:
    {
        life_atmcash = 50000; //Starting Bank Money
        life_paycheck = 1500; //Paycheck Amount
    };
    case civilian:
    {
        life_atmcash = 25000; //Starting Bank Money
        life_paycheck = 500; //Paycheck Amount
    };

    case independent: {
        life_atmcash = 50000;
        life_paycheck = 2000;
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
"G_mas_wpn_bala_mask_b",
"G_Bandanna_shades",
"G_Bandanna_beast"
];

life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F","C_Van_01_transport_F"];
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
    "life_inv_cannabis",
    "life_inv_marijuana",
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
    "life_inv_carbomb1",
    "life_inv_carbomb2",
    "life_inv_carfernzuender",
    "life_inv_golderz",
    "life_inv_goldbarren",
    "life_inv_depotwaffen",
    "life_inv_information",
    "life_inv_abhoergeraet"
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
    ["license_cop_uncarbomb","cop"],
    ["license_civ_driver","civ"],
    ["license_civ_air","civ"],
    ["license_civ_air1","civ"],
    ["license_civ_heroin","civ"],
    ["license_civ_marijuana","civ"],
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
    ["license_civ_carbomb","civ"]
    ];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_prof =
[

["Level_Prof","civ"]
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
        ["heroinu",1200],
        ["heroinp",2500],
        ["cocaine",1500],
        ["cocainep",3500],
        ["cannabis",1500],
        ["marijuana",2000],
        ["turtle",3000],
        ["blastingcharge",10000],
        ["boltcutter",500],
        ["bluesyn",6000],
        ["pilze",1200],
        ["magicmushrooms",1200],
        ["schlafmittel",5000],
        ["goldbar",25000],
        ["sprengstoff",5000],
        ["sprengsatz",5000],
        ["spikeStrip",5000],
        ["munitionslieferung",5000],
        ["aklieferung",10000],
        ["gestohlenevisiere",15000],
        ["uniformen",10000],
        ["kondome",25000],
        ["sniperkiste",50000],
        ["carbomb1",25000],
        ["carbomb2",25000],
        ["golderz",2500],
        ["goldbarren",5000],
        ["infomation",10000],
        ["abhoergeraet",10000]
        ];


/*
    Sell / buy arrays
*/
sell_array =
{[
    ["apple",150],
    ["heroinu",1850],
    ["heroinp",150],
    ["salema",45],
    ["ornate",40],
    ["mackerel",175],
    ["tuna",700],
    ["mullet",250],
    ["catshark",300],
    ["rabbit",65],
    ["oilp",150],
    ["water",0],
    ["coffee",0],
    ["turtlesoup",1000],
    ["donuts",0],
    ["marijuana",150],
    ["tbacon",25],
    ["lockpick",0],
    ["pickaxe",0],
    ["redgull",0],
    ["peach",0],
    ["cocaine",3000],
    ["cocainep",150],
    ["turtle",150],
    ["diamond",750],
    ["diamondc",150],
    ["iron_r",150],
    ["coalp",150],
    ["steel",150],
    ["bluesyn",150],
    ["plastic",150],
    ["copper_r",150],
    ["salt_r",150],
    ["glass",150],
    ["fuelF",500],
    ["spikeStrip",0],
    ["barrier",0],
    ["barricade",0],
    ["strahler",0],
    ["cement",150],
    ["goldbar",50000],
    ["zipties",0],
    ["bier",150],
    ["sprengstoff",0],
    ["guertel",0],
    ["schnaps",150],
    ["magicmushrooms",150],
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
    ["golderz",2500],
    ["goldbarren",5000],
    ["infomation",5000]
];};
//__CONST__(sell_array,sell_array);

buy_array =
{[
    ["apple",150],
    ["rabbit",75],

    ["salema",55],
    ["ornate",50],
    ["mackerel",200],
    ["tuna",900],
    ["mullet",300],
    ["catshark",350],
    ["water",10],
    ["turtlesoup",2500],
    ["donuts",120],
    ["coffee",10],
    ["tbacon",75],
    ["lockpick",150],
    ["pickaxe",1200],
    ["redgull",500],
    ["fuelF",850],
    ["peach",150],
    ["spikeStrip",2500],
    ["barrier",2500],
    ["barricade",2500],
    ["strahler",2500],
    ["blastingcharge",35000],
    ["boltcutter",7500],
    ["defusekit",2500],
    ["Box_IND_Grenades_F",250000],
    ["Box_IND_WpsSpecial_F",500000],
    ["B_supplyCrate_F",2500000],
    ["Box_IND_AmmoVeh_F",3000000],
    ["zipties",2000],
    ["bier",2000],
    ["sprengstoff",50000],
    ["guertel",150],
    ["schnaps",150],
    ["schlafmittel",20000],
    ["dattel",100],
    ["fladenbrot",200],
    ["ziegenmilch",10],
    ["burger",50],
    ["cola",5],
    ["sprengsatz",50000],
    ["fernzuender",5000],
    ["battery",1000],
    ["pipe",2500],
    ["gehaeuse",1500],
    ["antenne",2500],
    ["behaelter",5000]
];};
//__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
    ["arifle_sdar_F",7500],
    ["hgun_P07_snds_F",650],
    ["hgun_P07_F",250],
    ["ItemGPS",45],
    ["ToolKit",75],
    ["FirstAidKit",65],
    ["Medikit",450],
    ["NVGoggles",980],
    ["16Rnd_9x21_Mag",15],
    ["20Rnd_556x45_UW_mag",35],
    ["ItemMap",35],
    ["ItemCompass",25],
    ["Chemlight_blue",50],
    ["Chemlight_yellow",50],
    ["Chemlight_green",50],
    ["Chemlight_red",50],
    ["hgun_Rook40_F",500],
    ["arifle_Katiba_F",5000],
    ["30Rnd_556x45_Stanag",65],
    ["20Rnd_762x51_Mag",85],
    ["30Rnd_65x39_caseless_green",50],
    ["DemoCharge_Remote_Mag",7500],
    ["SLAMDirectionalMine_Wire_Mag",2575],
    ["optic_ACO_grn",250],
    ["acc_flashlight",0],
    ["srifle_EBR_F",15000],
    ["arifle_TRG21_F",3500],
    ["optic_MRCO",5000],
    ["optic_Aco",850],
    ["arifle_MX_F",7500],
    ["arifle_MXC_F",5000],
    ["arifle_MXM_F",8500],
    ["MineDetector",500],
    ["optic_Holosight",275],
    ["acc_pointer_IR",175],
    ["arifle_TRG20_F",2500],
    ["SMG_01_F",1500],
    ["arifle_Mk20C_F",4500],
    ["30Rnd_45ACP_Mag_SMG_01",60],
    ["30Rnd_9x21_Mag",30],
    ["mas_launch_RPG7_F",250000],
    ["mas_PG7V",25000],

    ["RH_deagleg",0],
    ["srifle_mas_svd_h",5000],
    ["arifle_mas_fal_h",5000],
    ["srifle_mas_m91_l",5000],
    ["RH_deagles",0],
    ["LMG_mas_rpk_F_a",5000],
    ["arifle_mas_ak_74m_sf",3000],
    ["arifle_mas_aks_74_sf",3000],
    ["RH_vz61",1000],
    ["RH_fn57",1000],
    ["RH_tt33",1000],
    ["optic_mas_ACO_grn_camo",100],
    ["optic_mas_PSO_day",100],
    ["10Rnd_mas_762x54_mag",100],
    ["20Rnd_mas_762x51_Stanag",100],
    ["RH_7Rnd_50_AE",100],
    ["100Rnd_mas_545x39_mag",100],
    ["30Rnd_mas_545x39_mag",100],
    ["RH_8Rnd_762_tt33",100],
    ["RH_20Rnd_32cal_vz61",100],
    ["RH_20Rnd_57x28_FN",100],

    ["Trixie_CZ750_Ghillie",5000],
    ["RH_bull",2000],
    ["arifle_mas_ak74_a",5000],
    ["arifle_mas_aks74u_c",5000],
    ["RH_mateba",2000],
    ["optic_mas_ACO_grn_camo",200],
    ["RH_6Rnd_454_Mag",100],
    ["Trixie_10x762_Mag",200],
    ["30Rnd_mas_545x39_mag",200],
    ["5Rnd_mas_762x51_Stanag",200],
    ["RH_6Rnd_44_Mag",200],

    ["RH_ttracker_g",0],
    ["hgun_mas_usp_F",500],
    ["arifle_mas_mp5",500],
    ["RH_6Rnd_45ACP_Mag",200],
    ["12Rnd_mas_45acp_Mag",200],
    ["30Rnd_mas_9x21_Stanag",200],
    ["UGL_FlareWhite_F",500],
    ["1Rnd_Smoke_Grenade_shell",250],
    ["1Rnd_HE_Grenade_shell",500]

];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[

    //Helis
    ["B_Heli_Light_01_F",5000],

    //Level
    ["I_mas_cars_UAZ_M2",2500],
    ["isc_is_hilux_AGS30_o",2500],
    ["I_mas_cars_UAZ_MG",2500],
    ["isc_is_hilux_MG_o",2500]

];

__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
    ["O_mas_cars_UAZ_Unarmed",5000],
    ["isc_is_hilux_Unarmed_o",10000],
    ["I_mas_cars_UAZ_MG",10000],
    ["isc_is_hilux_MG_o",25000],
    ["I_mas_cars_UAZ_M2",50000],
    ["isc_is_hilux_AGS30_o",50000],
    ["B_Heli_Light_01_F",5000],
    ["B_mas_UH60M",10000],
    ["B_mas_CH_47F",20000],
    ["B_Heli_Transport_01_camo_F",20000],
    ["B_mas_UH1Y_UNA_F",7500],
    ["B_Heli_Light_01_armed_F",10000],
    ["B_mas_cars_LR_Unarmed",2500],
    ["B_mas_cars_LR_Mk19",5000],
    ["B_mas_HMMWV_MEV",10000],
    ["B_mas_HMMWV_M2",15000],
    ["B_mas_HMMWV_SOV_M134",15000]
];
__CONST__(life_garage_sell,life_garage_sell);

life_rebAmount = 10000
