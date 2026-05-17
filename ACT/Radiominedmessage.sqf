//Radiotower mined message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && FFA_RADIOMINED && (alive FFA_RADIO) && (FFA_SERVERSTARTED) && (FFA_CLIENTSTARTED)};
	[east,'hq'] sideChat localize 'STR_RADIO_RadioMined';
	WaitUntil {sleep 0.2;!(local player) || !FFA_RADIOMINED || !(alive FFA_RADIO) || !(FFA_SERVERSTARTED) || !(FFA_CLIENTSTARTED)};
};