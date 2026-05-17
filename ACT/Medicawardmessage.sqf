//Medic award message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_AWARDUNIT_MEDIC) && (FFA_AWARDUNIT_MEDIC==player)};
	['#0000FF',localize 'STR_HINT_AwardHeader',localize 'STR_HINT_MedicAward'] call FFA_FUNC_MESSAGE; 
	FFA_AWARDUNIT_MEDIC=objNull;
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_AWARDUNIT_MEDIC) || (FFA_AWARDUNIT_MEDIC!=player)};
};