//lock Air
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && ((vehicle player)==player) && ((player distance nearestObject[player,'Air'])<10) && (alive nearestObject[player,'Air']) && !(isNull nearestObject[player,'Air'])  && !(nearestObject[player,'Air'] in FFA_PRIVATEVEHICLES)};
	['Air'] call FFA_FUNC_LOCKUNLOCK;
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || ((vehicle player)!=player) || ((player distance nearestObject[player,'Air'])>10) || !(alive nearestObject[player,'Air']) || (isNull nearestObject[player,'Air'])  || (nearestObject[player,'Air'] in FFA_PRIVATEVEHICLES)};
};