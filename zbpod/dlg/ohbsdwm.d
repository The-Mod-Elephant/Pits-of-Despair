// creator  : weidu (version 24900)
// argument : OHBSDWM.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBSDWM~

IF ~  True()
~ THEN BEGIN 0
  SAY @2729 /* Aye, slave. Ye need weapons, do ye? I've the best selection in the pits right here. */
  IF ~~ THEN REPLY @2730 /* Let's see what you've got. */ DO ~AddJournalEntry(96004,INFO)
ClearAllActions()
StartStore("ohbsdwm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @2731 /* What's your story? */ DO ~AddJournalEntry(96004,INFO)
~ GOTO 1
  IF ~~ THEN REPLY @1435 /* Eh, perhaps another time. */ DO ~AddJournalEntry(96004,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2732 /* My story is I sell weapons! Now are you buyin' or walkin'? */
  IF ~~ THEN REPLY @2733 /* I'm looking. Let me see your selection. */ DO ~ClearAllActions()
StartStore("ohbsdwm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1435 /* Eh, perhaps another time. */ EXIT
END
