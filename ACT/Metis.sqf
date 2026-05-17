//deploy Metislauncher
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && (vehicle player==player) && !(player in list Base) && ((getPosATL player select 2) < 1) && (FFA_SERVERSTARTED) && (secondaryWeapon player == 'MetisLauncher')};
	ACT_attent=player addAction [localize 'STR_ACT_METIS_BLD', 'ACT\ACT_attent.sqf',[],3];
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || (vehicle player!=player) || (player in list Base) || ((getPosATL player select 2) > 1) || !(FFA_SERVERSTARTED) || (secondaryWeapon player != 'MetisLauncher')};
	player removeAction ACT_attent;
};