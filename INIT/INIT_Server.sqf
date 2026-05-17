//Server initialization script
//don`t modify values of uncommented variables - they are related to mission system

FFA_SERVERSTARTED=false;
publicVariable "FFA_SERVERSTARTED";

FFA_CONTROL_MANAGER = true;

FFA_GAMEENDED=false;

enableSaving [false, false];

FFA_STARTPOINTS=30;//start points
FFA_INCOMETIMEOUT=300;//period of income
FFA_LASTINCOMETIME=time+FFA_INCOMETIMEOUT;

FFA_PLAYERINCOME_A=5;//income level 1
FFA_PLAYERINCOME_B=4;//income level 2
FFA_PLAYERINCOME_C=3;//income level 3
FFA_PLAYERINCOME_D=2;//income level 4
FFA_PLAYERINCOME_E=1;//income level 5
FFA_PLAYERINCOME_F=0;//income level 6
//income falls when players number rises

FFA_OUTERRING=-1;
FFA_INNERRING=(paramsArray select 3);
FFA_CURRENTTOWNINDEX=0;
FFA_CURRENTTOWNNAME="";
FFA_CURRENTTOWNMARKER="";
FFA_CURRENTTOWNCAPTURED=true;
FFA_RADIO=objNull;
FFA_TNDEF=0;
publicVariable "FFA_TNDEF";
/*
FFA_CAT=false;
FFA_COUNTER_START=false;
FFA_COUNTER_START_END=false;
FFA_ENEMY_PRES=false;
FFA_RERADIO=false;
*/
FFA_RADIOMINED=false;
FFA_CLIENTREPORTOBJACTIVE=false;

FFA_CLIENTREPORTOBJDONE=false;
publicVariable "FFA_CLIENTREPORTOBJDONE";

FFA_TOWNGUARDSSPAWNED=true;
FFA_BASEREINFORCEMENTSTIME=800;//basic time of town reinforcements
FFA_REINFORCEMENTSTIMEMODIFIER=0.9;
FFA_REINFORCEMENT=[];

FFA_JIPCLIENTS=[];
FFA_JIPCLIENTSa=[];
FFA_JIPCLIENTSb=[];

FFA_REPAIRVEHICLES=[];
FFA_REPAIRVEHICLERANGE=0;

FFA_WEATHERCHANGEPERIOD=120;
FFA_WEATHERCHANGEVALUE=0.1;

//list of towns to attack and list of their names
FFA_ENEMYTOWNS=[["TownRing1_1","TownRing1_2","TownRing1_3","TownRing1_4","TownRing1_5"],["TownRing2_1","TownRing2_2","TownRing2_3","TownRing2_4","TownRing2_5"],["TownRing3_1","TownRing3_2","TownRing3_3","TownRing3_4","TownRing3_5"],["TownRing4_1","TownRing4_2","TownRing4_3","TownRing4_4","TownRing4_5"],["TownRing5_1","TownRing5_2","TownRing5_3","TownRing5_4","TownRing5_5"]];
FFA_TOWNNAMES=[["str_ep1_location_rasman","str_ep1_location_bastam","str_ep1_location_nagara1oilfield","str_ep1_location_nur","str_ep1_location_zavarak"],["str_ep1_location_karachinar","str_ep1_location_ravanay","str_ep1_location_falar","str_ep1_location_nagara","str_ep1_location_mulladoost"],["str_ep1_location_garmsar","str_ep1_location_garmarud","str_ep1_location_feeruzabad","str_ep1_location_anar","str_ep1_location_khushab"],["str_ep1_location_timurkalay","str_ep1_location_loymanara","str_ep1_location_sultansafee","str_ep1_location_shukurkalay","str_ep1_location_sakhee"],["str_ep1_location_hazarbagh","str_ep1_location_chardarakht","str_ep1_location_huzrutimam","str_ep1_location_chakchak","str_ep1_location_chaman"]];


