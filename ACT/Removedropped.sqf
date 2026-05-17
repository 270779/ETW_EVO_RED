//remove dropped weapons
while {!(FFA_GAMEENDED)} do
{
	sleep 1;
	WaitUntil {sleep 0.2;(local player) && (vehicle player==player) && (alive player) && ( {(((vehicle player) distance _x) < 10) && (((vehicle player) distance _x) > 2) && (alive _x)} count nearestObjects [(vehicle player),['WeaponHolder'],10]>0 )};
	{if (local _x) then {deletevehicle _x}} forEach nearestObjects [(vehicle player),['WeaponHolder'],10];
	WaitUntil {sleep 0.2;!(local player) || (vehicle player!=player) || !(alive player) || ( {(((vehicle player) distance _x) < 10) && (((vehicle player) distance _x) > 2) && (alive _x)} count nearestObjects [(vehicle player),['WeaponHolder'],10]==0 )};
	{if (local _x) then {deletevehicle _x}} forEach nearestObjects [(vehicle player),['WeaponHolder'],50];
};