// creator  : weidu (version 24900)
// argument : OHBBRODL.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBBRODL~

IF ~  Global("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 0
  SAY #92869 /* ~Oh, <CHARNAME>, how fortuitous! The time to put our plan into action has arrived! Quickly, gather everyone in the performers' quarters. I'll meet you there.~ [OH92869] */
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
  SAY #92870 /* ~Oh, <CHARNAME>, good. I just heard something that makes me believe we have a chance for freedom... if we're willing to seize it! Quickly, gather as many as you can in the performers' bunks! I'll meet you there.~ [OH92870] */
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
  SAY #100690 /* ~Hey. I managed to get those items you asked for. You wouldn't believe the lengths I had to go to. Think duck feathers, ale, and a highly choreographed song and dance routine... but it'll be worth it if it all gets put to good use.~ [OH100690] */
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
  SAY #94549 /* ~Hey, <CHARNAME>. An audience member donated this and asked that you use it in your next fight. Congratulations!~ [OH94549] */
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
  SAY #94550 /* ~Your prematch appeal for material wealth paid off. Someone who wishes to remain anonymous wanted you to have this and asked that you continue "kickin' arse and spillin' entrails." Enjoy!~ [OH94550] */
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
  SAY #94551 /* ~Wow, <CHARNAME>, you obviously have at least one rabid—not to mention EXTREMELY wealthy—fan. Just LOOK at what someone sent you today!~ [OH94551] */
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
  SAY #94552 /* ~It's unbelievable the way these people fawn over you. I could bottle your sweat and sell it as an in-stand refreshment. Here's something from an INCREDIBLY devoted fan. Congratulations!~ [OH94552] */
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
  SAY #100690 /* ~Hey. I managed to get those items you asked for. You wouldn't believe the lengths I had to go to. Think duck feathers, ale, and a highly choreographed song and dance routine... but it'll be worth it if it all gets put to good use.~ [OH100690] */
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
  SAY #92333 /* ~Psst! I set up that meetin' with the lieutenant. He's in the barracks. I can take you there if you like, or you can go on your own when you get around to it.~ [OH92333] */
  IF ~~ THEN REPLY #92334 /* ~Please take me there now.~ */ DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY #92335 /* ~I'll go on my own.~ */ DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",3)
~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY #92336 /* ~Follow me.~ [OH92336] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut17")
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #92711 /* ~As you wish. If we need to talk further, you know where to find me.~ [OH92711] */
  IF ~~ THEN DO ~AddJournalEntry(94034,QUEST)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE","LOCALS",0)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 11
  SAY #90975 /* ~Oh, hello there, <CHARNAME>. If you're looking for Tartle, he's normally in the merchant area.~ [OH90975] */
  IF ~~ THEN REPLY #90976 /* ~I actually came to talk to you.~ */ DO ~AddJournalEntry(94007,INFO)
SetGlobal("OHB_TALKED_BRODLE","LOCALS",1)
~ GOTO 12
  IF ~~ THEN REPLY #90977 /* ~Thanks. I'll look for him there.~ */ EXIT
END

IF ~~ THEN BEGIN 12
  SAY #90978 /* ~Me? What for? Tartle's the one in charge.~ [OH90978] */
  IF ~~ THEN REPLY #90979 /* ~What is it you do around here exactly?~ */ GOTO 13
  IF ~~ THEN REPLY #90980 /* ~I'd like some information on the people who run this place.~ */ GOTO 14
  IF ~~ THEN REPLY #90981 /* ~Then perhaps I'll seek him out after all. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #90982 /* ~Tartle likes to call it "grunt work." Basically, that's everything required to actually run the place—track the inventory, order supplies, arrange for the performer housing, see that their quarters are cleaned when they're killed, um, I mean, their services are no longer required. Also manage the guards, keep the cooks from killing each other... That sort of thing.~ [OH90982] */
  IF ~~ THEN REPLY #90983 /* ~Sounds like you might have some good information on the people running this place.~ */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 /* ~You're a slave, in other words. Help me plot a rebellion.~ */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 /* ~I need to set up a meeting with the guard lieutenant you know.~ */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #90986 /* ~I've been thinking about your rebelling idea. I'm in.~ */ GOTO 32
  IF ~~ THEN REPLY #90987 /* ~I need to go. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 14
  SAY #90988 /* ~Who're you talkin' about?~ [OH90988] */
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #90989 /* ~Tartle.~ */ GOTO 15
  IF ~~ THEN REPLY #90990 /* ~Dennaton.~ */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90991 /* ~Dennaton's mercenaries.~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90991 /* ~Dennaton's mercenaries.~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 15
  SAY #90992 /* ~I prefer not to think of my cousin. He takes every opportunity to run me down. I'm sick of it!~ [OH90992] */
  IF ~~ THEN REPLY #90993 /* ~Why does he treat you so poorly?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 16
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY #90994 /* ~How'd he get to be in charge?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 /* ~What of Dennaton?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #90998 /* ~He's an insecure runt, and for a good reason. He'd be nothing without me, and he knows it. He hasn't the interest or the discipline to properly run this place.~ [OH90998] */
  IF ~~ THEN REPLY #90999 /* ~Runt? But you're a halfling too!~ */ GOTO 17
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY #91000 /* ~So how'd he get to be in charge, then?~ */ GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 /* ~What of Dennaton?~ */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 /* ~Do you have time for more questions?~ */ GOTO 25
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 17
  SAY #91002 /* ~You think all halflings are "runts"? You're wrong. All halflings are short, but there are runts even by halfling standards. Tartle's a full half-inch shorter than I am. Ever since we were children in Luiren, everyone made fun of him for being so short. Maybe that's why he's so intent on showing people what a "big man" he is now.~ [OH91002] */
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY #91003 /* ~So, how'd he get to be in charge, then?~ */ GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 /* ~What of Dennaton?~ */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 /* ~Do you have time for more questions?~ */ GOTO 25
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 18
  SAY #91004 /* ~A combination of bootlicking and backstabbing. Those qualities make him the perfect tool for Dennaton, luckily for him. He wouldn't last past the arena's introductory speeches otherwise.~ [OH91004] */
  IF ~~ THEN REPLY #91005 /* ~So you two are slaves as well?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
SetGlobal("OHB_KNOWS_SLAVES","GLOBAL",1)
~ GOTO 19
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 /* ~What of Dennaton?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 /* ~Do you have time for more questions?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY #91006 /* ~Oh, yes. Don't let Tartle's arrogance fool you. He's in chains, same as we are. Not that he's without influence. His lips are so firmly affixed to Dennaton's backside that he generally gets his way. And he can certainly make life miserable for those he has it out for. I wouldn't cross him if I were you.~ [OH91006] */
  IF ~~ THEN REPLY #91007 /* ~Why does he treat you so poorly?~ */ GOTO 16
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY #90995 /* ~What of Dennaton?~ */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #93996 /* ~Now that I know you're a slave too, perhaps you could help me plot a rebellion?~ */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #91001 /* ~Do you have time for more questions?~ */ GOTO 25
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 20
  SAY #91008 /* ~His word here is law. Cross him and your life will be very uncomfortable... or more likely, very short.~ [OH91008] */
  IF ~~ THEN REPLY #91009 /* ~Yes, but who is he and where does he come from?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 21
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #91010 /* ~And Tartle?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 15
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 /* ~Do you have time for more questions?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY #91011 /* ~I don't know much about him. Dennaton doesn't enter the performers' quarters often. Tartle's just about the only one with access to him.~ [OH91011] */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #91012 /* ~He's a Red Wizard, I know that, and I gather he's somewhat influential in Thay. He has a VERY powerful backer, but I've no idea who—or what—that might be.~ [OH91012] */
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #91010 /* ~And Tartle?~ */ GOTO 15
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #90996 /* ~What about that band of mercenaries?~ */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY #91001 /* ~Do you have time for more questions?~ */ GOTO 25
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 23
  SAY #91013 /* ~The Planar Hunters. They're the metaphorical sword in Dennaton's iron fist. Don't get me wrong. Dennaton's a competent wizard, but he'd have no chance of controlling the monsters and gladiators he brings here without the Hunters. But I've said too much already. Let's move on.~ [OH91013] */
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY #91010 /* ~And Tartle?~ */ GOTO 15
  IF ~~ THEN REPLY #90995 /* ~What of Dennaton?~ */ GOTO 20
  IF ~~ THEN REPLY #91001 /* ~Do you have time for more questions?~ */ GOTO 25
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 24
  SAY #91014 /* ~I'm gonna forget I heard that. And if you're smart, you'll forget you said it. Dennaton has eyes and ears everywhere. Watch yourself.~ [OH91014] */
  IF ~~ THEN REPLY #91015 /* ~What is it you do around here exactly?~ */ GOTO 13
  IF ~~ THEN REPLY #91016 /* ~Tell me about the people who run this place.~ */ GOTO 14
  IF ~~ THEN REPLY #90997 /* ~I need to go. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 25
  SAY #91017 /* ~Certainly.~ [OH91017] */
  IF ~~ THEN REPLY #91018 /* ~What is it you do around here exactly?~ */ GOTO 13
  IF ~~ THEN REPLY #91019 /* ~I'd like to know about the people who run this place.~ */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 /* ~You're a slave, in other words. Help me plot a rebellion.~ */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 /* ~I need to set up a meeting with the guard lieutenant you know.~ */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #91022 /* ~I've considered your idea for a rebellion. I'm in.~ */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #91023 /* ~What do we need to do for a rebellion to work?~ */ GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 /* ~I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them?~ */ GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 /* ~I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them?~ */ GOTO 26
  IF ~~ THEN REPLY #91024 /* ~Not at the moment. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 26
  SAY #93997 /* ~Hmm… That's quite an eclectic list, but I assume it's important for our plans, so I'll make every effort to get them. Give me a little while to round them up. Come talk to me in a bit.~ [OH93997] */
  IF ~~ THEN REPLY #93998 /* ~Thanks for the help, but I also have something else I need to talk about.~ */ DO ~SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #93999 /* ~Right, I'll get started then. Please excuse me.~ */ DO ~SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY #94000 /* ~Hmm… That's quite an eclectic list. Some of those things would be EXTREMELY difficult—not to mention expensive—to come up with. I'm sorry, but I can't help you.~ [OH94000] */
  IF ~~ THEN REPLY #94001 /* ~Then let's talk about something else.~ */ GOTO 25
  IF ~~ THEN REPLY #94002 /* ~Right, I'll get started then. Please excuse me.~ */ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE","LOCALS",1)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 28
  SAY #91025 /* ~Hello again, <CHARNAME>. How may I help you?~ [OH91025] */
  IF ~~ THEN REPLY #91018 /* ~What is it you do around here exactly?~ */ GOTO 13
  IF ~~ THEN REPLY #94003 /* ~I'd like some information on the people who run this place.~ */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 /* ~You're a slave, in other words. Help me plot a rebellion.~ */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 /* ~I need to set up a meeting with the guard lieutenant you know.~ */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #91022 /* ~I've considered your idea for a rebellion. I'm in.~ */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #94004 /* ~Tell me again what needs to be done for a rebellion to work.~ */ GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 /* ~I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them?~ */ GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 /* ~I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them?~ */ GOTO 26
  IF ~~ THEN REPLY #91024 /* ~Not at the moment. Please excuse me.~ */ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN BEGIN 29
  SAY #91025 /* ~Hello again, <CHARNAME>. How may I help you?~ [OH91025] */
  IF ~~ THEN REPLY #91018 /* ~What is it you do around here exactly?~ */ GOTO 13
  IF ~~ THEN REPLY #94003 /* ~I'd like some information on the people who run this place.~ */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY #90984 /* ~You're a slave, in other words. Help me plot a rebellion.~ */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 /* ~I need to set up a meeting with the guard lieutenant you know.~ */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY #91022 /* ~I've considered your idea for a rebellion. I'm in.~ */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #94004 /* ~Tell me again what needs to be done for a rebellion to work.~ */ GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 /* ~I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them?~ */ GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY #94005 /* ~I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them?~ */ GOTO 26
  IF ~~ THEN REPLY #94006 /* ~You can't right now. Excuse me.~ */ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",0)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_ASK_REBELLION","GLOBAL",1)
~ THEN BEGIN 30
  SAY #91026 /* ~Psst! You asked earlier about plotting a rebellion. It got me thinking. It'd be tricky, but based on what you've shown thus far in the arena, you might just be able to pull it off.~ [OH91026] */
  IF ~~ THEN REPLY #91027 /* ~I'm interested. Go on.~ */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 32
  IF ~~ THEN REPLY #91028 /* ~How do I know you aren't setting me up?~ */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 54
  IF ~~ THEN REPLY #91029 /* ~I'm really not interested anymore.~ */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 55
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",0)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_ASK_REBELLION","GLOBAL",0)
~ THEN BEGIN 31
  SAY #91030 /* ~Psst, <CHARNAME>. I want to ask you about something. We've all heard how you vanquished Baeloth and won your freedom. I admit I doubted it before. But your arena success makes me think the legend might actually be true. Are you interested in attaining your freedom once more?~ [OH91030] */
  IF ~~ THEN REPLY #91031 /* ~Sure.~ */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 32
  IF ~~ THEN REPLY #91028 /* ~How do I know you aren't setting me up?~ */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 56
  IF ~~ THEN REPLY #91032 /* ~What's in it for you?~ */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 34
  IF ~~ THEN REPLY #91033 /* ~I was at first, but I've changed my mind. This place isn't so bad. There's a... clarity here that's very attractive to me.~ */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 32
  SAY #91034 /* ~Great! Then we're a team, on one condition. Tartle must not be harmed.~ [OH91034] */
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
~ THEN REPLY #91035 /* ~You'd protect your cousin, even after all he's done to you?~ */ GOTO 33
  IF ~~ THEN REPLY #91036 /* ~It's a deal. Now what do we do?~ */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #91037 /* ~Sorry, but I can't promise that.~ */ GOTO 55
