//deploy Iglatwice
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && (vehicle player==player) && !(player in list Base) && ((getPosATL player select 2) < 1) && (FFA_SERVERSTARTED) && (secondaryWeapon player == 'Igla')};
	ACT_aatent=player addAction [localize 'STR_ACT_IGLA_BLD', 'ACT\ACT_aatent.sqf',[],4];
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || (vehicle player!=player) || (player in list Base) || ((getPosATL player select 2) > 1) || !(FFA_SERVERSTARTED) || (secondaryWeapon player != 'Igla')};
	player removeAction ACT_aatent;
};