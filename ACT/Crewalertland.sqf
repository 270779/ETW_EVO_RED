//Crew alert tank under attack message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_ATGMTARGET) && (FFA_ATGMTARGET==effectiveCommander (vehicle player))};
	['#FF0000',localize 'STR_HINT_IncomingMissileHeader',format[localize 'STR_HINT_IncomingATGM',(vehicle player) getVariable 'FFA_ATGMDIR']] call FFA_FUNC_MESSAGE; 
	FFA_ATGMTARGET=objNull;
	FFA_SMOKESHELLS=[];
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_ATGMTARGET) || (FFA_ATGMTARGET!=effectiveCommander (vehicle player))};
};