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

        class picGroup:life_RscPicture
        {
            idc = 1201;
            text = "icons\group.paa";
            x = 0.24 * safezoneW + safezoneX;
            y = safezoneY;
            w = 0.08;
            h = 0.081;
            colorBackground[] = {0,0,0,0.7};
    };

        };
    class controls {
        
        class ButtonCell : Life_RscButtonMenu {
            idc     = 2014;
            x       = 0.16 * safezoneW + safezoneX;
            y       = safezoneY;
            w       = 0.08;
            h       = 0.081;
            tooltip = "Handy"; //--- ToDo: Localize;
            colorBackground[] = {-1,-1,-1,-1};
            colorBackgroundFocused[] = {1,1,1,0.12};
            colorBackground2[] = {0.75,0.75,0.75,0.2};
            color[] = {1,1,1,1};
            colorFocused[] = {0,0,0,1};
            color2[] = {0,0,0,1};
            colorText[] = {1,1,1,1};
            colorDisabled[] = {0,0,0,0.4};
            animTextureNormal = "icons\handy.paa";
            onButtonClick     = "createDialog ""Life_my_smartphone"";";
        };      
    };
};