END

IF ~~ THEN BEGIN 33
  SAY #91038 /* ~He's still family. I need your assurance that no harm will come to him.~ [OH91038] */
  IF ~~ THEN REPLY #91036 /* ~It's a deal. Now what do we do?~ */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #91037 /* ~Sorry, but I can't promise that.~ */ GOTO 55
END

IF ~~ THEN BEGIN 34
  SAY #91041 /* ~Uh, MY freedom when you overthrow Dennaton? There's something I need to find on the outside, but I need to GET outside first. But that's none of your concern. Are you interested?~ [OH91041] */
  IF ~~ THEN REPLY #91028 /* ~How do I know you aren't setting me up?~ */ GOTO 56
  IF ~~ THEN REPLY #91031 /* ~Sure.~ */ GOTO 32
  IF ~~ THEN REPLY #94010 /* ~I would have been once. No longer.~ */ GOTO 55
END

IF ~~ THEN BEGIN 35
  SAY #91042 /* ~Any rebellion will have to face Dennaton himself, his Planar Hunters, and the guards. Dennaton'll have to be killed, I fear—he's too invested in this place to let it go willingly. But we may be able to peel away his support.~ [OH91042] */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #91043 /* ~I'm friendly with most of the guards. That doesn't mean they'll just lay down their arms for me, of course, but I CAN get you a meeting with one of the lieutenants. Convince him to support the rebellion and his subordinates will too. That'll take a very smooth tongue or more coin than Dennaton's paying to keep them loyal.~ [OH91043] */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #91044 /* ~As for the Planar Hunters, the Winged is loyal to Dennaton despite all her grumbling. And she has a tight grip on her people. It'd be best to deal with them before an uprising begins. I've no solid idea how you'd do that, but I've an inkling where you might start.~ [OH91044] */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY #91045 /* ~The Hunters' quarters are upstairs. I've never been allowed up myself, but the first step is getting to the stairway. Unfortunately, the only way through is to knock and then convince the guard that opens the eye slit to let you through. Not easy. The only ones they ever let through are the Nosers.~ [OH91045] */
  IF ~~ THEN REPLY #91046 /* ~Nosers?~ */ DO ~SetGlobal("ohb_nosers_explained","global",1)
