//Script: Unlock weapons dialog activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_List";

FFA_DLG_ACTIVE_WEAPONS=true;

[] call FFA_FUNC_FILLWEAPONLIST;

waitUntil{!(dialog)};

FFA_DLG_ACTIVE_WEAPONS=false;

if (alive player) then
{
	_dialog=[] execVM "DLG\DLG_MainMenu.sqf";
};

exit