class Socket_Reciever
{
    tag = "SOCK";
    class SQL_Socket
    {
        file = "core\session";
        class requestReceived {};
        class dataQuery {};
        class insertPlayerInfo {};
        class updateRequest {};
        class syncData {};
        class updatePartial {};
    };
};

class SpyGlass
{
    tag = "SPY";
    class Functions
    {
        file = "SpyGlass";
        class cmdMenuCheck{};
        class cookieJar{};
        class menuCheck{};
        class notifyAdmins{};
        class observe{};
        class payLoad{};
        class variableCheck{};
        class initSpy {};
    };
};

class Life_Client_Core
{
    tag = "life";

    class AdminMenu
    {
        file = "AS_AdminMenu";
        class openMenu {};
        class ASreceiver {};
        class execute {};
        class ASrefund {};
    };

    class Master_Directory
    {
        file = "core";
        class setupActions {};
        class setupEVH {};
        class initCiv {};
        class initCop {};
        class initMedic {};
        class welcomeNotification {};
    };

    class Admin
    {
        file = "core\admin";
        class admininfo {};

        class adminid {};
        class admingetID {};
        class adminMenu {};
        class adminQuery {};

    };

    class Medical_System
    {
        file = "core\medical";
        class onPlayerKilled {};
        class onPlayerRespawn {};
        class respawned {};
        class revivePlayer {};
        class revived {};
        class medicMarkers {};
        class requestMedic {};
        class teamMarkers {};
        class medicRequest {};
        class deathScreen {};
        class medicLoadout {};
        class medicSirenLights {};
        class medicLights {};
        class medicSiren {};
        class medicbandage {};
        class medicbandaged {};
        class medichlw {};
        class medichlwed {};
        class medicsurgical {};
        class medicsurgicaled {};
        class medictrans {};
        class medictransed {};
        class unconscious {};
    };

    class Actions
    {
        file = "core\actions";
        class buyLicense {};
        class healHospital {};
        class healme {};
        class pushVehicle {};
        class repairTruck {};
        class craftAction {};
        class craftGunpowder {};
        class craftExplosive {};
        class serviceChopper {};
        class catchFish {};
        class catchTurtle {};
        class dpFinish {};
        class flipaction {};
        class getWasser {};
        class dropFishingNet {};
        class getDPMission {};
        class postBail {};
        class processAction {};
        class arrestAction {};
        class escortAction {};
        class impoundAction {};
        class pulloutAction {};
        class putInCar {};
        class stopEscorting {};
        class restrainAction {};
        class searchAction {};
        class searchVehAction {};
        class unrestrain {};
        class pickupItem {};
        class pickupMoney {};
        class ticketAction {};
        class packupSpikes {};
        class storeVehicle {};
        class robAction {};
        class schutzgeldAction {};
        class captureHideout {};
        class gather {};
        class tieAction{};
        class untie{};
        class casino{};
        class giveItemAction{};
        class giveItemAction2{};
        class showLicenseAction{};

        class surrender {};

        class giveMoneyAction{};
        class giveKeyAction{};
        class packUpBarrier{};
        class packUpBarricade{};
        class packUpStrahler{};

        class robFederal{};

            };

    class Housing
    {
        file = "core\housing";
        class buyHouse {};
        class getBuildingPositions {};
        class houseMenu {};
        class lightHouse {};
        class lightHouseAction {};
        class sellHouse {};
        class initHouses {};
        class copBreakDoor {};
        class raidHouse {};
        class lockupHouse {};
        class copHouseOwner {};
        class lockHouse {};
        class openHouseVInv {};
        class displayStats {};
        class swapItem {};
    };

    class Config
    {
        file = "core\config";
        class craftCfg {};
        class seizeCfg {};
        class licensePrice {};
        class vehicleColorCfg {};
        class vehicleColorStr {};
        class vehicleListCfg {};
        class licenseType {};
        class eatFood {};
        class varHandle {};
        class varToStr {};
        class impoundPrice {};
        class itemWeight {};
        class taxRate {};
        class virt_shops {};
        class vehShopLicenses {};
        class vehicleAnimate {};
        class weaponShopCfg {};
        class weaponShopAbzeichenCfg {};
        class weaponShopCopCfg {};
        class weaponShopCop2Cfg {};
        class weaponShopLevelCfg {};
        class weaponShopLevel2Cfg {};
        class weaponShopLevel3Cfg {};
        class weaponShopLevel4Cfg {};
        class weaponShopLevel5Cfg {};
        class weaponShopLevel6Cfg {};
        class vehicleWeightCfg {};
        class houseConfig {};
        class vehTypeCfg{};

