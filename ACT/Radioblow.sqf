//Radiotower blow
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && ((player distance FFA_RADIO) < 5) && (alive player) && (FFA_CLIENTREPORTOBJACTIVE)};
	ACT_TouchOff=player addAction [localize 'STR_ACT_TouchOff','ACT\ACT_TouchOff.sqf',[],55];
	WaitUntil {sleep 0.2;!(local player) || ((player distance FFA_RADIO) > 5) || !(alive player) || !(FFA_CLIENTREPORTOBJACTIVE)};
	player removeAction ACT_TouchOff;
};