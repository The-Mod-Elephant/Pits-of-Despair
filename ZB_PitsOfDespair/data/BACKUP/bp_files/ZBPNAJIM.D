BEGIN ~OHBNAJIM~

IF ~  Global("OHB_BP2_CAPTURE","GLOBAL",2)
Global("tier","GLOBAL",0)
~ THEN BEGIN 0
  SAY #90429
  IF ~~ THEN REPLY #90430 GOTO 1
  IF ~~ THEN REPLY #90431 GOTO 1
  IF ~~ THEN REPLY #90432 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY #90433
  IF ~~ THEN REPLY #90434 GOTO 2
  IF ~~ THEN REPLY #90435 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY #90436
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",3)
StartCutSceneMode()
StartCutScene("ohbcut02")
~ EXIT
END

IF ~  Global("OHB_BP2_CAPTURE","GLOBAL",3)
Global("tier","GLOBAL",0)
Global("ohb_najim_fight_or_not","oh8000",0)
~ THEN BEGIN 3
  SAY #90438
  IF ~~ THEN EXTERN ~OHBJOKER~ 26
END

IF ~~ THEN BEGIN 4
  SAY #90463
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY #102547
  IF ~~ THEN REPLY #102799 EXTERN ~OHBJOKER~ 9
  IF ~~ THEN REPLY #102800 DO ~SetGlobal("ohb_najim_fight_or_not","oh8000",3)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut51")
~ EXIT
END

IF ~  Global("OHB_BP2_CAPTURE","GLOBAL",9)
Global("tier","GLOBAL",0)
~ THEN BEGIN 6
  SAY #101743
  IF ~~ THEN REPLY #101744 GOTO 7
  IF ~~ THEN REPLY #101745 GOTO 7
  IF ~~ THEN REPLY #101746 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY #101747
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY #101748
  IF ~~ THEN REPLY #101749 GOTO 9
  IF ~~ THEN REPLY #101750 GOTO 9
  IF ~~ THEN REPLY #101751 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY #101752
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(2)
MoveViewPoint([790.620],INSTANT)
CreateCreature("cutspy",[730.560],N)
CreateCreature("ohbwing",[790.620],NW)
ActionOverride("ohbwing",ChangeAIScript("",OVERRIDE))
ActionOverride("ohbwing",ChangeAIScript("",GENERAL))
FadeFromColor([20.0],0)
Wait(1)
ActionOverride("ohbwing",SetSequence(SEQ_HEAD_TURN))
Wait(1)
ActionOverride("ohbwing",SetSequence(SEQ_CONJURE))
SmallWait(15)
ActionOverride("ohbwing",SetSequence(SEQ_CAST))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player1))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player2))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player3))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player4))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player5))
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1",Player6))
Wait(2)
FadeToColor([20.0],0)
Wait(2)
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza2",Myself))
Wait(1)
StartCutScene("ohbcut03")
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #101753
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(2)
EndCutSceneMode()
GoToStartScreen()
~ EXIT
END

IF ~  Global("OHB_NAJIM","GLOBAL",2)
~ THEN BEGIN 11
  SAY #92820
  IF ~~ THEN DO ~SetGlobal("OHB_NAJIM","GLOBAL",4)
~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY #92821
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY #92822
  IF ~~ THEN DO ~Unlock("Dormamus_door")
CreateVisualEffectObject("SPDIMNDR","ohbnajim")
Wait(2)
DestroySelf()
~ EXIT
END

IF ~  Global("ohb_finale","global",10)
~ THEN BEGIN 14
  SAY #100631
  IF ~~ THEN GOTO 15
END

IF ~  False()
~ THEN BEGIN 15
  SAY #100632
  IF ~~ THEN REPLY #100645 GOTO 16
  IF ~~ THEN REPLY #100646 GOTO 16
  IF ~~ THEN REPLY #100647 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY #100633
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(2)
CreateCreatureDoor("ohbstann",[1245.1065],SW)
Wait(4)
ActionOverride("ohbstann",StartDialogNoSet(Player1))
~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY #90444
  IF ~~ THEN EXTERN ~OHBBANNO~ 2
END