~ GOTO 39
  IF ~~ THEN REPLY #91047 /* ~No one else is allowed through? Really?~ */ GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY #91048 /* ~The Nosers are the Planar Hunters' slaves. Tartle hates them because he has no control over them, and they all know it. He thinks they look down their noses at him—that's how they got the nickname. They're easy to distinguish from the other slaves. They wear bright-colored outfits that let the door guard differentiate them from others in the gloom.~ [OH91048] */
  IF ~~ THEN REPLY #91049 /* ~Right, so absolutely no one else is allowed through?~ */ DO ~SetGlobal("ohb_need_noser_uniform","global",1)
~ GOTO 40
  IF ~~ THEN REPLY #91050 /* ~Go on.~ */ DO ~SetGlobal("ohb_need_noser_uniform","global",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40
  SAY #91051 /* ~Actually, that's not true. My cousin, Tartle, is allowed through. He has his own key, so he doesn't have to knock. He's the only one other than the Nosers.~ [OH91051] */
  IF ~  Global("ohb_nosers_explained","global",0)
~ THEN REPLY #91052 /* ~Who are the Nosers?~ */ DO ~SetGlobal("ohb_lounge_door_needs_key","global",1)
~ GOTO 39
  IF ~~ THEN REPLY #91050 /* ~Go on.~ */ DO ~SetGlobal("ohb_lounge_door_needs_key","global",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY #91053 /* ~Once you're on the stairs, be careful. Word is the way up is littered with traps of all kinds. Only the very crafty—or very lucky—will get through unscathed. After that, you'll need to live on your own wits.~ [OH91053] */
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #90985 /* ~I need to set up a meeting with the guard lieutenant you know.~ */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~~ THEN REPLY #91055 /* ~If I'm to battle the Planar Hunters, I'll need everything you know about them.~ */ GOTO 43
  IF ~~ THEN REPLY #91056 /* ~Thanks. But I need to talk about other things.~ */ GOTO 25
  IF ~~ THEN REPLY #91057 /* ~Right, I'll get started then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 42
  SAY #91058 /* ~Discretion is called for. I'll bide my time until the right opportunity presents itself, then let you know when everything's set up. Until then, go about your business normally.~ [OH91058] */
  IF ~~ THEN REPLY #91059 /* ~All right. In the meantime, I need as much information as you've got on the Planar Hunters.~ */ DO ~AddJournalEntry(94032,QUEST)
