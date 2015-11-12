/*
    File: fn_virt_shops.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;
_level = [] call life_fnc_getLevel;

switch (_shop) do
{
    case "market": {["Bürgerladen",["ziegenmilch","dattel","fladenbrot","guertel","pipe","behaelter","flask","bandage","kochsalz","morphin","epikit","coalp"]]};
    case "tankstelle": {["Tankstelle",["ziegenmilch","dattel","fladenbrot","fuelF"]]};
    case "bandit": {["Küche",["ziegenmilch","dattel","fladenbrot","bandage","kochsalz","morphin","epikit"]]};
    case "heroin": {["Drogen Dealer",["marijuanar","marijuana","heroinp","herionr"]]};
    case "dirtydoc": {["Dirty Doc",["bandage","kochsalz","morphin","epikit"]]};
    case "oil": {["Öl Händler",["oilp"]]};
    case "cop": {["Essenausgabe",["burger","donuts","cola","spikeStrip","fuelF","strahler","barrier","barricade","lockpick","bandage","kochsalz","morphin","epikit","defusekit"]]};
    case "cop": {["Essenausgabe",["donuts","cola","fuelF","strahler","barrier","barricade","lockpick"]]};
    case "electrostore": {["Abduls Elektronikbedarf",["battery","fernzuender","gehaeuse","antenne"]]};
    case "blackstore": {["Schwarzmarkt",["lockpick","blastingcharge","depotwaffen","nitroglycerin"]]};
    case "hehler": {["Schwarzmarkt",["goldbar","information"]]};
};