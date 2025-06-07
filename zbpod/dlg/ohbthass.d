// creator  : weidu (version 24900)
// argument : OHBTHASS.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBTHASS~

IF ~~ THEN BEGIN 0
  SAY @3346 /* Out of my way! I saw <PRO_HIMHER> first! */
  IF ~~ THEN EXTERN ~OHBBANNO~ 0
END

IF ~~ THEN BEGIN 1
  SAY @3347 /* Do what you want, Dormamus! Just don't let another target escape! */
  IF ~~ THEN EXTERN ~OHBPOL~ 0
END

IF ~~ THEN BEGIN 2
  SAY @3348 /* What's that supposed to mean? */
  IF ~~ THEN EXTERN ~OHBJOKER~ 3
END