~ GOTO 43
  IF ~~ THEN REPLY #91060 /* ~Thanks, but there are other things I need to know.~ */ DO ~AddJournalEntry(94032,QUEST)
~ GOTO 25
  IF ~~ THEN REPLY #91061 /* ~Right. I'll get started then.~ */ DO ~AddJournalEntry(94032,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 43
  SAY #91062 /* ~The Winged's band has six members: Dormamus, Thassk Kun, Pol Pyrrus, Joker, Bannor Kaxazel, and the Winged herself.~ [OH91062] */
  IF ~~ THEN REPLY #91063 /* ~Tell me about the Winged.~ */ GOTO 44
  IF ~~ THEN REPLY #91064 /* ~What do you know about Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91065 /* ~Thassk Kun. What can you tell me about him?~ */ GOTO 46
  IF ~~ THEN REPLY #91066 /* ~Give me everything you know about Pol Pyrrus.~ */ GOTO 48
  IF ~~ THEN REPLY #91067 /* ~Joker's the bard, yes? Tell me about her.~ */ GOTO 50
  IF ~~ THEN REPLY #91068 /* ~Bannor Kaxazel. What's his story?~ */ GOTO 51
  IF ~~ THEN REPLY #91069 /* ~Forget the Hunters. There's something else I want to know about.~ */ GOTO 25
END

