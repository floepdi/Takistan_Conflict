/*
      Created by Mokomoko
      Date: 04.08.2014
      Related Forum Post: http://www.altisliferpg.com/topic/4812-tutorial-how-to-increase-the-fuel-usage/
      Edited by Phil
*/

private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption"];

while{true} do
{
	if(vehicle player != player) then
	{
    _vehicleToFuel = (vehicle player);


    if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && (_vehicleToFuel != player) ) then
    {
        _velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;


			switch (typeOf (_vehicleToFuel)) do {
			default {_fuelConsumption = 0;}
			};

        if(_fuelConsumption == 0) then
        {
            _fuelConsumption = 0;
        };
        _vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);

        //hint format["Benzinverbrauch: %1L/km",_fuelConsumption*10000/2];

        if(fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then
        {
            hint "Dein Tank ist gleich leer!";
        }
        else
        {
            if(fuel _vehicleToFuel < 0.03) then
            {
                hint "Hoffentlich kannst du laufen! Dein Tank ist nämlich LEER.";
            };
        };
    };
	}
	else
	{
	sleep 20;
	};

    sleep 2;
};