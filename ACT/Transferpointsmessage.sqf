//transfer points message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_TRANSFER_TARGET) && (FFA_TRANSFER_TARGET==player)};
	['#0000FF',localize 'STR_HINT_TransferHeader',format [localize 'STR_HINT_TransferReceive',name FFA_TRANSFER_UNIT,FFA_TRANSFER_POINTS]] call FFA_FUNC_MESSAGE; 
	FFA_TRANSFER_TARGET=objNull;
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_TRANSFER_TARGET) || (FFA_TRANSFER_TARGET!=player)};
};