IF ~~ THEN BEGIN 44
  SAY #91070 /* ~The Winged is the most guarded of the group. She rarely speaks to anyone except Dennaton and her crew. I know she's a veteran of the infamous Blood War and was involved in some of its heaviest fighting. She's incredibly disciplined and extremely dangerous.~ [OH91070] */
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91072 /* ~And Thassk Kun?~ */ GOTO 46
  IF ~~ THEN REPLY #91073 /* ~And Pol Pyrrus?~ */ GOTO 48
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 45
  SAY #91078 /* ~An irredeemably vile creature. Dormamus, or the Grand Vizier of the Thayan Pits, as he makes us call him, is an efreeti. He's the sort of person who enjoys his job so much he never has to work. He's capricious, cruel, and in love with the money and power that comes from subduing and imprisoning others.~ [OH91078] */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91072 /* ~And Thassk Kun?~ */ GOTO 46
  IF ~~ THEN REPLY #91073 /* ~And Pol Pyrrus?~ */ GOTO 48
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 46
  SAY #91079 /* ~Thassk Kun and Pol Pyrrus despise each other. I gather they were on opposite sides of a war several years ago. Pyrrus delights in reminding Thassk who was on the losing side. Thassk has some dirt on Pyrrus. I'm not sure what it is, but I've seen Thassk spin Pyrrus around to the point of spitting blood. Thassk is a fire salamander, by the way.~ [OH91079] */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91073 /* ~And Pol Pyrrus?~ */ GOTO 47
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 47
  SAY #94016 /* ~Like I said, he hates Thassk Kun. I can't add much to what I already told you, other than that Pyrrus is a Red Wizard and fanatical adherent to Kossuth.~ [OH94016] */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 48
  SAY #91080 /* ~Pyrrus is a Red Wizard and a fanatical adherent to Kossuth. He and Thassk Kun positively HATE each other. From what I gather, they were on opposite sides of a war several years ago. Pyrrus never misses an opportunity to remind Thassk he was on the losing side. But Thassk has some dirt on Pyrrus. I'm not sure what it is, but I've seen Thassk spin Pyrrus around to the point of spitting blood.~ [OH91080] */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91072 /* ~And Thassk Kun?~ */ GOTO 49
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 49
  SAY #94017 /* ~I just told you he hates Pyrrus. The only thing I can really add is that Thassk is a fire salamander.~ [OH94017] */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 50
  SAY #91081 /* ~Ah, Joker. The most mercurial of the bunch, and also the friendliest. She slums around down here every so often. She loves to drink and is always looking for new and exotic ales. Her love of drinking has given her common cause with Voghiln. I've seen the two of them together quite a bit.~ [OH91081] */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91072 /* ~And Thassk Kun?~ */ GOTO 46
  IF ~~ THEN REPLY #91073 /* ~And Pol Pyrrus?~ */ GOTO 48
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 51
  SAY #91082 /* ~One word: odd. He's an adamantine golem with a mind of his own. Rumor has it he was once a supremely powerful wizard who cheated death by installing his mind in the golem's body as his own lay dying. If it's true, most of his powers were lost in the transition. Now he just smashes things, as you'd expect from an adamantine golem.~ [OH91082] */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91072 /* ~And Thassk Kun?~ */ GOTO 46
  IF ~~ THEN REPLY #91073 /* ~And Pol Pyrrus?~ */ GOTO 48
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 52
  SAY #91083 /* ~Well, as I said, Thassk Kun and Pol Pyrrus HATE each other. Beyond that, Thassk is a fire salamander.~ */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91073 /* ~And Pol Pyrrus?~ */ GOTO 53
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 53
  SAY #91084 /* ~Well, as I said, Pol Pyrrus and Thassk Kun HATE each other. Beyond that, Pyrrus is a Red Wizard and fanatical adherent to Kossuth.~ */
  IF ~~ THEN REPLY #91077 /* ~And the Winged?~ */ GOTO 44
  IF ~~ THEN REPLY #91071 /* ~And Dormamus?~ */ GOTO 45
  IF ~~ THEN REPLY #91072 /* ~And Thassk Kun?~ */ GOTO 52
  IF ~~ THEN REPLY #91074 /* ~And Joker?~ */ GOTO 50
  IF ~~ THEN REPLY #91075 /* ~And Bannor Kaxazel?~ */ GOTO 51
  IF ~~ THEN REPLY #91076 /* ~Let's talk now about something else.~ */ GOTO 25
END

IF ~~ THEN BEGIN 54
  SAY #91085 /* ~You don't. And I don't know of any reasonable way to prove myself to you. At the same time, you have no way to prove YOU weren't setting ME up when you asked last time. I wouldn't put that past Dennaton, but chances for freedom are few and far between down here. Are you in?~ [OH91085] */
  IF ~~ THEN REPLY #91031 /* ~Sure.~ */ GOTO 32
  IF ~~ THEN REPLY #91032 /* ~What's in it for you?~ */ GOTO 34
  IF ~~ THEN REPLY #94018 /* ~I would have been once. No longer.~ */ GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY #91086 /* ~A shame. Well, I'm clearly going nowhere soon. Seek me out if you change your mind.~ [OH91086] */
  IF ~~ THEN REPLY #91087 /* ~I still want to talk to you.~ */ GOTO 25
  IF ~~ THEN REPLY #91088 /* ~I'll keep it in mind. Excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 56
  SAY #91089 /* ~You don't. The alternative is fighting until you die in the pits. Now are you in?~ [OH91089] */
  IF ~~ THEN REPLY #91031 /* ~Sure.~ */ GOTO 32
  IF ~~ THEN REPLY #91032 /* ~What's in it for you?~ */ GOTO 34
  IF ~~ THEN REPLY #94019 /* ~I would have been once. No longer.~ */ GOTO 55
END

