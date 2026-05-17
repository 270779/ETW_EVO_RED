//Heal Yourself
while {!(FFA_GAMEENDED)} do
{
	sleep 1.0;
	WaitUntil {sleep 0.2;( (getDammage player > 0.05) || ((player getVariable 'FFA_LIFESTATE') > FFA_LIFESTATE_HEALTHY) ) && ((animationState player)!='AinvPknlMstpSlayWrflDnon_medic') && (!FFA_USEACE) && (!FFA_PLAYERINAGONY) && (alive player)};
	ACT_HealYourself=player addAction [localize 'STR_ACT_HealYourself','ACT\ACT_HealYourself.sqf',[],0];
	WaitUntil {sleep 0.2;( (getDammage player < 0.05) && ((player getVariable 'FFA_LIFESTATE') < FFA_LIFESTATE_INJURED) ) || ((animationState player)=='AinvPknlMstpSlayWrflDnon_medic') || (FFA_USEACE) || (FFA_PLAYERINAGONY) || !(alive player)};
	player removeAction ACT_HealYourself;
};




