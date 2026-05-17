//Radiotower destroyed message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (!alive FFA_RADIO) && (FFA_CLIENTREPORTOBJACTIVE) && (FFA_SERVERSTARTED) && (FFA_CLIENTSTARTED)};
	[east,'hq'] sideChat localize 'STR_RADIO_RadioDown';
	WaitUntil {sleep 0.2;!(local player) || (alive FFA_RADIO) || !(FFA_CLIENTREPORTOBJACTIVE) || !(FFA_SERVERSTARTED) || !(FFA_CLIENTSTARTED)};
};