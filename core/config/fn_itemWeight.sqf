/*
    File: fn_itemWeight.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
    case "oilu": {5};
    case "oilp": {4};
    case "heroinu": {4};
    case "heroinp": {3};
    case "heroinr": {3};
    case "cannabis": {3};
    case "marijuana": {2};
    case "marijuanar": {2};
    case "apple": {1};
    case "peach": {1};
    case "water": {1};
    case "rabbit": {1};
    case "donuts": {1};
    case "coffee": {1};
    case "fuelE": {2};
    case "fuelF": {4};
    case "money": {0};
    case "coalu": {3};
    case "coalp": {3};
    case "strahler": {2};
    case "barrier": {2};
    case "barricade": {2};
    case "spikeStrip": {5};
    case "goldbar": {3};
    case "blastingcharge": {8};
    case "boltcutter": {3};
    case "defusekit": {2};
    case "dattel": {1};
    case "fladenbrot": {1};
    case "ziegenmilch": {1};
    case "burger": {1};
    case "cola": {1};
    case "sprengsatz": {5};
    case "sprengstoff": {10};
    case "battery": {1};
    case "guertel": {2};
    case "antenne": {2};
    case "gehaeuse": {3};
    case "behaelter": {3};
    case "pistolenlieferung": {5};
    case "nahrungsmittel": {5};
    case "munitionslieferung": {5};
    case "aklieferung": {10};
    case "gestohlenevisiere": {10};
    case "uniformen": {10};
    case "koran": {15};
    case "kondome": {15};
    case "sniperkiste": {15};
    case "goldore": {10};
    case "depotwaffen": {10};
    case "information": {3};
    case "abhoergeraet": {10};
    case "sulfuru": {3};
    case "sulfurp": {3};
    case "nitre": {3};
    case "potassiumnitrate": {3};
    case "nitroglycerin": {6};
    case "flask": {1};
    case "gunpowder": {6};
    case "explosive": {10};
    case "dogtag": {2};
    case "bandage": {1};
    case "traumakit": {3};
    case "kochsalz": {2};
    case "morphin": {3};
    case "epikit": {3};
    default {1};
};
