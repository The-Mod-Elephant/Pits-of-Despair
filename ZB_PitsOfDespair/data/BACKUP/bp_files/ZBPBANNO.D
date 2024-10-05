BEGIN ~OHBBANNO~

IF ~~ THEN BEGIN 0
  SAY #90425
  IF ~~ THEN REPLY #90426 DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~~ THEN REPLY #90427 DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~~ THEN REPLY #90428 DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
END

IF ~  Global("ohb_bann","global",3)
~ THEN BEGIN 1
  SAY #100612
  IF ~~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("ohb_bann","global",4)
SmallWait(5)
CreateVisualEffectObject("spuseany",Myself)
Wait(1)
ChangeAnimation("ohbbann2")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #90445
  IF ~~ THEN EXTERN ~OHBDORMA~ 3
END
