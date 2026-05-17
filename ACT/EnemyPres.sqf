//Enemy present
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {(local player) && (FFA_ENEMY_PRES) && (FFA_SERVERSTARTED) && (FFA_CLIENTSTARTED)};
	[east,'hq'] sideChat localize 'STR_ENEMY_PRES';
     	WaitUntil {!(local player) || !(FFA_ENEMY_PRES) || !(FFA_SERVERSTARTED) || !(FFA_CLIENTSTARTED)};
};