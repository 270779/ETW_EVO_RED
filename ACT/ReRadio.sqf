//Radiotower replace message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {(local player) && (FFA_RERADIO) && (FFA_SERVERSTARTED) && (FFA_CLIENTSTARTED)};
	[east,'hq'] sideChat localize 'STR_RADIO_RERADIO';
	WaitUntil {!(local player) || !(FFA_RERADIO) || !(FFA_SERVERSTARTED) || !(FFA_CLIENTSTARTED)};
};