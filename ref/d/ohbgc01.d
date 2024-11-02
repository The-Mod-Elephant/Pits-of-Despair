BEGIN ~OHBGC01~

IF ~  NumTimesTalkedToLT(1)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 0
  SAY #101153
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY #101154
  IF ~~ THEN DO ~AddJournalEntry(101245,QUEST)
~ GOTO 6
END

IF ~  NumTimesTalkedToLT(1)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 2
  SAY #101155
  IF ~~ THEN REPLY #101169 DO ~AddJournalEntry(101246,QUEST)
~ GOTO 3
  IF ~~ THEN REPLY #101170 DO ~AddJournalEntry(101246,QUEST)
~ GOTO 4
  IF ~~ THEN REPLY #101171 DO ~AddJournalEntry(101246,QUEST)
~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY #101156
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY #101157
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY #101158
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY #101159
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY #101160
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY #101161
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #101172 DO ~AddJournalEntry(101247,QUEST)
~ GOTO 9
  IF ~~ THEN REPLY #101173 GOTO 10
  IF ~~ THEN REPLY #101174 GOTO 15
END

IF ~~ THEN BEGIN 9
  SAY #101162
  IF ~~ THEN DO ~TakePartyGold(5000)
AmbientActivate("lounge_barrier1",FALSE)
AmbientActivate("lounge_barrier2",FALSE)
PlaySound("EFF_M10")
Unlock("LoungeDoor")
OpenDoor("LoungeDoor")
Face(SW)
SetGlobal("OHB_GCENTRY","OH8100",5)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #101163
  IF ~~ THEN REPLY #101175 GOTO 11
  IF ~~ THEN REPLY #101176 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY #101164
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY #101165
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY #101166
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY #101167
  IF ~~ THEN DO ~AddJournalEntry(101248,QUEST)
CreateCreatureImpassable("ohbbrans",[1108.2605],NW)
SetGlobal("OHB_GCENTRY","OH8100",1)
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY #101168
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #101177 DO ~AddJournalEntry(101247,QUEST)
~ GOTO 9
  IF ~~ THEN REPLY #101178 GOTO 10
  IF ~~ THEN REPLY #101179 GOTO 12
END

IF ~  NumTimesTalkedToGT(0)
!Dead("OHBBRANS")
Global("OHB_GCENTRY","OH8100",1)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 16
  SAY #101180
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Dead("OHBBRANS")
Global("OHB_GCENTRY","OH8100",3)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 17
  SAY #101181
  IF ~  !PartyHasItem("ohbring2")
~ THEN EXIT
  IF ~  PartyHasItem("ohbring2")
~ THEN REPLY #101186 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #101182
  IF ~~ THEN REPLY #101187 GOTO 19
  IF ~~ THEN REPLY #101188 GOTO 19
  IF ~~ THEN REPLY #101189 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY #101183
  IF ~~ THEN DO ~AddJournalEntry(101252,QUEST_DONE)
EraseJournalEntry(101238)
EraseJournalEntry(101239)
EraseJournalEntry(101240)
EraseJournalEntry(101241)
EraseJournalEntry(101242)
EraseJournalEntry(101243)
EraseJournalEntry(101244)
EraseJournalEntry(101245)
EraseJournalEntry(101246)
EraseJournalEntry(101247)
EraseJournalEntry(101248)
EraseJournalEntry(101249)
EraseJournalEntry(101250)
TakePartyItemNum("ohbring2",1)
AmbientActivate("lounge_barrier1",FALSE)
AmbientActivate("lounge_barrier2",FALSE)
PlaySound("EFF_M10")
Unlock("LoungeDoor")
OpenDoor("LoungeDoor")
Face(SW)
SetGlobal("OHB_GCENTRY","OH8100",5)
~ EXIT
END

IF ~  GlobalLT("OHB_GCENTRY","OH8100",5)
Dead("OHBBRANS")
~ THEN BEGIN 20
  SAY #101184
  IF ~~ THEN DO ~AddJournalEntry(101251,QUEST_DONE)
EraseJournalEntry(101238)
EraseJournalEntry(101239)
EraseJournalEntry(101240)
EraseJournalEntry(101241)
EraseJournalEntry(101242)
EraseJournalEntry(101243)
EraseJournalEntry(101244)
EraseJournalEntry(101245)
EraseJournalEntry(101246)
EraseJournalEntry(101247)
EraseJournalEntry(101248)
EraseJournalEntry(101249)
EraseJournalEntry(101250)
AmbientActivate("lounge_barrier1",FALSE)
AmbientActivate("lounge_barrier2",FALSE)
PlaySound("EFF_M10")
Unlock("LoungeDoor")
OpenDoor("LoungeDoor")
Face(SW)
SetGlobal("OHB_GCENTRY","OH8100",5)
~ EXIT
END

IF ~  GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 21
  SAY #101185
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("ohb_finale","global",1)
Global("ohb_finale_captain_bark","oh8100",1)
Global("ohb_finale_captain_bark2","oh8100",1)
Global("ohb_finale_captain_bark3","oh8100",0)
~ THEN BEGIN 22
  SAY #94290
  IF ~~ THEN DO ~SetGlobal("ohb_finale_captain_bark3","oh8100",1)
Enemy()
Shout(151)
~ EXIT
END

IF ~  Global("ohb_finale","global",1)
Global("ohb_finale_captain_bark","oh8100",0)
~ THEN BEGIN 23
  SAY #92933
  IF ~~ THEN DO ~SetGlobal("ohb_finale_captain_bark","oh8100",1)
~ EXIT
END

IF ~  GlobalGT("ohb_finale","global",1)
Global("ohb_finale_captain_bark2","oh8100",0)
~ THEN BEGIN 24
  SAY #92934
  IF ~~ THEN DO ~SetGlobal("ohb_finale_captain_bark2","oh8100",1)
~ EXIT
END
