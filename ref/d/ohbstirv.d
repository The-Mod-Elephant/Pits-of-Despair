BEGIN ~OHBSTIRV~

IF ~  Global("OHB_FINALE","GLOBAL",0)
Global("ohb_stirv_wyvern","global",1)
~ THEN BEGIN 0 // from:
  SAY #93964 /* ~Bloody hells, that was something. You gave my puppy the worst beating she's ever had. You kinda remind me o' me when I was young. I could take down all manner o' creature, with one hand over my good eye and the other in my pocket. Now look at me... no better than a glorified swine-herd.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #93965 /* ~Maybe my heart's turnin' to gruel, but you might not be so worthless after all. Here, lemme give you something. I used to take it with me when I went huntin'. Little use for it now.~ */
  IF ~~ THEN DO ~GiveItem("OHBSTAF1",LastTalkedToBy)
SetGlobal("ohb_stirv_wyvern","global",2)
AddexperienceParty(50000)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #93966 /* ~Now get out of my sight. I gotta care for my puppy. This don't change nothin', by the by. You're still a dumb, dirty slave.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_FINALE","GLOBAL",0)
Global("ohb_stirv_training","global",0)
NumberOfTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #93916 /* ~Look at my puppies. Pretty, aren't they? You wanna pet 'em? Take one for a walk?~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #93917 /* ~Don't look at me all crooked-like. I know them aren't puppies! You dirty slave, think I'm dumb? Look who's dumb! You're the slave. You got caught, just like my puppies! Hah!~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #93918 /* ~You slaves are no better than them—in fact, you're worse! You smell, an' you ain't half as pretty.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #93919 /* ~You know what my puppies are good at? Fighting. Oh yes, they are. Wanna take one out for a tumble? It'll cost. But don't worry—I won't let the fighting go to the end. Least not theirs!~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #93920 /* ~I'll fight that wolf for 200 gold.~ */ DO ~TakePartyGold(200)
~ GOTO 7
  IF ~  PartyGoldGT(499)
~ THEN REPLY #93921 /* ~Is that a... moose? I'd pay 500 gold to fight that.~ */ DO ~TakePartyGold(500)
~ GOTO 8
  IF ~  PartyGoldGT(749)
~ THEN REPLY #93922 /* ~I'd like to try my luck against a bear. Here is my 750 gold.~ */ DO ~TakePartyGold(750)
~ GOTO 9
  IF ~  PartyGoldGT(999)
~ THEN REPLY #93923 /* ~Let me take on that mountain lion for 1,000 gold.~ */ DO ~TakePartyGold(1000)
~ GOTO 10
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #93924 /* ~The snake. Here's 1,500 gold.~ */ DO ~TakePartyGold(1500)
~ GOTO 11
  IF ~  PartyGoldGT(1999)
~ THEN REPLY #93925 /* ~I like the looks of that carrion crawler. 2,000 gold?~ */ DO ~TakePartyGold(2000)
~ GOTO 12
  IF ~  PartyGoldGT(2499)
~ THEN REPLY #93926 /* ~How does 2,500 gold for the spider sound to you?~ */ DO ~TakePartyGold(2500)
~ GOTO 13
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #93927 /* ~Let's take a crack at that wyvern... and only 5,000 gold? What a steal.~ */ DO ~TakePartyGold(5000)
~ GOTO 14
  IF ~~ THEN REPLY #93928 /* ~Not right now.~ */ GOTO 15
END

IF ~~ THEN BEGIN 7 // from: 6.0 16.0
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena1",JumpToPoint([1940.2720]))
ActionOverride("ohbmena1",Face(NW))
ActionOverride("ohbmena1",Enemy())
SetGlobal("ohb_stirv_training","global",1)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.1
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena2",JumpToPoint([1940.2720]))
ActionOverride("ohbmena2",Face(NW))
ActionOverride("ohbmena2",Enemy())
SetGlobal("ohb_stirv_training","global",2)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 16.2
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena3",JumpToPoint([1940.2720]))
ActionOverride("ohbmena3",Face(NW))
ActionOverride("ohbmena3",Enemy())
SetGlobal("ohb_stirv_training","global",3)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 16.3
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena4",JumpToPoint([1940.2720]))
ActionOverride("ohbmena4",Face(NW))
ActionOverride("ohbmena4",Enemy())
SetGlobal("ohb_stirv_training","global",4)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4 16.4
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena5",JumpToPoint([1940.2720]))
ActionOverride("ohbmena5",Face(NW))
ActionOverride("ohbmena5",Enemy())
SetGlobal("ohb_stirv_training","global",5)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.5 16.5
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena6",JumpToPoint([1940.2720]))
ActionOverride("ohbmena6",Face(NW))
ActionOverride("ohbmena6",Enemy())
SetGlobal("ohb_stirv_training","global",6)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.6 16.6
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena7",JumpToPoint([1940.2720]))
ActionOverride("ohbmena7",Face(NW))
ActionOverride("ohbmena7",Enemy())
SetGlobal("ohb_stirv_training","global",7)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.7 16.7
  SAY #93929 /* ~Good, give the gold here.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
