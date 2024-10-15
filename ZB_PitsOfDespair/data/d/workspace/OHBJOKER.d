// creator  : weidu (version 24900)
// argument : OHBJOKER.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBJOKER~

IF ~  GlobalGT("ohb_finale","global",7)
Global("OHB_POISON_JOKER","GLOBAL",22)
~ THEN BEGIN 0
  SAY #100614 /* ~A mushroom? Really? Is this supposed to be funny?~ */
  IF ~  Dead("ohbcook")
~ THEN DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",23)
Enemy()
~ EXIT
  IF ~  !Dead("ohbcook")
~ THEN DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",23)
CreateCreature("ohbcook",[825.1165],NE)
Enemy()
~ EXIT
END

IF ~  Global("OHB_BP2_CAPTURE","GLOBAL",1)
~ THEN BEGIN 1
  SAY #90418 /* ~It sounds fantastic, I know, but it IS true. I can prove it—unless I'm much mistaken, the Champion of Baeloth's Pits is among us this very minute. Everyone, say hello to <CHARNAME>—our tale's protagonist in the flesh!~ */
  IF ~~ THEN REPLY #90419 /* ~It is true. How did you know it was me?~ */ DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~~ THEN REPLY #90420 /* ~What? Where?~ */ GOTO 7
  IF ~~ THEN REPLY #90421 /* ~I'm not suggesting you should bow before me, but it wouldn't be inappropriate.~ */ GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY #90422 /* ~Your fame has spread far and wide!~ */
  IF ~~ THEN EXTERN ~OHBDORMA~ 1
END

IF ~~ THEN BEGIN 3
  SAY #90455 /* ~Would you two like to fight while our bounty escapes, or can we get down to business? ~ */
  IF ~~ THEN EXTERN ~OHBNAJIM~ 5
END

IF ~~ THEN BEGIN 4
  SAY #90459 /* ~Hah. And they call me a Joker.~ */
  IF ~~ THEN EXTERN ~OHBWING~ 0
END

IF ~~ THEN BEGIN 5
  SAY #90461 /* ~Ooh, plucky, isn't <PRO_HESHE>? I like it!~ */
  IF ~~ THEN EXTERN ~OHBWING~ 0
END

IF ~~ THEN BEGIN 6
  SAY #90462 /* ~Gee, leave it to the mark to figure out the plot first! I'd practically fall asleep waiting for some of you to quit wagging your jaws!~ */
  IF ~~ THEN EXTERN ~OHBWING~ 0
END

IF ~~ THEN BEGIN 7
  SAY #90464 /* ~Come now! I know it's you. I know everything worth knowing, and your fame has spread far and wide.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #90465 /* ~Hah! Baeloth's Champion does not lack for ego.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY #102801 /* ~Bet it does.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",4)
SetGlobalTimer("ohb_suzail_delay","oh8000",60)
SetGlobalTimer("ohb_najim_intro","oh8000",15)
Enemy()
ActionOverride("ohbbanno",Enemy())
ActionOverride("ohbthass",Enemy())
ActionOverride("ohbdorma",Enemy())
ActionOverride("ohbpol",Enemy())
ActionOverride("ohbwing",Enemy())
ChangeEnemyAlly("ohbnajim",GOODCUTOFF)
ActionOverride("ohbwing",ReallyForceSpellRES("ohbsuza1","ohbnajim"))
~ EXIT
END

