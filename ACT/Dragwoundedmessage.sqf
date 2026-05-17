//Drag wounded message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && ((player getVariable 'FFA_DRAGGED')) && ((lifeState player)=='UNCONSCIOUS')};
	SCR_Dragged=[player] execVM 'ACT\ACT_Dragged.sqf';
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || !((player getVariable 'FFA_DRAGGED')) || ((lifeState player)!='UNCONSCIOUS')};
};