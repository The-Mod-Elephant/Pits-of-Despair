BEGIN ~OHBWING2~

IF ~  Global("OHB_WARN","GLOBAL",1)
~ THEN BEGIN 0
  SAY #102775
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY #102776
  IF ~~ THEN DO ~SetGlobal("OHB_WARN","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT56")
~ EXIT
END

IF ~  Global("OHB_WARN","GLOBAL",3)
~ THEN BEGIN 2
  SAY #102777
  IF ~~ THEN DO ~Enemy()
SetGlobal("OHB_WARN","GLOBAL",4)
SetCutSceneLite(FALSE)
SetInterrupt(TRUE)
~ EXIT
END
