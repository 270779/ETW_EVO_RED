//Vehicle respawn script. Borrowed from AAS-Series maps and modified

//#include "defines.sqf" //to be removed along all ACE

private ["_respawndelay", "_veh", "_startdir", "_startpos", "_typ", "_lastUsedTime", "_abandoned"];

sleep 5;

if(isServer) then
{
	_veh=_this select 0;
	_respawndelay=_this select 1;
	
	_typ=typeOf _veh;
	_startdir=getDir _veh;
	_startpos=getPosATL _veh;
			
	_abandoned=false;
	_lastUsedTime=time;

	_veh setVariable ["FFA_OWNER","",true];
	_veh setVariable ["FFA_REPAIRKITS",3,true];

#ifndef __USE_ACE__
	[_veh,false] call FFA_FUNC_HANDLEATGMDEFENCE;
	[_veh] call FFA_FUNC_HANDLEMISSILEDEFENCE;
#endif
	
	while {true} do
	{
		sleep 5 + (random 10);
			
		if (((_veh distance _startpos) < 25) && (canMove _veh)) then 
		{
			_lastUsedTime=time;
		};
						
		if (({alive _x} count (crew _veh)) > 0) then 
		{
			_lastUsedTime=time
		}; 

		if((time-_lastUsedTime) > (_respawndelay*2)) then
		{
			_abandoned=true;
		};
			
		if(((damage _veh) > 0.9) || _abandoned) then
		{
			_veh setDammage 1;
			
			sleep (_respawndelay/2);
			
			_veh removeAllEventHandlers "killed";
			_veh removeAllEventHandlers "IncomingMissile";
			_veh removeAllEventHandlers "HandleDamage";
			_veh removeAllEventHandlers "Hit";
			_veh removeAllEventHandlers "GetOut";
			_veh removeAllEventHandlers "Init";
		
			deleteVehicle _veh;
			
			sleep (_respawndelay/2);		

			_veh=createVehicle [_typ,_startpos,[],0,"NONE"];
			if ((typeOf _veh) == "Mi17_TK_EP1") then
			{
				_veh setVehicleInit "this addEventHandler [""GetIn"",""_this spawn FFA_FUNC_ADDACTPARA""]";
				processInitCommands;
			};
			if (_veh isKindOf "StaticWeapon") then
			{
				_veh setPosATL _startpos;
			};
			_veh setDir _startdir;
			
			//publicVariable "_veh";

			_abandoned = false;
			_lastUsedTime = time;

			_veh setVariable ["FFA_OWNER","",true];
			_veh setVariable ["FFA_REPAIRKITS",3,true];
			
#ifndef __USE_ACE__
	[_veh,false] call FFA_FUNC_HANDLEATGMDEFENCE;
	[_veh] call FFA_FUNC_HANDLEMISSILEDEFENCE;
#endif		
		};		
	};		
};