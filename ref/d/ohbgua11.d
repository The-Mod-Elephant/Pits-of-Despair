BEGIN ~OHBGUA11~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY #92936
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN GOTO 1
  IF ~  GlobalLT("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN DO ~CreateCreature("ohbbrodl",[1530.2240],NW)
~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY #92937
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut21")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92939
  IF ~~ THEN EXTERN ~OHBBRODL~ 76
END
