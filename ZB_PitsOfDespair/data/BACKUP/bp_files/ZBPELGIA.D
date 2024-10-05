BEGIN ~OHBELGIA~

IF ~  Global("ohb_elgiad_talk","global",0)
~ THEN BEGIN 0
  SAY #100784
  IF ~~ THEN REPLY #92288 DO ~SetGlobal("ohb_elgiad_talk","global",1)
~ GOTO 1
  IF ~~ THEN REPLY #100788 DO ~SetGlobal("ohb_elgiad_talk","global",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY #100785
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",505)
~ THEN DO ~SetGlobal("OHB_NOOBER","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",504)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_505","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",503)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_504","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",502)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_503","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",501)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_502","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_501","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #100786
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_501","GLOBAL",1)
~ THEN BEGIN 3
  SAY #100789
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_502","GLOBAL",1)
~ THEN BEGIN 4
  SAY #100790
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_503","GLOBAL",1)
~ THEN BEGIN 5
  SAY #100791
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_504","GLOBAL",1)
~ THEN BEGIN 6
  SAY #100792
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_505","GLOBAL",1)
~ THEN BEGIN 7
  SAY #100793
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_NOOBER","GLOBAL",3)
~ THEN BEGIN 8
  SAY #100794
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #100795
  IF ~~ THEN DO ~SetGlobal("OHB_NOOBER","GLOBAL",4)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_501","GLOBAL",2)
~ THEN BEGIN 10
  SAY #96046
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_501","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(11000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",501)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_501","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",501)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(30000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_502","GLOBAL",2)
~ THEN BEGIN 11
  SAY #96046
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_502","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(12000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",502)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_502","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",502)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(31000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_503","GLOBAL",2)
~ THEN BEGIN 12
  SAY #96046
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_503","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(13000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",503)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_503","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",503)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(32000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_504","GLOBAL",2)
~ THEN BEGIN 13
  SAY #96046
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_504","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(14000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",504)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_504","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",504)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(33000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_505","GLOBAL",2)
~ THEN BEGIN 14
  SAY #96046
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_505","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(15000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",505)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_505","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",505)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(34000)
~ EXIT
END

IF ~  Global("ohb_elgiad_talk","global",1)
~ THEN BEGIN 15
  SAY #100787
  IF ~~ THEN REPLY #92288 GOTO 1
  IF ~~ THEN REPLY #100788 GOTO 2
END
