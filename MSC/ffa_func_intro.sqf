//Intro script
private["_camera","_i","_text"];
closeDialog 0;
player setPos[-9500,350,0];
playmusic "start";
_camera = "camera" CamCreate [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camCommand "inertia on";
_camera camPrepareTarget [104.52,992545.05,-18241.71];
_camera camPreparePos [5577.67,11103.07,18.76];
_camera camSetFOV 0.700;
_camera camCommitPrepared 0;
WaitUntil {camCommitted _camera};
titleCut["","black in",4.0];
for [{_i=0},{_i<=2},{_i=_i+1}] do
{
	_text=localize format ["STR_INTRO_Str%1",_i];
	titleText [_text, "PLAIN DOWN", 1];
	sleep 3.3;
};
player setPos getMarkerPos "respawn_east";
titleCut ["","black out",2];
sleep 2.0;
player cameraEffect ["terminate","back"];
camDestroy _camera;
titleCut ["","black in",2];
sleep 2.0;
FFA_CLIENTSTARTED=true;