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


	case "market": {["Synced Markt",["ziegenmilch","dattel","fladenbrot","redgull","lockpick","fuelF","guertel","zipties","pipe","behaelter"]]};
	/*
	if(_level > 500) then
	{
	case "buerger": {["Bürger Markt",["ziegenmilch","dattel","fladenbrot","redgull","lockpick","zipties","pickaxe","fuelF","sprengstoff","guertel","zipties"]]};
	};
	*/
	case "tankstelle": {["Tankstelle",["burger","donuts","cola","redgull","fuelF","zipties","lockpick"]]};
	case "tankstelle_med": {["Tankstelle",["burger","donuts","cola","redgull","fuelF","zipties","lockpick"]]};
	case "bandit": {["Küche",["ziegenmilch","dattel","fladenbrot","redgull","zipties","schlafmittel"]]};
	case "rebel": {["Mafia Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogen Dealer",["cocainep","heroinp","marijuana","bluesyn","turtle","magicmushrooms"]]};
	case "mafiaDrogen": {["Mafia Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Öl Händler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Glass Händler",["glass"]]};
	case "iron": {["Metallhändler",["iron_r","copper_r","steel"]]};
	case "diamond": {["Diamanten Händler",["diamond","diamondc"]]};
	case "salt": {["Salz Händler",["salt_r"]]};
	case "cop": {["Mc Fress",["burger","donuts","cola","spikeStrip","redgull","fuelF","strahler","barrier","barricade","lockpick"]]};
	case "mafia": {["Pasta Händler",["water","rabbit","apple","redgull","fuelF","zipties"]]};
	case "cement": {["Zement Händler",["cement"]]};
	case "gold": {["Goldankauf",["goldbar"]]};
	case "coal": {["Kohle Händler",["coalp"]]};
	case "mike": {["M1kes Bierstube",["bier","schnaps"]]};
	case "mafiacasino": {["Casino Bar",["bier","schnaps","water","coffee","apple","tbacon","redgull"]]};
	case "plastic": {["Plastik Händler",["plastic"]]};
	case "electrostore": {["Abduls Elektronikbedarf",["battery","fernzuender","gehaeuse","antenne"]]};
	case "blackstore": {["Schwarzmarkt",["sprengsatz","sprengstoff","goldbarren"]]};

};