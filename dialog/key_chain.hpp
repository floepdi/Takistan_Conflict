class Life_key_management {
	idd = 2700;
	name= "life_key_chain";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_keyMenu;";

	class controlsBackground {

		size = 1;
		color = "#FFFFFF";

		class menu_keychain: life_RscPicture
		{
			idc = 4420;
			text = "icons\menu.paa";
			x = 0.237032 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.8125;
			h = 1.03676;

		};

		class geben_icon: life_RscPicture
		{
			idc = 4421;
			text = "icons\geben.paa";
			x = 0.36 * safezoneW + safezoneX;
			y = 0.6 * safezoneH + safezoneY;
			w = 0.0515624 * safezoneW;
			h = 0.088 * safezoneH;
		};

		class wegwerfen_icon: life_RscPicture
		{
			idc = 4422;
			text = "icons\wegwerfen.paa";
			x = 0.39 * safezoneW + safezoneX;
			y = 0.6 * safezoneH + safezoneY;
			w = 0.0515624 * safezoneW;
			h = 0.088 * safezoneH;
		};
	};

	class controls {

			class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_Keys_Title";
			x = 0.09;
			y = 0.210809;
			w = 0.2725;
			h = 0.04;
		};

		class KeyChainList : Life_RscListBox
		{
			idc = 2701;
			text = "";
			sizeEx = 0.035;

				x = 0.1; y = 0.340086;
				w = 0.3; h = 0.35;
		};

		class NearPlayers : Life_RscCombo {

		idc = 2702;

		x = 0.1; y = 0.28;
		w = 0.2375; h = 0.04;

		};

		class DropKey : life_RscButtonMenu {
			idc = -1;
			x = 0.4 * safezoneW + safezoneX;
			y = 0.615 * safezoneH + safezoneY;
			w = 0.03 * safezoneW;
			h = 0.0587 * safezoneH;
			tooltip = "Wegwerfen"; //--- ToDo: Localize;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,1};
			color2[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {0,0,0,0.4};
			onButtonClick = "[] call life_fnc_keyDrop";
		};

		class GiveKey : Life_RscButtonMenu {
			idc = 2703;
			x = 0.37 * safezoneW + safezoneX;
			y = 0.615 * safezoneH + safezoneY;
			w = 0.03 * safezoneW;
			h = 0.0587 * safezoneH;
			tooltip = "Geben"; //--- ToDo: Localize;
			colorBackground[] = {-1,-1,-1,-1};
			colorBackgroundFocused[] = {1,1,1,0.12};
			colorBackground2[] = {0.75,0.75,0.75,0.2};
			color[] = {1,1,1,1};
			colorFocused[] = {0,0,0,1};
			color2[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			colorDisabled[] = {0,0,0,0.4};
			onButtonClick = "[] call life_fnc_keyGive";
		};
	};
};