//Script: Players dialog activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_List";

FFA_DLG_ACTIVE_PLAYERS=true;

[] call FFA_FUNC_FILLPLAYERSLIST;
//ctrlEnable[207,false];

waitUntil{!(dialog)};

FFA_DLG_ACTIVE_PLAYERS=false;

if (alive player) then
{
	_dialog=[] execVM "DLG\DLG_MainMenu.sqf";
};

exit