// creator  : weidu (version 24900)
// argument : OHBGREST.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBGREST~

IF ~  True()
~ THEN BEGIN 0
  SAY @1511 /* You there! If you need to rest, go to the bunks. */
  IF ~~ THEN REPLY @1512 /* I'm sorry, I seem to be lost. Can you escort me there? */ GOTO 1
  IF ~~ THEN REPLY @1513 /* All right. I'll be on my way then. */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1514 /* This way! Follow me. */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT50")
~ EXIT
END
