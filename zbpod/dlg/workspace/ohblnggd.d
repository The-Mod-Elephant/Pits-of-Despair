// creator  : weidu (version 24900)
// argument : OHBLNGGD.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBLNGGD~

IF ~  HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 0
  SAY #92782 /* ~A new <PRO_GIRLBOY>, I take it? Report to one of the other servants, if you haven't already.~ */
  IF ~~ THEN REPLY #92783 /* ~Already have, thanks.~ */ EXIT
  IF ~~ THEN REPLY #92784 /* ~I will, thank you.~ */ EXIT
END

IF ~  !HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 1
  SAY #92785 /* ~You've been allowed up here, slave, but we're keeping an eye on you.~ */
  IF ~~ THEN EXIT
END