IF ~  OR(2)
Global("OHB_brodle_uprising_ready","GLOBAL",1)
Global("OHB_brodle_uprising_ready","GLOBAL",2)
~ THEN BEGIN 57
  SAY #92872 /* ~There's not as many here as I'd hoped, but we can't afford to wait any longer. Dennaton's in the arena overseeing a fight, but he won't be long.~ [OH92872] */
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #92873 /* ~I really think we should wait on backup.~ */ EXTERN ~OHBMERCY~ 35
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY #92873 /* ~I really think we should wait on backup.~ */ EXTERN ~OHBFELDR~ 32
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92873 /* ~I really think we should wait on backup.~ */ EXTERN ~OHBGEZZT~ 37
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
~ THEN REPLY #92873 /* ~I really think we should wait on backup.~ */ EXTERN ~OHBTIMMO~ 54
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
~ THEN REPLY #92873 /* ~I really think we should wait on backup.~ */ EXTERN ~OHBHORT~ 38
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
~ THEN REPLY #92873 /* ~I really think we should wait on backup.~ */ EXTERN ~OHBDULF~ 57
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
~ THEN REPLY #92873 /* ~I really think we should wait on backup.~ */ GOTO 58
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92874 /* ~Is rebelling a good idea?~ */ EXTERN ~OHBHORT~ 39
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92874 /* ~Is rebelling a good idea?~ */ EXTERN ~OHBTIMMO~ 55
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY #92874 /* ~Is rebelling a good idea?~ */ EXTERN ~OHBGEZZT~ 38
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
~ THEN REPLY #92874 /* ~Is rebelling a good idea?~ */ EXTERN ~OHBMERCY~ 36
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
~ THEN REPLY #92874 /* ~Is rebelling a good idea?~ */ EXTERN ~OHBFELDR~ 33
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
~ THEN REPLY #92874 /* ~Is rebelling a good idea?~ */ EXTERN ~OHBDULF~ 58
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
~ THEN REPLY #92874 /* ~Is rebelling a good idea?~ */ GOTO 59
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY #92875 /* ~What do you suggest?~ */ GOTO 60
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY #92875 /* ~What do you suggest?~ */ GOTO 61
END

IF ~~ THEN BEGIN 58
  SAY #92881 /* ~That's not a good idea. The Planar Hunters have disappeared. Ha. Hopefully, they're gone forever, but we can't count on that. Dennaton's without his muscle. We must strike now!~ [OH92881] */
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN GOTO 61
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN 59
  SAY #92888 /* ~I can't believe it! Baeloth's vanquisher wants to be a gladiator for life? Who are you, Haximus? We have to rebel now if any of us are ever to be free!~ [OH92888] */
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN GOTO 61
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY #92889 /* ~Remember the bargain we struck. Tartle is not to be harmed.~ [OH92889] */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92890 /* ~He won't be, I promise.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92890 /* ~He won't be, I promise.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92890 /* ~He won't be, I promise.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92890 /* ~He won't be, I promise.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92890 /* ~He won't be, I promise.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92890 /* ~He won't be, I promise.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92890 /* ~He won't be, I promise.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #92891 /* ~That deal was made yesterday. If he gets in my way today, he's finished.~ */ GOTO 66
END

IF ~~ THEN BEGIN 61
  SAY #92892 /* ~Before we proceed, please, I beg you—if you find Tartle, do not harm him.~ [OH92892] */
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
~ THEN REPLY #92893 /* ~You'd save him even after the damage he's done to you?~ */ GOTO 62
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #100497 /* ~If he stays out of my way, he'll be fine.~ */ GOTO 67
END

IF ~~ THEN BEGIN 62
  SAY #92894 /* ~He's still my blood. I must protect him. Please, don't harm him.~ [OH92894] */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92206 /* ~I will do as you ask.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92242 /* ~I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #92237 /* ~If he gets in my way, he's a dead halfling.~ */ GOTO 67
END

IF ~~ THEN BEGIN 63
  SAY #92900 /* ~Then I suppose I should be thankful that I struck the deal with our friend here! The vanquisher of Baeloth is the logical choice to lead this uprising.~ [OH92900] */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 64
  SAY #92901 /* ~Thank you! We should head to the barracks immediately. With luck, we can take the guards by surprise and eliminate them before they know what's happening.~ [OH92901] */
  IF ~~ THEN REPLY #92095 /* ~No. We should strike Dennaton first.~ */ GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92902 /* ~What about Leokas? I paid him to aid us in this uprising.~ */ GOTO 72
  IF ~~ THEN REPLY #92065 /* ~I need to finish something before we play our hand.~ */ GOTO 73
END

IF ~~ THEN BEGIN 65
  SAY #92903 /* ~That'll have to do. All right then, we should head to the barracks. With any luck, we can take the guards by surprise and eliminate them before they know what hit them!~ [OH92903] */
  IF ~~ THEN REPLY #100498 /* ~I disagree. We should strike at Dennaton first.~ */ GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92068 /* ~What about Leokas? I paid him to aid us in this uprising.~ */ GOTO 72
  IF ~~ THEN REPLY #100499 /* ~Wait. I need to finish something before we reveal our hand.~ */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #100500 /* ~Let's go! Start the uprising!~ */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #100500 /* ~Let's go! Start the uprising!~ */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #100500 /* ~Let's go! Start the uprising!~ */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY #100500 /* ~Let's go! Start the uprising!~ */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY #100500 /* ~Let's go! Start the uprising!~ */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY #100500 /* ~Let's go! Start the uprising!~ */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY #100500 /* ~Let's go! Start the uprising!~ */ GOTO 74
END

