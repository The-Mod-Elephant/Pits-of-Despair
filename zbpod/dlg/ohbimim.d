// creator  : weidu (version 24900)
// argument : OHBIMIM.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBIMIM~

IF ~  OR(2)
Global("OHB_ELLRA_RUNE","GLOBAL",0)
Global("OHB_ELLRA_RUNE","GLOBAL",3)
~ THEN BEGIN 0
  SAY @359 /* ... */
  IF ~~ THEN REPLY @1607 /* Let me see your selection of magical trinkets. */ DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_same","GLOBAL",0)
~ THEN REPLY @1608 /* Hey, are you the same illithid from Baeloth's arena? */ DO ~SetGlobal("OHB_IMIM_subject_same","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 1
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",0)
~ THEN REPLY @1609 /* Shouldn't you be able to communicate telepathically? */ DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 2
  IF ~~ THEN REPLY @1610 /* I've no time for this. */ DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @359 /* ... */
  IF ~~ THEN REPLY @1607 /* Let me see your selection of magical trinkets. */ DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",0)
~ THEN REPLY @1609 /* Shouldn't you be able to communicate telepathically? */ DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 2
  IF ~~ THEN REPLY @1610 /* I've no time for this. */ DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @359 /* ... */
  IF ~~ THEN REPLY @1607 /* Let me see your selection of magical trinkets. */ DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_same","GLOBAL",0)
~ THEN REPLY @1608 /* Hey, are you the same illithid from Baeloth's arena? */ DO ~SetGlobal("OHB_IMIM_subject_same","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 1
  IF ~~ THEN REPLY @1610 /* I've no time for this. */ DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",1)
~ THEN BEGIN 3
  SAY @1611 /* Ah, <CHARNAME>, your mind is clear to me. I know you seek my rune to the vault so you may exchange it for the key to the upper floor. */
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",1)
~ THEN REPLY @1612 /* So you CAN speak telepathically. */ DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY @1613 /* Are you going to give me away? */ GOTO 5
  IF ~  !Global("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
~ THEN REPLY @1614 /* Well, that saved some time. What do I need to do to get it? */ GOTO 6
  IF ~~ THEN REPLY @1615 /* Ellraish does want it, but I'm actually here to shop. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1616 /* Stay out of my mind, illithid. */ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1617 /* Most of you slaves are so very uninteresting. Your recent discussions with Ellraish changes things. */
  IF ~  !Global("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ THEN REPLY @1618 /* So are you going to give me away? */ GOTO 5
  IF ~  !Global("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
~ THEN REPLY @1619 /* What do I need to do to get your rune? */ GOTO 6
  IF ~~ THEN REPLY @1620 /* I'm really only interested in shopping. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1434 /* Eh, I need to go... */ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1621 /* No. I shall keep your secret. It suits my purposes to do so. */
  IF ~~ THEN REPLY @1622 /* So what do I need to do to get your rune? */ DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY @1607 /* Let me see your selection of magical trinkets. */ DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1623 /* Good. I'll be leaving, now. */ DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1624 /* There is something I want even more than the rune. The ring of Stannel Eibor, the scribe. Bring it to me. */
  IF ~~ THEN REPLY @1625 /* What's so valuable about his ring? */ DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY @121 /* Very well. */ DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY @1626 /* In the meantime, let me see your selection of magical items. */ DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1627 /* It is my price for the rune. That is all you need know. */
  IF ~~ THEN REPLY @121 /* Very well. */ EXIT
  IF ~~ THEN REPLY @1626 /* In the meantime, let me see your selection of magical items. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
!PartyHasItem("OHBRING1")
~ THEN BEGIN 8
  SAY @1628 /* You do not have the scribe's ring? Then we have nothing to discuss, unless you have come to purchase something. */
  IF ~~ THEN REPLY @1625 /* What's so valuable about his ring? */ GOTO 7
  IF ~~ THEN REPLY @121 /* Very well. */ EXIT
  IF ~~ THEN REPLY @1607 /* Let me see your selection of magical trinkets. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
PartyHasItem("OHBRING1")
~ THEN BEGIN 9
  SAY @1629 /* Ah, I sense in your mind that you have the ring on you! Give it to me! */
  IF ~~ THEN REPLY @1630 /* I have it. Now tell me why you want it. */ GOTO 10
  IF ~~ THEN REPLY @1631 /* Here it is. Give me the rune. */ DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY @1632 /* Let me see what items you have for sale first. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1633 /* Maybe later. Maybe. */ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1634 /* It will allow one person to escape this arena, assuming they know the activation phrase. I have seen it in the scribe's mind, but I'll not reveal it to you. The ring is worthless to you. */
  IF ~~ THEN REPLY @1635 /* Why do you wish to escape? */ GOTO 11
  IF ~~ THEN REPLY @1636 /* Here it is, then. Now hand over the rune. */ DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY @1637 /* Then let me see something that does have value to me. Show me your wares. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1638 /* Having something you want is reward enough for me. */ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1639 /* I do not like being enslaved any more than you do. Now let us make the trade. */
  IF ~~ THEN REPLY @1640 /* Here. Now hand over the rune. */ DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY @1632 /* Let me see what items you have for sale first. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1641 /* We will—when I choose to make it. */ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1642 /* Thank you, <CHARNAME>. You have done me such a service that I might consider NOT eating your brain if given the chance! Now, unless you would buy something, our business is at an end. */
  IF ~~ THEN REPLY @1607 /* Let me see your selection of magical trinkets. */ DO ~AddJournalEntry(96028,QUEST_DONE)
EraseJournalEntry(96027)
GiveItemCreate("OHBKEY01",LastTalkedToBy,1,0,0)
~ GOTO 13
  IF ~~ THEN REPLY @1643 /* We're done. Thank you. */ DO ~AddJournalEntry(96028,QUEST_DONE)
EraseJournalEntry(96027)
GiveItemCreate("OHBKEY01",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1644 /* I cannot wait to finally escape this madness. Until then, I shall be content to sell you my items at a discount. */
  IF ~~ THEN REPLY @1645 /* Sounds good to me. Let's see what you've got. */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @1646 /* Maybe later. I need to go now. */ EXIT
END
