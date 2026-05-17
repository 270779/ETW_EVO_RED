
_veh = _this select 0;

if (_veh isKindOf 'AllVehicles') then {
	_camMode = _veh getVariable "wcamEnabled";
	_wcamActionId = _veh getVariable "wcamActionId";

	if (!(isNil "_wcamActionId")) then {
		_veh removeaction _wcamActionId;
	};

	if (isNil "_camMode") then { _camMode = true; };

	if(!_camMode) then
	{
		_wcamActionId = _veh addAction [localize "STR_ACT_MissleCamDisable", "CamMissle\action_misslecam.sqf", [], 1, false, false, "", "(vehicle player) isKindOf 'AllVehicles'"];
		_camMode = true;
		
		_veh setVariable ["wcamEnabled", _camMode, false];
		_veh setVariable ["wcamActionId", _wcamActionId, false];		
		
	} else {	
		_wcamActionId = _veh addaction [localize "STR_ACT_MissleCamEnable", "CamMissle\action_misslecam.sqf", [], 1, false, false, "", "(vehicle player) isKindOf 'AllVehicles'"];
		_camMode = false;

		_veh setVariable ["wcamEnabled", _camMode, false];
		_veh setVariable ["wcamActionId", _wcamActionId, false];		
	};
	
	if (!isNil "wcam_eh") then {
		_veh removeEventHandler ["Fired", wcam_eh];
	};
	
	if (_camMode) then {
		wcam_eh = _veh addEventHandler ["Fired", {[_this select 0,_this select 4] execVM "CamMissle\misslecam.sqf"}];
	};	
};


