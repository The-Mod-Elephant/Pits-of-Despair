BEGIN ~OHBMHSM~

IF ~  True()
~ THEN BEGIN 0
  SAY #92705
  IF ~~ THEN REPLY #92706 DO ~AddJournalEntry(96005,INFO)
ClearAllActions()
StartStore("ohbmhsm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92707 DO ~AddJournalEntry(96005,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #96009 DO ~AddJournalEntry(96005,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92708
  IF ~~ THEN REPLY #92709 DO ~ClearAllActions()
StartStore("ohbmhsm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96010 EXIT
END
