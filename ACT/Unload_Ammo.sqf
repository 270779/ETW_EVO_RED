//Unload ammo
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && ((vehicle player)==player) && ({((player distance _x) < 10) && (alive _x)} count nearestObjects [player,['BTR90_HQ','BMP2_HQ_TK_EP1'],10]>0) && ({alive _x} count nearestObjects [player,['RUBasicWeaponsBox'],30]==0)};
	ACT_Unload=player addAction [localize 'STR_ACT_UnloadAmmo','ACT\ACT_UnloadAmmo.sqf',[],53];
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || ((vehicle player)!=player) || ({((player distance _x) > 10) || (alive _x)} count nearestObjects [player,['BTR90_HQ','BMP2_HQ_TK_EP1'],10]==0) || ({alive _x} count nearestObjects [player,['RUBasicWeaponsBox'],30]!=0)};
	player removeAction ACT_Unload;
};