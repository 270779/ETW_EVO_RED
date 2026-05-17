//Heli Winch cargo
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && ((typeOf vehicle player) in FFA_TRANSPORTHELI) && (player==(driver vehicle player))};
	scr=[] execVM 'ACT\ACT_WinchManager.sqf';
	WaitUntil {sleep 0.2;!(local player) || !((typeOf vehicle player) in FFA_TRANSPORTHELI) || (player!=(driver vehicle player))};
};