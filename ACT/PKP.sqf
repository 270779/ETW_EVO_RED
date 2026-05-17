//deploy pecheneg MG nest
while {!(FFA_GAMEENDED)} do 
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && (vehicle player==player) && !(player in list Base) && ((getPosATL player select 2) < 1) && (FFA_SERVERSTARTED) && (primaryWeapon player == 'Pecheneg')};
	ACT_mgptent=player addAction [localize 'STR_ACT_MG_BLD','ACT\ACT_mgptent.sqf',[],1];
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || (vehicle player!=player) || (player in list Base) || ((getPosATL player select 2) > 1) || !(FFA_SERVERSTARTED) || (primaryWeapon player != 'Pecheneg')};
	player removeAction ACT_mgptent;
};