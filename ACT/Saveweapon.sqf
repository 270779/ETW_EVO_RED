//save weapons
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;({((player distance _x)<5)} count FFA_AMMOCRATES>0) && (alive player) && (vehicle player==player)};
	ID_SaveLoadout=player addAction[localize 'STR_ACT_Loadout','ACT\ACT_SaveLoadout.sqf',[],52];
	WaitUntil {sleep 0.2;({((player distance _x)<5)} count FFA_AMMOCRATES==0) || !(alive player) || (vehicle player!=player)};
	player removeAction ID_SaveLoadout;
};