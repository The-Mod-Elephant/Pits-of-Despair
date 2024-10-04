BEGIN ~OHBHUEGR~

IF ~  True()
~ THEN BEGIN 0
  SAY #92710
  IF ~~ THEN REPLY #96011 DO ~AddJournalEntry(96002,INFO)
ClearAllActions()
StartStore("ohbhuegr",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92712 DO ~AddJournalEntry(96002,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #96012 DO ~AddJournalEntry(96002,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92713
  IF ~~ THEN REPLY #96013 DO ~ClearAllActions()
StartStore("ohbhuegr",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92714 GOTO 2
  IF ~~ THEN REPLY #91944 EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92715
  IF ~~ THEN REPLY #96014 DO ~ClearAllActions()
StartStore("ohbhuegr",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96015 EXIT
END
