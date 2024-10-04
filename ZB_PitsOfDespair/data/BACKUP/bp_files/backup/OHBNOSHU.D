BEGIN ~OHBNOSHU~

IF ~  True()
~ THEN BEGIN 0
  SAY #101190
  IF ~  !PartyHasItem("ohbnoshu")
Global("ohb_need_noser_uniform","global",1)
~ THEN REPLY #101199 GOTO 1
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY #101200 GOTO 4
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY #101201 GOTO 5
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY #101202 GOTO 6
  IF ~~ THEN REPLY #101203 EXIT
END

IF ~~ THEN BEGIN 1
  SAY #101191
  IF ~  NumInParty(1)
PartyGoldGT(499)
~ THEN REPLY #101204 DO ~TakePartyGold(500)
~ GOTO 3
  IF ~  NumInParty(2)
PartyGoldGT(999)
~ THEN REPLY #101204 DO ~TakePartyGold(1000)
~ GOTO 3
  IF ~  NumInParty(3)
PartyGoldGT(1499)
~ THEN REPLY #101204 DO ~TakePartyGold(1500)
~ GOTO 3
  IF ~  NumInParty(4)
PartyGoldGT(1999)
~ THEN REPLY #101204 DO ~TakePartyGold(2000)
~ GOTO 3
  IF ~  NumInParty(5)
PartyGoldGT(2499)
~ THEN REPLY #101204 DO ~TakePartyGold(1500)
~ GOTO 3
  IF ~  NumInParty(6)
PartyGoldGT(2999)
~ THEN REPLY #101204 DO ~TakePartyGold(3000)
~ GOTO 3
  IF ~~ THEN REPLY #101178 DO ~AddJournalEntry(101239,QUEST)
~ GOTO 2
  IF ~~ THEN REPLY #101205 DO ~AddJournalEntry(101239,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #101192
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY #101193
  IF ~  NumInParty(1)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(2)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(3)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(4)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(5)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(6)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY #101194
  IF ~  !PartyHasItem("ohbnoshu")
Global("ohb_need_noser_uniform","global",1)
~ THEN REPLY #101206 GOTO 1
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY #101207 GOTO 5
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY #101208 GOTO 6
  IF ~~ THEN REPLY #101209 EXIT
END

IF ~~ THEN BEGIN 5
  SAY #101195
  IF ~  !PartyHasItem("ohbnoshu")
Global("ohb_need_noser_uniform","global",1)
~ THEN REPLY #101210 GOTO 1
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY #101211 GOTO 4
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY #101212 GOTO 6
  IF ~~ THEN REPLY #101213 EXIT
END

IF ~~ THEN BEGIN 6
  SAY #101196
  IF ~~ THEN REPLY #101214 GOTO 7
  IF ~~ THEN REPLY #101215 GOTO 8
  IF ~~ THEN REPLY #101216 EXIT
END

IF ~~ THEN BEGIN 7
  SAY #101197
  IF ~~ THEN DO ~AddJournalEntry(101268,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",4)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #101198
  IF ~~ THEN DO ~AddJournalEntry(101269,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",5)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END
