//// exit if server
waitUntil {!isNull player};
if (!local player) exitWith {};


///// Launch the init once
execVM "menu\init.sqf";