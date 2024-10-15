// creator  : weidu (version 24900)
// argument : OHBCUREL.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBCUREL~

IF ~~ THEN BEGIN 0
  SAY #94937 /* ~Y-you, you're a big-headed brute, aren't you, Timmoth? Why don't you assist me, then? All you do is stand there and pass judgment. No one's asking you to stay; you're free to leave our shrine if you don't like it.~ */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 12
END

IF ~~ THEN BEGIN 1
  SAY #94571 /* ~Garagos has nothing to do with it, you savage. You know full well this is Dennaton's doing. Him and the one who puts up the gold for this barbaric spectacle.~ */
  IF ~~ THEN EXTERN ~OHBLARIS~ 3
END

IF ~~ THEN BEGIN 2
  SAY #94573 /* ~You mindless brute! Theses arenas make mockeries of the field of battle! No true soldier takes pride in fighting in a cage. It's nothing more than animals going at each other's throats. I'd not put a foot in there.~ */
  IF ~  Detect("OHBTIMMO")
~ THEN EXTERN ~OHBTIMMO~ 62
  IF ~  !Detect("OHBTIMMO")
~ THEN EXTERN ~OHBMOLZA~ 49
END

IF ~~ THEN BEGIN 3
  SAY #94575 /* ~Timmoth, you—you come here, and—~ */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 48
END

IF ~~ THEN BEGIN 4
  SAY #94591 /* ~You are a liar and an imbecile, Laris. Dorn Graybrook was never here, and no one is ever freed from this place. Besides, everyone knows Graybrook is one of Tempus's greatest warriors.~ */
  IF ~  Detect("OHBTIMMO")
~ THEN EXTERN ~OHBTIMMO~ 63
  IF ~  !Detect("OHBTIMMO")
~ THEN EXTERN ~OHBLARIS~ 8
END

IF ~~ THEN BEGIN 5
  SAY #94605 /* ~An axe in the back?~ */
  IF ~~ THEN EXTERN ~OHBLARIS~ 10
END

