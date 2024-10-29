// creator  : weidu (version 24900)
// argument : OHBLNGGD.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBLNGGD~

IF ~  HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 0
  SAY ~A new <PRO_GIRLBOY>, I take it? Report to one of the other servants, if you haven't already.~
  IF ~~ THEN REPLY ~Already have, thanks.~ EXIT
  IF ~~ THEN REPLY ~I will, thank you.~ EXIT
END

IF ~  !HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 1
  SAY ~You've been allowed up here, slave, but we're keeping an eye on you.~
  IF ~~ THEN EXIT
END
