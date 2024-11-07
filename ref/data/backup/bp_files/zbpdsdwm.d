BEGIN ~OHBSDWM~

IF ~  True()
~ THEN BEGIN 0
  SAY #92702
  IF ~~ THEN REPLY #92211 DO ~AddJournalEntry(96004,INFO)
ClearAllActions()
StartStore("ohbsdwm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92703 DO ~AddJournalEntry(96004,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #91944 DO ~AddJournalEntry(96004,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92704
  IF ~~ THEN REPLY #96008 DO ~ClearAllActions()
StartStore("ohbsdwm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #91944 EXIT
END
