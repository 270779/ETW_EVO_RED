//Script: Transfer dialog activation

private["_dialog"];

closedialog 0;
_dialog=createDialog "DLG_Resources";
[] call FFA_FUNC_FILLTRANSFERLIST;	

waitUntil{!(dialog)};

if (alive player) then
{
	_dialog=[] execVM "DLG\DLG_MainMenu.sqf";
};

exit