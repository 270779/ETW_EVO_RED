//Main menu
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {(local player) && (alive player) && (vehicle player==player) && (FFA_SERVERSTARTED) && ((player in list Base) || (player in list Base1) || (player in list Base2) || (player in list Base3) || ({((player distance _x) < FFA_REPAIRVEHICLERANGE) && (alive _x)} count nearestObjects [player,FFA_BASEVEHICLES,FFA_REPAIRVEHICLERANGE]>0))};
	ACT_MainMenu=player addAction [localize 'STR_ACT_Menu','DLG\DLG_MainMenu.sqf',[],0];
	WaitUntil {!(local player) || !(alive player) || (vehicle player!=player) || !(FFA_SERVERSTARTED) || !((player in list Base) || (player in list Base1) || (player in list Base2) || (player in list Base3) || ({((player distance _x) < FFA_REPAIRVEHICLERANGE) && (alive _x)} count nearestObjects [player,FFA_BASEVEHICLES,FFA_REPAIRVEHICLERANGE]>0))};
	player removeAction ACT_MainMenu;
};