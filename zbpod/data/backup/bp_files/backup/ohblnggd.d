BEGIN ~OHBLNGGD~

IF ~  HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 0
  SAY #92782
  IF ~~ THEN REPLY #92783 EXIT
  IF ~~ THEN REPLY #92784 EXIT
END

IF ~  !HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 1
  SAY #92785
  IF ~~ THEN EXIT
END
