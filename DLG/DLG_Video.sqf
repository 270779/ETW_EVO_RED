//Script: Video settings dialog activation

private["_dlg"];

closedialog 0;

_dlg=createDialog "DLG_VideoSettings";
sliderSetRange [200,1000,5000];
sliderSetRange [201,0,50];
sliderSetPosition [200,viewDistance]; 
sliderSetPosition [201,50-FFA_TERAINGRID];

waitUntil{!(dialog)};

if (alive player) then
{
	_dlg=[] execVM "DLG\DLG_MainMenu.sqf";
};

exit;