FadeToColor([20.0],0)
Wait(1)
MoveViewPoint([1885.2680],INSTANT)
ActionOverride(LastTalkedToBy(Myself),JumpToPoint([1830.2640]))
ActionOverride(LastTalkedToBy(Myself),Face(SE))
ActionOverride("ohbmena8",JumpToPoint([1940.2720]))
ActionOverride("ohbmena8",Face(NW))
ActionOverride("ohbmena8",Enemy())
SetGlobal("ohb_stirv_training","global",8)
JumpToPoint([2115.2785])
Face(NW)
FadeFromColor([10.0],0)
SmallWait(5)
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.8 16.8
  SAY #93930 /* ~Off with you, then. I got work to do. Daddy's coming, darlings!~ */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_FINALE","GLOBAL",0)
Global("ohb_stirv_training","global",0)
!NumberOfTimesTalkedTo(0)
~ THEN BEGIN 16 // from:
  SAY #93931 /* ~So, you wanna take one o' my pets out for a stroll?~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #93920 /* ~I'll fight that wolf for 200 gold.~ */ DO ~TakePartyGold(200)
~ GOTO 7
  IF ~  PartyGoldGT(499)
~ THEN REPLY #93921 /* ~Is that a... moose? I'd pay 500 gold to fight that.~ */ DO ~TakePartyGold(500)
~ GOTO 8
  IF ~  PartyGoldGT(749)
~ THEN REPLY #93922 /* ~I'd like to try my luck against a bear. Here is my 750 gold.~ */ DO ~TakePartyGold(750)
~ GOTO 9
  IF ~  PartyGoldGT(999)
~ THEN REPLY #93923 /* ~Let me take on that mountain lion for 1,000 gold.~ */ DO ~TakePartyGold(1000)
~ GOTO 10
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #93924 /* ~The snake. Here's 1,500 gold.~ */ DO ~TakePartyGold(1500)
~ GOTO 11
  IF ~  PartyGoldGT(1999)
~ THEN REPLY #93925 /* ~I like the looks of that carrion crawler. 2,000 gold?~ */ DO ~TakePartyGold(2000)
~ GOTO 12
  IF ~  PartyGoldGT(2499)
~ THEN REPLY #93926 /* ~How does 2,500 gold for the spider sound to you?~ */ DO ~TakePartyGold(2500)
~ GOTO 13
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #93927 /* ~Let's take a crack at that wyvern... and only 5,000 gold? What a steal.~ */ DO ~TakePartyGold(5000)
~ GOTO 14
  IF ~~ THEN REPLY #93928 /* ~Not right now.~ */ GOTO 15
END

IF ~  GlobalGT("OHB_FINALE","GLOBAL",0)
Global("OHB_MENAGERIE","GLOBAL",0)
~ THEN BEGIN 17 // from:
  SAY #100667 /* ~What's going on? You slaves started a riot? Leave me and my puppies out of it.~ */
  IF ~~ THEN REPLY #100672 /* ~Let us pass.~ */ GOTO 18
  IF ~~ THEN REPLY #100673 /* ~Open the pens and get your animals to attack the captain and his men.~ */ GOTO 19
END

IF ~  GlobalGT("OHB_FINALE","GLOBAL",3)
Global("OHB_MENAGERIE","GLOBAL",0)
~ THEN BEGIN 18 // from: 17.0
  SAY #100674 /* ~Go on, move. Don't touch the pens. See how panicky you've made my puppies?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #100675 /* ~Are you out o' your mind? My puppies'd get slaughtered.~ */
  IF ~~ THEN REPLY #100680 /* ~I'm sorry, Stirv, but we need your help.~ */ GOTO 20
  IF ~~ THEN REPLY #100681 /* ~If it's not them, it could be us.~ */ GOTO 20
  IF ~~ THEN REPLY #100682 /* ~Do it or die.~ */ GOTO 21
  IF ~~ THEN REPLY #100683 /* ~Fine. But you better not release them for the captain either.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #100676 /* ~You'll have to go through me first.~ */
  IF ~~ THEN REPLY #100684 /* ~So be it.~ */ GOTO 23
  IF ~~ THEN REPLY #100685 /* ~Forget it. But you better not release them for the captain either.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 19.2
  SAY #100677 /* ~You want them, you'll have to go through me first.~ */
  IF ~~ THEN REPLY #100686 /* ~I'm at peace with that.~ */ GOTO 23
  IF ~~ THEN REPLY #100687 /* ~You're lucky I'm short on time, Stirv. You better not release your puppies for the captain either.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.1 21.1
  SAY #100678 /* ~Good. Go through if you need to but make it fast.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0 21.0
  SAY #100679 /* ~Let's go, then!~ */
  IF ~~ THEN DO ~SetGlobal("OHB_MENAGERIE","GLOBAL",1)
Enemy()
~ EXIT
END
