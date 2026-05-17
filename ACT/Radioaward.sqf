//Radiotower award message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_AWARDUNIT_RADIO) && (FFA_AWARDUNIT_RADIO==player)};
	['#0000FF',localize 'STR_HINT_AwardHeader',localize 'STR_HINT_RadioAward'] call FFA_FUNC_MESSAGE; 
	FFA_AWARDUNIT_RADIO=objNull;
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_AWARDUNIT_RADIO) || (FFA_AWARDUNIT_RADIO!=player)};
};