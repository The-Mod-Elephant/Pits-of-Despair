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
  SAY @143 /* Oh, <CHARNAME>, how fortuitous! The time to put our plan into action has arrived! Quickly, gather everyone in the performers' quarters. I'll meet you there. */
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
  SAY @144 /* Oh, <CHARNAME>, good. I just heard something that makes me believe we have a chance for freedom... if we're willing to seize it! Quickly, gather as many as you can in the performers' bunks! I'll meet you there. */
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
  SAY @145 /* Hey. I managed to get those items you asked for. You wouldn't believe the lengths I had to go to. Think duck feathers, ale, and a highly choreographed song and dance routine... but it'll be worth it if it all gets put to good use. */
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

/* GOOD ITEM REWARD TRACK */

/* good track, first response */
IF ~  Global("ohb_item_reward","global",10)
RandomNum(4,1)
~ THEN BEGIN 3
  SAY @146 /* Hey, <CHARNAME>. An audience member donated this and asked that you use it in your next fight. Congratulations! */
  IF ~  Global("ohb_101_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_good","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_good","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_good","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,1,1)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_good","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_good","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_good","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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
/* good track, second response */
IF ~  Global("ohb_item_reward","global",10)
RandomNum(4,2)
~ THEN BEGIN 4
  SAY @147 /* Your prematch appeal for material wealth paid off. Someone who wishes to remain anonymous wanted you to have this and asked that you continue "kickin' arse and spillin' entrails." Enjoy! */
  IF ~  Global("ohb_101_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_good","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_good","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_good","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,1,1)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_good","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_good","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_good","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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
/* good track, third response */
IF ~  Global("ohb_item_reward","global",10)
RandomNum(4,3)
~ THEN BEGIN zbadd1
  SAY @148 /* Wow, <CHARNAME>, you obviously have at least one rabid—not to mention EXTREMELY wealthy—fan. Just LOOK at what someone sent you today! */
  IF ~  Global("ohb_101_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_good","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_good","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_good","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,1,1)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_good","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_good","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_good","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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
/* good track, fourth response */
IF ~  Global("ohb_item_reward","global",10)
RandomNum(4,4)
~ THEN BEGIN zbadd2
  SAY @149 /* It's unbelievable the way these people fawn over you. I could bottle your sweat and sell it as an in-stand refreshment. Here's something from an INCREDIBLY devoted fan. Congratulations! */
  IF ~  Global("ohb_101_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_good","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_good","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_good","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,1,1)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_good","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_good","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_good","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_good","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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

/* GREAT ITEM REWARD TRACK */
/* great item reward track, first response */
IF ~  Global("ohb_item_reward","global",11)
RandomNum(4,1)
~ THEN BEGIN 5
  SAY @148 /* Wow, <CHARNAME>, you obviously have at least one rabid—not to mention EXTREMELY wealthy—fan. Just LOOK at what someone sent you today! */
  IF ~  Global("ohb_101_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_great","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_great","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_great","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,0,0)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_great","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_great","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_great","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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
/* great item reward track, second response */
IF ~  Global("ohb_item_reward","global",11)
RandomNum(4,2)
~ THEN BEGIN 6
  SAY @149 /* It's unbelievable the way these people fawn over you. I could bottle your sweat and sell it as an in-stand refreshment. Here's something from an INCREDIBLY devoted fan. Congratulations! */
  IF ~  Global("ohb_101_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_great","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_great","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_great","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,0,0)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_great","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_great","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_great","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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
/* great item reward track, third response */
IF ~  Global("ohb_item_reward","global",11)
RandomNum(4,3)
~ THEN BEGIN zbadd3
  SAY @146 /* Hey, <CHARNAME>. An audience member donated this and asked that you use it in your next fight. Congratulations! */
  IF ~  Global("ohb_101_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_great","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_great","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_great","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,0,0)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_great","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_great","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_great","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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
/* great item reward track, fourth response */
IF ~  Global("ohb_item_reward","global",11)
RandomNum(4,4)
~ THEN BEGIN zbadd4
  SAY @147 /* Your prematch appeal for material wealth paid off. Someone who wishes to remain anonymous wanted you to have this and asked that you continue "kickin' arse and spillin' entrails." Enjoy! */
  IF ~  Global("ohb_101_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_101_item_great","global",2)
GiveItemCreate("zbrdorc0",LastTalkedToBy,1,0,0)
GivePartyGold(2000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_102_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_102_item_great","global",2)
GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
GivePartyGold(3000)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)
~ EXIT
  IF ~  Global("ohb_103_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_103_item_great","global",2)
GiveItemCreate("zbbtlizd",LastTalkedToBy,1,0,0)
GivePartyGold(3250)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_104_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_104_item_great","global",2)
GiveItemCreate("zbhlmmir",LastTalkedToBy,1,0,0)
GivePartyGold(4500)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
  IF ~  Global("ohb_105_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_105_item_great","global",2)
GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
GivePartyGold(4775)
SetGlobal("ohb_item_reward","global",0)
SetGlobal("ohb_plot_cutscene","global",3)
EscapeAreaMove("oh8100",1670,2510,SE)
SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)
~ EXIT
  IF ~  Global("ohb_201_item_great","global",1)
~ THEN DO ~SetGlobal("ohb_201_item_great","global",2)
GiveItemCreate("zbtnskya",LastTalkedToBy,1,0,0)
GivePartyGold(5000)
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
  SAY @145 /* Hey. I managed to get those items you asked for. You wouldn't believe the lengths I had to go to. Think duck feathers, ale, and a highly choreographed song and dance routine... but it'll be worth it if it all gets put to good use. */
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
  SAY @150 /* Psst! I set up that meetin' with the lieutenant. He's in the barracks. I can take you there if you like, or you can go on your own when you get around to it. */
  IF ~~ THEN REPLY @151 /* Please take me there now. */ DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY @152 /* I'll go on my own. */ DO ~SetGlobal("ohb_plot_cutscene","global",3)
SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",3)
~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @153 /* Follow me. */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut17")
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @154 /* As you wish. If we need to talk further, you know where to find me. */
  IF ~~ THEN DO ~AddJournalEntry(94034,QUEST)
EscapeAreaMove("oh8100",1670,2510,SE)
~ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE","LOCALS",0)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 11
  SAY @155 /* Oh, hello there, <CHARNAME>. If you're looking for Tartle, he's normally in the merchant area. */
  IF ~~ THEN REPLY @156 /* I actually came to talk to you. */ DO ~AddJournalEntry(94007,INFO)
SetGlobal("OHB_TALKED_BRODLE","LOCALS",1)
~ GOTO 12
  IF ~~ THEN REPLY @157 /* Thanks. I'll look for him there. */ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @158 /* Me? What for? Tartle's the one in charge. */
  IF ~~ THEN REPLY @159 /* What is it you do around here exactly? */ GOTO 13
  IF ~~ THEN REPLY @160 /* I'd like some information on the people who run this place. */ GOTO 14
  IF ~~ THEN REPLY @161 /* Then perhaps I'll seek him out after all. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @162 /* Tartle likes to call it "grunt work." Basically, that's everything required to actually run the place—track the inventory, order supplies, arrange for the performer housing, see that their quarters are cleaned when they're killed, um, I mean, their services are no longer required. Also manage the guards, keep the cooks from killing each other... That sort of thing. */
  IF ~~ THEN REPLY @163 /* Sounds like you might have some good information on the people running this place. */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY @164 /* You're a slave, in other words. Help me plot a rebellion. */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @165 /* I need to set up a meeting with the guard lieutenant you know. */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY @166 /* I've been thinking about your rebelling idea. I'm in. */ GOTO 32
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @168 /* Who're you talkin' about? */
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY @169 /* Tartle. */ GOTO 15
  IF ~~ THEN REPLY @170 /* Dennaton. */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @171 /* Dennaton's mercenaries. */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @171 /* Dennaton's mercenaries. */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 15
  SAY @172 /* I prefer not to think of my cousin. He takes every opportunity to run me down. I'm sick of it! */
  IF ~~ THEN REPLY @173 /* Why does he treat you so poorly? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 16
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY @174 /* How'd he get to be in charge? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY @175 /* What of Dennaton? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @177 /* He's an insecure runt, and for a good reason. He'd be nothing without me, and he knows it. He hasn't the interest or the discipline to properly run this place. */
  IF ~~ THEN REPLY @178 /* Runt? But you're a halfling too! */ GOTO 17
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY @179 /* So how'd he get to be in charge, then? */ GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY @175 /* What of Dennaton? */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY @180 /* Do you have time for more questions? */ GOTO 25
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @181 /* You think all halflings are "runts"? You're wrong. All halflings are short, but there are runts even by halfling standards. Tartle's a full half-inch shorter than I am. Ever since we were children in Luiren, everyone made fun of him for being so short. Maybe that's why he's so intent on showing people what a "big man" he is now. */
  IF ~  !Global("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ THEN REPLY @182 /* So, how'd he get to be in charge, then? */ GOTO 18
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY @175 /* What of Dennaton? */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY @180 /* Do you have time for more questions? */ GOTO 25
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @183 /* A combination of bootlicking and backstabbing. Those qualities make him the perfect tool for Dennaton, luckily for him. He wouldn't last past the arena's introductory speeches otherwise. */
  IF ~~ THEN REPLY @184 /* So you two are slaves as well? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
SetGlobal("OHB_KNOWS_SLAVES","GLOBAL",1)
~ GOTO 19
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY @175 /* What of Dennaton? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY @180 /* Do you have time for more questions? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_CHARGE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @185 /* Oh, yes. Don't let Tartle's arrogance fool you. He's in chains, same as we are. Not that he's without influence. His lips are so firmly affixed to Dennaton's backside that he generally gets his way. And he can certainly make life miserable for those he has it out for. I wouldn't cross him if I were you. */
  IF ~~ THEN REPLY @173 /* Why does he treat you so poorly? */ GOTO 16
  IF ~  !Global("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ THEN REPLY @175 /* What of Dennaton? */ GOTO 20
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY @186 /* Now that I know you're a slave too, perhaps you could help me plot a rebellion? */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY @180 /* Do you have time for more questions? */ GOTO 25
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @187 /* His word here is law. Cross him and your life will be very uncomfortable... or more likely, very short. */
  IF ~~ THEN REPLY @188 /* Yes, but who is he and where does he come from? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 21
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY @189 /* And Tartle? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 15
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY @180 /* Do you have time for more questions? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ GOTO 25
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_DENNATON","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @190 /* I don't know much about him. Dennaton doesn't enter the performers' quarters often. Tartle's just about the only one with access to him. */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @191 /* He's a Red Wizard, I know that, and I gather he's somewhat influential in Thay. He has a VERY powerful backer, but I've no idea who—or what—that might be. */
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY @189 /* And Tartle? */ GOTO 15
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 43
  IF ~  !Global("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @176 /* What about that band of mercenaries? */ DO ~SetGlobal("OHB_BRODLE_SUBJECT_MERCS","LOCALS",1)
~ GOTO 23
  IF ~~ THEN REPLY @180 /* Do you have time for more questions? */ GOTO 25
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @192 /* The Planar Hunters. They're the metaphorical sword in Dennaton's iron fist. Don't get me wrong. Dennaton's a competent wizard, but he'd have no chance of controlling the monsters and gladiators he brings here without the Hunters. But I've said too much already. Let's move on. */
  IF ~  !Global("OHB_BRODLE_SUBJECT_TARTLE","LOCALS",1)
~ THEN REPLY @189 /* And Tartle? */ GOTO 15
  IF ~~ THEN REPLY @175 /* What of Dennaton? */ GOTO 20
  IF ~~ THEN REPLY @180 /* Do you have time for more questions? */ GOTO 25
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 24
  SAY @193 /* I'm gonna forget I heard that. And if you're smart, you'll forget you said it. Dennaton has eyes and ears everywhere. Watch yourself. */
  IF ~~ THEN REPLY @159 /* What is it you do around here exactly? */ GOTO 13
  IF ~~ THEN REPLY @194 /* Tell me about the people who run this place. */ GOTO 14
  IF ~~ THEN REPLY @167 /* I need to go. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @195 /* Certainly. */
  IF ~~ THEN REPLY @159 /* What is it you do around here exactly? */ GOTO 13
  IF ~~ THEN REPLY @196 /* I'd like to know about the people who run this place. */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY @164 /* You're a slave, in other words. Help me plot a rebellion. */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @165 /* I need to set up a meeting with the guard lieutenant you know. */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY @197 /* I've considered your idea for a rebellion. I'm in. */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @198 /* What do we need to do for a rebellion to work? */ GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY @199 /* I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them? */ GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY @199 /* I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them? */ GOTO 26
  IF ~~ THEN REPLY @200 /* Not at the moment. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @201 /* Hmm… That's quite an eclectic list, but I assume it's important for our plans, so I'll make every effort to get them. Give me a little while to round them up. Come talk to me in a bit. */
  IF ~~ THEN REPLY @202 /* Thanks for the help, but I also have something else I need to talk about. */ DO ~SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY @203 /* Right, I'll get started then. Please excuse me. */ DO ~SetGlobal("OHB_BRODLE_BANREQUEST","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @204 /* Hmm… That's quite an eclectic list. Some of those things would be EXTREMELY difficult—not to mention expensive—to come up with. I'm sorry, but I can't help you. */
  IF ~~ THEN REPLY @205 /* Then let's talk about something else. */ GOTO 25
  IF ~~ THEN REPLY @203 /* Right, I'll get started then. Please excuse me. */ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE","LOCALS",1)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN BEGIN 28
  SAY @206 /* Hello again, <CHARNAME>. How may I help you? */
  IF ~~ THEN REPLY @159 /* What is it you do around here exactly? */ GOTO 13
  IF ~~ THEN REPLY @160 /* I'd like some information on the people who run this place. */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY @164 /* You're a slave, in other words. Help me plot a rebellion. */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @165 /* I need to set up a meeting with the guard lieutenant you know. */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY @197 /* I've considered your idea for a rebellion. I'm in. */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @207 /* Tell me again what needs to be done for a rebellion to work. */ GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY @199 /* I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them? */ GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY @199 /* I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them? */ GOTO 26
  IF ~~ THEN REPLY @200 /* Not at the moment. Please excuse me. */ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN BEGIN 29
  SAY @206 /* Hello again, <CHARNAME>. How may I help you? */
  IF ~~ THEN REPLY @159 /* What is it you do around here exactly? */ GOTO 13
  IF ~~ THEN REPLY @160 /* I'd like some information on the people who run this place. */ GOTO 14
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
Global("OHB_TALKED_BRODLE2","LOCALS",0)
~ THEN REPLY @164 /* You're a slave, in other words. Help me plot a rebellion. */ DO ~SetGlobal("OHB_ASK_REBELLION","GLOBAL",1)
~ GOTO 24
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @165 /* I need to set up a meeting with the guard lieutenant you know. */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_TALKED_BRODLE2","LOCALS",1)
~ THEN REPLY @197 /* I've considered your idea for a rebellion. I'm in. */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 32
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @207 /* Tell me again what needs to be done for a rebellion to work. */ GOTO 35
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY @199 /* I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them? */ GOTO 27
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
~ THEN REPLY @199 /* I need to find a few items: a wyrm tooth, a carrion crawler egg, and a scroll made from the skin of an ettin. Can you help me procure them? */ GOTO 26
  IF ~~ THEN REPLY @208 /* You can't right now. Excuse me. */ EXIT
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",0)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_ASK_REBELLION","GLOBAL",1)
~ THEN BEGIN 30
  SAY @209 /* Psst! You asked earlier about plotting a rebellion. It got me thinking. It'd be tricky, but based on what you've shown thus far in the arena, you might just be able to pull it off. */
  IF ~~ THEN REPLY @210 /* I'm interested. Go on. */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 32
  IF ~~ THEN REPLY @211 /* How do I know you aren't setting me up? */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 54
  IF ~~ THEN REPLY @212 /* I'm really not interested anymore. */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 55
END

IF ~  Global("OHB_TALKED_BRODLE2","LOCALS",0)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
Global("OHB_ASK_REBELLION","GLOBAL",0)
~ THEN BEGIN 31
  SAY @213 /* Psst, <CHARNAME>. I want to ask you about something. We've all heard how you vanquished Baeloth and won your freedom. I admit I doubted it before. But your arena success makes me think the legend might actually be true. Are you interested in attaining your freedom once more? */
  IF ~~ THEN REPLY @214 /* Sure. */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 32
  IF ~~ THEN REPLY @211 /* How do I know you aren't setting me up? */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 56
  IF ~~ THEN REPLY @215 /* What's in it for you? */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 34
  IF ~~ THEN REPLY @216 /* I was at first, but I've changed my mind. This place isn't so bad. There's a... clarity here that's very attractive to me. */ DO ~SetGlobal("OHB_TALKED_BRODLE2","LOCALS",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 32
  SAY @217 /* Great! Then we're a team, on one condition. Tartle must not be harmed. */
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
~ THEN REPLY @218 /* You'd protect your cousin, even after all he's done to you? */ GOTO 33
  IF ~~ THEN REPLY @219 /* It's a deal. Now what do we do? */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY @220 /* Sorry, but I can't promise that. */ GOTO 55
END

IF ~~ THEN BEGIN 33
  SAY @221 /* He's still family. I need your assurance that no harm will come to him. */
  IF ~~ THEN REPLY @219 /* It's a deal. Now what do we do? */ DO ~SetGlobal("OHB_REBELLION","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY @220 /* Sorry, but I can't promise that. */ GOTO 55
END

IF ~~ THEN BEGIN 34
  SAY @222 /* Uh, MY freedom when you overthrow Dennaton? There's something I need to find on the outside, but I need to GET outside first. But that's none of your concern. Are you interested? */
  IF ~~ THEN REPLY @211 /* How do I know you aren't setting me up? */ GOTO 56
  IF ~~ THEN REPLY @214 /* Sure. */ GOTO 32
  IF ~~ THEN REPLY @223 /* I would have been once. No longer. */ GOTO 55
END

IF ~~ THEN BEGIN 35
  SAY @224 /* Any rebellion will have to face Dennaton himself, his Planar Hunters, and the guards. Dennaton'll have to be killed, I fear—he's too invested in this place to let it go willingly. But we may be able to peel away his support. */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @225 /* I'm friendly with most of the guards. That doesn't mean they'll just lay down their arms for me, of course, but I CAN get you a meeting with one of the lieutenants. Convince him to support the rebellion and his subordinates will too. That'll take a very smooth tongue or more coin than Dennaton's paying to keep them loyal. */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @226 /* As for the Planar Hunters, the Winged is loyal to Dennaton despite all her grumbling. And she has a tight grip on her people. It'd be best to deal with them before an uprising begins. I've no solid idea how you'd do that, but I've an inkling where you might start. */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @227 /* The Hunters' quarters are upstairs. I've never been allowed up myself, but the first step is getting to the stairway. Unfortunately, the only way through is to knock and then convince the guard that opens the eye slit to let you through. Not easy. The only ones they ever let through are the Nosers. */
  IF ~~ THEN REPLY @228 /* Nosers? */ DO ~SetGlobal("ohb_nosers_explained","global",1)
~ GOTO 39
  IF ~~ THEN REPLY @229 /* No one else is allowed through? Really? */ GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY @230 /* The Nosers are the Planar Hunters' slaves. Tartle hates them because he has no control over them, and they all know it. He thinks they look down their noses at him—that's how they got the nickname. They're easy to distinguish from the other slaves. They wear bright-colored outfits that let the door guard differentiate them from others in the gloom. */
  IF ~~ THEN REPLY @231 /* Right, so absolutely no one else is allowed through? */ DO ~SetGlobal("ohb_need_noser_uniform","global",1)
~ GOTO 40
  IF ~~ THEN REPLY @232 /* Go on. */ DO ~SetGlobal("ohb_need_noser_uniform","global",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40
  SAY @233 /* Actually, that's not true. My cousin, Tartle, is allowed through. He has his own key, so he doesn't have to knock. He's the only one other than the Nosers. */
  IF ~  Global("ohb_nosers_explained","global",0)
~ THEN REPLY @234 /* Who are the Nosers? */ DO ~SetGlobal("ohb_lounge_door_needs_key","global",1)
~ GOTO 39
  IF ~~ THEN REPLY @232 /* Go on. */ DO ~SetGlobal("ohb_lounge_door_needs_key","global",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @235 /* Once you're on the stairs, be careful. Word is the way up is littered with traps of all kinds. Only the very crafty—or very lucky—will get through unscathed. After that, you'll need to live on your own wits. */
  IF ~  Global("OHB_BRODLE_LIEUTENANT","GLOBAL",0)
Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @165 /* I need to set up a meeting with the guard lieutenant you know. */ DO ~SetGlobal("OHB_BRODLE_LIEUTENANT","GLOBAL",1)
~ GOTO 42
  IF ~~ THEN REPLY @236 /* If I'm to battle the Planar Hunters, I'll need everything you know about them. */ GOTO 43
  IF ~~ THEN REPLY @237 /* Thanks. But I need to talk about other things. */ GOTO 25
  IF ~~ THEN REPLY @203 /* Right, I'll get started then. Please excuse me. */ EXIT
END

IF ~~ THEN BEGIN 42
  SAY @238 /* Discretion is called for. I'll bide my time until the right opportunity presents itself, then let you know when everything's set up. Until then, go about your business normally. */
  IF ~~ THEN REPLY @239 /* All right. In the meantime, I need as much information as you've got on the Planar Hunters. */ DO ~AddJournalEntry(94032,QUEST)
~ GOTO 43
  IF ~~ THEN REPLY @240 /* Thanks, but there are other things I need to know. */ DO ~AddJournalEntry(94032,QUEST)
~ GOTO 25
  IF ~~ THEN REPLY @241 /* Right. I'll get started then. */ DO ~AddJournalEntry(94032,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 43
  SAY @242 /* The Winged's band has six members: Dormamus, Thassk Kun, Pol Pyrrus, Joker, Bannor Kaxazel, and the Winged herself. */
  IF ~~ THEN REPLY @243 /* Tell me about the Winged. */ GOTO 44
  IF ~~ THEN REPLY @244 /* What do you know about Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @245 /* Thassk Kun. What can you tell me about him? */ GOTO 46
  IF ~~ THEN REPLY @246 /* Give me everything you know about Pol Pyrrus. */ GOTO 48
  IF ~~ THEN REPLY @247 /* Joker's the bard, yes? Tell me about her. */ GOTO 50
  IF ~~ THEN REPLY @248 /* Bannor Kaxazel. What's his story? */ GOTO 51
  IF ~~ THEN REPLY @249 /* Forget the Hunters. There's something else I want to know about. */ GOTO 25
END

IF ~~ THEN BEGIN 44
  SAY @250 /* The Winged is the most guarded of the group. She rarely speaks to anyone except Dennaton and her crew. I know she's a veteran of the infamous Blood War and was involved in some of its heaviest fighting. She's incredibly disciplined and extremely dangerous. */
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @252 /* And Thassk Kun? */ GOTO 46
  IF ~~ THEN REPLY @253 /* And Pol Pyrrus? */ GOTO 48
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 45
  SAY @257 /* An irredeemably vile creature. Dormamus, or the Grand Vizier of the Thayan Pits, as he makes us call him, is an efreeti. He's the sort of person who enjoys his job so much he never has to work. He's capricious, cruel, and in love with the money and power that comes from subduing and imprisoning others. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @252 /* And Thassk Kun? */ GOTO 46
  IF ~~ THEN REPLY @253 /* And Pol Pyrrus? */ GOTO 48
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 46
  SAY @259 /* Thassk Kun and Pol Pyrrus despise each other. I gather they were on opposite sides of a war several years ago. Pyrrus delights in reminding Thassk who was on the losing side. Thassk has some dirt on Pyrrus. I'm not sure what it is, but I've seen Thassk spin Pyrrus around to the point of spitting blood. Thassk is a fire salamander, by the way. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @253 /* And Pol Pyrrus? */ GOTO 47
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 47
  SAY @260 /* Like I said, he hates Thassk Kun. I can't add much to what I already told you, other than that Pyrrus is a Red Wizard and fanatical adherent to Kossuth. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 48
  SAY @261 /* Pyrrus is a Red Wizard and a fanatical adherent to Kossuth. He and Thassk Kun positively HATE each other. From what I gather, they were on opposite sides of a war several years ago. Pyrrus never misses an opportunity to remind Thassk he was on the losing side. But Thassk has some dirt on Pyrrus. I'm not sure what it is, but I've seen Thassk spin Pyrrus around to the point of spitting blood. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @252 /* And Thassk Kun? */ GOTO 49
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 49
  SAY @262 /* I just told you he hates Pyrrus. The only thing I can really add is that Thassk is a fire salamander. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 50
  SAY @263 /* Ah, Joker. The most mercurial of the bunch, and also the friendliest. She slums around down here every so often. She loves to drink and is always looking for new and exotic ales. Her love of drinking has given her common cause with Voghiln. I've seen the two of them together quite a bit. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @252 /* And Thassk Kun? */ GOTO 46
  IF ~~ THEN REPLY @253 /* And Pol Pyrrus? */ GOTO 48
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 51
  SAY @264 /* One word: odd. He's an adamantine golem with a mind of his own. Rumor has it he was once a supremely powerful wizard who cheated death by installing his mind in the golem's body as his own lay dying. If it's true, most of his powers were lost in the transition. Now he just smashes things, as you'd expect from an adamantine golem. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @252 /* And Thassk Kun? */ GOTO 46
  IF ~~ THEN REPLY @253 /* And Pol Pyrrus? */ GOTO 48
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 52
  SAY @265 /* Well, as I said, Thassk Kun and Pol Pyrrus HATE each other. Beyond that, Thassk is a fire salamander. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @253 /* And Pol Pyrrus? */ GOTO 53
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 53
  SAY @266 /* Well, as I said, Pol Pyrrus and Thassk Kun HATE each other. Beyond that, Pyrrus is a Red Wizard and fanatical adherent to Kossuth. */
  IF ~~ THEN REPLY @258 /* And the Winged? */ GOTO 44
  IF ~~ THEN REPLY @251 /* And Dormamus? */ GOTO 45
  IF ~~ THEN REPLY @252 /* And Thassk Kun? */ GOTO 52
  IF ~~ THEN REPLY @254 /* And Joker? */ GOTO 50
  IF ~~ THEN REPLY @255 /* And Bannor Kaxazel? */ GOTO 51
  IF ~~ THEN REPLY @256 /* Let's talk now about something else. */ GOTO 25
END

IF ~~ THEN BEGIN 54
  SAY @267 /* You don't. And I don't know of any reasonable way to prove myself to you. At the same time, you have no way to prove YOU weren't setting ME up when you asked last time. I wouldn't put that past Dennaton, but chances for freedom are few and far between down here. Are you in? */
  IF ~~ THEN REPLY @214 /* Sure. */ GOTO 32
  IF ~~ THEN REPLY @215 /* What's in it for you? */ GOTO 34
  IF ~~ THEN REPLY @223 /* I would have been once. No longer. */ GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY @268 /* A shame. Well, I'm clearly going nowhere soon. Seek me out if you change your mind. */
  IF ~~ THEN REPLY @269 /* I still want to talk to you. */ GOTO 25
  IF ~~ THEN REPLY @270 /* I'll keep it in mind. Excuse me. */ EXIT
END

IF ~~ THEN BEGIN 56
  SAY @271 /* You don't. The alternative is fighting until you die in the pits. Now are you in? */
  IF ~~ THEN REPLY @214 /* Sure. */ GOTO 32
  IF ~~ THEN REPLY @215 /* What's in it for you? */ GOTO 34
  IF ~~ THEN REPLY @223 /* I would have been once. No longer. */ GOTO 55
END

IF ~  OR(2)
Global("OHB_brodle_uprising_ready","GLOBAL",1)
Global("OHB_brodle_uprising_ready","GLOBAL",2)
~ THEN BEGIN 57
  SAY @272 /* There's not as many here as I'd hoped, but we can't afford to wait any longer. Dennaton's in the arena overseeing a fight, but he won't be long. */
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY @273 /* I really think we should wait on backup. */ EXTERN ~OHBMERCY~ 35
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN REPLY @273 /* I really think we should wait on backup. */ EXTERN ~OHBFELDR~ 32
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbfeldr")
Dead("ohbfeldr")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY @273 /* I really think we should wait on backup. */ EXTERN ~OHBGEZZT~ 37
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
~ THEN REPLY @273 /* I really think we should wait on backup. */ EXTERN ~OHBTIMMO~ 54
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
~ THEN REPLY @273 /* I really think we should wait on backup. */ EXTERN ~OHBHORT~ 38
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
~ THEN REPLY @273 /* I really think we should wait on backup. */ EXTERN ~OHBDULF~ 57
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
~ THEN REPLY @273 /* I really think we should wait on backup. */ GOTO 58
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @274 /* Is rebelling a good idea? */ EXTERN ~OHBHORT~ 39
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @274 /* Is rebelling a good idea? */ EXTERN ~OHBTIMMO~ 55
  IF ~  OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
OR(2)
!InMyArea("ohbtimmo")
Dead("ohbtimmo")
InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN REPLY @274 /* Is rebelling a good idea? */ EXTERN ~OHBGEZZT~ 38
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
~ THEN REPLY @274 /* Is rebelling a good idea? */ EXTERN ~OHBMERCY~ 36
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
~ THEN REPLY @274 /* Is rebelling a good idea? */ EXTERN ~OHBFELDR~ 33
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
~ THEN REPLY @274 /* Is rebelling a good idea? */ EXTERN ~OHBDULF~ 58
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
~ THEN REPLY @274 /* Is rebelling a good idea? */ GOTO 59
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN REPLY @275 /* What do you suggest? */ GOTO 60
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN REPLY @275 /* What do you suggest? */ GOTO 61
END

IF ~~ THEN BEGIN 58
  SAY @276 /* That's not a good idea. The Planar Hunters have disappeared. Ha. Hopefully, they're gone forever, but we can't count on that. Dennaton's without his muscle. We must strike now! */
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN GOTO 61
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN 59
  SAY @277 /* I can't believe it! Baeloth's vanquisher wants to be a gladiator for life? Who are you, Haximus? We have to rebel now if any of us are ever to be free! */
  IF ~  Global("OHB_REBELLION","GLOBAL",0)
~ THEN GOTO 61
  IF ~  Global("OHB_REBELLION","GLOBAL",1)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @278 /* Remember the bargain we struck. Tartle is not to be harmed. */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @279 /* He won't be, I promise. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @279 /* He won't be, I promise. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @279 /* He won't be, I promise. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @279 /* He won't be, I promise. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @279 /* He won't be, I promise. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @279 /* He won't be, I promise. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @279 /* He won't be, I promise. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY @281 /* That deal was made yesterday. If he gets in my way today, he's finished. */ GOTO 66
END

IF ~~ THEN BEGIN 61
  SAY @282 /* Before we proceed, please, I beg you—if you find Tartle, do not harm him. */
  IF ~  Global("OHB_KNOWS_SLAVES","GLOBAL",1)
~ THEN REPLY @283 /* You'd save him even after the damage he's done to you? */ GOTO 62
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY @285 /* If he stays out of my way, he'll be fine. */ GOTO 67
END

IF ~~ THEN BEGIN 62
  SAY @286 /* He's still my blood. I must protect him. Please, don't harm him. */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @284 /* I will do as you ask. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @280 /* I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY @287 /* If he gets in my way, he's a dead halfling. */ GOTO 67
END

IF ~~ THEN BEGIN 63
  SAY @288 /* Then I suppose I should be thankful that I struck the deal with our friend here! The vanquisher of Baeloth is the logical choice to lead this uprising. */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 64
  SAY @289 /* Thank you! We should head to the barracks immediately. With luck, we can take the guards by surprise and eliminate them before they know what's happening. */
  IF ~~ THEN REPLY @290 /* No. We should strike Dennaton first. */ GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY @291 /* What about Leokas? I paid him to aid us in this uprising. */ GOTO 72
  IF ~~ THEN REPLY @292 /* I need to finish something before we play our hand. */ GOTO 73
END

IF ~~ THEN BEGIN 65
  SAY @293 /* That'll have to do. All right then, we should head to the barracks. With any luck, we can take the guards by surprise and eliminate them before they know what hit them! */
  IF ~~ THEN REPLY @294 /* I disagree. We should strike at Dennaton first. */ GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY @291 /* What about Leokas? I paid him to aid us in this uprising. */ GOTO 72
  IF ~~ THEN REPLY @295 /* Wait. I need to finish something before we reveal our hand. */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY @296 /* Let's go! Start the uprising! */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @296 /* Let's go! Start the uprising! */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @296 /* Let's go! Start the uprising! */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY @296 /* Let's go! Start the uprising! */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY @296 /* Let's go! Start the uprising! */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY @296 /* Let's go! Start the uprising! */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY @296 /* Let's go! Start the uprising! */ GOTO 74
END

IF ~~ THEN BEGIN 66
  SAY @297 /* That wasn't the deal! You said you wouldn't harm Tartle! */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @298 /* Alright, I'll keep my word. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @298 /* Alright, I'll keep my word. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @298 /* Alright, I'll keep my word. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @299 /* I thought we'd sorted this out. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @299 /* I thought we'd sorted this out. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @299 /* I thought we'd sorted this out. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @299 /* I thought we'd sorted this out. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @300 /* I said I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @300 /* I said I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @300 /* I said I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @300 /* I said I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @300 /* I said I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @300 /* I said I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @300 /* I said I'll do what I can. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY @301 /* If Tartle stays out of the way, he'll live. If he doesn't, he will die. It's that simple. */ GOTO 68
END

IF ~~ THEN BEGIN 67
  SAY @302 /* Not good enough! You must guarantee Tartle's safety if I'm to help you! */
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @303 /* Very well. I'll not harm him. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @303 /* Very well. I'll not harm him. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @303 /* Very well. I'll not harm him. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @303 /* Very well. I'll not harm him. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @303 /* Very well. I'll not harm him. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @303 /* Very well. I'll not harm him. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @303 /* Very well. I'll not harm him. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 64
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @304 /* I'll try to save him. I can't promise more than that. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBDULF~ 59
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @304 /* I'll try to save him. I can't promise more than that. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ EXTERN ~OHBHORT~ 40
  IF ~  OR(2)
!InMyArea("ohbdulf")
Dead("ohbdulf")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN REPLY @304 /* I'll try to save him. I can't promise more than that. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @304 /* I'll try to save him. I can't promise more than that. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @304 /* I'll try to save him. I can't promise more than that. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @304 /* I'll try to save him. I can't promise more than that. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
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
~ THEN REPLY @304 /* I'll try to save him. I can't promise more than that. */ DO ~SetGlobal("ohb_promise_spare_tartle","global",1)
~ GOTO 65
  IF ~~ THEN REPLY @305 /* Let me be blunt: If Tartle stays away from me, he'll live. If he tries to stop me, he dies. Got it? */ GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @306 /* If Tartle is harmed, you'd best pray we never cross paths again. For now, it seems I've little choice but to find him before you. */
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
  SAY @307 /* Yes, I get the picture. I am left to my own devices when it comes to protecting my cousin. */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @308 /* I suggest we head to the barracks. If we're lucky, we can eliminate the guards before they realize what's happening. */
  IF ~~ THEN REPLY @309 /* No. We hit Dennaton first. */ GOTO 71
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY @291 /* What about Leokas? I paid him to aid us in this uprising. */ GOTO 72
  IF ~~ THEN REPLY @310 /* There's something I must finish before we play our hand. */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY @311 /* Let the uprising begin! */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @311 /* Let the uprising begin! */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @311 /* Let the uprising begin! */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY @311 /* Let the uprising begin! */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY @311 /* Let the uprising begin! */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY @311 /* Let the uprising begin! */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY @311 /* Let the uprising begin! */ GOTO 74
END

IF ~~ THEN BEGIN 71
  SAY @312 /* Confrontin' Dennaton while leaving dozens o' guards behind us isn't smart. We'd be surrounded. */
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN REPLY @291 /* What about Leokas? I paid him to aid us in this uprising. */ GOTO 72
  IF ~~ THEN REPLY @313 /* You may be right. Give me a moment. I need to finish something before we make our move. */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY @314 /* Let the rebellion begin! */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @314 /* Let the rebellion begin! */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @314 /* Let the rebellion begin! */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY @314 /* Let the rebellion begin! */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY @314 /* Let the rebellion begin! */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY @314 /* Let the rebellion begin! */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY @314 /* Let the rebellion begin! */ GOTO 74
END

IF ~~ THEN BEGIN 72
  SAY @315 /* I obviously knew that you two had spoken, but I did not realize you had come to an agreement. It's too late to coordinate with him now. We will have to keep a lookout for him as we go and then hope he keeps his word. */
  IF ~~ THEN REPLY @316 /* All right. Give me a moment. I need to finish something before we begin our assault. */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY @317 /* Very well. Let's have ourselves an uprising! */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @317 /* Very well. Let's have ourselves an uprising! */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @317 /* Very well. Let's have ourselves an uprising! */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY @317 /* Very well. Let's have ourselves an uprising! */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY @317 /* Very well. Let's have ourselves an uprising! */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY @317 /* Very well. Let's have ourselves an uprising! */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY @317 /* Very well. Let's have ourselves an uprising! */ GOTO 74
END

IF ~~ THEN BEGIN 73
  SAY @318 /* Do as you must, but do not tarry long! Our opportunity may disappear at any moment! */
  IF ~~ THEN DO ~SetGlobal("OHB_brodle_uprising_ready","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY @319 /* That's the spirit! Let's go! IN ARVOREEN'S NAME, DEATH TO DENNATON! */
  IF ~~ THEN DO ~SetGlobal("OHB_brodle_uprising_ready","GLOBAL",4)
SetGlobal("ohb_finale","global",1)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut20")
~ EXIT
END

IF ~  Global("OHB_brodle_uprising_ready","GLOBAL",3)
~ THEN BEGIN 75
  SAY @320 /* Finally! I was beginning to think you'd had a change of heart! Are you ready? */
  IF ~~ THEN REPLY @321 /* Not quite. I need to finish something before we make our move. */ GOTO 73
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN REPLY @322 /* I'm beyond ready. DEATH TO DENNATON! */ EXTERN ~OHBMERCY~ 39
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN REPLY @322 /* I'm beyond ready. DEATH TO DENNATON! */ EXTERN ~OHBHORT~ 42
  IF ~  OR(2)
!InMyArea("ohbmercy")
Dead("ohbmercy")
OR(2)
!InMyArea("ohbhort")
Dead("ohbhort")
InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN REPLY @322 /* I'm beyond ready. DEATH TO DENNATON! */ EXTERN ~OHBDULF~ 61
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
~ THEN REPLY @322 /* I'm beyond ready. DEATH TO DENNATON! */ EXTERN ~OHBGEZZT~ 41
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
~ THEN REPLY @322 /* I'm beyond ready. DEATH TO DENNATON! */ EXTERN ~OHBTIMMO~ 58
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
~ THEN REPLY @322 /* I'm beyond ready. DEATH TO DENNATON! */ EXTERN ~OHBFELDR~ 36
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
~ THEN REPLY @322 /* I'm beyond ready. DEATH TO DENNATON! */ GOTO 74
END

IF ~  Global("ohb_finale","global",1)
~ THEN BEGIN 76
  SAY @323 /* Oh, shut it, you ignorant cretin! Do you really think this door will stop us? */
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
  SAY @324 /* Look at that. Who'd have thought a swift kick to the frame would pop the door open? I've done my part, <CHARNAME>. I'll leave the rest to you! */
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
  SAY @325 /* Hit the switch on the other side of this wall to open the training room doors! */
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
  SAY @326 /* All right, everyone, no gawking. Quickly, form a line. We'll make our stand here if need be. */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80
  SAY @327 /* Oh, <CHARNAME>, there you are! Just wait till you see this! The vault's been blown open! I haven't had a chance to investigate, but there's a body inside. I think it's Brother Ellraish. You may want to check it out. */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY @328 /* Be quick about it, though. The matches are still going, but it's only a matter of time before Dennaton learns what we've done. */
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",6)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 82
  SAY @329 /* Are you ready to face Dennaton? */
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
~ THEN REPLY @330 /* Absolutely. */ GOTO 83
  IF ~~ THEN REPLY @331 /* You aren't coming with me? */ GOTO 84
  IF ~  Global("OHB_FINALE_REST","OH8100",0)
~ THEN REPLY @332 /* I need to rest for a bit. Keep an eye out for guards and alert me if someone's coming. */ GOTO 86
  IF ~~ THEN REPLY @333 /* No. I need time to prepare. */ GOTO 85
END

IF ~~ THEN BEGIN 83
  SAY @334 /* Excellent! We'll hold this position to ensure you aren't attacked from behind. The matches are nearly over. You must act quickly. */
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
  SAY @335 /* News of our uprising must have reached the upper chambers by now. More guards will be coming. We'll hold this position to ensure you aren't attacked from behind. Are you ready? */
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
~ THEN REPLY @336 /* As ready as I'll ever be. */ GOTO 87
  IF ~~ THEN REPLY @337 /* Not quite. I still need to prepare. */ GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY @338 /* Be quick. We haven't much time left. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86
  SAY @338 /* Be quick. We haven't much time left. */
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
  SAY @339 /* Excellent. Let's get you—uh oh! Sounds like the matches are nearing an end. You'll have to act quickly to catch Dennaton. Let's go! */
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
  SAY @340 /* That's it? They're dead? The Winged and the Planar Hunters are really dead? I... I can't believe it! */
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
  SAY @341 /* I don't see Dennaton among the dead. He must have run. Without his Hunters, he's no longer a threat to us or anyone else. */
  IF ~  Dead("ohbtartl")
~ THEN GOTO 90
  IF ~  !Dead("ohbtartl")
~ THEN GOTO 91
END

IF ~~ THEN BEGIN 90
  SAY @342 /* Would that I could say the same for you! Tartle, my cousin, is dead, slain by your hand! */
  IF ~~ THEN REPLY @343 /* I tried to save him, Brodle. He wouldn't listen to reason. */ GOTO 92
  IF ~~ THEN REPLY @344 /* I did what I had to do. */ GOTO 92
  IF ~~ THEN REPLY @345 /* I freed you, and you want to whine about your cousin? */ GOTO 92
END

IF ~~ THEN BEGIN 91
  SAY @346 /* And you spared my cousin, Tartle. That couldn't have been easy. Thank you for your restraint. Farewell. */
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
  SAY @347 /* I care nothing for your excuses, <CHARNAME>! You have what you wanted. Go now and pray I'm never in a position to pay you back. */
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
  SAY @348 /* Oh, by Tymora's dice, give it a rest already... */
  IF ~~ THEN EXTERN ~OHBTARTL~ 74
END

// Reward 2
IF ~Global("zb_item_reward_2","global",2)~ THEN BEGIN ZBREWARD2
  SAY @146 /* Hey, <CHARNAME>. An audience member donated this and asked that you use it in your next fight. Congratulations! */
  IF ~~ THEN DO ~
  SetGlobal("zb_item_reward_2","global",3)
  SetGlobal("ohb_102_item_good","global",2)
  GiveItemCreate("zbhlmbul",LastTalkedToBy,1,0,0)
  GivePartyGold(3000)
  SetGlobal("ohb_item_reward","global",0)
  SetGlobal("ohb_plot_cutscene","global",3)
  EscapeAreaMove("oh8100",1670,2510,SE)
  SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",1)~ EXIT
END

// Reward 5
IF ~Global("zb_item_reward_5","global",2)~ THEN BEGIN ZBREWARD5
  SAY @149 /* It's unbelievable the way these people fawn over you. I could bottle your sweat and sell it as an in-stand refreshment. Here's something from an INCREDIBLY devoted fan. Congratulations! */
  IF ~~ THEN DO ~
  SetGlobal("zb_item_reward_5","global",3)
  SetGlobal("ohb_105_item_good","global",2)
  GiveItemCreate("ZBJACK01",LastTalkedToBy,1,0,0)
  GivePartyGold(4775)
  SetGlobal("ohb_item_reward","global",0)
  SetGlobal("ohb_plot_cutscene","global",3)
  EscapeAreaMove("oh8100",1670,2510,SE)
  SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)~ EXIT
END
