//smoke launcher
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
		
		WaitUntil {sleep 0.2;(local player) && (alive player) && ((vehicle player)!=player) && !((vehicle player)isKindOf "Air") && (alive (vehicle player)) && ( (player==commander (vehicle player)) || (player==driver (vehicle player)) || (player==gunner (vehicle player)) )};
		
		HK_Smoke=(findDisplay 46) displayAddEventHandler ['KeyDown','_scr=[vehicle player,_this select 1,true,objNull] call FFA_FUNC_LAUNCHSMOKES'];FFA_ATGMTARGET=objNull;
		
		WaitUntil {sleep 0.2;!(local player) || !(alive player) || ((vehicle player)==player) || !(alive (vehicle player)) || ( (player!=commander (vehicle player)) && (player!=driver (vehicle player)) && (player!=gunner (vehicle player)) )};
	
	(findDisplay 46) displayRemoveAllEventHandlers 'KeyDown';
};