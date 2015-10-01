#include "player_sys.sqf"

class playerSettings {

	idd = playersys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {
	
			class MainBackground:life_RscText {
			colorBackground[] = {0, 0, 0, 0.5};
			idc = -1;
			x = 0.16 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.8;
			h = 0.082;
		};
	};
	class picCell: life_RscPicture
		{
			idc = 1200;
			text = "icons\handy.paa";
			x = 0.16 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.08;
			h = 0.081;
			colorBackground[] = {0,0,0,0.7};
	};
	class controls {

/*
			class ButtonSettings : life_RscButtonMenu {
			idc = -1;
			text = "icons\level.paa";
			style = 48;
			onButtonClick = "[] call life_fnc_settingsMenu;";
			x = 0.32 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.08;
			h = 0.081;
		};
		
		class ButtonMyGang : Life_RscButtonMenu {
			idc = 2011;
			text = "icons\level.paa";
			style = 48;
			onButtonClick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";
			x = 0.28 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.08;
			h = 0.081;
		};
				
		class ButtonGangList : Life_RscButtonMenu {
			idc = 2012;
			text = "";
			style = 48;
			onButtonClick = "[] call life_fnc_wantedMenu";
			x = 0.24 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.08;
			h = 0.081;
		};
*/
				
		class ButtonCell : Life_RscButtonMenu {
			idc = 2014;
			text = "";
			onButtonClick = "createDialog ""Life_my_smartphone"";";
			x = 0.16 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.08;
			h = 0.081;
		};
		/*
		class ButtonAdminMenu : Life_RscButtonMenu {
	idc = 2021;
	text = "icons\level.paa";
			style = 48;
			onButtonClick = "createDialog ""life_admin_menu"";";
			x = 0.4 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.04;
			h = 0.081;
};
	class Button : Life_RscButtonMenu {
			idc = 2025;
			text = "icons\level.paa";
			style = 48;
			onButtonClick = "createDialog ""Life_craft"";";
			x = 0.32 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.08;
			h = 0.081;
};
		
		class ButtonSyncData : life_RscButtonMenu {
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "icons\level.paa";
			style = 48;
			onButtonClick = "[] call SOCK_fnc_syncData;";
			// x = 0.1;
			// y = 0.605;
			x = 0.48 * safezoneW + safezoneX;
			y = safezoneY;
			w = 0.08;
			h = 0.081;
		};

/*
class ButtonMarket : Life_RscButtonMenu {
            idc = -1;
            text = "Markt";
            onButtonClick = "[] spawn life_fnc_MarktPreisabfrage;";
            //x = 0.26 + (6.25 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			x = 0.26 + (6.25 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.6 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
          };
*/
		  
		  /*
class ButtonWantedAdd : life_RscButtonMenu {
			idc = 9800;
			//shortcuts[] = {0x00050000 + 2};
			text = "Wanted +";
			onButtonClick = "createDialog ""life_wantedadd2"";";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.605;
			w = (6.25 / 40);
			h = (1 / 25);


		}; */
/*
class ProfButton : life_RscButtonMenu {
 
text = "Level";
colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
onButtonClick = "[] call life_fnc_profSetup;";
x = 0.11;
y = 0.51;
w = (5.75 / 40);
h = (1 / 25);
 
};
*/

	};
};