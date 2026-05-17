//Script: main menu activation

private["_dialog"];

closedialog 0;

_dialog=createDialog "DLG_Menu";
ctrlSetText[204,localize "STR_GUI_LIST_Menu"];

[] call FFA_FUNC_REFRESHSCORE;

exit