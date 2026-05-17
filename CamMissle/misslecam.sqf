// execVM "\scripts\su34.sqf"
// execVM "Module\CamMissle\action_misslecam.sqf"
// (vehicle player) call RearmVehicle
// (vehicle player) setDammage 0;
disableSerialization;
_unit = _this select 0;
_type = _this select 1;
_pos = [0,0,0];

if (_type != "M_Sidewinder_AA" and _type != "M_Sidewinder_AA_F35" and _type != "M_Hellfire_AT" and _type != "M_CRV7_AT" and _type != "M_Maverick_AT" and _type != "M_Vikhr_AT" and _type != "M_Ch29_AT" and _type != "M_R73_AA" and _type != "M_AT6_AT" and _type != "M_AT9_AT" and _type != "M_AT2_AT" and _type != "Bo_FAB_250" and _type != "Bo_GBU12_LGB" and _type != "Bo_GBU12_LGB_F35" and _type != "Bo_Mk82" and _type != "M_Igla_AA" and _type != "M_9M311_AA" and _type != "Sh_122_HE" and _type != "Sh_122_WP" and _type != "Sh_122_LASER" and _type != "R_GRAD" and _type != "Sh_82_HE" and _type != "Sh_82_WP" and _type != "Sh_105_HE" and _type != "Sh_105_WP" and _type != "Sh_105_LASER" and _type != "Sh_81_HE" and _type != "Sh_81_WP" and _type != "R_MLRS") exitwith {};
if ((date select 3) < 4 or (date select 3) > 20) then {camUseNVG true} else {camUseNVG false};
_hud = false;
_hud = createDialog "RscMissleCamera";

_disp = findDisplay 50001;
_disp displaySetEventHandler["KeyDown", "camdestroy _cam;closeDialog 0;player cameraEffect [""terminate"",""back""];"];

_missile = nearestObject[_unit, _type];
_cam = "camera" camCreate [5329.34,6652.10,1.28];
_cam cameraEffect ["internal","front"];
_cam camSetTarget _missile;
_cam camSetRelPos [0,-2,0.7];
_cam camSetFOV 1.0;
showCinemaBorder false;
_cam camCommit 0;
_dt = 0;
for [{_loop=0}, {_loop<1}, {_loop=_loop}] do
{
	if((alive player) && dialog && (!isNull _missile))then 
	{	
		_dt = 5 * accTime / (diag_fps);
		_cam camSetTarget _missile;
		_cam camSetRelPos [0,-2,0.7];
		_cam camCommit _dt;
		_pos = position _missile;
	};
	if (isNull _missile or (!dialog)) then {_loop=1;};
	sleep 0.01;
};
if (!dialog) exitwith  {camUseNVG false;camdestroy _cam;player cameraEffect ["terminate","back"]};

if(_type == "Bo_FAB_250") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,70.0];
	_cam camCommit 1;
	sleep 2.01;
};
if(_type == "Bo_GBU12_LGB") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,40.0];
	_cam camCommit 1;
	sleep 2.01;
};
if(_type == "R_GRAD") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,40.0];
	_cam camCommit 1;
	sleep 2.01;
};
if(_type == "Sh_122_HE") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,40.0];
	_cam camCommit 1;
	sleep 2.01;
};
if(_type == "Sh_82_HE") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,40.0];
	_cam camCommit 1;
	sleep 2.01;
};
if(_type == "Sh_105_HE") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,40.0];
	_cam camCommit 1;
	sleep 2.01;
};
if(_type == "Sh_81_HE") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,40.0];
	_cam camCommit 1;
	sleep 2.01;
};
if(_type == "R_MLRS") then
{
	_base = "HeliHEmpty" createVehicleLocal _Pos;
	_cam camSetTarget _base;
	_cam camSetRelPos [0.0,0.0,40.0];
	_cam camCommit 1;
	sleep 2.01;
};
sleep 2.01;
if (!isNil "_base") then
{
  deleteVehicle _base;
};
camUseNVG false;
camdestroy _cam;
closeDialog 0;
player cameraEffect ["terminate","back"];