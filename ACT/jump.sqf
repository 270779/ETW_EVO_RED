while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	waitUntil {sleep 0.2;(local player) && ((format ["%1",findDisplay 106]) == "No display") && (alive player) && (vehicle player==player) && (speed (vehicle player) < 32) && !(FFA_DRAGREQUIRED) && ((player getVariable 'FFA_LIFESTATE') < FFA_LIFESTATE_DYING) && ((animationState player) !='AinvPknlMstpSlayWrflDnon_medic') && ((animationState player)!='AmovPpneMstpSrasWrflDnon_healed') && ((animationState player)!='AinvPknlMstpSlayWrflDnon_healed') && ((animationState player)!='AinvPknlMstpSlayWrflDnon_healed2') && ((animationState player) !='aidlppnemstpsraswrfldnon0s')};
	JumpeventID=(findDisplay 46) displayAddEventHandler ['KeyDown','jump=[player,_this select 1] spawn FFA_FUNC_JUMP'];
	waitUntil {sleep 0.2;!(local player) || ((format ["%1",findDisplay 106]) != "No display") || !(alive player) || (vehicle player!=player) || (speed (vehicle player) >= 32) || ((player getVariable 'FFA_LIFESTATE') > FFA_LIFESTATE_INJURED) || (FFA_DRAGREQUIRED) || ((animationState player) =='AinvPknlMstpSlayWrflDnon_medic') || ((animationState player)=='AmovPpneMstpSrasWrflDnon_healed') || ((animationState player)=='AinvPknlMstpSlayWrflDnon_healed') || ((animationState player)=='AinvPknlMstpSlayWrflDnon_healed2') || ((animationState player) =='aidlppnemstpsraswrfldnon0s')};
	(findDisplay 46) displayRemoveEventHandler ['KeyDown',JumpeventID];
};