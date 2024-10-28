// creator  : weidu (version 24900)
// argument : OHBWING2.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBWING2~

IF ~  Global("OHB_WARN","GLOBAL",1)
~ THEN BEGIN 0
  SAY #102775 /* ~This is your only warning.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY #102776 /* ~Attempt something like that again and you will be dealt with accordingly.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_WARN","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT56")
~ EXIT
END

IF ~  Global("OHB_WARN","GLOBAL",3)
~ THEN BEGIN 2
  SAY #102777 /* ~You were warned, mortal. Now face the consequences of your actions.~ */
  IF ~~ THEN DO ~Enemy()
SetGlobal("OHB_WARN","GLOBAL",4)
SetCutSceneLite(FALSE)
SetInterrupt(TRUE)
~ EXIT
END