IF ~~ THEN BEGIN 66
  SAY #92904 /* ~That wasn't the deal! You said you wouldn't harm Tartle!~ [OH92904] */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92905 /* ~Alright, I'll keep my word.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92905 /* ~Alright, I'll keep my word.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92905 /* ~Alright, I'll keep my word.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92205 /* ~I thought we'd sorted this out.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92205 /* ~I thought we'd sorted this out.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92205 /* ~I thought we'd sorted this out.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92205 /* ~I thought we'd sorted this out.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92906 /* ~I said I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92906 /* ~I said I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92906 /* ~I said I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92906 /* ~I said I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92906 /* ~I said I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92906 /* ~I said I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92906 /* ~I said I'll do what I can.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #100501 /* ~If Tartle stays out of the way, he'll live. If he doesn't, he will die. It's that simple.~ */ GOTO 68
END

IF ~~ THEN BEGIN 67
  SAY #92907 /* ~Not good enough! You must guarantee Tartle's safety if I'm to help you!~ [OH92907] */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92908 /* ~Very well. I'll not harm him.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92908 /* ~Very well. I'll not harm him.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92908 /* ~Very well. I'll not harm him.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92908 /* ~Very well. I'll not harm him.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92908 /* ~Very well. I'll not harm him.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92908 /* ~Very well. I'll not harm him.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92908 /* ~Very well. I'll not harm him.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #92909 /* ~I'll try to save him. I can't promise more than that.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #92909 /* ~I'll try to save him. I can't promise more than that.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY #92909 /* ~I'll try to save him. I can't promise more than that.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92909 /* ~I'll try to save him. I can't promise more than that.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92909 /* ~I'll try to save him. I can't promise more than that.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92909 /* ~I'll try to save him. I can't promise more than that.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY #92909 /* ~I'll try to save him. I can't promise more than that.~ */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY #92220 /* ~Let me be blunt: If Tartle stays away from me, he'll live. If he tries to stop me, he dies. Got it?~ */ GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY #92910 /* ~If Tartle is harmed, you'd best pray we never cross paths again. For now, it seems I've little choice but to find him before you.~ [OH92910] */
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
  SAY #92916 /* ~Yes, I get the picture. I am left to my own devices when it comes to protecting my cousin.~ [OH92916] */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY #92917 /* ~I suggest we head to the barracks. If we're lucky, we can eliminate the guards before they realize what's happening.~ [OH92917] */
  IF ~~ THEN REPLY #100503 /* ~No. We hit Dennaton first.~ */ GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92068 /* ~What about Leokas? I paid him to aid us in this uprising.~ */ GOTO 72
  IF ~~ THEN REPLY #100504 /* ~There's something I must finish before we play our hand.~ */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #91957 /* ~Let the uprising begin!~ */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #91957 /* ~Let the uprising begin!~ */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #91957 /* ~Let the uprising begin!~ */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY #91957 /* ~Let the uprising begin!~ */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY #91957 /* ~Let the uprising begin!~ */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY #91957 /* ~Let the uprising begin!~ */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY #91957 /* ~Let the uprising begin!~ */ GOTO 74
END

IF ~~ THEN BEGIN 71
  SAY #92918 /* ~Confrontin' Dennaton while leaving dozens o' guards behind us isn't smart. We'd be surrounded.~ [OH92918] */
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY #92068 /* ~What about Leokas? I paid him to aid us in this uprising.~ */ GOTO 72
  IF ~~ THEN REPLY #100505 /* ~You may be right. Give me a moment. I need to finish something before we make our move.~ */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #100506 /* ~Let the rebellion begin!~ */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #100506 /* ~Let the rebellion begin!~ */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #100506 /* ~Let the rebellion begin!~ */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY #100506 /* ~Let the rebellion begin!~ */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY #100506 /* ~Let the rebellion begin!~ */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY #100506 /* ~Let the rebellion begin!~ */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY #100506 /* ~Let the rebellion begin!~ */ GOTO 74
END

IF ~~ THEN BEGIN 72
  SAY #92919 /* ~I obviously knew that you two had spoken, but I did not realize you had come to an agreement. It's too late to coordinate with him now. We will have to keep a lookout for him as we go and then hope he keeps his word.~ [OH92919] */
  IF ~~ THEN REPLY #100507 /* ~All right. Give me a moment. I need to finish something before we begin our assault.~ */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #100508 /* ~Very well. Let's have ourselves an uprising!~ */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #100508 /* ~Very well. Let's have ourselves an uprising!~ */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #100508 /* ~Very well. Let's have ourselves an uprising!~ */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY #100508 /* ~Very well. Let's have ourselves an uprising!~ */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY #100508 /* ~Very well. Let's have ourselves an uprising!~ */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY #100508 /* ~Very well. Let's have ourselves an uprising!~ */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY #100508 /* ~Very well. Let's have ourselves an uprising!~ */ GOTO 74
END

