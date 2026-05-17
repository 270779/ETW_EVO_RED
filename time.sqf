Server_Date = Date; 
Server_Key = true; 
if isServer then 
{ 
[] Spawn 
   { 
     While {true} do 
     { 
       Server_Date = Date; 
            Server_Key = true; 
               publicVariable "Server_Date"; 
                  sleep 1; 
                      publicVariable "Server_Key"; 
                           sleep 120; 
     }; 
   }; 
}; 
while {true} do 
{ 
    if Server_Key then 
     {Server_Key = false; setDate Server_Date};
          if (((paramsArray select 8)==1) and (((Daytime>19.5)and(Daytime <23.9))or ((Daytime>=0)and(Daytime <4.5)))) then 
        {
		sleep 1;
		skiptime 0.00600;	
        };            
			if (((paramsArray select 8)==2) and (((Daytime>19.5)and(Daytime <23.9))or ((Daytime>=0)and(Daytime <4.5)))) then 
        {
		setDate [Server_Date select 0,Server_Date select 1,Server_Date select 2, 8, 0];
        };            
}