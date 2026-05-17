//CAT COUNTER_START
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {(local player) && (FFA_COUNTER_START) && (FFA_SERVERSTARTED) && (FFA_CLIENTSTARTED)};
	[east,'hq'] sideChat localize 'STR_COUNTER_START';
//	player commandChat localize 'STR_RADIO_CAT';
	WaitUntil {!(local player) || !(FFA_COUNTER_START) || !(FFA_SERVERSTARTED) || !(FFA_CLIENTSTARTED)};
};