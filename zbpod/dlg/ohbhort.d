// creator  : weidu (version 24900)
// argument : OHBHORT.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBHORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY @1518 /* Smash the door! I'll crack their skulls like eggs! */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY @1519 /* I care not how the guards have prepared. I will unleash a torrent of slaughter upon them such as they have never seen! */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 51 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("OHB_TALKED_HORT","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY @1520 /* I am Hort Il-D'rth, First of the Bone Scars. My arms count twenty-nine scar rings. I am the many-scarred warrior of my clan. Three females lie in my hut. */
  IF ~~ THEN REPLY @366 /* Never mind. */ DO ~SetGlobal("OHB_TALKED_HORT","LOCALS",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 51 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("OHB_TALKED_HORT","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY @1521 /* My name is Hort Il-D'rth! First of the Bone Scars! No walls can contain me! */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 51 even though they appear after this state */
~  Global("OHB_TALKED_HORT","LOCALS",0)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
Global("ohb_finale","global",0)
~ THEN BEGIN 4
  SAY @1520 /* I am Hort Il-D'rth, First of the Bone Scars. My arms count twenty-nine scar rings. I am the many-scarred warrior of my clan. Three females lie in my hut. */
  IF ~  Global("OHB_HORT_INFO","LOCALS",0)
~ THEN REPLY @1522 /* I would know more about you, Hort Il-D'rth, First of the Bone Scars. */ DO ~SetGlobal("OHB_HORT_INFO","LOCALS",1)
SetGlobal("OHB_TALKED_HORT","LOCALS",1)
~ GOTO 7
  IF ~~ THEN REPLY @1523 /* I like your attitude. Would you be willing to fight with me during my next match? */ DO ~SetGlobal("OHB_TALKED_HORT","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY @366 /* Never mind. */ DO ~SetGlobal("OHB_TALKED_HORT","LOCALS",1)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 51 even though they appear after this state */
~  Global("OHB_TALKED_HORT","LOCALS",1)
!GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
Global("ohb_finale","global",0)
~ THEN BEGIN 5
  SAY @1521 /* My name is Hort Il-D'rth! First of the Bone Scars! No walls can contain me! */
  IF ~  Global("OHB_HORT_INFO","LOCALS",0)
~ THEN REPLY @1522 /* I would know more about you, Hort Il-D'rth, First of the Bone Scars. */ DO ~SetGlobal("OHB_HORT_INFO","LOCALS",1)
~ GOTO 7
  IF ~~ THEN REPLY @1523 /* I like your attitude. Would you be willing to fight with me during my next match? */ GOTO 14
  IF ~~ THEN REPLY @366 /* Never mind. */ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1524 /* What do you want of Hort Il-D'rth? */
  IF ~  Global("OHB_HORT_INFO","LOCALS",0)
~ THEN REPLY @1525 /* I would know more about you. */ DO ~SetGlobal("OHB_HORT_INFO","LOCALS",1)
~ GOTO 7
  IF ~~ THEN REPLY @1523 /* I like your attitude. Would you be willing to fight with me during my next match? */ GOTO 14
  IF ~~ THEN REPLY @1526 /* Nothing. */ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1527 /* Hort does not speak to those who are without scars. */
  IF ~  !Race(Player1,DWARF)
!Gender(Player1,FEMALE)
~ THEN GOTO 10
  IF ~  Race(Player1,DWARF)
~ THEN GOTO 9
  IF ~  Gender(Player1,FEMALE)
~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @1528 /* And you are female. Females are not warriors. They bear the children of warriors. */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @1529 /* Mine-dwellers are the enemies of Hort's people. But this place is strange place. Enemies may become allies. MAY. */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @1530 /* They SAY you are a great warrior, but how do I know it is true? You do not wear the scar rings. */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @1531 /* Prove yourself. Then maybe I, Hort Il-D'rth, First of the Bone Scars, will speak with you. */
  IF ~~ THEN REPLY @1532 /* I do not like the idea of these trials, but I will fight hard, and I will survive. */ GOTO 12
  IF ~~ THEN REPLY @1533 /* You will soon realize I can hold my own in the arena. */ GOTO 12
  IF ~~ THEN REPLY @1534 /* Pray you never face me in the arena. I would enjoy shaming you. */ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @1535 /* Hort Il-D'rth, First of the Bone Scars, is eager to see that. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1536 /* The anger in your voice is a warrior's rage. You may prove to be one still. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1537 /* You do not wear the scars. Prove yourself in the arena! */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 51 even though they appear after this state */
~  Global("OHB_HORT_HIRED","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 15
  SAY @1538 /* Hort will join you the next time you enter the arena. */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 51 even though they appear after this state */
~  GlobalLT("OHB_TALKED_HORT","LOCALS",2)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
Global("ohb_finale","global",0)
~ THEN BEGIN 16
  SAY @1539 /* I see the scars of combat upon you. You are worthy of Hort Il-D'rth, First of the Bone Scars. */
  IF ~~ THEN DO ~SetGlobal("OHB_TALKED_HORT","LOCALS",2)
~ GOTO 17
END

IF WEIGHT #9 /* Triggers after states #: 51 even though they appear after this state */
~  Global("OHB_TALKED_HORT","LOCALS",2)
Global("ohb_finale","global",0)
~ THEN BEGIN 17
  SAY @1540 /* <CHARNAME>, what would you have of me? */
  IF ~~ THEN REPLY @1525 /* I would know more about you. */ GOTO 18
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
!Global("OHB_HORT_ARENA","LOCALS",1)
~ THEN REPLY @1523 /* I like your attitude. Would you be willing to fight with me during my next match? */ GOTO 20
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_HORT_ARENA","LOCALS",1)
~ THEN REPLY @1523 /* I like your attitude. Would you be willing to fight with me during my next match? */ GOTO 19
  IF ~~ THEN REPLY @1526 /* Nothing. */ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @1541 /* I am the many-scarred warrior of the Bone Scars clan, and three females lie in my hut. My arms count twenty-nine scar rings. That is all that matters. */
  IF ~  !Global("OHB_HORT_SAID_WHERE","LOCALS",1)
~ THEN REPLY @1542 /* Where are you from? */ GOTO 28
  IF ~  !Global("OHB_HORT_SAID_HOW","LOCALS",1)
~ THEN REPLY @46 /* How'd you end up here? */ GOTO 29
  IF ~  !Global("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ THEN REPLY @941 /* What do you make of this place? */ GOTO 35
  IF ~  !Global("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ THEN REPLY @1543 /* How did you earn these rings on your arms? */ GOTO 36
  IF ~~ THEN REPLY @1544 /* If you say so. Farewell. */ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @1545 /* You fought well last time. Hort will fight with you again—but there must be gold this time too. */
  IF ~  PartyGoldGT(999)
~ THEN REPLY @1546 /* Here. 1,000 gold pieces. */ DO ~TakePartyGold(1000)
~ GOTO 25
  IF ~  CheckStatGT(Player1,15,CHR)
PartyGoldGT(499)
~ THEN REPLY @1547 /* I can give you 500 gold pieces. Is that enough? */ DO ~TakePartyGold(500)
~ GOTO 25
  IF ~~ THEN REPLY @1548 /* I have no gold at the moment. */ GOTO 26
  IF ~~ THEN REPLY @1549 /* You want money from me? I don't think so. */ GOTO 27
END

IF ~~ THEN BEGIN 20
  SAY @1550 /* It is possible. But first, you must take this oath: that you make those who hold us here your sworn enemies, and that when the day comes, you will stand by Hort's side when I deal them death's blows. */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @1551 /* Then, once we are free, we will find their families, and burn their homes, and dig up the bones of their ancestors, and grind them to powder beneath our heel. Swear to this. */
  IF ~~ THEN REPLY @1552 /* I swear it. */ GOTO 22
  IF ~~ THEN REPLY @1553 /* I live to be free again just like you. I will fight when it is time, this I promise. */ GOTO 22
  IF ~~ THEN REPLY @1554 /* The thought of revenge keeps me strong. I swear they will all suffer for what they've done. */ GOTO 23
  IF ~~ THEN REPLY @1555 /* I will not make such an oath. */ GOTO 37
END

IF ~~ THEN BEGIN 22
  SAY @1556 /* Hort does not hear the warrior's anger in your voice. */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23
  SAY @1557 /* You speak well, like a warrior of the Bone Scars. */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @1558 /* One more thing is needed to seal our pact. On the outside, Bone Scars raid; we take what we need. Here, I must have gold to pay the merchants. */
  IF ~  PartyGoldGT(999)
~ THEN REPLY @1559 /* Here, take these 1,000 gold pieces. */ DO ~TakePartyGold(1000)
~ GOTO 25
  IF ~  CheckStatGT(Player1,15,CHR)
PartyGoldGT(499)
~ THEN REPLY @1547 /* I can give you 500 gold pieces. Is that enough? */ DO ~TakePartyGold(500)
~ GOTO 25
  IF ~~ THEN REPLY @1548 /* I have no gold at the moment. */ GOTO 26
  IF ~~ THEN REPLY @1549 /* You want money from me? I don't think so. */ GOTO 27
END

IF ~~ THEN BEGIN 25
  SAY @1560 /* Good enough. We will fight together next time you enter the arena. */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_HORT_HIRED","GLOBAL",1)
SetGlobal("OHB_HORT_ARENA","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @1561 /* Hort will not fight for you until you have the gold. But you have taken an oath—Hort will hold you to it. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27
  SAY @1562 /* As you wish. Hort Il-D'rth, First of the Bone Scars, will not fight with you for now. But you have taken an oath. You will be held to it. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28
  SAY @1563 /* I am from the land of the Bone Scars. The lands of our clan are the lands we take. That is our way. */
  IF ~  !Global("OHB_HORT_SAID_HOW","LOCALS",1)
~ THEN REPLY @1564 /* I see. Then how did you end up here? */ DO ~SetGlobal("OHB_HORT_SAID_WHERE","LOCALS",1)
~ GOTO 29
  IF ~  !Global("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ THEN REPLY @941 /* What do you make of this place? */ DO ~SetGlobal("OHB_HORT_SAID_WHERE","LOCALS",1)
~ GOTO 35
  IF ~  !Global("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ THEN REPLY @1543 /* How did you earn these rings on your arms? */ DO ~SetGlobal("OHB_HORT_SAID_WHERE","LOCALS",1)
~ GOTO 36
  IF ~~ THEN REPLY @1565 /* And a savage way it is. Good <DAYNIGHTALL>. */ DO ~SetGlobal("OHB_HORT_SAID_WHERE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @1566 /* Hort Il-D'rth and his scar brothers raided a slave trader encampment near our lands. It was a trap. The slavers changed into the winged woman and her followers. They killed Hort Il-D'rth's scar brothers. */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @1567 /* They surrounded Hort Il-D'rth, but not before I bloodied them. The Thayan was dying on his knees before me, which is the proper place of all Thayans. */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @1568 /* I raised my axe high and screamed to Gruumsh that I was about to join him in endless war! The winged one and her followers were scared of Hort! They used magic to put me to sleep. They denied me a warrior's death. Cowards! */
  IF ~~ THEN REPLY @1569 /* They captured me using similar tactics. */ DO ~SetGlobal("OHB_HORT_SAID_HOW","LOCALS",1)
~ GOTO 32
  IF ~~ THEN REPLY @1570 /* I was ambushed the same way, but my party survived. */ DO ~SetGlobal("OHB_HORT_SAID_HOW","LOCALS",1)
~ GOTO 33
  IF ~~ THEN REPLY @1571 /* So they outsmarted you. Not too hard to do, I think. */ DO ~SetGlobal("OHB_HORT_SAID_HOW","LOCALS",1)
~ GOTO 34
END

IF ~~ THEN BEGIN 32
  SAY @1572 /* Then you know Hort's anger—the desire to deal death's blow to the winged one and her followers. */
  IF ~  !Global("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ THEN REPLY @1573 /* I do indeed. What do you make of this place? */ GOTO 35
  IF ~  !Global("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ THEN REPLY @1543 /* How did you earn these rings on your arms? */ GOTO 36
  IF ~~ THEN REPLY @1574 /* All too well. Farewell, Hort Il-D'rth. We may speak again. */ EXIT
END

IF ~~ THEN BEGIN 33
  SAY @1575 /* The winged female feared Hort and his scar brothers. Bringing us all here would have made these rooms flow red with blood. */
  IF ~  !Global("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ THEN REPLY @1576 /* That may happen yet. What do you make of this place? */ GOTO 35
  IF ~  !Global("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ THEN REPLY @1543 /* How did you earn these rings on your arms? */ GOTO 36
  IF ~~ THEN REPLY @1577 /* I've heard enough for now. Thank you. */ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @1578 /* The winged female was afraid to face Hort. Her only chance was treachery. She is a coward, and I will crush her. */
  IF ~  !Global("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ THEN REPLY @1576 /* That may happen yet. What do you make of this place? */ GOTO 35
  IF ~  !Global("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ THEN REPLY @1543 /* How did you earn these rings on your arms? */ GOTO 36
  IF ~~ THEN REPLY @1579 /* Good luck with that. You'll need it. */ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @1580 /* Hort Il-D'rth, First of the Bone Scars, is a warrior. To be a warrior is to be free. Warriors do not fight in cages for the amusement of others. I will crush those who seek to deal death's blow to Hort, but the fighting here is meaningless. */
  IF ~  !Global("OHB_HORT_SAID_WHERE","LOCALS",1)
~ THEN REPLY @1542 /* Where are you from? */ DO ~SetGlobal("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ GOTO 28
  IF ~  !Global("OHB_HORT_SAID_HOW","LOCALS",1)
~ THEN REPLY @46 /* How'd you end up here? */ DO ~SetGlobal("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ GOTO 29
  IF ~  !Global("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ THEN REPLY @1543 /* How did you earn these rings on your arms? */ DO ~SetGlobal("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ GOTO 36
  IF ~~ THEN REPLY @1581 /* An interesting perspective. Thank you. */ DO ~SetGlobal("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 36
  SAY @1582 /* Scar rings record a warrior's great deeds. They are carved with the warrior's own blade, still dripping with his enemy's blood. */
  IF ~  !Global("OHB_HORT_SAID_WHERE","LOCALS",1)
~ THEN REPLY @1542 /* Where are you from? */ DO ~SetGlobal("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ GOTO 28
  IF ~  !Global("OHB_HORT_SAID_HOW","LOCALS",1)
~ THEN REPLY @46 /* How'd you end up here? */ DO ~SetGlobal("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ GOTO 29
  IF ~  !Global("OHB_HORT_SAID_THOUGHTS_ON_PLACE","LOCALS",1)
~ THEN REPLY @941 /* What do you make of this place? */ DO ~SetGlobal("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ GOTO 35
  IF ~~ THEN REPLY @1583 /* A grotesque practice. Farewell. */ DO ~SetGlobal("OHB_HORT_EXPLAINED_SCARS","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 37
  SAY @1584 /* Then we talk no longer. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38
  SAY @1585 /* I'm ready to crush and maim! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 57
END

IF ~~ THEN BEGIN 39
  SAY @1586 /* I'm ready to crush and maim! More scar rings for me! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 58
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 33
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 36
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 38
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 55
END

IF ~~ THEN BEGIN 40
  SAY @1587 /* No promises! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 63
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 34
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 37
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 39
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 56
END

IF ~~ THEN BEGIN 41
  SAY @1588 /* I promise I WILL kill the worm if I find him! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 69
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 60
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 35
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 38
END

IF ~~ THEN BEGIN 42
  SAY @1589 /* Finally it's time for blood! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 58
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 41
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 61
END

IF WEIGHT #10 /* Triggers after states #: 51 even though they appear after this state */
~  Global("ohb_finale","global",1)
~ THEN BEGIN 43
  SAY @1589 /* Finally it's time for blood! */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 51 even though they appear after this state */
~  Global("ohb_finale","global",6)
~ THEN BEGIN 44
  SAY @1590 /* If only I could be the one to crush Dennaton's skull. I envy you, <CHARNAME>. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY @1591 /* You delivered death to our captors, <CHARNAME>. You have my respect. */
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 61
  IF ~  InMyArea("ohbgerro")
!Dead("ohbgerro")
~ THEN EXTERN ~OHBGERRO~ 40
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 39
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 42
END

IF ~~ THEN BEGIN 46
  SAY @1592 /* You dare try to command Hort Il-D'rth? I'll rip you open and strangle you with your own entrails! */
  IF ~~ THEN EXTERN ~OHBFELDR~ 40
END

IF ~~ THEN BEGIN 47
  SAY @1593 /* I'd expect such cowardice from a drow! */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 61
END

IF ~~ THEN BEGIN 48
  SAY @1594 /* That's it! I could use a fight, and need no excuse to kill a drow! */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 62
END

IF ~~ THEN BEGIN 49
  SAY @1595 /* Oh, you kill orcs, do you? Maybe you'd like to try me out, you ale-drenched whale! */
  IF ~~ THEN EXTERN ~OHBFELDR~ 3
END

IF ~~ THEN BEGIN 50
  SAY @1596 /* Enough talk! More killing! */
  IF ~~ THEN DO ~SetGlobal("OHB_FOOD_FIGHT","MYAREA",4)
StartCutSceneMode()
StartCutScene("ohbcut07")
~ EXIT
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 51
  SAY @1585 /* I'm ready to crush and maim! */
  IF ~~ THEN EXIT
END
