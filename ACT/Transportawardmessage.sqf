//Transport award message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_AWARDUNIT_TRANSPORT) && (FFA_AWARDUNIT_TRANSPORT==player)};
	['#0000FF',localize 'STR_HINT_AwardHeader',localize 'STR_HINT_TransportAward'] call FFA_FUNC_MESSAGE;
	FFA_AWARDUNIT_TRANSPORT=objNull;
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_AWARDUNIT_TRANSPORT) || (FFA_AWARDUNIT_TRANSPORT!=player)};
};