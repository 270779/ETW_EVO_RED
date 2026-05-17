//Transport award
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (vehicle player!=player) && (alive player) && (alive  vehicle player) && !((vehicle player) isKindOf 'ParachuteBase') && !((vehicle player) isKindOf 'BIS_Steerable_Parachute')};
	VEH_Transport=vehicle player;
	_vtidx = VEH_Transport addEventHandler ['getout','_this call FFA_FUNC_GETOUTEVENTHANDLER']; VEH_TransportPos=getPosATL VEH_Transport;
	WaitUntil {sleep 0.2;!(local player) || (vehicle player==player) || !(alive player) || !(alive  vehicle player) || ((vehicle player) isKindOf 'ParachuteBase') || ((vehicle player) isKindOf 'BIS_Steerable_Parachute')};
	VEH_Transport removeEventHandler ["getout",_vtidx];
};