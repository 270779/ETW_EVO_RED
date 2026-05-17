//Script: Player`s squad dialog activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_List";

FFA_DLG_ACTIVE_SQUAD=true;

[] call FFA_FUNC_FILLSQUADLIST;

waitUntil{!(dialog)};

FFA_DLG_ACTIVE_SQUAD=false;

if (alive player) then
{
	_dialog=[] execVM "DLG\DLG_MainMenu.sqf";
};

exit