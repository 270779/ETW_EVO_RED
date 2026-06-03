//Action: Field Repair

private["_veh","_name","_i","_pack","_dam"];

_veh=_this select 0;
_pack=_veh getVariable "FFA_REPAIRKITS";

if (format["%1",_pack]=="<null>") then
{
	_pack=1;
	_veh setVariable ["FFA_REPAIRKITS",_pack,true];
};

if (_pack>0) then
{
	if (!(isNull _veh)) then
	{
		hint localize "STR_HINT_FieldStarted";
		FFA_PROCESSREPAIR=true;
		_veh lock true;
		_i=0;
		while {(alive player) && (alive _veh) && (({alive _x} count crew _veh)==0) && (_i<20)} do
		{
			player playMove "AinvPknlMstpSlayWrflDnon_medic";
			sleep 1;
			if ((alive player) && (alive _veh) && (({alive _x} count crew _veh)==0)) then
			{
				_i=_i+1;
			};
		};
		if (_i<20) exitWith{hint localize "STR_HINT_FieldFailed";FFA_PROCESSREPAIR=false; player setUnconscious false; _veh lock false;};
		_name=getText (configFile >> "CfgVehicles" >> (typeOf _veh) >> "DisplayName");
		_pack=_veh getVariable "FFA_REPAIRKITS";
		_pack=_pack-1;
		hint format[localize "STR_HINT_FieldComplete",_name,_pack];
		_veh setVariable ["FFA_REPAIRKITS",_pack,true];
		if (local _veh) then
		{
			_dam=(getDammage _veh)-0.15;
			_veh setDamage 0;
			if ((_veh isKindOf "Air") && (_dam>0.20)) then
			{
				_dam=0.20;
				_veh setFuel (fuel _veh)+0.4;
			};
			_veh setDammage _dam;
		}
		else
		{
			FFA_REPVEHICLE=_veh;
			publicVariable "FFA_REPVEHICLE";
		};
		FFA_PROCESSREPAIR=false;
		_veh lock false;
	};
}
else
{
	hint localize "STR_HINT_FieldDenided";
};