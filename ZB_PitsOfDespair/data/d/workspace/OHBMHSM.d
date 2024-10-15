// creator  : weidu (version 24900)
// argument : OHBMHSM.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBMHSM~

IF ~  True()
~ THEN BEGIN 0
  SAY #92705 /* ~(The wizened old man gestures to you, then sweeps his hand in the direction of the scrolls piled high on the table.)~ */
  IF ~~ THEN REPLY #92706 /* ~Sure. I'll take a look at your selection of scrolls.~ */ DO ~AddJournalEntry(96005,INFO)
ClearAllActions()
StartStore("ohbmhsm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92707 /* ~Don't like to talk much, eh?~ */ DO ~AddJournalEntry(96005,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #96009 /* ~Thanks, but I'm not looking for scrolls right now.~ */ DO ~AddJournalEntry(96005,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92708 /* ~(The man opens wide, revealing an empty mouth. His tongue has been cut out and most of his teeth removed. He grins toothlessly and again gestures to his pile of scrolls.)~ */
  IF ~~ THEN REPLY #92709 /* ~Then I'll take a look at your selection of scrolls.~ */ DO ~ClearAllActions()
StartStore("ohbmhsm",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96010 /* ~No thanks. I'm not looking for scrolls at the moment.~ */ EXIT
END
