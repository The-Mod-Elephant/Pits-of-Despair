// creator  : weidu (version 24900)
// argument : OHBCONCO.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBCONCO~

IF ~  Global("OHB_TALKED_BELLOWGULP","GLOBAL",0)
~ THEN BEGIN 0
  SAY #90724 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 0
END

IF ~  Global("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ THEN BEGIN 1
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 9
END

IF ~~ THEN BEGIN 2
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 12
END

IF ~~ THEN BEGIN 3
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 18
END

IF ~~ THEN BEGIN 4
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 3
END

IF ~~ THEN BEGIN 5
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 23
END

IF ~~ THEN BEGIN 6
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 26
END

IF ~~ THEN BEGIN 7
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 27
END

IF ~~ THEN BEGIN 8
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 29
END

IF ~~ THEN BEGIN 9
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 31
END

IF ~~ THEN BEGIN 10
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 33
END

IF ~~ THEN BEGIN 11
  SAY #90875 /* ~...~ */
  IF ~~ THEN EXTERN ~OHBBELLO~ 34
END
