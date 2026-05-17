//Script: Buy unit dialog activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_List";

FFA_DLG_ACTIVE_UNITS=true;

[] call FFA_FUNC_FILLUNITLIST;

waitUntil{!(dialog)};

FFA_DLG_ACTIVE_UNITS=false;

if (alive player) then
{
	_dialog=[] execVM "DLG\DLG_MainMenu.sqf";
};

exit