//Static Actions
private["_actL","_actR","_veh"];

while {!(FFA_GAMEENDED)} do
{
	sleep 1.0;
	WaitUntil {(local player) && ((typeOf vehicle player) in FFA_TURNINGSTATIC) && (alive player)};
	
	_veh=vehicle player;

	_actL=_veh addAction [format[localize "STR_ACT_TurnL",_name], "ACT\ACT_TurnL.sqf", _veh];	
	_actR=_veh addAction [format[localize "STR_ACT_TurnR",_name], "ACT\ACT_TurnR.sqf", _veh];

	WaitUntil {!(local player) || !((typeOf vehicle player) in FFA_TURNINGSTATIC) || !(alive player)};

	_veh removeAction _actL;
	_veh removeAction _actR;

};