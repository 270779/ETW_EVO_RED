//Show another players on the map
private["_markers","_i","_name","_marker","_unit","_lifestate","_veh"];
if (!(local player)) exitWith{};
sleep 1;
_markers=[""];
//for [{_i=1},{_i<=40},{_i=_i+1}] do
for "_i" from 1 to 40 step 1 do
{
	_marker=createMarkerLocal[format["P%1",_i],[0,0]];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "Empty";
	_marker setMarkerSizeLocal [0.4, 0.4];
	_markers=_markers+[_marker];
	sleep 0.1;
};
while {!(FFA_GAMEENDED)} do
{
//	for [{_i=1},{_i<=40},{_i=_i+1}] do
  for "_i" from 1 to 40 step 1 do
	{
		if (!isNil {call compile format ["ES%1",_i]}) then
		{
		 _unit=[] call compile format ["ES%1",_i];

	   if ((typeName _unit)=="OBJECT") then
		{		
			_name =_unit getVariable "FFA_SELFNAME";
			_marker =_markers select _i;
			_veh = vehicle _unit;
			_marker setMarkerPosLocal (getPosATL (vehicle _unit));
			
      if (!isNil{(_name != "")}) then
			{
				_marker setMarkerTypeLocal "mil_start";
			};
			if ((vehicle _unit)!=_unit) then
			{
				if (_unit==(effectiveCommander _veh)) then
				{
					_text = gettext(configFile >> "CfgVehicles" >> (typeof (vehicle _unit)) >> "displayName");
					_marker setMarkerTextLocal format["-%1 [%2]",_name,_text];
				}
				else
				{
					_marker setMarkerTypeLocal "Empty";
				};
			}
			else
			{
				_lifestate=_unit getVariable "FFA_LIFESTATE";
				if (!isNil "_lifestate") then
				{
				   switch (_lifestate) do
				  {
					  case FFA_LIFESTATE_HEALTHY:
					  {
						 _marker setMarkerTextLocal format ["-%1",_name];
					  };
					  case FFA_LIFESTATE_INJURED:
					  {
						  _marker setMarkerTextLocal format ["-%1 [%2]",_name,localize "STR_MAP_Injured"];
					  };
					  case FFA_LIFESTATE_DYING:
					  {
						  _marker setMarkerTextLocal format ["-%1 [%2]",_name,localize "STR_MAP_Dying"];
					  };
					  case FFA_LIFESTATE_DEAD:
					  {
						  _marker setMarkerTextLocal format ["-%1 [%2]",_name,localize "STR_MAP_Dead"];
					  };
				  };
			  };
			};
			if (isNull _unit) then
          {
				   _marker setMarkerTypeLocal "Empty";
	        };
			    [_unit] spawn FFA_FUNC_LAW;
		}
		else
		{
				_marker setMarkerTypeLocal "Empty";			 
		};
//		FFA_CURRENTPLAYERS=[] call FFA_TOTALPLAYERS;
    };	
	};
	sleep 2;
};