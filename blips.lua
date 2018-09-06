local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	
	--Police Stations
    	{title="Police Station", colour=38, id=60, x = 642.61, y = 0.53, z = 82.79}, 		-- Vinewood
    	{title="Police Station", colour=38, id=60, x = -1109.26, y = -846.06, z = 19.32},	-- Vespucci
	{title="Police Station", colour=38, id=60, x = -1632.18, y = -1015.43, z = 13.12},	-- Del Perro
	{title="Police Station", colour=38, id=60, x = 428.23, y = -981.65, z = 30.71},		-- Misson Row
	{title="Police Station", colour=38, id=60, x = 358.63, y = -1582.35, z = 29.29},	-- Davis Sheriff
	{title="Police Station", colour=38, id=60, x = -561.09, y = -133.06, z = 38.06},	-- Rockford Hills
	{title="Police Station", colour=38, id=60, x = 822.91, y = -1290.88, z = 28.24},	-- La Mesa
	{title="Police Station", colour=38, id=60, x = 1857.35, y = 3680.26, z = 33.79},	-- Sandy
	{title="Police Station", colour=38, id=60, x = -439.29, y = 6020.63, z = 31.49},	-- Paleto Bay
	
	-- Hospitals
	{title="Hospital", colour=38, id=61, x = -475.11, y = -353.79, z = 34.25},	-- MZ Rockford 
	{title="Hospital", colour=38, id=61, x = 1151.74, y = -1527.82, z = 34.84},	-- El Burro Heights
	{title="Hospital", colour=38, id=61, x = 284.09, y = -1435.48, z = 29.97},	-- Central LS
	{title="Hospital", colour=38, id=61, x = 374.50, y = -591.02, z = 28.81},	-- Pillbox
	{title="Hospital", colour=38, id=61, x = 1841.65, y = 3669.83, z = 33.68},	-- Sandy
	{title="Hospital", colour=38, id=61, x = -235.63, y = 6319.41, z = 31.61},	-- Paleto Bay
	
	-- Fire Stations
	{title="Fire Station 1", colour=49, id=436, x = -661.37, y = -75.46, z = 38.59},	-- Rockford
	{title="Fire Station 2", colour=49, id=436, x = 201.91, y = -1630.75, z = 29.71},	-- Davis
	{title="Fire Station 3", colour=49, id=436, x = 1690.89, y = 3580.48, z = 35.61},	-- Sandy Shores
	{title="Fire Station 4", colour=49, id=436, x = -2099.13, y = 2830.00, z = 32.81},	-- Zancudo; U.S.A.F.
	{title="Fire Station 5", colour=49, id=436, x = -381.14, y = 6119.76, z = 31.48},	-- Paleto Bay
	{title="Fire Station 6", colour=49, id=436, x = -1073.37, y = -2376.79, z = 14.01},	-- LSIA
	{title="Fire Station 7", colour=49, id=436, x = 1185.46, y = -1462.02, z = 34.90},	-- El Burro Heights
}
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
