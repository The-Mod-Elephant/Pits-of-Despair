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
  SAY #92716 /* ~...~ */
  IF ~~ THEN REPLY #92157 /* ~Let me see your selection of magical trinkets.~ */ DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_same","GLOBAL",0)
~ THEN REPLY #92717 /* ~Hey, are you the same illithid from Baeloth's arena?~ */ DO ~SetGlobal("OHB_IMIM_subject_same","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 1
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",0)
~ THEN REPLY #92718 /* ~Shouldn't you be able to communicate telepathically?~ */ DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 2
  IF ~~ THEN REPLY #96016 /* ~I've no time for this.~ */ DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92716 /* ~...~ */
  IF ~~ THEN REPLY #92157 /* ~Let me see your selection of magical trinkets.~ */ DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",0)
~ THEN REPLY #92718 /* ~Shouldn't you be able to communicate telepathically?~ */ DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 2
  IF ~~ THEN REPLY #96016 /* ~I've no time for this.~ */ DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92716 /* ~...~ */
  IF ~~ THEN REPLY #92157 /* ~Let me see your selection of magical trinkets.~ */ DO ~AddJournalEntry(96006,INFO)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OHB_IMIM_subject_same","GLOBAL",0)
~ THEN REPLY #92717 /* ~Hey, are you the same illithid from Baeloth's arena?~ */ DO ~SetGlobal("OHB_IMIM_subject_same","GLOBAL",1)
AddJournalEntry(96006,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #96016 /* ~I've no time for this.~ */ DO ~AddJournalEntry(96006,INFO)
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",1)
~ THEN BEGIN 3
  SAY #92719 /* ~Ah, <CHARNAME>, your mind is clear to me. I know you seek my rune to the vault so you may exchange it for the key to the upper floor.~ */
  IF ~  Global("OHB_IMIM_subject_telepath","GLOBAL",1)
~ THEN REPLY #92720 /* ~So you CAN speak telepathically.~ */ DO ~SetGlobal("OHB_IMIM_subject_telepath","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #92721 /* ~Are you going to give me away?~ */ GOTO 5
  IF ~  !Global("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
~ THEN REPLY #92722 /* ~Well, that saved some time. What do I need to do to get it?~ */ GOTO 6
  IF ~~ THEN REPLY #92723 /* ~Ellraish does want it, but I'm actually here to shop.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96017 /* ~Stay out of my mind, illithid.~ */ EXIT
END

IF ~~ THEN BEGIN 4
  SAY #92724 /* ~Most of you slaves are so very uninteresting. Your recent discussions with Ellraish changes things.~ */
  IF ~  !Global("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ THEN REPLY #92725 /* ~So are you going to give me away?~ */ GOTO 5
  IF ~  !Global("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
~ THEN REPLY #92726 /* ~What do I need to do to get your rune?~ */ GOTO 6
  IF ~~ THEN REPLY #92727 /* ~I'm really only interested in shopping.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #91943 /* ~Eh, I need to go...~ */ EXIT
END

IF ~~ THEN BEGIN 5
  SAY #92728 /* ~No. I shall keep your secret. It suits my purposes to do so.~ */
  IF ~~ THEN REPLY #92729 /* ~So what do I need to do to get your rune?~ */ DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #92157 /* ~Let me see your selection of magical trinkets.~ */ DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96018 /* ~Good. I'll be leaving, now.~ */ DO ~SetGlobal("OHB_ASKED_IMIM_GIVE_AWAY","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY #92730 /* ~There is something I want even more than the rune. The ring of Stannel Eibor, the scribe. Bring it to me.~ */
  IF ~~ THEN REPLY #92299 /* ~What's so valuable about his ring?~ */ DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #92230 /* ~Very well.~ */ DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #92289 /* ~In the meantime, let me see your selection of magical items.~ */ DO ~SetGlobal("OHB_IMIM_MENTIONED_RING","GLOBAL",1)
AddJournalEntry(96027,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",2)
ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY #92731 /* ~It is my price for the rune. That is all you need know.~ */
  IF ~~ THEN REPLY #92230 /* ~Very well.~ */ EXIT
  IF ~~ THEN REPLY #92289 /* ~In the meantime, let me see your selection of magical items.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
!PartyHasItem("OHBRING1")
~ THEN BEGIN 8
  SAY #92732 /* ~You do not have the scribe's ring? Then we have nothing to discuss, unless you have come to purchase something.~ */
  IF ~~ THEN REPLY #92299 /* ~What's so valuable about his ring?~ */ GOTO 7
  IF ~~ THEN REPLY #92230 /* ~Very well.~ */ EXIT
  IF ~~ THEN REPLY #92157 /* ~Let me see your selection of magical trinkets.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
END

IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",2)
PartyHasItem("OHBRING1")
~ THEN BEGIN 9
  SAY #92733 /* ~Ah, I sense in your mind that you have the ring on you! Give it to me!~ */
  IF ~~ THEN REPLY #92734 /* ~I have it. Now tell me why you want it.~ */ GOTO 10
  IF ~~ THEN REPLY #92735 /* ~Here it is. Give me the rune.~ */ DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY #92161 /* ~Let me see what items you have for sale first.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #100779 /* ~Maybe later. Maybe.~ */ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #92736 /* ~It will allow one person to escape this arena, assuming they know the activation phrase. I have seen it in the scribe's mind, but I'll not reveal it to you. The ring is worthless to you.~ */
  IF ~~ THEN REPLY #92737 /* ~Why do you wish to escape?~ */ GOTO 11
  IF ~~ THEN REPLY #92092 /* ~Here it is, then. Now hand over the rune.~ */ DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY #96019 /* ~Then let me see something that does have value to me. Show me your wares.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96020 /* ~Having something you want is reward enough for me.~ */ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #92738 /* ~I do not like being enslaved any more than you do. Now let us make the trade.~ */
  IF ~~ THEN REPLY #96021 /* ~Here. Now hand over the rune.~ */ DO ~SetGlobal("OHB_ELLRA_RUNE","GLOBAL",3)
TakePartyItem("OHBRING1")
EquipItem("OHBRING1")
~ GOTO 12
  IF ~~ THEN REPLY #92161 /* ~Let me see what items you have for sale first.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96022 /* ~We will—when I choose to make it.~ */ EXIT
END

IF ~~ THEN BEGIN 12
  SAY #92739 /* ~Thank you, <CHARNAME>. You have done me such a service that I might consider NOT eating your brain if given the chance! Now, unless you would buy something, our business is at an end.~ */
  IF ~~ THEN REPLY #92157 /* ~Let me see your selection of magical trinkets.~ */ DO ~AddJournalEntry(96028,QUEST_DONE)
EraseJournalEntry(96027)
GiveItemCreate("OHBKEY01",LastTalkedToBy,1,0,0)
~ GOTO 13
  IF ~~ THEN REPLY #96023 /* ~We're done. Thank you.~ */ DO ~AddJournalEntry(96028,QUEST_DONE)
EraseJournalEntry(96027)
GiveItemCreate("OHBKEY01",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #92740 /* ~I cannot wait to finally escape this madness. Until then, I shall be content to sell you my items at a discount.~ */
  IF ~~ THEN REPLY #96024 /* ~Sounds good to me. Let's see what you've got.~ */ DO ~ClearAllActions()
StartStore("ohbimim",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96025 /* ~Maybe later. I need to go now.~ */ EXIT
END
