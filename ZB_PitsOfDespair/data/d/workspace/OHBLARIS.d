// creator  : weidu (version 24900)
// argument : OHBLARIS.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBLARIS~

IF ~~ THEN BEGIN 0
  SAY #94934 /* ~Watch what you say, knight. You will pray to Garagos one day.~ */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 10
END

IF ~~ THEN BEGIN 1
  SAY #94949 /* ~That is the ecstasy of Garagos! Glorious must have been their rage!~ */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 17
END

IF ~  Global("ohb_laris_vs_curell","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY #94570 /* ~Greetings! You're part of the new group, right? Garagos is truly great, sending us ever more warriors to continue the glorious slaughter.~ */
  IF ~~ THEN DO ~SetGlobal("ohb_laris_vs_curell","global",1)
AddJournalEntry(94646,INFO)
~ EXTERN ~OHBCUREL~ 1
END

IF ~~ THEN BEGIN 3
  SAY #94572 /* ~But who guides him, do you think? Garagos, of course! They've built these arenas as shrines to him!~ */
  IF ~~ THEN EXTERN ~OHBCUREL~ 2
END

IF ~~ THEN BEGIN 4
  SAY #94578 /* ~What is it you want? Are you one of Garagos's reavers?~ */
  IF ~~ THEN REPLY #94579 /* ~Never! The god of destruction is a vile aberration.~ */ DO ~SetGlobal("ohb_pc_insulted_garagos","global",1)
~ GOTO 5
  IF ~~ THEN REPLY #94580 /* ~There is nothing but war, no one but Tempus. May the blood of his enemies drip from his blade for time eternal.~ */ DO ~SetGlobal("ohb_pc_praised_tempus","global",1)
~ GOTO 6
  IF ~~ THEN REPLY #94581 /* ~No, my faith belongs to another of the gods.~ */ GOTO 7
  IF ~~ THEN REPLY #94582 /* ~I am! Glory be to Garagos, may he see us bathe in the blood of thousands slain in battle, brother.~ */ DO ~SetGlobal("ohb_pc_praised_garagos","global",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY #94583 /* ~Is that what you think? May he feast on your heart one day. This conversation is over.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY #94584 /* ~Another one! Would that I was free to cleave through you all in Garagos's name! Instead, I must endure within this conclave of worshippers of the Usurper! Is there no one who prays to the only worthy god? Maybe the orc they just brought in—Horton, or whatever his name is.~ */
  IF ~~ THEN REPLY #94585 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94586 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~~ THEN REPLY #94587 /* ~I heard someone besides Dennaton was behind this place?~ */ GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94588 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94589 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 7
  SAY #94590 /* ~You would do well to put your faith in Garagos. Don't listen to these fools—it's the followers of Garagos who do best in this place, his own house. Why, Dorn Graybrook himself turned to Garagos when he was brought here. That's how he survived long enough to be freed.~ */
  IF ~~ THEN EXTERN ~OHBCUREL~ 4
END

IF ~~ THEN BEGIN 8
  SAY #94598 /* ~Don't listen to her. She's a simple wench in love with the village idiot, her beloved Tempus. Did you want anything else from me?~ */
  IF ~~ THEN REPLY #94599 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94600 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~~ THEN REPLY #94601 /* ~I heard someone besides Dennaton was behind this place. Can you tell me anything about that?~ */ GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94602 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94603 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 9
  SAY #94604 /* ~Come here, my <PRO_BROTHERSISTER>! Let me give you the reavers' welcome—~ */
  IF ~~ THEN EXTERN ~OHBCUREL~ 5
END

IF ~~ THEN BEGIN 10
  SAY #94606 /* ~Keep talking, wench. Your words are like your god: feeble. <CHARNAME> and I are one. You should fear us.~ */
  IF ~~ THEN REPLY #94607 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94608 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~~ THEN REPLY #94609 /* ~I heard someone else besides Dennaton was behind this place?~ */ GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94610 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94611 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #94612 /* ~Molzahn takes care of the healing. Ask him.~ */
  IF ~~ THEN REPLY #94613 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~~ THEN REPLY #94614 /* ~I heard someone besides Dennaton was behind this place. Can you tell me anything about that?~ */ GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94615 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94616 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 12
  SAY #94617 /* ~Molzahn keeps our store. I don't bother with that.~ */
  IF ~~ THEN REPLY #94618 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94619 /* ~I heard someone else besides Dennaton was behind this place?~ */ GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94620 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94621 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #94622 /* ~I know nothing of that and would be a fool to speak of it if I did. I'm sure Curell would be more than happy to discuss it with you.~ */
  IF ~~ THEN REPLY #94623 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94624 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94625 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94626 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 14
  SAY #94627 /* ~Ugh... No, I cannot! The writing is celestial, but it has the stench of Torm all over it. I suggest you ask Curell what her decrepit god wants with an actual instrument of war!~ */
  IF ~~ THEN REPLY #94628 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94629 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~~ THEN REPLY #94630 /* ~You said someone else besides Dennaton was behind this place?~ */ GOTO 13
  IF ~~ THEN REPLY #94631 /* ~I'll be going.~ */ EXIT
END

IF ~  Global("ohb_pc_insulted_garagos","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 15
  SAY #94632 /* ~Begone! Insult my god again, and I'll cut your tongue from your wretched mouth!~ */
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_pc_insulted_garagos","global",0)
Global("ohb_pc_praised_garagos","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 16
  SAY #94633 /* ~Welcome back, my <PRO_BROTHERSISTER> in blood. Let us chant Garagos's battle cry together. Did you want to ask me something before we do?~ */
  IF ~~ THEN REPLY #94634 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94635 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~~ THEN REPLY #94636 /* ~I heard someone besides Dennaton was behind this place. Can you tell me anything about that?~ */ GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94637 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94638 /* ~I'll be going.~ */ EXIT
END

IF ~  Global("ohb_pc_insulted_garagos","global",0)
Global("ohb_pc_praised_garagos","global",0)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 17
  SAY #94639 /* ~What is it? By the way, your arena slaughters strengthen Garagos, even if you do not wish to recognize it.~ */
  IF ~~ THEN REPLY #94640 /* ~Can you heal my wounds?~ */ GOTO 11
  IF ~~ THEN REPLY #94641 /* ~Can I see your temple services?~ */ GOTO 12
  IF ~~ THEN REPLY #94642 /* ~I heard someone else besides Dennaton was behind this place?~ */ GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94643 /* ~I found this gauntlet with strange writing on it and was wondering if you could decipher any of it.~ */ GOTO 14
  IF ~~ THEN REPLY #94644 /* ~I'll be going.~ */ EXIT
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_garagos","global",0)
~ THEN BEGIN 18
  SAY #92974 /* ~Now is the time for destruction! Take this gift of Garagos so the slaughter won't be interrupted by tending to wounds!~ */
  IF ~~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,2,0,0)
~ GOTO 20
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_garagos","global",1)
~ THEN BEGIN 19
  SAY #92974 /* ~Now is the time for destruction! Take this gift of Garagos so the slaughter won't be interrupted by tending to wounds!~ */
  IF ~~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
~ GOTO 20
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_laris_line_gift","global",1)
~ THEN BEGIN 20
  SAY #92975 /* ~The time has come for destruction and slaughter, <CHARNAME>! I envy you!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY #92974 /* ~Now is the time for destruction! Take this gift of Garagos so the slaughter won't be interrupted by tending to wounds!~ */
  IF ~  Global("ohb_pc_praised_garagos","global",0)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,2,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("ohb_pc_praised_garagos","global",1)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_garagos","global",0)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",0)
GiveItemCreate("potn55",Player1,2,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_garagos","global",1)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_garagos","global",0)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,2,0,0)
~ EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_garagos","global",1)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
~ EXTERN ~OHBMARDU~ 17
END

IF ~~ THEN BEGIN 22
  SAY #94648 /* ~Garagos is truly great! He sends us ever more warriors to continue the glorious slaughter!~ */
  IF ~~ THEN EXTERN ~OHBCUREL~ 7
END

IF ~~ THEN BEGIN 23
  SAY #94650 /* ~Who do you think guides them? Garagos, of course! These arenas are shrines to him!~ */
  IF ~~ THEN EXTERN ~OHBCUREL~ 8
END

IF ~~ THEN BEGIN 24
  SAY #94294 /* ~The carnage and death you have wrought here is glorious in the sight of Garagos!~ */
  IF ~~ THEN EXTERN ~OHBCUREL~ 35
END

IF ~~ THEN BEGIN 25
  SAY #94299 /* ~Before the slaughter, let us heal your wounds so the violence may continue unabated. Come, you two. Join me in restoring these heroes to health.~ */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 60
END
