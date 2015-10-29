/*
    File: fn_varHandle.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
    case 0:
    {
        switch (_var) do
        {
            case "oilu": {"life_inv_oilu"};
            case "oilp": {"life_inv_oilp"};
            case "heroinu": {"life_inv_heroinu"};
            case "heroinp": {"life_inv_heroinp"};
            case "heroinr": {"life_inv_heroinr"};
            case "cannabis": {"life_inv_cannabis"};
            case "marijuana": {"life_inv_marijuana"};
            case "marijuanar": {"life_inv_marijuanar"};
            case "apple": {"life_inv_apple"};
            case "water": {"life_inv_water"};
            case "rabbit": {"life_inv_rabbit"};
            case "salema": {"life_inv_salema"};
            case "ornate": {"life_inv_ornate"};
            case "mackerel": {"life_inv_mackerel"};
            case "tuna": {"life_inv_tuna"};
            case "mullet": {"life_inv_mullet"};
            case "barrier": {"life_inv_barrier"};
            case "barricade": {"life_inv_barricade"};
            case "strahler": {"life_inv_strahler"};
            case "catshark": {"life_inv_catshark"};
            case "turtle": {"life_inv_turtle"};
            case "fishing": {"life_inv_fishingpoles"};
            case "coffee": {"life_inv_coffee"};
            case "turtlesoup": {"life_inv_turtlesoup"};
            case "donuts": {"life_inv_donuts"};
            case "fuelE": {"life_inv_fuelE"};
            case "fuelF": {"life_inv_fuelF"};
            case "money": {"life_cash"};
            case "pickaxe": {"life_inv_pickaxe"};
            case "copperore": {"life_inv_copperore"};
            case "ironore": {"life_inv_ironore"};
            case "iron_r": {"life_inv_ironr"};
            case "copper_r": {"life_inv_copperr"};
            case "salt": {"life_inv_salt"};
            case "bluesyn": {"life_inv_bluesyn"};
            case "salt_r": {"life_inv_saltr"};
            case "sand": {"life_inv_sand"};
            case "coalu": {"life_inv_coalu"};
            case "coalp": {"life_inv_coalp"};
            case "steel": {"life_inv_steel"};
            case "glass": {"life_inv_glass"};
            case "tbacon": {"life_inv_tbacon"};
            case "lockpick": {"life_inv_lockpick"};
            case "redgull": {"life_inv_redgull"};
            case "plastic": {"life_inv_plastic"};
            case "peach": {"life_inv_peach"};
            case "diamond": {"life_inv_diamond"};
            case "diamondc": {"life_inv_diamondr"};
            case "malz": {"life_inv_malz"};
            case "hopfen": {"life_inv_hopfen"};
            case "bier": {"life_inv_bier"};
            case "schnaps": {"life_inv_schnaps"};
            case "pilze": {"life_inv_pilze"};
            case "magicmushrooms": {"life_inv_magicmushrooms"};
            case "cocaine": {"life_inv_coke"};
            case "schlafmittel": {"life_inv_schlafmittel"};
            case "cocainep": {"life_inv_cokep"};
            case "spikeStrip": {"life_inv_spikeStrip"};
            case "cement": {"life_inv_cement"};
            case "rock": {"life_inv_rock"};
            case "goldbar": {"life_inv_goldbar"};
            case "blastingcharge": {"life_inv_blastingcharge"};
            case "boltcutter": {"life_inv_boltcutter"};
            case "defusekit": {"life_inv_defusekit"};
            case "Box_IND_WpsSpecial_F": {"life_inv_Box_IND_WpsSpecial_F"};
            case "Box_IND_AmmoVeh_F": {"life_inv_Box_IND_AmmoVeh_F"};
            case "Box_IND_Grenades_F": {"life_inv_Box_IND_Grenades_F"};
            case "B_supplyCrate_F": {"life_inv_B_supplyCrate_F"};
            case "zipties": {"life_inv_zipties"};
            case "sprengstoff": {"life_inv_sprengstoff"};
            case "guertel": {"life_inv_guertel"};
            case "fladenbrot": {"life_inv_fladenbrot"};
            case "dattel": {"life_inv_dattel"};
            case "ziegenmilch": {"life_inv_ziegenmilch"};
            case "burger": {"life_inv_burger"};
            case "cola": {"life_inv_cola"};
            case "pipe": {"life_inv_pipe"};
            case "fernzuender": {"life_inv_fernzuender"};
            case "battery": {"life_inv_battery"};
            case "sprengsatz": {"life_inv_sprengsatz"};
            case "antenne": {"life_inv_antenne"};
            case "gehaeuse": {"life_inv_gehaeuse"};
            case "behaelter": {"life_inv_behaelter"};
            case "pistolenlieferung": {"life_inv_pistolenlieferung"};
            case "nahrungsmittel": {"life_inv_nahrungsmittel"};
            case "munitionslieferung": {"life_inv_munitionslieferung"};
            case "aklieferung": {"life_inv_aklieferung"};
            case "gestohlenevisiere": {"life_inv_gestohlenevisiere"};
            case "uniformen": {"life_inv_uniformen"};
            case "koran": {"life_inv_koran"};
            case "kondome": {"life_inv_kondome"};
            case "sniperkiste": {"life_inv_sniperkiste"};
            case "altpapier": {"life_inv_altpapier"};
            case "blumenerde": {"life_inv_blumenerde"};
            case "golderz": {"life_inv_golderz"};
            case "goldbarren": {"life_inv_goldbarren"};
            case "depotwaffen": {"life_inv_depotwaffen"};
            case "information": {"life_inv_information"};
            case "abhoergeraet": {"life_inv_abhoergeraet"};
            case "sulfuru": {"life_inv_sulfuru"};
            case "sulfurp": {"life_inv_sulfurp"};
            case "nitre": {"life_inv_nitre"};
            case "potassiumnitrate": {"life_inv_potassiumnitrate"};
            case "nitre": {"life_inv_nitre"};
            case "nitroglycerin": {"life_inv_nitroglycerin"};
            case "flask": {"life_inv_flask"};
            case "gunpowder": {"life_inv_gunpowder"};
            case "explosive": {"life_inv_explosive"};
            case "dogtag": {"life_inv_dogtag"};
            case "bandage": {"life_inv_bandage"};
            case "traumakit": {"life_inv_traumakit"};
            case "kochsalz": {"life_inv_kochsalz"};
        };
    };

    case 1:
    {
        switch (_var) do
        {
            case "life_inv_oilu": {"oilu"};
            case "life_inv_oilp": {"oilp"};
            case "life_inv_coalu": {"coalu"};
            case "life_inv_coalp": {"coalp"};
            case "life_inv_steel": {"steel"};
            case "life_inv_heroinu": {"heroinu"};
            case "life_inv_heroinp": {"heroinp"};
            case "life_inv_heroinr": {"heroinr"};
            case "life_inv_cannabis": {"cannabis"};
            case "life_inv_marijuana": {"marijuana"};
            case "life_inv_marijuanar": {"marijuanar"};
            case "life_inv_apple": {"apple"};
            case "life_inv_water": {"water"};
            case "life_inv_barrier": {"barrier"};
            case "life_inv_barricade": {"barricade"};
            case "life_inv_strahler": {"strahler"};
            case "life_inv_rabbit": {"rabbit"};
            case "life_inv_salema": {"salema"};
            case "life_inv_ornate": {"ornate"};
            case "life_inv_mackerel": {"mackerel"};
            case "life_inv_tuna": {"tuna"};
            case "life_inv_mullet": {"mullet"};
            case "life_inv_catshark": {"catshark"};
            case "life_inv_turtle": {"turtle"};
            case "life_inv_fishingpoles": {"fishing"};
            case "life_inv_coffee": {"coffee"};
            case "life_inv_turtlesoup": {"turtlesoup"};
            case "life_inv_donuts": {"donuts"};
            case "life_inv_plastic": {"plastic"};
            case "life_inv_fuelE": {"fuelE"};
            case "life_inv_fuelF": {"fuelF"};
            case "life_cash": {"money"};
            case "life_inv_pickaxe": {"pickaxe"};
            case "life_inv_copperore": {"copperore"};
            case "life_inv_ironore": {"ironore"};
            case "life_inv_ironr": {"iron_r"};
            case "life_inv_copperr": {"copper_r"};
            case "life_inv_sand": {"sand"};
            case "life_inv_salt": {"salt"};
            case "life_inv_malz": {"malz"};
            case "life_inv_hopfen": {"hopfen"};
            case "life_inv_bier": {"bier"};
            case "life_inv_schnaps": {"schnaps"};
            case "life_inv_bluesyn": {"bluesyn"};
            case "life_inv_glass": {"glass"};
            case "life_inv_redgull": {"redgull"};
            case "life_inv_lockpick": {"lockpick"};
            case "life_inv_tbacon": {"tbacon"};
            case "life_inv_pilze": {"pilze"};
            case "life_inv_magicmushrooms": {"magicmushrooms"};
            case "life_inv_peach": {"peach"};
            case "life_inv_diamond": {"diamond"};
            case "life_inv_diamondr": {"diamondc"};
            case "life_inv_saltr": {"salt_r"};
            case "life_inv_coke": {"cocaine"};
            case "life_inv_schlafmittel": {"schlafmittel"};
            case "life_inv_cokep": {"cocainep"};
            case "life_inv_spikeStrip": {"spikeStrip"};
            case "life_inv_cement": {"cement"};
            case "life_inv_rock": {"rock"};
            case "life_inv_goldbar": {"goldbar"};
            case "life_inv_blastingcharge": {"blastingcharge"};
            case "life_inv_boltcutter": {"boltcutter"};
            case "life_inv_defusekit": {"defusekit"};
            case "life_inv_Box_IND_WpsSpecial_F": {"Box_IND_WpsSpecial_F"};
            case "life_inv_Box_IND_AmmoVeh_F": {"Box_IND_AmmoVeh_F"};
            case "life_inv_Box_IND_Grenades_F": {"Box_IND_Grenades_F"};
            case "life_inv_B_supplyCrate_F": {"B_supplyCrate_F"};
            case "life_inv_zipties": {"zipties"};
            case "life_inv_guertel": {"guertel"};
            case "life_inv_sprengstoff": {"sprengstoff"};
            case "life_inv_fladenbrot": {"fladenbrot"};
            case "life_inv_dattel": {"dattel"};
            case "life_inv_ziegenmilch": {"ziegenmilch"};
            case "life_inv_burger": {"burger"};
            case "life_inv_cola": {"cola"};
            case "life_inv_sprengsatz": {"sprengsatz"};
            case "life_inv_fernzuender": {"fernzuender"};
            case "life_inv_battery": {"battery"};
            case "life_inv_pipe": {"pipe"};
            case "life_inv_gehaeuse": {"gehaeuse"};
            case "life_inv_antenne": {"antenne"};
            case "life_inv_behaelter": {"behaelter"};
            case "life_inv_pistolenlieferung": {"pistolenlieferung"};
            case "life_inv_nahrungsmittel": {"nahrungsmittel"};
            case "life_inv_munitionslieferung": {"munitionslieferung"};
            case "life_inv_aklieferung": {"aklieferung"};
            case "life_inv_gestohlenevisiere": {"gestohlenevisiere"};
            case "life_inv_uniformen": {"uniformen"};
            case "life_inv_koran": {"koran"};
            case "life_inv_kondome": {"kondome"};
            case "life_inv_sniperkiste": {"sniperkiste"};
            case "life_inv_altpapier" : {"altpapier"};
            case "life_inv_blumenerde" : {"blumenerde"};
            case "life_inv_golderz": {"golderz"};
            case "life_inv_goldbarren": {"goldbarren"};
            case "life_inv_depotwaffen": {"depotwaffen"};
            case "live_inv_information": {"information"};
            case "life_inv_abhoergeraet": {"abhoergeraet"};
            case "life_inv_sulfuru": {"sulfuru"};
            case "life_inv_sulfurp": {"sulfurp"};
            case "life_inv_nitre": {"nitre"};
            case "life_inv_potassiumnitrate": {"potassiumnitrate"};
            case "life_inv_nitroglycerin": {"nitroglycerin"};
            case "life_inv_flask": {"flask"};
            case "life_inv_gunpowder":{"gunpowder"};
            case "life_inv_explosive": {"explosive"};
            case "life_inv_dogtag": {"dogtag"};
            case "life_inv_bandage":{"bandage"};
            case "life_inv_traumakit": {"traumakit"};
            case "life_inv_kochsalz": {"kochsalz"};
        };
    };
};
