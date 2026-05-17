while {true} do {
	{[_x] execVM "menu\initAction.sqf";} forEach (nearestObjects [player, ["C130J"], 30]);
	sleep 5;
};

