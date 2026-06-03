//Action: Save your weapon loadout

private["_weapons","_magazines","_backweapon","_ruckweapons","_ruckmagazines","_hasruck","_ear","_eye","_identity"];

_weapons=weapons player;
_magazines=magazines player;

if (({_x in FFA_AVALIABLE_W} count _weapons==count _weapons) && ({_x in FFA_AVALIABLE_M} count _magazines==count _magazines)) then
{
	
	FFA_LOADOUT_W=weapons player;
	FFA_LOADOUT_M=magazines player;

	hint localize "STR_HINT_LoadoutSaved";	
}
else
{
	hint localize "STR_HINT_LoadoutNotSaved";
};