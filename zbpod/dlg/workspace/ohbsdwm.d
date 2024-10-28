// creator  : weidu (version 24900)
// argument : OHBSDWM.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBSDWM~

IF ~  True()
~ THEN BEGIN 0
  SAY #92702 /* ~Aye, slave. Ye need weapons, do ye? I've the best selection in the pits right here.~ */
  IF ~~ THEN REPLY #92211 /* ~Let's see what you've got.~ */ DO ~AddJournalEntry(96004,INFO)
ClearAllActions()
StartStore("ohbsdwm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92703 /* ~What's your story?~ */ DO ~AddJournalEntry(96004,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #91944 /* ~Eh, perhaps another time.~ */ DO ~AddJournalEntry(96004,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92704 /* ~My story is I sell weapons! Now are you buyin' or walkin'?~ */
  IF ~~ THEN REPLY #96008 /* ~I'm looking. Let me see your selection.~ */ DO ~ClearAllActions()
StartStore("ohbsdwm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #91944 /* ~Eh, perhaps another time.~ */ EXIT
END