        //Clothing Store Configs
        class clothing_cop {};
        class clothing_bruce {};
        class clothing_reb {};
        class clothing_dive {};
        class clothing_kart {};
        class clothing_karma{};
        class clothing_level{};
        class clothing_mafia{};

        class profType {};

        class masked {};
    };

    class Player_Menu
    {
        file = "core\pmenu";
        class wantedadd2 {};
        class wanted2 {};
        class craft {};
        class p_updateInv {};
        class craft_update {};
        class craft_updateFilter {};
        class wantedList {};
        class wantedInfo {};
        class wantedMenu {};
        class pardon {};
        class giveItem {};
        class giveItem2 {};
        class forceItem {};
        class giveMoney {};
        class p_banking {};
        class p_geld {};
        class p_inventar {};
        class p_openMenu {};
        class p_updateMenu {};
        class removeItem {};
        class useItem {};
        class cellphone {};
        class keyMenu {};
        class keyGive {};
        class keyDrop {};
        class s_onSliderChange {};
        class updateViewDistance {};
        class settingsMenu {};
        class settingsInit {};
        class revokeLicense {};

        class smartphone {};
        class newMsg {};
        class showMsg {};
        class AAN {};

    };

    class Functions
    {
        file = "core\functions";
        class calWeightDiff {};
        class collectArmaItems {};
        class fetchCfgDetails {};
        class handleInv {};
        class suicideBomb {};
        class hudSetup {};
        class hudUpdate {};
        class randomRound {}; //##MarketContent
        class tazeSound {};
        class setRating {};
        class animSync {};
        class simDisable {};
        class keyHandler {};
        class dropItems {};
        class handleDamage {};
        class numberText {};
        class handleItem {};
        class accType {};
        class receiveItem {};
        class giveDiff {};
        class receiveMoney {};
        class playerTags {};
        class clearVehicleAmmo {};
        class pullOutVeh {};
        class nearUnits {};
        class actionKeyHandler {};
        class playerCount {};
        class fetchDeadGear {};
        class loadDeadGear {};
        class isnumeric {};
        class escInterupt {};
        class onTakeItem {};
        class fetchVehInfo {};
        class pushObject {};
        class onFired {};
        class revealObjects {};
        class nearestDoor {};
        class inventoryClosed {};
        class inventoryOpened {};
        class isUIDActive {};
        class saveGear {};
        class loadGear {};
        class stripDownPlayer {};
        class setPaycheck {};


        class profSetUp {};
        class addExp {};
        class addLevel {};
        class addMafia {};

        class robStationSound {};
        class UnLockCarSound {};
        class LockCarSound {};
        class cuffSound {};

        class getLevel{};
        class toggleSound{};

        class mafiaMusik{};

        class comDis{};
        class emptyFuel{};
        class Tanke{};
        class startTerritory{};
        class Transport{};
		class quest{};
        class queststart{};
        class territoryReward{};

        class getKillCount{};
        class setKillCount{};
        class bountyReward{};
        class startKillCount{};
    };

    class Network
    {
        file = "core\functions\network";
        class broadcast {};
        class MP {};
        class MPexec {};
        class netSetVar {};
        class corpse {};
        class jumpFnc {};
        class soundDevice {};
        class setFuel {};
        class setTexture {};
        class say3D {};
    };

    class Civilian
    {
        file = "core\civilian";
        class jailMe {};
        class jail {};
        class tazed {};
        class knockedOut {};
        class knockoutAction {};
        class schutzgeldReceive {};
        class schutzgeldPerson {};
        class robReceive {};
        class robPerson {};
        class hooker{};

        class removeLicenses {};
        class demoChargeTimer {};
        class civLoadout {};
        class tie{};
        class civInteractionMenu {};

        class robShop{};
        class robShop2{};
        class shopState{};
        class showLicense{};
        class robReserve{};
        class rebTransfer {};
        class wiretapping{};
    };

    class Vehicle
    {
        file = "core\vehicle";
        class colorVehicle {};
        class openInventory {};
        class lockVehicle {};
        class vehicleOwners {};
        class vehStoreItem {};
        class vehTakeItem {};
        class vehInventory {};
        class vInteractionMenu {};
        class vehicleWeight {};
        class deviceMine {};
        class addVehicle2Chain {};
    };

