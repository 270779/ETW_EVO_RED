WaitUntil {(local player) && (alive player) && ((vehicle player)!=player) && (alive (vehicle player)) && (alive (vehicle player))};

_transpor = _this select 0;
_Unit = _this select 1;


_TR_ActionAdded = _transpor getVariable "TR_ActionAdded";
if (_TR_ActionAdded) exitWith {};


_transpor setVariable ["TR_ActionAdded", true];
_Act = _transpor addAction [("<t color=""#0000ff"">" + ("LDL AC130") + "</t>"),"LDL_ac130\Addon\ac130_init_AC130.sqf","", 5, false, false, "", ""];


waitUntil {((_transpor emptyPositions "driver")>0)};
_transpor removeAction _Act;
_transpor setVariable ["TR_ActionAdded", false];


