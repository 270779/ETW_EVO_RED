
_typecount=(count FFA_CIVILVEHCITY)-1;
_location=getMarkerPos FFA_CURRENTTOWNMARKER;
_cnt=1+(round(random 2));
  
sleep 1;
  
for "_i" from 1 to _cnt step 1 do
{
 	sleep 0.03; 
  _type=FFA_CIVILVEHCITY select (round random _typecount);
  _radius=70+(random 150);
		
	_veh=createVehicle [_type, _location, [], _radius, "None"];
		
	FFA_OBJECTSTOCLEAR set [count FFA_OBJECTSTOCLEAR,[_veh,0]];
	_veh setVariable ["FFA_OWNER","",true];
	_veh setVariable ["FFA_REPAIRKITS",1,true];
};