//Crew
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (vehicle player!=player) && (alive player) && (alive  vehicle player)};
	VEH_HintCrew=vehicle player; 
	ACT_HintCrew=VEH_HintCrew addAction [localize 'STR_ACT_Crew','ACT\ACT_HintCrew.sqf',[],0, false];
	WaitUntil {sleep 0.2;!(local player) || (vehicle player==player) || !(alive player) || !(alive  vehicle player)};
	VEH_HintCrew removeAction ACT_HintCrew; 
	FFA_MISSILETARGET=objNull; 
	FFA_ATGMTARGET=objNull; 
	FFA_SMOKELAUNCHINGVEH=objNull;
	WaitUntil {sleep 0.2;!(local player) || (vehicle player==player) || !(alive player) || !(alive  vehicle player)};
};