IF ~  Global("OHB_POISON_JOKER","GLOBAL",4)
~ THEN BEGIN 10
  SAY #92826 /* ~I've heard tell of a performer with a drink I've yet to taste. Well, let's see it, then. Amaze me.~ */
  IF ~~ THEN REPLY #92835 /* ~It's nothing more than a tale told for your amusement.~ */ GOTO 11
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92827 /* ~Here. Have a sip. (Slip Rat Poison in the drink)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92828 /* ~Try some, I'm sure you'll be impressed. (Slip Gezzthemin's Poison in the drink)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92829 /* ~Take a sip. I think you'll like it. (Slip Feldrak's Poison in the drink)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92830 /* ~A tall order, but I'll do my best. Here, take a sip. (Slip Brother Ellraish's Poison in the drink)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92831 /* ~Here it is. Have a sip. (Slip The Concocter's Poison in the drink)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 11
  SAY #92832 /* ~Well, that was disappointing. Waste my time again and I'll make your death slow and entertaining.~ */
  IF ~~ THEN DO ~AddJournalEntry(92860,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",-1)
ClearAllActions()
Face(S)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut14")
~ EXIT
END

IF ~  Global("OHB_POISON_JOKER","GLOBAL",5)
~ THEN BEGIN 12
  SAY #92833 /* ~Someone's challenged me to a drinking contest? Can this preposterous claim be true?~ */
  IF ~~ THEN REPLY #92834 /* ~No, it's true. I can outdrink anyone, even you.~ */ GOTO 13
  IF ~~ THEN REPLY #92835 /* ~It's nothing more than a tale told for your amusement.~ */ GOTO 11
  IF ~~ THEN REPLY #92836 /* ~Grab a chair. I'll drink your skinny half-elf arse under this table.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY #92837 /* ~Hah! You may last long enough for me to quench my thirst, but I'd not bet on it.~ */
  IF ~  CheckStatGT(Player1,12,CON)
~ THEN REPLY #92838 /* ~Bottoms up!~ */ GOTO 16
  IF ~  CheckStatGT(Player1,12,CON)
~ THEN REPLY #92839 /* ~Let us begin, then.~ */ GOTO 16
  IF ~  CheckStatGT(Player1,12,CON)
~ THEN REPLY #92840 /* ~Less talking, more drinking.~ */ GOTO 16
  IF ~  !CheckStatGT(Player1,12,CON)
~ THEN REPLY #92838 /* ~Bottoms up!~ */ GOTO 14
  IF ~  !CheckStatGT(Player1,12,CON)
~ THEN REPLY #92839 /* ~Let us begin, then.~ */ GOTO 14
  IF ~  !CheckStatGT(Player1,12,CON)
~ THEN REPLY #92840 /* ~Less talking, more drinking.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY #101264 /* ~Pathetic. It's a marvel you've survived the pit this long.~ */
  IF ~~ THEN DO ~AddJournalEntry(92860,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",-1)
ClearAllActions()
Face(S)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut14")
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY #92842 /* ~Pfah! This swill isn't fit for Stirv's puppies. I'll waste no more time here!~ */
  IF ~~ THEN DO ~AddJournalEntry(92859,QUEST)
ClearAllActions()
Face(S)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut15")
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #92843 /* ~Still upright. Perhaps you're not as useless as those fools Pyrrus and Kun after all. Their constant bickering could drive one to drink.~ */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92844 /* ~They don't get along with each other?~ */ GOTO 17
  IF ~  CheckStatGT(Player1,13,CON)
~ THEN REPLY #92845 /* ~Next round! ~ */ GOTO 18
  IF ~  !CheckStatGT(Player1,13,CON)
~ THEN REPLY #92845 /* ~Next round! ~ */ GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 /* ~Next round! (Slip the rat poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 /* ~Next round! (Slip Gezzthemin's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 /* ~Next round! (Slip Feldrak's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 /* ~Next round! (Slip Brother Ellraish's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 /* ~Next round! (Slip the Concocter's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 17
  SAY #92846 /* ~To put it mildly. Thassk was in the salamander armies and Pol was with Thay. Neither will let the war go. Why is my glass empty?~ */
  IF ~  CheckStatGT(Player1,13,CON)
~ THEN REPLY #90515 /* ~Very well.~ */ GOTO 18
  IF ~  !CheckStatGT(Player1,13,CON)
~ THEN REPLY #90515 /* ~Very well.~ */ GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 /* ~Next round! (Slip the rat poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 /* ~Next round! (Slip Gezzthemin's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 /* ~Next round! (Slip Feldrak's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 /* ~Next round! (Slip Brother Ellraish's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 /* ~Next round! (Slip the Concocter's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 18
  SAY #92847 /* ~Not bad. Better than the time I challenged that adamantine fop, Bannor, to a drinking contest. He poured the finest Cormyrian Firedrake down his maw and it leaked out between his joints!~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY #92848 /* ~Hey, did you hear the story about Bannor? This is a good one.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #92849 /* ~This brilliant drow wizard placed his mind in an adamantine golem and then couldn't get it back out. And get this: He calls ME stupid. Another round!~ */
  IF ~  CheckStatGT(Player1,15,CON)
~ THEN REPLY #90515 /* ~Very well.~ */ GOTO 21
  IF ~  !CheckStatGT(Player1,15,CON)
~ THEN REPLY #90515 /* ~Very well.~ */ GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 /* ~Next round! (Slip the rat poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 /* ~Next round! (Slip Gezzthemin's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 /* ~Next round! (Slip Feldrak's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 /* ~Next round! (Slip Brother Ellraish's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 /* ~Next round! (Slip the Concocter's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 21
  SAY #92851 /* ~I expected you to be on the floor by now. You're not what you seem, but who is? Take Dormamus, for example. He pretends to be bound in service to the Winged. The truth? He's free as the rest of us!~ */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92852 /* ~Really? Why?~ */ GOTO 22
  IF ~  CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 /* ~Next round! ~ */ GOTO 25
  IF ~  !CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 /* ~Next round! ~ */ GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 /* ~Next round! (Slip the rat poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 /* ~Next round! (Slip Gezzthemin's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 /* ~Next round! (Slip Feldrak's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 /* ~Next round! (Slip Brother Ellraish's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 /* ~Next round! (Slip the Concocter's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 22
  SAY #92854 /* ~ 'Cuz it's funny! He's the only one in the crew with any sense of humor. C'mere. I've a joke for you.~ */
  IF ~~ THEN REPLY #102679 /* ~Let's hear it.~ */ GOTO 23
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 /* ~Next round! (Slip the rat poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 /* ~Next round! (Slip Gezzthemin's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 /* ~Next round! (Slip Feldrak's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 /* ~Next round! (Slip Brother Ellraish's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 /* ~Next round! (Slip the Concocter's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 23
  SAY #92855 /* ~Dormamus keeps the flask he used to trap that Najim right in his room! Hah!~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #101265 /* ~Ah, what do you want? Never said it was a good joke. Another round?~ */
  IF ~  CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 /* ~Next round! ~ */ GOTO 25
  IF ~  !CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 /* ~Next round! ~ */ GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 /* ~Next round! (Slip the rat poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 /* ~Next round! (Slip Gezzthemin's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 /* ~Next round! (Slip Feldrak's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 /* ~Next round! (Slip Brother Ellraish's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 /* ~Next round! (Slip the Concocter's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 25
  SAY #92858 /* ~Not bad. Not bad at all. Y'know, I once lifted flagons with th' Winged. Would you believe she can't hold her ale? Guess she wuz a celestial—a solar or planetar, some'n like that. C'mon. 'nother round.~ */
  IF ~~ THEN REPLY #92853 /* ~Next round! ~ */ GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 /* ~Next round! (Slip the rat poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 /* ~Next round! (Slip Gezzthemin's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 /* ~Next round! (Slip Feldrak's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 /* ~Next round! (Slip Brother Ellraish's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 /* ~Next round! (Slip the Concocter's poison into Joker's drink.)~ */ DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 26
  SAY #90442 /* ~I AM a bard. The name's Joker. And the joke? I'm afraid it's on you.~ */
  IF ~~ THEN EXTERN ~OHBDORMA~ 2
END
