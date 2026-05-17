
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_MISSILETARGET) && (FFA_MISSILETARGET==driver (vehicle player))};
	['#FF0000',localize 'STR_HINT_IncomingMissileHeader',format [localize 'STR_HINT_IncomingMissile',(vehicle player) getVariable 'FFA_FLARESLEFT']] call FFA_FUNC_MESSAGE; 
	FFA_MISSILETARGET=objNull;
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_MISSILETARGET) || (FFA_MISSILETARGET!=driver (vehicle player))};
};