//lists of enemy units
FFA_ENEMYINFANTRY=["TK_GUE_Bonesetter_EP1","TK_GUE_Soldier_2_EP1","TK_GUE_Soldier_3_EP1","TK_GUE_Soldier_4_EP1","TK_GUE_Soldier_5_EP1","TK_GUE_Soldier_AAT_EP1","TK_GUE_Soldier_AA_EP1","TK_GUE_Soldier_AR_EP1","TK_GUE_Soldier_EP1","TK_GUE_Soldier_MG_EP1","TK_GUE_Soldier_Sniper_EP1","TK_GUE_Soldier_TL_EP1","TK_GUE_Soldier_Warlord_EP1","FR_Marksman","FR_Assault_GL","FR_AR","FR_Commander","FR_AC","FR_Miles","USMC_SoldierS_Spotter","USMC_Soldier_Officer","USMC_Soldier_AR","USMC_Soldier_MG","USMC_SoldierS_Engineer","USMC_SoldierS_Sniper","USMC_SoldierS_SniperH","USMC_SoldierM_Marksman","USMC_Soldier_TL","USMC_Soldier_HAT","USMC_Soldier_LAT","TK_GUE_Soldier_AT_EP1","USMC_Soldier_GL","USMC_Soldier_AA","USMC_Soldier_HAT","USMC_Soldier_AT","TK_GUE_Soldier_AA_EP1"];
FFA_ENEMYVEHICLES=["M1A2_US_TUSK_MG_EP1","AAV","M2A3_EP1","HMMWV_TOW","BAF_Jackal2_L2A1_D","M1A2_US_TUSK_MG_EP1","BAF_Jackal2_GMG_D","M1126_ICV_M2_EP1","ZSU_CDF","M1A2_US_TUSK_MG_EP1","M1126_ICV_mk19_EP1","LAV25","M6_EP1","HMMWV_MK19","T72_Gue","M1A1_US_DES_EP1","T72_Gue","HMMWV_Avenger_DES_EP1","T72_Gue","BRDM2_TK_GUE_EP1","M2A3_EP1","T72_Gue","HMMWV_M998_crows_M2_DES_EP1","T34_TK_GUE_EP1","M2A3_EP1","BAF_FV510_D","T55_TK_GUE_EP1","M1A2_US_TUSK_MG_EP1","M1A2_US_TUSK_MG_EP1","HMMWV_Avenger_DES_EP1","HMMWV_Avenger_DES_EP1"];
FFA_ENEMYARMOR=["M1A2_US_TUSK_MG_EP1","AAV","M2A3_EP1","HMMWV_TOW","BAF_Jackal2_L2A1_D","M1A2_US_TUSK_MG_EP1","BAF_Jackal2_GMG_D","M1126_ICV_M2_EP1","ZSU_CDF","M1A2_US_TUSK_MG_EP1","M1126_ICV_mk19_EP1","LAV25","M6_EP1","HMMWV_MK19","T72_Gue","M1A1_US_DES_EP1","T72_Gue","HMMWV_Avenger_DES_EP1","T72_Gue","BRDM2_TK_GUE_EP1","M2A3_EP1","T72_Gue","HMMWV_M998_crows_M2_DES_EP1","T34_TK_GUE_EP1","M2A3_EP1","BAF_FV510_D","T55_TK_GUE_EP1","M1A2_US_TUSK_MG_EP1","M1A2_US_TUSK_MG_EP1","M1A2_US_TUSK_MG_EP1","HMMWV_Avenger_DES_EP1","HMMWV_Avenger_DES_EP1"];
FFA_ENEMYAPC=["LAV25","AAV","M1126_ICV_mk19_EP1","BRDM2_TK_GUE_EP1","M1126_ICV_M2_EP1","BMP2_Gue"];
FFA_ENEMYHELI=["AH1Z","UH1Y","UH1H_TK_GUE_EP1","UH1Y","AH6J_EP1","Ka60_PMC","AH6J_EP1","UH1Y","AH64D","AH64D_Sidewinders","AH1Z","AH64D","AH64D","AH64D_Sidewinders"];
FFA_ENEMYAIR=[["MQ9PredatorB_US_EP1",["8Rnd_Hellfire"],["HellfireLauncher"]],["Su25_CDF",["180Rnd_30mm_GSh301","80Rnd_S8T","4Rnd_Ch29","2Rnd_R73"],["GSh301","S8Launcher","Ch29Launcher","R73Launcher_2"]],["MQ9PredatorB_US_EP1",["8Rnd_Hellfire"],["HellfireLauncher"]],["F35B",["300Rnd_25mm_GAU12","2Rnd_Maverick_A10","4Rnd_Sidewinder_AV8B"],["GAU12","MaverickLauncher","SidewinderLaucher"]],["MQ9PredatorB_US_EP1",["8Rnd_Hellfire"],["HellfireLauncher"]],["Su25_CDF",["180Rnd_30mm_GSh301","80Rnd_S8T","4Rnd_Ch29","2Rnd_R73"],["GSh301","S8Launcher","Ch29Launcher","R73Launcher_2"]],["MQ9PredatorB_US_EP1",["8Rnd_Hellfire"],["HellfireLauncher"]],["A10",["1350Rnd_30mmAP_A10","8Rnd_Hellfire","14Rnd_FFAR","2Rnd_Sidewinder_AH1Z"],["GAU8","HellfireLauncher","FFARLauncher_14","SidewinderLaucher_AH1Z"]],["MQ9PredatorB_US_EP1",["8Rnd_Hellfire"],["HellfireLauncher"]],["Su25_CDF",["180Rnd_30mm_GSh301","80Rnd_S8T","4Rnd_Ch29","2Rnd_R73"],["GSh301","S8Launcher","Ch29Launcher","R73Launcher_2"]],["MQ9PredatorB_US_EP1",["8Rnd_Hellfire"],["HellfireLauncher"]],["AV8B2",["300Rnd_25mm_GAU12","8Rnd_Hellfire","4Rnd_Sidewinder_AV8B"],["GAU12","HellfireLauncher","SidewinderLaucher"]],["Su25_CDF",["180Rnd_30mm_GSh301","80Rnd_S8T","4Rnd_Ch29","2Rnd_R73"],["GSh301","S8Launcher","Ch29Launcher","R73Launcher_2"]],["MQ9PredatorB_US_EP1",["8Rnd_Hellfire"],["HellfireLauncher"]],["AV8B2",["300Rnd_25mm_GAU12","8Rnd_Hellfire","4Rnd_Sidewinder_AV8B"],["GAU12","HellfireLauncher","SidewinderLaucher"]],["AV8B2",["300Rnd_25mm_GAU12","8Rnd_Hellfire","4Rnd_Sidewinder_AV8B"],["GAU12","HellfireLauncher","SidewinderLaucher"]],["F35B",["300Rnd_25mm_GAU12","2Rnd_Maverick_A10","4Rnd_Sidewinder_AV8B"],["GAU12","MaverickLauncher","SidewinderLaucher"]]];
FFA_ENEMYAA=["ZSU_CDF"];

