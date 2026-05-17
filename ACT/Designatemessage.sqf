//Designation call message
while {!(FFA_GAMEENDED)} do
{
	sleep 0.5;
	WaitUntil {sleep 0.2;(local player) && !(isNull FFA_DESIGNATION_CALLER)};
	FFA_DESIGNATION_CALLER sideChat format[localize 'STR_RADIO_Designation',mapGridPosition FFA_DESIGNATION_TARGET];
	FFA_DESIGNATION_CALLER=objNull;
	WaitUntil {sleep 0.2;!(local player) || (isNull FFA_DESIGNATION_CALLER)};
};