// creator  : weidu (version 24900)
// argument : OHBSZASS.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBSZASS~

IF ~~ THEN BEGIN 0
  SAY @3141 /* We? A captain goes down with the ship. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 248
END

IF ~~ THEN BEGIN 1
  SAY @3142 /* Plans change, Dennaton. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 249
END

IF ~~ THEN BEGIN 2
  SAY @3143 /* I must cut my losses before the extent of my involvement here is revealed. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 250
END

IF ~~ THEN BEGIN 3
  SAY @3144 /* You are now a loose end.  */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT54")
~ EXIT
END
