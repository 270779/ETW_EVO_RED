//FirstAid you message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_INJURED) && (FFA_INJURED==player)};
	[] call FFA_FUNC_BEINGFIRSTAIDED;
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_INJURED) || (FFA_INJURED!=player)};
};