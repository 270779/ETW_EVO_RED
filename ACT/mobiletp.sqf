//Mobile TP
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && ((vehicle player)==player) && ({((player distance _x) < 10) && (alive _x)} count nearestObjects [player,['BTR90_HQ'],5]>0)};
	mobile_tp=player addAction [localize 'STR_TO_BASE','t_base.sqf',[],53];
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || ((vehicle player)!=player) || ({((player distance _x) > 10) || (alive _x)} count nearestObjects [player,['BTR90_HQ'],5]==0)};
	player removeAction mobile_tp;
};
