//New task message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && FFA_CLIENTREPORTOBJACTIVE && (FFA_SERVERSTARTED) && (FFA_CLIENTSTARTED)};
	[] call FFA_FUNC_UPDATETASK;
	WaitUntil {sleep 0.2;!(local player) || !FFA_CLIENTREPORTOBJACTIVE || !(FFA_SERVERSTARTED) || !(FFA_CLIENTSTARTED)};
};