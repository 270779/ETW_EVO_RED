//Script: easa menu activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_Easa";

[] call FFA_FUNC_FILLEASALIST;

exit