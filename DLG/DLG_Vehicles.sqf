//Script: Buy vehicle dialog activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_List";

FFA_DLG_ACTIVE_VEHICLES=true;

[] call FFA_FUNC_FILLVEHICLELIST;

waitUntil{!(dialog)};

FFA_DLG_ACTIVE_VEHICLES=false;

if (alive player) then
{
	_dialog=[] execVM "DLG\DLG_MainMenu.sqf";
};

exit