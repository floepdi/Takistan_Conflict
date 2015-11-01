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


    case "market": {["Synced Markt",["ziegenmilch","dattel","fladenbrot","redgull","lockpick","fuelF","guertel","pipe","behaelter","flask","coalp"]]};
    case "tankstelle": {["Tankstelle",["burger","donuts","cola","redgull","fuelF","lockpick"]]};
	case "miliz": {["Miliz",["redgull","fuelF","lockpick"]]};
    case "tankstelle_med": {["Tankstelle",["burger","donuts","cola","redgull","fuelF","lockpick"]]};
    case "bandit": {["Küche",["ziegenmilch","dattel","fladenbrot","redgull","schlafmittel"]]};
    case "heroin": {["Drogen Dealer",["cocainep","heroinp","heroinr","cannabis","marijuana","bluesyn","turtle","magicmushrooms"]]};
    case "oil": {["Öl Händler",["oilp","pickaxe","fuelF"]]};
    case "cop": {["Mc Fress",["burger","donuts","cola","spikeStrip","redgull","fuelF","strahler","barrier","barricade","lockpick"]]};
    case "gold": {["Goldankauf",["goldbar"]]};
    case "mafiacasino": {["Casino Bar",["bier","schnaps","water","coffee","apple","tbacon","redgull"]]};
    case "electrostore": {["Abduls Elektronikbedarf",["battery","fernzuender","gehaeuse","antenne"]]};
    case "blackstore": {["Schwarzmarkt",["sprengsatz","sprengstoff","goldbarren","nitroglycerin","explosive"]]};
	case "werkstoff": {["Werkstoffe",["goldbarren","gunpowder","nitroglycerin","explosive","sulfurp","potassiumnitrate"]]};

};