FFA_CIVILVEHCITY=["HMMWV_Terminal_EP1","LandRover_TK_CIV_EP1","MTVR_DES_EP1","Ural_TK_CIV_EP1","UralSupply_TK_EP1","V3S_TK_EP1","V3S_Open_TK_EP1","Lada1_TK_CIV_EP1","Ikarus_TK_CIV_EP1","VolhaLimo_TK_CIV_EP1","S1203_TK_CIV_EP1","SUV_TK_CIV_EP1"];

FFA_CAMVEH=["Su34","Su39","L39_TK_EP1","Su25_TK_EP1","F35B","A10","AV8B2","Ka52","Ka52Black","AH64D_Sidewinders","AH64D","AW159_Lynx_BAF","AH1Z","MQ9PredatorB_US_EP1","2b14_82mm","D30_RU","GRAD_RU","Mi24_D","Mi24_P","Mi24_V","M252_US_EP1","M119_US_EP1","MLRS","2S6M_Tunguska"];

//lists of base attack spawnpoints
FFA_BASEATTACKSPAWNS=["BaseAttack_01","BaseAttack_02","BaseAttack_03","BaseAttack_04","BaseAttack_05","BaseAttack_06","BaseAttack_07","BaseAttack_08"];
FFA_NEXTATTACKTIME=0;

FFA_ENEMYHEIGHTCHECK=[];
FFA_ENEMYGROUPCHECK=[];
FFA_ENEMYCREWCHECK=[];
FFA_MARKEREDVEHICLES=[];
FFA_OBJECTSTOCLEAR=[];
FFA_CLEARENEMYVEH=[];
FFA_FORTSTOCLEAR=[];

skiptime (paramsArray select 0);

sleep 1.5;

if ((paramsArray select 1)==-1) then
{
	[] spawn FFA_FUNC_DYNAMICWEATHER;
	[] spawn FFA_FUNC_WEATHERBROADCAST;
	10 setOvercast (random 1.0);
};
//create sensor that check enemy present on curent town
FFA_ENEMYATTACK1=createTrigger["EmptyDetector",getMarkerpos "EnemyArea"];
FFA_ENEMYATTACK1 setTriggerTimeout [1, 1, 1, false];
FFA_ENEMYATTACK1 setTriggerArea[500,500,0,false];
FFA_ENEMYATTACK1 setTriggerActivation["WEST","PRESENT",true];

//create sensor that runs shelling and airborne base attack on some conditions
FFA_ENEMYATTACK=createTrigger["EmptyDetector",getPos Base];
FFA_ENEMYATTACK setTriggerTimeout [1, 1, 1, false];
FFA_ENEMYATTACK setTriggerArea[380,380,0,false];
FFA_ENEMYATTACK setTriggerActivation["WEST","PRESENT",true];
FFA_ENEMYATTACK setTriggerStatements["((""landVehicle"" countType thislist) > 0)", " scr=[] spawn compile 'if ((isServer) && ((time-FFA_NEXTATTACKTIME)>0)) then {[getMarkerPos ''respawn_east'',5+(round(random 10)),100,''Sh_85_HE''] spawn FFA_FUNC_SHELLING; [0,getMarkerpos ''respawn_east'',[],0,0,1000,2000,false,false,true] call FFA_FUNC_CALLREINFORCEMENT; if ((round(random 10)) < 4) then {[] spawn FFA_FUNC_CALLAIRBORNE};FFA_NEXTATTACKTIME=time+300};' ", ""];
sleep 12;
FFA_SERVERSTARTED=true;
publicVariable "FFA_SERVERSTARTED";