BEGIN ~OHBIMIM~

IF ~  OR(2)
Global("OHB_ELLRA_RUNE","GLOBAL",0)
Global("OHB_ELLRA_RUNE","GLOBAL",3)
~ THEN BEGIN 0
  SAY #92716
  IF ~~ THEN REPLY #92157 DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_same","GLOBAL",0)
~ THEN REPLY #92717 DO ~SetGlobal("OHB_IMIM_subject_same","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 1
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",0)
~ THEN REPLY #92718 DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 2
  IF ~~ THEN REPLY #96016 DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92716
  IF ~~ THEN REPLY #92157 DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",0)
~ THEN REPLY #92718 DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 2
  IF ~~ THEN REPLY #96016 DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92716
  IF ~~ THEN REPLY #92157 DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_same","GLOBAL",0)
~ THEN REPLY #92717 DO ~SetGlobal("OHB_IMIM_subject_same","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #96016 DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",1)
~ THEN BEGIN 3
  SAY #92719
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",1)
~ THEN REPLY #92720 DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #92721 GOTO 5
  IF ~  !Global("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
~ THEN REPLY #92722 GOTO 6
  IF ~~ THEN REPLY #92723 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96017 EXIT
END

IF ~~ THEN BEGIN 4
  SAY #92724
  IF ~  !Global("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ THEN REPLY #92725 GOTO 5
  IF ~  !Global("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
~ THEN REPLY #92726 GOTO 6
  IF ~~ THEN REPLY #92727 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #91943 EXIT
END

IF ~~ THEN BEGIN 5
  SAY #92728
  IF ~~ THEN REPLY #92729 DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #92157 DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96018 DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY #92730
  IF ~~ THEN REPLY #92299 DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #92230 DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #92289 DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY #92731
  IF ~~ THEN REPLY #92230 EXIT
  IF ~~ THEN REPLY #92289 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
!PartyHasItem("OHBRING1")
~ THEN BEGIN 8
  SAY #92732
  IF ~~ THEN REPLY #92299 GOTO 7
  IF ~~ THEN REPLY #92230 EXIT
  IF ~~ THEN REPLY #92157 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
PartyHasItem("OHBRING1")
~ THEN BEGIN 9
  SAY #92733
  IF ~~ THEN REPLY #92734 GOTO 10
  IF ~~ THEN REPLY #92735 DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY #92161 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #100779 EXIT
END

IF ~~ THEN BEGIN 10
  SAY #92736
  IF ~~ THEN REPLY #92737 GOTO 11
  IF ~~ THEN REPLY #92092 DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY #96019 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96020 EXIT
END

IF ~~ THEN BEGIN 11
  SAY #92738
  IF ~~ THEN REPLY #96021 DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY #92161 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96022 EXIT
END

IF ~~ THEN BEGIN 12
  SAY #92739
  IF ~~ THEN REPLY #92157 DO ~AddJournalEntry(96028,QUEST_DONE)
EraseJournalEntry(96027)
GiveItemCreate("OHBKEY01",LastTalkedToBy,1,0,0)
~ GOTO 13
  IF ~~ THEN REPLY #96023 DO ~AddJournalEntry(96028,QUEST_DONE)
EraseJournalEntry(96027)
GiveItemCreate("OHBKEY01",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #92740
  IF ~~ THEN REPLY #96024 DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96025 EXIT
END
