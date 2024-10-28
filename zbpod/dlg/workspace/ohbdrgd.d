// creator  : weidu (version 24900)
// argument : OHBDRGD.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBDRGD~

IF ~  GlobalGT("OHB_GCENTRY","OH8100",0)
~ THEN BEGIN 0
  SAY #101147 /* ~Captain said you can pass. Go on, he's waiting for you.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_DRNOSER","OH8100",0)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 1
  SAY #101149 /* ~You must be one of the new Nosers. Come on in. They'll be expecting you upstairs.~ */
  IF ~~ THEN DO ~AddJournalEntry(101244,QUEST)
SetGlobal("OHB_DRNOSER","OH8100",1)
Unlock("door0011")
ActionOverride(LastTalkedToBy(Myself),OpenDoor("door0011"))
~ EXIT
END

IF ~  Global("OHB_DRNOSER","OH8100",1)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 2
  SAY #101150 /* ~You again. I see they're keeping you busy up there. Come on in.~ */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3
  SAY #101148 /* ~Only Master Dennaton, the Planar Hunters, and their servants are allowed through here. Go back the way you came.~ */
  IF ~~ THEN DO ~AddJournalEntry(101238,QUEST)
~ EXIT
  IF ~  Global("ohb_need_noser_uniform","global",0)
~ THEN DO ~AddJournalEntry(101238,QUEST)
SetGlobal("ohb_need_noser_uniform","global",1)
~ EXIT
END
