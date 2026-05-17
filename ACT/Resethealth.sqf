//reset lifestate
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && (((animationState player)=='AmovPpneMstpSrasWrflDnon_healed') || ((animationState player)=='AinvPknlMstpSlayWrflDnon_healed') || ((animationState player)=='AinvPknlMstpSlayWrflDnon_healed2'))};
	[] call FFA_FUNC_RESETLIFESTATE; 
	sleep 3;
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || ((animationState player)!='AmovPpneMstpSrasWrflDnon_healed') || ((animationState player)!='AinvPknlMstpSlayWrflDnon_healed') || ((animationState player)!='AinvPknlMstpSlayWrflDnon_healed2')};
};