//LaserDesignator
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && (alive player) && ((vehicle player)==player) && ((currentWeapon player)=='LaserDesignator') && ('Laserbatteries' in (magazines player))};
	ACT_Designate=player addAction [localize 'STR_ACT_Designate','ACT\ACT_Designate.sqf',[],54];
	WaitUntil {sleep 0.2;!(local player) || !(alive player) || ((vehicle player)!=player) || ((currentWeapon player)!='LaserDesignator') || !('Laserbatteries' in (magazines player))};
	player removeAction ACT_Designate;
};