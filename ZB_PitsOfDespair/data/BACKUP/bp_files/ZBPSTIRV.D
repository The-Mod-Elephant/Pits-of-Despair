BEGIN ~OHBSTIRV~

IF ~  Global("OHB_FINALE","GLOBAL",0)
Global("ohb_stirv_wyvern","global",1)
~ THEN BEGIN 0
  SAY #93964
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY #93965
  IF ~~ THEN DO ~GiveItem("OHBSTAF1",LastTalkedToBy)
SetGlobal("ohb_stirv_wyvern","global",2)
AddexperienceParty(50000)
~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY #93966
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_FINALE","GLOBAL",0)
Global("ohb_stirv_training","global",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 3
  SAY #93916
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY #93917
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY #93918
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY #93919
  IF ~  PartyGoldGT(199)
~ THEN REPLY #93920 DO ~TakePartyGold(200)
~ GOTO 7
  IF ~  PartyGoldGT(499)
~ THEN REPLY #93921 DO ~TakePartyGold(500)
~ GOTO 8
  IF ~  PartyGoldGT(749)
~ THEN REPLY #93922 DO ~TakePartyGold(750)
~ GOTO 9
  IF ~  PartyGoldGT(999)
~ THEN REPLY #93923 DO ~TakePartyGold(1000)
~ GOTO 10
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #93924 DO ~TakePartyGold(1500)
~ GOTO 11
  IF ~  PartyGoldGT(1999)
~ THEN REPLY #93925 DO ~TakePartyGold(2000)
~ GOTO 12
  IF ~  PartyGoldGT(2499)
~ THEN REPLY #93926 DO ~TakePartyGold(2500)
~ GOTO 13
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #93927 DO ~TakePartyGold(5000)
~ GOTO 14
  IF ~~ THEN REPLY #93928 GOTO 15
END

IF ~~ THEN BEGIN 7
  SAY #93929
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

IF ~~ THEN BEGIN 8
  SAY #93929
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

IF ~~ THEN BEGIN 9
  SAY #93929
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

IF ~~ THEN BEGIN 10
  SAY #93929
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

IF ~~ THEN BEGIN 11
  SAY #93929
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

IF ~~ THEN BEGIN 12
  SAY #93929
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

IF ~~ THEN BEGIN 13
  SAY #93929
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

IF ~~ THEN BEGIN 14
  SAY #93929
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

IF ~~ THEN BEGIN 15
  SAY #93930
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_FINALE","GLOBAL",0)
Global("ohb_stirv_training","global",0)
!NumTimesTalkedTo(0)
~ THEN BEGIN 16
  SAY #93931
  IF ~  PartyGoldGT(199)
~ THEN REPLY #93920 DO ~TakePartyGold(200)
~ GOTO 7
  IF ~  PartyGoldGT(499)
~ THEN REPLY #93921 DO ~TakePartyGold(500)
~ GOTO 8
  IF ~  PartyGoldGT(749)
~ THEN REPLY #93922 DO ~TakePartyGold(750)
~ GOTO 9
  IF ~  PartyGoldGT(999)
~ THEN REPLY #93923 DO ~TakePartyGold(1000)
~ GOTO 10
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #93924 DO ~TakePartyGold(1500)
~ GOTO 11
  IF ~  PartyGoldGT(1999)
~ THEN REPLY #93925 DO ~TakePartyGold(2000)
~ GOTO 12
  IF ~  PartyGoldGT(2499)
~ THEN REPLY #93926 DO ~TakePartyGold(2500)
~ GOTO 13
  IF ~  PartyGoldGT(4999)
~ THEN REPLY #93927 DO ~TakePartyGold(5000)
~ GOTO 14
  IF ~~ THEN REPLY #93928 GOTO 15
END

IF ~  GlobalGT("OHB_FINALE","GLOBAL",0)
Global("OHB_MENAGERIE","GLOBAL",0)
~ THEN BEGIN 17
  SAY #100667
  IF ~~ THEN REPLY #100672 GOTO 18
  IF ~~ THEN REPLY #100673 GOTO 19
END

IF ~  GlobalGT("OHB_FINALE","GLOBAL",3)
Global("OHB_MENAGERIE","GLOBAL",0)
~ THEN BEGIN 18
  SAY #100674
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY #100675
  IF ~~ THEN REPLY #100680 GOTO 20
  IF ~~ THEN REPLY #100681 GOTO 20
  IF ~~ THEN REPLY #100682 GOTO 21
  IF ~~ THEN REPLY #100683 EXIT
END

IF ~~ THEN BEGIN 20
  SAY #100676
  IF ~~ THEN REPLY #100684 GOTO 23
  IF ~~ THEN REPLY #100685 GOTO 22
END

IF ~~ THEN BEGIN 21
  SAY #100677
  IF ~~ THEN REPLY #100686 GOTO 23
  IF ~~ THEN REPLY #100687 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #100678
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY #100679
  IF ~~ THEN DO ~SetGlobal("OHB_MENAGERIE","GLOBAL",1)
Enemy()
~ EXIT
END
