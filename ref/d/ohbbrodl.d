BEGIN ~OHBBRODL~

IF ~  Global("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 0
  SAY #92869
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  Global("ohb_404_item_good","global",1)
~ THEN DO ~StartCutSceneMode()
SetGlobal("ohb_404_item_good","global",2)
GiveItemCreate("SW1H59",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  Global("ohb_404_item_great","global",1)
~ THEN DO ~StartCutSceneMode()
SetGlobal("ohb_404_item_great","global",2)
GiveItemCreate("halb11",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  False()
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN GOTO 2
END

IF ~  Global("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 1
  SAY #92870
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  Global("ohb_404_item_good","global",1)
~ THEN DO ~StartCutSceneMode()
SetGlobal("ohb_404_item_good","global",2)
GiveItemCreate("SW1H59",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  Global("ohb_404_item_great","global",1)
~ THEN DO ~StartCutSceneMode()
SetGlobal("ohb_404_item_great","global",2)
GiveItemCreate("halb11",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  False()
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY #100690
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",3)
GiveItemCreate("OHBCOM06",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM07",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM08",LastTalkedToBy,1,0,0)
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  Global("ohb_404_item_good","global",1)
~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",3)
GiveItemCreate("OHBCOM06",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM07",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM08",LastTalkedToBy,1,0,0)
SetGlobal("ohb_404_item_good","global",2)
GiveItemCreate("SW1H59",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
  IF ~  Global("ohb_404_item_great","global",1)
~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",3)
GiveItemCreate("OHBCOM06",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM07",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM08",LastTalkedToBy,1,0,0)
SetGlobal("ohb_404_item_great","global",2)
GiveItemCreate("halb11",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",0)
UnhideGUI()
EscapeAreaMove("oh8100",2275,1425,SSE)
Face(SSE)
SetGlobal("OHB_brodle_uprising_ready","GLOBAL",1)
EndCutSceneMode()
~ EXIT
END

IF ~  Global("ohb_item_reward","global",10)
RandomNum(2,1)
~ THEN BEGIN 3
  SAY #94549
  IF ~  Global("ohb_101_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_good","global",2)
GiveItemCreate("leat16",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_good","global",2)
GiveItemCreate("halb08",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_103_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_good","global",2)
GiveItemCreate("clck27",LastTalkedToBy,1,1,1)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_good","global",2)
GiveItemCreate("leat20",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_good","global",2)
GiveItemCreate("chan16",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_201_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_good","global",2)
GiveItemCreate("SW1H35",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_202_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_202_item_good","global",2)
GiveItemCreate("sw1h54",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_203_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_203_item_good","global",2)
GiveItemCreate("sper08",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_204_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_204_item_good","global",2)
GiveItemCreate("HALB09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_205_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_205_item_good","global",2)
GiveItemCreate("miscbc",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_301_item_good","global",2)
GiveItemCreate("brac19",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_302_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_302_item_good","global",2)
GiveItemCreate("plat22",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_303_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_303_item_good","global",2)
GiveItemCreate("LEAT19",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_304_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_304_item_good","global",2)
GiveItemCreate("sw1h71",LastTalkedToBy,1,1,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_305_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_305_item_good","global",2)
GiveItemCreate("helm28",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_good","global",2)
GiveItemCreate("brac19",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_302_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_good","global",2)
GiveItemCreate("plat22",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_303_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_good","global",2)
GiveItemCreate("LEAT19",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_304_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_good","global",2)
GiveItemCreate("sw1h71",LastTalkedToBy,1,1,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_305_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_good","global",2)
GiveItemCreate("helm28",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_301_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_good","global",2)
GiveItemCreate("brac19",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_302_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_good","global",2)
GiveItemCreate("plat22",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_303_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_good","global",2)
GiveItemCreate("LEAT19",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_304_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_good","global",2)
GiveItemCreate("sw1h71",LastTalkedToBy,1,1,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_305_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_good","global",2)
GiveItemCreate("helm28",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_401_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_401_item_good","global",2)
GiveItemCreate("SW1H77",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_402_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_402_item_good","global",2)
GiveItemCreate("RING39",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_403_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_403_item_good","global",2)
GiveItemCreate("SW1H61",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_401_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_good","global",2)
GiveItemCreate("SW1H77",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_402_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_good","global",2)
GiveItemCreate("RING39",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_403_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_good","global",2)
GiveItemCreate("SW1H61",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_401_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_good","global",2)
GiveItemCreate("SW1H77",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_402_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_good","global",2)
GiveItemCreate("RING39",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_403_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_good","global",2)
GiveItemCreate("SW1H61",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
END

IF ~  Global("ohb_item_reward","global",10)
RandomNum(2,2)
~ THEN BEGIN 4
  SAY #94550
  IF ~  Global("ohb_101_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_good","global",2)
GiveItemCreate("leat16",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_good","global",2)
GiveItemCreate("halb08",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_103_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_good","global",2)
GiveItemCreate("clck27",LastTalkedToBy,1,1,1)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_good","global",2)
GiveItemCreate("leat20",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_good","global",2)
GiveItemCreate("chan16",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_201_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_good","global",2)
GiveItemCreate("SW1H35",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_202_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_202_item_good","global",2)
GiveItemCreate("sw1h54",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_203_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_203_item_good","global",2)
GiveItemCreate("sper08",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_204_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_204_item_good","global",2)
GiveItemCreate("HALB09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_205_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_205_item_good","global",2)
GiveItemCreate("miscbc",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_301_item_good","global",2)
GiveItemCreate("brac19",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_302_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_302_item_good","global",2)
GiveItemCreate("plat22",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_303_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_303_item_good","global",2)
GiveItemCreate("LEAT19",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_304_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_304_item_good","global",2)
GiveItemCreate("sw1h71",LastTalkedToBy,1,1,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_305_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_305_item_good","global",2)
GiveItemCreate("helm28",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_good","global",2)
GiveItemCreate("brac19",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_302_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_good","global",2)
GiveItemCreate("plat22",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_303_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_good","global",2)
GiveItemCreate("LEAT19",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_304_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_good","global",2)
GiveItemCreate("sw1h71",LastTalkedToBy,1,1,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_305_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_good","global",2)
GiveItemCreate("helm28",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_301_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_good","global",2)
GiveItemCreate("brac19",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_302_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_good","global",2)
GiveItemCreate("plat22",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_303_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_good","global",2)
GiveItemCreate("LEAT19",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_304_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_good","global",2)
GiveItemCreate("sw1h71",LastTalkedToBy,1,1,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_305_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_good","global",2)
GiveItemCreate("helm28",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_401_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_401_item_good","global",2)
GiveItemCreate("SW1H77",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_402_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_402_item_good","global",2)
GiveItemCreate("RING39",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_403_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_403_item_good","global",2)
GiveItemCreate("SW1H61",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_401_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_good","global",2)
GiveItemCreate("SW1H77",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_402_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_good","global",2)
GiveItemCreate("RING39",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_403_item_good","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_good","global",2)
GiveItemCreate("SW1H61",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_401_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_good","global",2)
GiveItemCreate("SW1H77",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_402_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_good","global",2)
GiveItemCreate("RING39",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_403_item_good","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_good","global",2)
GiveItemCreate("SW1H61",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
END

IF ~  Global("ohb_item_reward","global",11)
RandomNum(2,1)
~ THEN BEGIN 5
  SAY #94551
  IF ~  Global("ohb_101_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_great","global",2)
GiveItemCreate("blun24",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_great","global",2)
GiveItemCreate("OHBREW06",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_103_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_great","global",2)
GiveItemCreate("sper07",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_great","global",2)
GiveItemCreate("sw2h14",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_great","global",2)
GiveItemCreate("clck05",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_201_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_great","global",2)
GiveItemCreate("AMUL21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_202_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_202_item_great","global",2)
GiveItemCreate("sw2h15",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_203_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_203_item_great","global",2)
GiveItemCreate("XBOW15",LastTalkedToBy,1,10,10)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_204_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_204_item_great","global",2)
GiveItemCreate("blun30d",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_205_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_205_item_great","global",2)
GiveItemCreate("sw1h51",LastTalkedToBy,1,1,1)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_301_item_great","global",2)
GiveItemCreate("helm34",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_302_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_302_item_great","global",2)
GiveItemCreate("hamm09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_303_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_303_item_great","global",2)
GiveItemCreate("staf11",LastTalkedToBy,1,3,1)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_304_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_304_item_great","global",2)
GiveItemCreate("brac21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_305_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_305_item_great","global",2)
GiveItemCreate("sw2h21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_great","global",2)
GiveItemCreate("helm34",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_302_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_great","global",2)
GiveItemCreate("hamm09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_303_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_great","global",2)
GiveItemCreate("staf11",LastTalkedToBy,1,3,1)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_304_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_great","global",2)
GiveItemCreate("brac21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_305_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_great","global",2)
GiveItemCreate("sw2h21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_301_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_great","global",2)
GiveItemCreate("helm34",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_302_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_great","global",2)
GiveItemCreate("hamm09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_303_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_great","global",2)
GiveItemCreate("staf11",LastTalkedToBy,1,3,1)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_304_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_great","global",2)
GiveItemCreate("brac21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_305_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_great","global",2)
GiveItemCreate("sw2h21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_401_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_401_item_great","global",2)
GiveItemCreate("SW2H10",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_402_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_402_item_great","global",2)
GiveItemCreate("CLCK26",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_403_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_403_item_great","global",2)
GiveItemCreate("SW1H63",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_401_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_great","global",2)
GiveItemCreate("SW2H10",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_402_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_great","global",2)
GiveItemCreate("CLCK26",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_403_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_great","global",2)
GiveItemCreate("SW1H63",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_401_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_great","global",2)
GiveItemCreate("SW2H10",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_402_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_great","global",2)
GiveItemCreate("CLCK26",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_403_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_great","global",2)
GiveItemCreate("SW1H63",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
END

IF ~  Global("ohb_item_reward","global",11)
RandomNum(2,2)
~ THEN BEGIN 6
  SAY #94552
  IF ~  Global("ohb_101_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_great","global",2)
GiveItemCreate("blun24",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_great","global",2)
GiveItemCreate("OHBREW06",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_103_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_great","global",2)
GiveItemCreate("sper07",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_great","global",2)
GiveItemCreate("sw2h14",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_great","global",2)
GiveItemCreate("clck05",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_201_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_great","global",2)
GiveItemCreate("AMUL21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_202_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_202_item_great","global",2)
GiveItemCreate("sw2h15",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_203_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_203_item_great","global",2)
GiveItemCreate("XBOW15",LastTalkedToBy,1,10,10)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_204_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_204_item_great","global",2)
GiveItemCreate("blun30d",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_205_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_205_item_great","global",2)
GiveItemCreate("sw1h51",LastTalkedToBy,1,1,1)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_301_item_great","global",2)
GiveItemCreate("helm34",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_302_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_302_item_great","global",2)
GiveItemCreate("hamm09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_303_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_303_item_great","global",2)
GiveItemCreate("staf11",LastTalkedToBy,1,3,1)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_304_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_304_item_great","global",2)
GiveItemCreate("brac21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_305_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_305_item_great","global",2)
GiveItemCreate("sw2h21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_301_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_great","global",2)
GiveItemCreate("helm34",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_302_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_great","global",2)
GiveItemCreate("hamm09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_303_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_great","global",2)
GiveItemCreate("staf11",LastTalkedToBy,1,3,1)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_304_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_great","global",2)
GiveItemCreate("brac21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_305_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_great","global",2)
GiveItemCreate("sw2h21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_301_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_301_item_great","global",2)
GiveItemCreate("helm34",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_302_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_302_item_great","global",2)
GiveItemCreate("hamm09",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_303_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_303_item_great","global",2)
GiveItemCreate("staf11",LastTalkedToBy,1,3,1)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_304_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_304_item_great","global",2)
GiveItemCreate("brac21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_305_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_305_item_great","global",2)
GiveItemCreate("sw2h21",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_401_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_401_item_great","global",2)
GiveItemCreate("SW2H10",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_402_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_402_item_great","global",2)
GiveItemCreate("CLCK26",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_403_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_403_item_great","global",2)
GiveItemCreate("SW1H63",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_401_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_great","global",2)
GiveItemCreate("SW2H10",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_402_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_great","global",2)
GiveItemCreate("CLCK26",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_403_item_great","global",1)
Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_great","global",2)
GiveItemCreate("SW1H63",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 8
  IF ~  Global("ohb_401_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_401_item_great","global",2)
GiveItemCreate("SW2H10",LastTalkedToBy,1,3,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_402_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_402_item_great","global",2)
GiveItemCreate("CLCK26",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
  IF ~  Global("ohb_403_item_great","global",1)
Global("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_403_item_great","global",2)
GiveItemCreate("SW1H63",LastTalkedToBy,1,0,0)
SetGlobal("ohb_item_reward","global",0)
~ GOTO 7
END

IF ~  Global("OHB_BRODLE_BANREQUEST","GLOBAL",2)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN BEGIN 7
  SAY #100690
  IF ~~ THEN DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",3)
GiveItemCreate("OHBCOM06",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM07",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM08",LastTalkedToBy,1,0,0)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ THEN DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",3)
GiveItemCreate("OHBCOM06",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM07",LastTalkedToBy,1,0,0)
GiveItemCreate("OHBCOM08",LastTalkedToBy,1,0,0)
~ GOTO 8
END

IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",2)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN BEGIN 8
  SAY #92333
  IF ~~ THEN REPLY #92334 DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY #92335 DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",3)
~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY #92336
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut17")
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #92711
  IF ~~ THEN DO ~AddJournalEntry(94034,QUEST)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE","LOCALS",0)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 11
  SAY #90975
  IF ~~ THEN REPLY #90976 DO ~AddJournalEntry(94007,INFO)
SetGlobal("OHB_TALKED_BRODLE","LOCALS",1)
~ GOTO 12
  IF ~~ THEN REPLY #90977 EXIT
END

IF ~~ THEN BEGIN 12
  SAY #90978
  IF ~~ THEN REPLY #90979 GOTO 13
  IF ~~ THEN REPLY #90980 GOTO 14
  IF ~~ THEN REPLY #90981 EXIT
END

IF ~~ THEN BEGIN 13
  SAY #90982
  IF ~~ THEN REPLY #90983 GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #90986 GOTO 32
  IF ~~ THEN REPLY #90987 EXIT
END

IF ~~ THEN BEGIN 14
  SAY #90988
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #90989 GOTO 15
  IF ~~ THEN REPLY #90990 GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90991 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90991 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 15
  SAY #90992
  IF ~~ THEN REPLY #90993 DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 16
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY #90994 DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #90997 DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #90998
  IF ~~ THEN REPLY #90999 GOTO 17
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY #91000 GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 GOTO 25
  IF ~~ THEN REPLY #90997 EXIT
END

IF ~~ THEN BEGIN 17
  SAY #91002
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY #91003 GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 GOTO 25
  IF ~~ THEN REPLY #90997 EXIT
END

IF ~~ THEN BEGIN 18
  SAY #91004
  IF ~~ THEN REPLY #91005 DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
SetGlobal("OHB_KNOWS_SLAVES","GLOBAL",1)
~ GOTO 19
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #90997 DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY #91006
  IF ~~ THEN REPLY #91007 GOTO 16
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #93996 DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #91001 GOTO 25
  IF ~~ THEN REPLY #90997 EXIT
END

IF ~~ THEN BEGIN 20
  SAY #91008
  IF ~~ THEN REPLY #91009 DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 21
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #91010 DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 15
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #90997 DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY #91011
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #91012
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #91010 GOTO 15
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 GOTO 25
  IF ~~ THEN REPLY #90997 EXIT
END

IF ~~ THEN BEGIN 23
  SAY #91013
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #91010 GOTO 15
  IF ~~ THEN REPLY #90995 GOTO 20
  IF ~~ THEN REPLY #91001 GOTO 25
  IF ~~ THEN REPLY #90997 EXIT
END

IF ~~ THEN BEGIN 24
  SAY #91014
  IF ~~ THEN REPLY #91015 GOTO 13
  IF ~~ THEN REPLY #91016 GOTO 14
  IF ~~ THEN REPLY #90997 EXIT
END

IF ~~ THEN BEGIN 25
  SAY #91017
  IF ~~ THEN REPLY #91018 GOTO 13
  IF ~~ THEN REPLY #91019 GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #91022 DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #91023 GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 GOTO 26
  IF ~~ THEN REPLY #91024 EXIT
END

IF ~~ THEN BEGIN 26
  SAY #93997
  IF ~~ THEN REPLY #93998 DO ~SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #93999 DO ~SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY #94000
  IF ~~ THEN REPLY #94001 GOTO 25
  IF ~~ THEN REPLY #94002 EXIT
END

IF ~  Global("OHB_TALKED_BRODLE","LOCALS",1)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 28
  SAY #91025
  IF ~~ THEN REPLY #91018 GOTO 13
  IF ~~ THEN REPLY #94003 GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #91022 DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #94004 GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 GOTO 26
  IF ~~ THEN REPLY #91024 EXIT
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN BEGIN 29
  SAY #91025
  IF ~~ THEN REPLY #91018 GOTO 13
  IF ~~ THEN REPLY #94003 GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #91022 DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #94004 GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 GOTO 26
  IF ~~ THEN REPLY #94006 EXIT
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",0)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_ASK_REBELLION","GLOBAL",1)
~ THEN BEGIN 30
  SAY #91026
  IF ~~ THEN REPLY #91027 DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 32
  IF ~~ THEN REPLY #91028 DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 54
  IF ~~ THEN REPLY #91029 DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 55
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",0)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_ASK_REBELLION","GLOBAL",0)
~ THEN BEGIN 31
  SAY #91030
  IF ~~ THEN REPLY #91031 DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 32
  IF ~~ THEN REPLY #91028 DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 56
  IF ~~ THEN REPLY #91032 DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 34
  IF ~~ THEN REPLY #91033 DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 32
  SAY #91034
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
~ THEN REPLY #91035 GOTO 33
  IF ~~ THEN REPLY #91036 DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #91037 GOTO 55
END

IF ~~ THEN BEGIN 33
  SAY #91038
  IF ~~ THEN REPLY #91036 DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #91037 GOTO 55
END

IF ~~ THEN BEGIN 34
  SAY #91041
  IF ~~ THEN REPLY #91028 GOTO 56
  IF ~~ THEN REPLY #91031 GOTO 32
  IF ~~ THEN REPLY #94010 GOTO 55
END

IF ~~ THEN BEGIN 35
  SAY #91042
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #91043
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #91044
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY #91045
  IF ~~ THEN REPLY #91046 DO ~SetGlobal("ohb_nosers_explained","global",1)
~ GOTO 39
  IF ~~ THEN REPLY #91047 GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY #91048
  IF ~~ THEN REPLY #91049 DO ~SetGlobal("ohb_need_noser_uniform","global",1)
~ GOTO 40
  IF ~~ THEN REPLY #91050 DO ~SetGlobal("ohb_need_noser_uniform","global",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40
  SAY #91051
  IF ~  Global("ohb_nosers_explained","global",0)
~ THEN REPLY #91052 DO ~SetGlobal("ohb_lounge_door_needs_key","global",1)
~ GOTO 39
  IF ~~ THEN REPLY #91050 DO ~SetGlobal("ohb_lounge_door_needs_key","global",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY #91053
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~~ THEN REPLY #91055 GOTO 43
  IF ~~ THEN REPLY #91056 GOTO 25
  IF ~~ THEN REPLY #91057 EXIT
END

IF ~~ THEN BEGIN 42
  SAY #91058
  IF ~~ THEN REPLY #91059 DO ~AddJournalEntry(94032,QUEST)
~ GOTO 43
  IF ~~ THEN REPLY #91060 DO ~AddJournalEntry(94032,QUEST)
~ GOTO 25
  IF ~~ THEN REPLY #91061 DO ~AddJournalEntry(94032,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 43
  SAY #91062
  IF ~~ THEN REPLY #91063 GOTO 44
  IF ~~ THEN REPLY #91064 GOTO 45
  IF ~~ THEN REPLY #91065 GOTO 46
  IF ~~ THEN REPLY #91066 GOTO 48
  IF ~~ THEN REPLY #91067 GOTO 50
  IF ~~ THEN REPLY #91068 GOTO 51
  IF ~~ THEN REPLY #91069 GOTO 25
END

IF ~~ THEN BEGIN 44
  SAY #91070
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91072 GOTO 46
  IF ~~ THEN REPLY #91073 GOTO 48
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 45
  SAY #91078
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91072 GOTO 46
  IF ~~ THEN REPLY #91073 GOTO 48
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 46
  SAY #91079
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91073 GOTO 47
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 47
  SAY #94016
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 48
  SAY #91080
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91072 GOTO 49
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 49
  SAY #94017
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 50
  SAY #91081
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91072 GOTO 46
  IF ~~ THEN REPLY #91073 GOTO 48
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 51
  SAY #91082
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91072 GOTO 46
  IF ~~ THEN REPLY #91073 GOTO 48
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 52
  SAY #91083
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91073 GOTO 53
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 53
  SAY #91084
  IF ~~ THEN REPLY #91077 GOTO 44
  IF ~~ THEN REPLY #91071 GOTO 45
  IF ~~ THEN REPLY #91072 GOTO 52
  IF ~~ THEN REPLY #91074 GOTO 50
  IF ~~ THEN REPLY #91075 GOTO 51
  IF ~~ THEN REPLY #91076 GOTO 25
END

IF ~~ THEN BEGIN 54
  SAY #91085
  IF ~~ THEN REPLY #91031 GOTO 32
  IF ~~ THEN REPLY #91032 GOTO 34
  IF ~~ THEN REPLY #94018 GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY #91086
  IF ~~ THEN REPLY #91087 GOTO 25
  IF ~~ THEN REPLY #91088 EXIT
END

IF ~~ THEN BEGIN 56
  SAY #91089
  IF ~~ THEN REPLY #91031 GOTO 32
  IF ~~ THEN REPLY #91032 GOTO 34
  IF ~~ THEN REPLY #94019 GOTO 55
END

IF ~  OR(2)
Global("OHB_brodle_uprising_ready","GLOBAL",1)
Global("OHB_brodle_uprising_ready","GLOBAL",2)
~ THEN BEGIN 57
  SAY #92872
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92873 EXTERN ~OHBMERCY~ 35
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92873 EXTERN ~OHBFELDR~ 32
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92873 EXTERN ~OHBGEZZT~ 37
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92873 EXTERN ~OHBTIMMO~ 54
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92873 EXTERN ~OHBHORT~ 38
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92873 EXTERN ~OHBDULF~ 57
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
~ THEN REPLY #92873 GOTO 58
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92874 EXTERN ~OHBHORT~ 39
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92874 EXTERN ~OHBTIMMO~ 55
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92874 EXTERN ~OHBGEZZT~ 38
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92874 EXTERN ~OHBMERCY~ 36
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92874 EXTERN ~OHBFELDR~ 33
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92874 EXTERN ~OHBDULF~ 58
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
~ THEN REPLY #92874 GOTO 59
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #92875 GOTO 60
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #92875 GOTO 61
END

IF ~~ THEN BEGIN 58
  SAY #92881
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN GOTO 61
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN 59
  SAY #92888
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN GOTO 61
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY #92889
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92890 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92890 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92890 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92890 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92890 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92890 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92890 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #92891 GOTO 66
END

IF ~~ THEN BEGIN 61
  SAY #92892
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
~ THEN REPLY #92893 GOTO 62
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #100497 GOTO 67
END

IF ~~ THEN BEGIN 62
  SAY #92894
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92206 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92242 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #92237 GOTO 67
END

IF ~~ THEN BEGIN 63
  SAY #92900
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 64
  SAY #92901
  IF ~~ THEN REPLY #92095 GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92902 GOTO 72
  IF ~~ THEN REPLY #92065 GOTO 73
END

IF ~~ THEN BEGIN 65
  SAY #92903
  IF ~~ THEN REPLY #100498 GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92068 GOTO 72
  IF ~~ THEN REPLY #100499 GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #100500 EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #100500 EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #100500 EXTERN ~OHBDULF~ 61
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #100500 EXTERN ~OHBGEZZT~ 41
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #100500 EXTERN ~OHBTIMMO~ 58
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #100500 EXTERN ~OHBFELDR~ 36
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #100500 GOTO 74
END

IF ~~ THEN BEGIN 66
  SAY #92904
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92905 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92905 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92905 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92205 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92205 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92205 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92205 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92906 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92906 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92906 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92906 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92906 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92906 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92906 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #100501 GOTO 68
END

IF ~~ THEN BEGIN 67
  SAY #92907
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92908 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92908 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92908 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92908 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92908 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92908 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92908 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92909 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92909 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92909 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBTIMMO~ 56
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92909 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBGEZZT~ 39
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92909 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBMERCY~ 37
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92909 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBFELDR~ 34
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
~ THEN REPLY #92909 DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #92220 GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY #92910
  IF ~~ THEN GOTO 70
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 60
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 35
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 38
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 41
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 57
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 40
END

IF ~~ THEN BEGIN 69
  SAY #92916
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY #92917
  IF ~~ THEN REPLY #100503 GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92068 GOTO 72
  IF ~~ THEN REPLY #100504 GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #91957 EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #91957 EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #91957 EXTERN ~OHBDULF~ 61
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #91957 EXTERN ~OHBGEZZT~ 41
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #91957 EXTERN ~OHBTIMMO~ 58
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #91957 EXTERN ~OHBFELDR~ 36
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #91957 GOTO 74
END

IF ~~ THEN BEGIN 71
  SAY #92918
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92068 GOTO 72
  IF ~~ THEN REPLY #100505 GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #100506 EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #100506 EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #100506 EXTERN ~OHBDULF~ 61
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #100506 EXTERN ~OHBGEZZT~ 41
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #100506 EXTERN ~OHBTIMMO~ 58
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #100506 EXTERN ~OHBFELDR~ 36
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #100506 GOTO 74
END

IF ~~ THEN BEGIN 72
  SAY #92919
  IF ~~ THEN REPLY #100507 GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #100508 EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #100508 EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #100508 EXTERN ~OHBDULF~ 61
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #100508 EXTERN ~OHBGEZZT~ 41
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #100508 EXTERN ~OHBTIMMO~ 58
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #100508 EXTERN ~OHBFELDR~ 36
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #100508 GOTO 74
END

IF ~~ THEN BEGIN 73
  SAY #92920
  IF ~~ THEN DO ~SetGlobal("OHB_brodle_uprising_ready","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY #92927
  IF ~~ THEN DO ~SetGlobal("OHB_brodle_uprising_ready","GLOBAL",4)
SetGlobal("ohb_finale","global",1)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut20")
~ EXIT
END

IF ~  Global("OHB_brodle_uprising_ready","GLOBAL",3)
~ THEN BEGIN 75
  SAY #92928
  IF ~~ THEN REPLY #94288 GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #94289 EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #94289 EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #94289 EXTERN ~OHBDULF~ 61
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #94289 EXTERN ~OHBGEZZT~ 41
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #94289 EXTERN ~OHBTIMMO~ 58
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #94289 EXTERN ~OHBFELDR~ 36
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbgezzt")
Dead("ohbgezzt")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
OR(2)
!InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #94289 GOTO 74
END

IF ~  Global("ohb_finale","global",1)
~ THEN BEGIN 76
  SAY #92940
  IF ~~ THEN DO ~StartCutSceneMode()
Face(NW)
SmallWait(5)
SetGlobal("ohb_finale","global",2)
SetSequence(SEQ_ATTACK_SLASH)
Wait(1)
Unlock("door0004")
OpenDoor("door0004")
SmallWait(5)
StartDialogNoSet(Myself)
~ EXIT
END

IF ~  Global("ohb_finale","global",2)
~ THEN BEGIN 77
  SAY #92941
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
  SAY #101742
  IF ~~ THEN DO ~SetInterrupt(FALSE)
ActionOverride("ohbleoka",Enemy())
ActionOverride("ohbleoka",Shout(151))
GiveItemCreate("potn10",Myself,1,0,0)
UseItem("potn10",Myself)
SmallWait(2)
SetInterrupt(TRUE)
DestroySelf()
~ EXIT
END

IF ~  Global("ohb_finale","global",5)
~ THEN BEGIN 79
  SAY #94302
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
  SAY #94303
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY #94304
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",6)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 82
  SAY #92962
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
~ THEN REPLY #94319 GOTO 83
  IF ~~ THEN REPLY #92964 GOTO 84
  IF ~  Global("OHB_FINALE_REST","OH8100",0)
~ THEN REPLY #102677 GOTO 86
  IF ~~ THEN REPLY #92281 GOTO 85
END

IF ~~ THEN BEGIN 83
  SAY #92965
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 65
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
~ THEN EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_laris_line_gift","global",0)
~ THEN EXTERN ~OHBLARIS~ 21
  IF ~  Global("ohb_curel_line_gift","global",0)
~ THEN EXTERN ~OHBCUREL~ 34
  IF ~  Global("ohb_molzahn_line_gift","global",0)
~ THEN EXTERN ~OHBMOLZA~ 47
END

IF ~~ THEN BEGIN 84
  SAY #92966
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
~ THEN REPLY #94320 GOTO 87
  IF ~~ THEN REPLY #94321 GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY #92967
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86
  SAY #92967
  IF ~~ THEN DO ~SetGlobal("OHB_FINALE_REST","OH8100",1)
ActionOverride(Player1,Rest())
ActionOverride(Player2,Rest())
ActionOverride(Player3,Rest())
ActionOverride(Player4,Rest())
ActionOverride(Player5,Rest())
ActionOverride(Player6,Rest())
AdvanceTime(2400)
FadeFromColor([30.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 87
  SAY #92968
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 65
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
~ THEN EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_laris_line_gift","global",0)
~ THEN EXTERN ~OHBLARIS~ 21
  IF ~  Global("ohb_curel_line_gift","global",0)
~ THEN EXTERN ~OHBCUREL~ 34
  IF ~  Global("ohb_molzahn_line_gift","global",0)
~ THEN EXTERN ~OHBMOLZA~ 47
END

IF ~  Global("ohb_finale","global",10)
~ THEN BEGIN 88
  SAY #100616
  IF ~~ THEN DO ~Face(NE)
~ GOTO 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBDULF~ 66
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBTIMMO~ 61
  IF ~  InMyArea("ohbgerro")
!Dead("ohbgerro")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBGERRO~ 40
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBFELDR~ 39
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBMERCY~ 42
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBHORT~ 45
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBSYMM~ 38
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBGEZZT~ 44
  IF ~  InMyArea("ohbvoghi")
!Dead("ohbvoghi")
~ THEN DO ~Face(NE)
~ EXTERN ~OHBVOGHI~ 64
END

IF ~~ THEN BEGIN 89
  SAY #100627
  IF ~  Dead("ohbtartl")
~ THEN GOTO 90
  IF ~  !Dead("ohbtartl")
~ THEN GOTO 91
END

IF ~~ THEN BEGIN 90
  SAY #100628
  IF ~~ THEN REPLY #100642 GOTO 92
  IF ~~ THEN REPLY #100643 GOTO 92
  IF ~~ THEN REPLY #100644 GOTO 92
END

IF ~~ THEN BEGIN 91
  SAY #100629
  IF ~  GlobalLT("OHB_NAJIM","GLOBAL",5)
~ THEN DO ~StartCutSceneMode()
Wait(2)
CreateCreatureDoor("ohbstann",[1295.1083],S)
Wait(1)
ActionOverride(Player1,FaceObject("ohbstann"))
ActionOverride(Player2,FaceObject("ohbstann"))
ActionOverride(Player3,FaceObject("ohbstann"))
ActionOverride(Player4,FaceObject("ohbstann"))
ActionOverride(Player5,FaceObject("ohbstann"))
ActionOverride(Player6,FaceObject("ohbstann"))
Wait(4)
ActionOverride("ohbstann",StartDialogNoSet(Player1))
~ EXIT
  IF ~  Global("OHB_NAJIM","GLOBAL",5)
Dead("ohbnajim")
~ THEN DO ~StartCutSceneMode()
Wait(1)
CreateVisualEffect("SPDISPMA",[1040.1140])
Wait(1)
CreateCreature("ohbnajim",[1040.1140],SW)
ActionOverride("ohbnajim",SetSequence(SEQ_AWAKE))
Wait(3)
ActionOverride("ohbnajim",FaceObject(Player1))
SmallWait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~  Global("OHB_NAJIM","GLOBAL",5)
!Dead("ohbnajim")
~ THEN EXTERN ~OHBNAJIM~ 15
END

IF ~~ THEN BEGIN 92
  SAY #100630
  IF ~  GlobalLT("OHB_NAJIM","GLOBAL",5)
~ THEN DO ~StartCutSceneMode()
Wait(2)
CreateCreatureDoor("ohbstann",[1295.1083],S)
Wait(1)
ActionOverride(Player1,FaceObject("ohbstann"))
ActionOverride(Player2,FaceObject("ohbstann"))
ActionOverride(Player3,FaceObject("ohbstann"))
ActionOverride(Player4,FaceObject("ohbstann"))
ActionOverride(Player5,FaceObject("ohbstann"))
ActionOverride(Player6,FaceObject("ohbstann"))
Wait(4)
ActionOverride("ohbstann",StartDialogNoSet(Player1))
~ EXIT
  IF ~  Global("OHB_NAJIM","GLOBAL",5)
Dead("ohbnajim")
~ THEN DO ~StartCutSceneMode()
Wait(1)
CreateVisualEffect("SPDISPMA",[1040.1140])
Wait(1)
CreateCreature("ohbnajim",[1040.1140],SW)
ActionOverride("ohbnajim",SetSequence(SEQ_AWAKE))
Wait(3)
ActionOverride("ohbnajim",FaceObject(Player1))
SmallWait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~  Global("OHB_NAJIM","GLOBAL",5)
!Dead("ohbnajim")
~ THEN EXTERN ~OHBNAJIM~ 15
END

IF ~~ THEN BEGIN 93
  SAY #90524
  IF ~~ THEN EXTERN ~OHBTARTL~ 74
END
