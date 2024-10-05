BEGIN ~OHBDRGD~

IF ~  GlobalGT("OHB_GCENTRY","OH8100",0)
~ THEN BEGIN 0
  SAY #101147
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_DRNOSER","OH8100",0)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 1
  SAY #101149
  IF ~~ THEN DO ~AddJournalEntry(101244,QUEST)
SetGlobal("OHB_DRNOSER","OH8100",1)
Unlock("door0011")
ActionOverride(LastTalkedToBy(Myself),OpenDoor("door0011"))
~ EXIT
END

IF ~  Global("OHB_DRNOSER","OH8100",1)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 2
  SAY #101150
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3
  SAY #101148
  IF ~~ THEN DO ~AddJournalEntry(101238,QUEST)
~ EXIT
  IF ~  Global("ohb_need_noser_uniform","global",0)
~ THEN DO ~AddJournalEntry(101238,QUEST)
SetGlobal("ohb_need_noser_uniform","global",1)
~ EXIT
END