IF ~  Global("ohb_laris_vs_curell","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 6
  SAY #94647 /* ~Welcome is not the right word, given the circumstances. I'm sorry to see another free <PRO_MANWOMAN> brought to this dreadful place.~ */
  IF ~~ THEN DO ~SetGlobal("ohb_laris_vs_curell","global",1)
AddJournalEntry(94727,INFO)
~ EXTERN ~OHBLARIS~ 22
END

IF ~~ THEN BEGIN 7
  SAY #94649 /* ~Garagos has nothing to do with it, you savage. You know full well this is the work of Dennaton, him and the one who supplies the gold for this barbaric spectacle.~ */
  IF ~~ THEN EXTERN ~OHBLARIS~ 23
END

IF ~~ THEN BEGIN 8
  SAY #94651 /* ~Mindless brute! Theses arenas mock the field of battle! No true soldier would take pride in fighting in such a cage. It's nothing more than animals, going at each other's throats. I'll not put a foot in there.~ */
  IF ~  !Detect("OHBTIMMO")
~ THEN EXTERN ~OHBMOLZA~ 53
  IF ~  Detect("OHBTIMMO")
~ THEN EXTERN ~OHBTIMMO~ 64
END

IF ~~ THEN BEGIN 9
  SAY #94653 /* ~Timmoth, you—you come here, and—~ */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 52
END

IF ~~ THEN BEGIN 10
  SAY #94656 /* ~Thank you, Molzahn. Tell me, newcomer, whom do you march with in battle? Whom is it you fight for? Are you a knight of Tempus, the true god of war?~ */
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94657 /* ~Tempus is useless to me. I have plenty of success in battle without praying to him.~ */ DO ~SetGlobal("ohb_pc_insulted_tempus","global",1)
~ GOTO 13
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94657 /* ~Tempus is useless to me. I have plenty of success in battle without praying to him.~ */ DO ~SetGlobal("ohb_pc_insulted_tempus","global",1)
~ GOTO 11
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94658 /* ~Tempus? That feeble excuse for a deity? He is the Usurper. Glory be to Garagos, may he see us bathe in the blood of thousands slain in battle.~ */ DO ~SetGlobal("ohb_pc_praised_garagos","global",1)
~ GOTO 16
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94658 /* ~Tempus? That feeble excuse for a deity? He is the Usurper. Glory be to Garagos, may he see us bathe in the blood of thousands slain in battle.~ */ DO ~SetGlobal("ohb_pc_praised_garagos","global",1)
~ GOTO 14
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94659 /* ~No, I put my faith in another god.~ */ GOTO 19
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94659 /* ~No, I put my faith in another god.~ */ GOTO 17
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94660 /* ~There is nothing but war, sister, no one but Tempus. May his enemies' blood drip from his blade for all eternity.~ */ DO ~SetGlobal("ohb_pc_praised_tempus","global",1)
~ GOTO 22
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94660 /* ~There is nothing but war, sister, no one but Tempus. May his enemies' blood drip from his blade for all eternity.~ */ DO ~SetGlobal("ohb_pc_praised_tempus","global",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 11
  SAY #94661 /* ~USELESS? No one, you hear me, NO ONE can best the soldiers of Tempus in skill and tactics in battle.~ */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 65
END

IF ~~ THEN BEGIN 12
  SAY #94664 /* ~Mind your own business, Molzahn. I can speak very well for myself. Now, if your intent, <CHARNAME>, is to slander, then I see no point in pursuing discussion with you. Molzahn, you talk to <PRO_HIMHER>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY #94665 /* ~Useless? Is THAT what you think? No one, you hear me, NO ONE can best the soldiers of Tempus on the battlefield. If your intent is to slander, <CHARNAME>, then I see no point in pursuing my discussion with you. Molzahn, you talk to <PRO_HIMHER>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY #94666 /* ~Not you too! You and Laris are misguided. Garagos's followers fight like a mindless gibberlings. No skill, no tactics. That is NOT how you win wars.~ */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 66
END

IF ~~ THEN BEGIN 15
  SAY #94669 /* ~I don't need you to speak for me, Molzahn. Sir Timmoth's bluster means little to me. ~ */
  IF ~~ THEN REPLY #94670 /* ~Nor to me. I've wounds in need of healing. Can you help me?~ */ GOTO 23
  IF ~~ THEN REPLY #94671 /* ~As he's in this place, I assume he's earned the right to a little bluster. But enough of him—what services does your temple provide?~ */ GOTO 24
  IF ~~ THEN REPLY #94672 /* ~I don't want to discuss Timmoth. You said someone else besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94673 /* ~Yes, let's get to more serious matters. I found this gauntlet and was wondering if you could decipher the writing inscribed upon it.~ */ GOTO 26
  IF ~~ THEN REPLY #94674 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #94675 /* ~Not you too! You and Laris are misguided. Garagos's followers fight on the battlefield like a mindless swarm of gibberlings. No skill, no tactics. That is NOT how you win wars.~ */
  IF ~~ THEN REPLY #94676 /* ~My wounds would seem to support your claim. Are you able to heal them?~ */ GOTO 23
  IF ~~ THEN REPLY #94677 /* ~You'd know better than I. Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94678 /* ~Let's talk of something else. You said someone besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94679 /* ~Let's get to more serious matters. I found this gauntlet and was wondering if you could decipher the writing inscribed upon it.~ */ GOTO 26
  IF ~~ THEN REPLY #94680 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 17
  SAY #94681 /* ~On this, if nothing else, Sir Timmoth and I would agree: You would be well served to put your faith in Tempus. In this world of constant struggle, skill and tactics will win the day, every time.~ */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 67
END

IF ~~ THEN BEGIN 18
  SAY #94684 /* ~Mind your own business, Molzahn. I can deal with Sir Timmoth very well by myself.~ */
  IF ~~ THEN REPLY #94685 /* ~Can you heal my wounds?~ */ GOTO 23
  IF ~~ THEN REPLY #94686 /* ~Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94687 /* ~You said someone besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94688 /* ~I found this gauntlet and was wondering if you could decipher the writing inscribed upon it.~ */ GOTO 26
  IF ~~ THEN REPLY #94689 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 19
  SAY #94690 /* ~You would do well to put your faith in Tempus. In this world of constant struggle, skill and tactics win the day, every time.~ */
  IF ~~ THEN REPLY #94685 /* ~Can you heal my wounds?~ */ GOTO 23
  IF ~~ THEN REPLY #94686 /* ~Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94691 /* ~You said someone besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94692 /* ~A discussion for another day. I found this gauntlet. Can you decipher the writing inscribed upon it?~ */ GOTO 26
  IF ~~ THEN REPLY #94693 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 20
  SAY #94694 /* ~Did you hear that, Sir Timmoth? Another member of our order has arrived. Didn't they say they brought only the land's best warriors here? NO ONE can best the battlefield skills of Tempus's soldiers!~ */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 68
END

IF ~~ THEN BEGIN 21
  SAY #94697 /* ~Still your tongue, Molzahn. To me, Sir Timmoth's bluster is as water off a duck's back.~ */
  IF ~~ THEN REPLY #94698 /* ~A sensible approach. Now, to more important matters. I've wounds that need tending. Can you help me?~ */ GOTO 23
  IF ~~ THEN REPLY #94699 /* ~Enough talk of Timmoth. I would see your temple services.~ */ GOTO 24
  IF ~~ THEN REPLY #94700 /* ~I would speak to you of other things. You said someone else besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94688 /* ~I found this gauntlet and was wondering if you could decipher the writing inscribed upon it.~ */ GOTO 26
  IF ~~ THEN REPLY #94693 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 22
  SAY #94701 /* ~All glory to Tempus! Another member of our order has arrived. Dennaton says he brings only the land's best warriors here, and this is the proof of it. NO ONE can best Tempus's soldiers on the battlefield!~ */
  IF ~~ THEN REPLY #94702 /* ~Left untended, I've some wounds that would make a compelling argument to the contrary. Can you help me?~ */ GOTO 23
  IF ~~ THEN REPLY #94686 /* ~Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94703 /* ~It's not the battlefield I wish to discuss. You said someone besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94704 /* ~A question for you, Curell: I've acquired this gauntlet. Can you decipher the writing inscribed upon it?~ */ GOTO 26
  IF ~~ THEN REPLY #94693 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 23
  SAY #94705 /* ~Molzahn does the healing, not I.~ */
  IF ~~ THEN REPLY #94686 /* ~Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94706 /* ~You said someone else besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94707 /* ~Ah. Well, perhaps there's something else you can help me with. This gauntlet—can you decipher the inscription?~ */ GOTO 26
  IF ~~ THEN REPLY #94693 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 24
  SAY #94708 /* ~You must speak with Molzahn about that. I don't handle the mercantile side of the shrine's operations.~ */
  IF ~~ THEN REPLY #94709 /* ~Can you help me with my wounds?~ */ GOTO 23
  IF ~~ THEN REPLY #94710 /* ~You said someone else besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94711 /* ~Well, perhaps there's something else you can help me with. This gauntlet—can you decipher the inscription?~ */ GOTO 26
  IF ~~ THEN REPLY #94693 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 25
  SAY #94712 /* ~Yes, it's true. Dennaton is not this arena's ultimate patron, though he certainly enjoys playing the role. We do not know his sponsor's name. Whoever they are, they must be extremely powerful.~ */
  IF ~~ THEN REPLY #94685 /* ~Can you heal my wounds?~ */ GOTO 23
  IF ~~ THEN REPLY #94713 /* ~Interesting. On a different topic, can I see your temple services?~ */ GOTO 24
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94714 /* ~Intriguing. Another question for you: I've acquired this gauntlet. Can you decipher the writing inscribed upon it?~ */ GOTO 26
  IF ~~ THEN REPLY #94693 /* ~I'll be going.~ */ EXIT
END

IF ~~ THEN BEGIN 26
  SAY #94715 /* ~Amazing! The writing is Celestial. Most of it states the core tenets of Torm. This here, for instance: "Champion the weak and defenseless." This part says, "Stand ever alert against corruption."~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #94716 /* ~It speaks specifically of "the fourfold duties" but doesn't describe them. I suppose it's assumed the gauntlet's owner would know them already.~ */
  IF ~~ THEN REPLY #94717 /* ~Thanks for the translation. On a completely different note, can you heal my wounds?~ */ GOTO 23
  IF ~~ THEN REPLY #94686 /* ~Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94718 /* ~You said someone else besides Dennaton was behind this place?~ */ GOTO 25
  IF ~~ THEN REPLY #94693 /* ~I'll be going.~ */ EXIT
END

IF ~  Global("ohb_pc_insulted_tempus","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 28
  SAY #94719 /* ~Ah yes, 'tis the <PRO_MANWOMAN> who called Tempus useless. Then what must I, his humble servant, be to you? At best, unworthy of your time. Goodbye.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_pc_insulted_tempus","global",0)
Global("ohb_pc_praised_tempus","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 29
  SAY #94720 /* ~It is good to see you again, <PRO_BROTHERSISTER>. Let us chant Tempus's March together.~ */
  IF ~~ THEN REPLY #94721 /* ~Later. First, I must deal with my wounds.~ */ GOTO 23
  IF ~~ THEN REPLY #94686 /* ~Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94722 /* ~In a moment. First, I'd like to know about this person you mentioned—the one behind this place? It's not Dennaton?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94725 /* ~I've acquired this gauntlet and was wondering if you could decipher the inscription.~ */ GOTO 26
  IF ~~ THEN REPLY #94723 /* ~Never mind.~ */ EXIT
END

IF ~  Global("ohb_pc_insulted_tempus","global",0)
Global("ohb_pc_praised_tempus","global",0)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 30
  SAY #94724 /* ~Greetings, <CHARNAME>. May each of your triumphs bring you closer to Tempus. What can I do for you?~ */
  IF ~~ THEN REPLY #94685 /* ~Can you heal my wounds?~ */ GOTO 23
  IF ~~ THEN REPLY #94686 /* ~Can I see your temple services?~ */ GOTO 24
  IF ~~ THEN REPLY #94718 /* ~You said someone else besides Dennaton was behind this place?~ */ GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94725 /* ~I've acquired this gauntlet and was wondering if you could decipher the inscription.~ */ GOTO 26
  IF ~~ THEN REPLY #94723 /* ~Never mind.~ */ EXIT
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_curel_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",0)
~ THEN BEGIN 31
  SAY #92976 /* ~This is a time for heroes, <CHARNAME>. Tempus stands with those who fight honorably. Take these gifts, and strike true.~ */
  IF ~~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ GOTO 33
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_curel_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",1)
~ THEN BEGIN 32
  SAY #92976 /* ~This is a time for heroes, <CHARNAME>. Tempus stands with those who fight honorably. Take these gifts, and strike true.~ */
  IF ~~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ GOTO 33
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_curel_line_gift","global",1)
~ THEN BEGIN 33
  SAY #92977 /* ~Tempus guide your blades.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY #92976 /* ~This is a time for heroes, <CHARNAME>. Tempus stands with those who fight honorably. Take these gifts, and strike true.~ */
  IF ~  Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ EXTERN ~OHBLARIS~ 21
  IF ~  Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ EXTERN ~OHBLARIS~ 21
END

IF ~~ THEN BEGIN 35
  SAY #94295 /* ~This savage and I—~ */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 59
END

IF ~~ THEN BEGIN 36
  SAY #94297 /* ~Hmm... For once you are right, Molzahn. "Laris" and I rarely see eye to eye, but in this we are agreed. Tempus blesses those who fight honorably, and your actions today are worthy in his sight.~ */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #94298 /* ~We will fight by your side. It is time to strike a blow against Dennaton!~ */
  IF ~~ THEN EXTERN ~OHBLARIS~ 25
END

IF ~~ THEN BEGIN 38
  SAY #94301 /* ~We are ready! Let us proceed to the arena and strike the final blow! ~ */
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",5)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut22")
~ EXIT
END