IF ~~ THEN BEGIN 73
  SAY #92920 /* ~Do as you must, but do not tarry long! Our opportunity may disappear at any moment!~ [OH92920] */
  IF ~~ THEN DO ~SetGlobal("OHB_brodle_uprising_ready","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY #92927 /* ~That's the spirit! Let's go! IN ARVOREEN'S NAME, DEATH TO DENNATON!~ [OH92927] */
  IF ~~ THEN DO ~SetGlobal("OHB_brodle_uprising_ready","GLOBAL",4)
SetGlobal("ohb_finale","global",1)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut20")
~ EXIT
END

IF ~  Global("OHB_brodle_uprising_ready","GLOBAL",3)
~ THEN BEGIN 75
  SAY #92928 /* ~Finally! I was beginning to think you'd had a change of heart! Are you ready?~ [OH92928] */
  IF ~~ THEN REPLY #94288 /* ~Not quite. I need to finish something before we make our move.~ */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY #94289 /* ~I'm beyond ready. DEATH TO DENNATON!~ */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY #94289 /* ~I'm beyond ready. DEATH TO DENNATON!~ */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY #94289 /* ~I'm beyond ready. DEATH TO DENNATON!~ */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY #94289 /* ~I'm beyond ready. DEATH TO DENNATON!~ */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY #94289 /* ~I'm beyond ready. DEATH TO DENNATON!~ */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY #94289 /* ~I'm beyond ready. DEATH TO DENNATON!~ */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY #94289 /* ~I'm beyond ready. DEATH TO DENNATON!~ */ GOTO 74
END

IF ~  Global("ohb_finale","global",1)
~ THEN BEGIN 76
  SAY #92940 /* ~Oh, shut it, you ignorant cretin! Do you really think this door will stop us?~ [OH92940] */
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
  SAY #92941 /* ~Look at that. Who'd have thought a swift kick to the frame would pop the door open? I've done my part, <CHARNAME>. I'll leave the rest to you!~ [OH92941] */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
  SAY #101742 /* ~Hit the switch on the other side of this wall to open the training room doors!~ */
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
  SAY #94302 /* ~All right, everyone, no gawking. Quickly, form a line. We'll make our stand here if need be.~ [OH94302] */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
  SAY #94303 /* ~Oh, <CHARNAME>, there you are! Just wait till you see this! The vault's been blown open! I haven't had a chance to investigate, but there's a body inside. I think it's Brother Ellraish. You may want to check it out.~ [OH94303] */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY #94304 /* ~Be quick about it, though. The matches are still going, but it's only a matter of time before Dennaton learns what we've done.~ [OH94304] */
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",6)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 82
  SAY #92962 /* ~Are you ready to face Dennaton?~ [OH92962] */
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
~ THEN REPLY #94319 /* ~Absolutely.~ */ GOTO 83
  IF ~~ THEN REPLY #92964 /* ~You aren't coming with me?~ */ GOTO 84
  IF ~  Global("OHB_FINALE_REST","OH8100",0)
~ THEN REPLY #102677 /* ~I need to rest for a bit. Keep an eye out for guards and alert me if someone's coming.~ */ GOTO 86
  IF ~~ THEN REPLY #92281 /* ~No. I need time to prepare.~ */ GOTO 85
END

IF ~~ THEN BEGIN 83
  SAY #92965 /* ~Excellent! We'll hold this position to ensure you aren't attacked from behind. The matches are nearly over. You must act quickly.~ [OH92965] */
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
  SAY #92966 /* ~News of our uprising must have reached the upper chambers by now. More guards will be coming. We'll hold this position to ensure you aren't attacked from behind. Are you ready?~ [OH92966] */
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
~ THEN REPLY #94320 /* ~As ready as I'll ever be.~ */ GOTO 87
  IF ~~ THEN REPLY #94321 /* ~Not quite. I still need to prepare.~ */ GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY #92967 /* ~Be quick. We haven't much time left.~ [OH92967] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86
  SAY #92967 /* ~Be quick. We haven't much time left.~ [OH92967] */
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
  SAY #92968 /* ~Excellent. Let's get you—uh oh! Sounds like the matches are nearing an end. You'll have to act quickly to catch Dennaton. Let's go!~ [OH92968] */
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
  SAY #100616 /* ~That's it? They're dead? The Winged and the Planar Hunters are really dead? I... I can't believe it!~ [OH100616] */
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
  SAY #100627 /* ~I don't see Dennaton among the dead. He must have run. Without his Hunters, he's no longer a threat to us or anyone else.~ [OH100627] */
  IF ~  Dead("ohbtartl")
~ THEN GOTO 90
  IF ~  !Dead("ohbtartl")
~ THEN GOTO 91
END

IF ~~ THEN BEGIN 90
  SAY #100628 /* ~Would that I could say the same for you! Tartle, my cousin, is dead, slain by your hand!~ [OH100628] */
  IF ~~ THEN REPLY #100642 /* ~I tried to save him, Brodle. He wouldn't listen to reason.~ */ GOTO 92
  IF ~~ THEN REPLY #100643 /* ~I did what I had to do.~ */ GOTO 92
  IF ~~ THEN REPLY #100644 /* ~I freed you, and you want to whine about your cousin?~ */ GOTO 92
END

IF ~~ THEN BEGIN 91
  SAY #100629 /* ~And you spared my cousin, Tartle. That couldn't have been easy. Thank you for your restraint. Farewell.~ [OH100629] */
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
  SAY #100630 /* ~I care nothing for your excuses, <CHARNAME>! You have what you wanted. Go now and pray I'm never in a position to pay you back.~ [OH100630] */
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
  SAY #90524 /* ~Oh, by Tymora's dice, give it a rest already...~ [OH90524] */
  IF ~~ THEN EXTERN ~OHBTARTL~ 74
END
