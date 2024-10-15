// creator  : weidu (version 24900)
// argument : OHBSZASS.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBSZASS~

IF ~~ THEN BEGIN 0
  SAY #94277 /* ~We? A captain goes down with the ship.~ [OH94277] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 248
END

IF ~~ THEN BEGIN 1
  SAY #94279 /* ~Plans change, Dennaton.~ [OH94279] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 249
END

IF ~~ THEN BEGIN 2
  SAY #94281 /* ~I must cut my losses before the extent of my involvement here is revealed.~ [OH94281] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 250
END

IF ~~ THEN BEGIN 3
  SAY #94283 /* ~You are now a loose end. ~ [OH94283] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("OHBCUT54")
~ EXIT
END