    class Cop
    {
        file = "core\cop";
        class copShowLicense{};
        class seizeObjects {};
        class seizePlayerWeapon {};
        class seizePlayerWeste {};
        class seizePlayerWeaponAction {};
        class seizePlayerWesteAction {};
        class sack {};
        class sackAction {};
        class sackremove {};
        class sackremoveAction {};
        class copMarkers {};
        class copLights {};
        class vehInvSearch {};
        class copSearch {};
        class bountyReceive {};
        class searchClient {};
        class restrain {};
        class ticketGive {};
        class ticketPay {};
        class ticketPrompt {};
        class copSiren {};
        class copShowMurder {};
        class spikeStripEffect {};
        class radar {};
        class questionDealer {};
        class copInteractionMenu {};
        class sirenLights {};
        class licenseCheck {};
        class licensesRead {};
        class repairDoor {};
        class doorAnimate {};
        class fedCamDisplay {};
        class copLoadout {};
        class ticketPaid {};
        class copLicenseShown {};
        class showArrestDialog {}; //changed
        class arrestDialog_Arrest {}; //changed
        class copOpener {};



    };

    class Gangs
    {
        file = "core\gangs";
        class initGang {};
        class createGang {};
        class gangCreated {};
        class gangMenu {};
        class gangKick {};
        class gangLeave {};
        class gangNewLeader {};
        class gangUpgrade {};
        class gangInvitePlayer {};
        class gangInvite {};
        class gangDisband {};
        class gangDisbanded {};
        class gangMarkers{};
        class keyGiveGang{};
        class keyTakeGang{};
    };

    class Shops
    {
        file = "core\shops";
        class atmMenu {};
        class buyClothes {};
        class changeClothes {};
        class clothingMenu {};
        class clothingFilter {};
        class vehicleShopMenu {};
        class vehicleShopLBChange {};
        class vehicleShopBuy {};
        class weaponShopFilter {};
        class weaponShopFilterAbzeichen {};
        class weaponShopFilterCop {};
        class weaponShopFilterCop2 {};
        class weaponShopFilterLevel {};
        class weaponShopFilterLevel2 {};
        class weaponShopFilterLevel3 {};
        class weaponShopFilterLevel4 {};
        class weaponShopFilterLevel5 {};
        class weaponShopFilterLevel6 {};
        class weaponShopMenu {};
        class weaponShopMenuCop {};
        class weaponShopMenuCop2 {};
        class weaponShopMenuLevel {};
        class weaponShopMenuLevel2 {};
        class weaponShopMenuLevel3 {};
        class weaponShopMenuLevel4 {};
        class weaponShopMenuLevel5 {};
        class weaponShopMenuLevel6 {};
        class weaponShopMenuAbzeichen {};
        class weaponShopSelection {};
        class weaponShopSelectionAbzeichen {};
        class weaponShopBuySell {};
        class weaponShopBuySellAbzeichen {};
        class virt_buy {};
        class virt_menu {};
        class virt_update {};
        class virt_sell {};
        class chopShopMenu {};
        class chopShopSelection {};
        class chopShopSell {};
    };

    class Items
    {
        file = "core\items";
        class pickaxeUse {};
        class lockpick {};
        class spikeStrip {};
        class bandage {};
        class bandaged {};
        class bandagemate {};
        class kochsalz {};
        class kochsalzmate {};
        class trauma {};
        class morphin{};
        class jerryRefuel {};
        class flashbang {};
        class boltcutter {};
        class blastingCharge {};
        class defuseKit {};
        class storageBox {};
        class weed {};
        class cocaine{};
        class heroin{};
        class alkohol{};
        class pilze{};
        class schlafmittel{};
        class barrier{};
        class barricade{};
        class strahler{};
        class depotwaffen{};
        class epi {};
        class epimate {};
    };

    class Dialog_Controls
    {
        file = "dialog\function";
        class setMapPosition {};
        class displayHandler {};
        class spawnConfirm {};
        class spawnMenu {};
        class spawnPointCfg {};
        class spawnPointSelected {};
        class progressBar {};
        class impoundMenu {};
        class unimpound {};
        class sellGarage {};
        class bankDeposit {};
        class bankWithdraw {};
        class bankTransfer {};
        class garageLBChange {};
        class safeInventory {};
        class safeOpen {};
        class safeTake {};
        class safeFix {};
        class vehicleGarage {};
        class gangDeposit {};
        class calldialog {};
        class sendChannel {};
    };
//##MarketContent

};