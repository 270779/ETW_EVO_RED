//A script attached to the pre-placed IGLA launchers around bases,
//it increases the awareness level of any hostile aircraft in the
//area. This was written basically entirely by ChatGPT (with a lot
//of trial and error).

//hint "igla inited";

if (isServer) exitWith {};

_igla = _this select 0;

_igla addEventHandler ["GetIn", {
    _unit = _this select 2;

    //hint format ["%1 got in", name _unit];

	[_unit] spawn {
		private ["_unit", "_targets"];

		_unit = _this select 0;

		while {alive _unit && vehicle _unit != _unit} do {

			_targets = nearestObjects [_unit, ["Air"], 3000];

			{
				_pilot = driver _x;

				if (!isNull _pilot) then {
					if ((side _unit) getFriend (side _pilot) < 0.6) then {
						_unit reveal [_x, 4];
					};
				};
			} forEach _targets;

			sleep 5;
		};
	};
}];