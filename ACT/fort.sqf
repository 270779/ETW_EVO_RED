//deploy fort
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && (vehicle player==player) && !(player in list Base) && ({((player distance _x) < 5) && (alive _x)} count nearestObjects [player,['building','house'],5]==0) && ((getPosATL player select 2) < 1) && (FFA_SERVERSTARTED) && (count (player nearRoads 13)== 0)};
	ACT_groundtent=player addAction [localize 'STR_ACT_fort_BLD','ACT\ACT_groundtent.sqf',[],1];
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || (vehicle player!=player) || (player in list Base) || ({((player distance _x) < 5) && (alive _x)} count nearestObjects [player,['building','house'],5]!=0) || ((getPosATL player select 2) > 1) || !(FFA_SERVERSTARTED) || (count (player nearRoads 13)!= 0)};
	player removeAction ACT_groundtent;
};