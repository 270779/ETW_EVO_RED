//Crew alert Plane under attack message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && ((vehicle player)==player) && ((player distance nearestObject[player,'LandVehicle'])<10) && (alive nearestObject[player,'LandVehicle']) && !(isNull nearestObject[player,'LandVehicle']) && !(nearestObject[player,'LandVehicle'] in FFA_PRIVATEVEHICLES)};
	['LandVehicle'] call FFA_FUNC_LOCKUNLOCK;
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || ((vehicle player)!=player) || ((player distance nearestObject[player,'LandVehicle'])>10) || !(alive nearestObject[player,'LandVehicle']) || (isNull nearestObject[player,'LandVehicle']) || (nearestObject[player,'LandVehicle'] in FFA_PRIVATEVEHICLES)};
};