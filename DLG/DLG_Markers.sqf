//Script: markers setup dialog activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_markers";

[] call FFA_FUNC_FILLMARKERSLIST;

waitUntil{!(dialog)};

if (alive player) then
{
	_dialog=[] execVM "DLG\DLG_Video.sqf";
};

exit