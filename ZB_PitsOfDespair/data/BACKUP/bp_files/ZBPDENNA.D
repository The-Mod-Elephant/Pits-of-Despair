BEGIN ~OHBDENNA~

IF ~~ THEN BEGIN 0
  SAY #90535
  IF ~~ THEN REPLY #90536 GOTO 1
  IF ~~ THEN REPLY #90537 GOTO 257
  IF ~~ THEN REPLY #90538 GOTO 257
END

IF ~~ THEN BEGIN 1
  SAY #90542
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 2
  SAY #90562
  IF ~~ THEN REPLY #90563 GOTO 3
  IF ~~ THEN REPLY #90564 GOTO 5
  IF ~~ THEN REPLY #90565 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY #90566
  IF ~~ THEN REPLY #90567 GOTO 4
  IF ~~ THEN REPLY #90568 GOTO 270
  IF ~~ THEN REPLY #90569 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY #90570
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 5
  SAY #90571
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 6
  SAY #90592
  IF ~~ THEN GOTO 270
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_101","GLOBAL",1)
~ THEN BEGIN 7
  SAY #94508
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY #94509
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #94510
  IF ~~ THEN REPLY #94511 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 10
  IF ~~ THEN REPLY #94512 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 11
  IF ~  OR(2)
Global("ohb_101_item_good","global",0)
Global("ohb_101_item_great","global",0)
~ THEN REPLY #94513 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 12
  IF ~~ THEN REPLY #94514 GOTO 13
  IF ~~ THEN REPLY #94515 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY #94516
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #94517
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY #94518
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #94519
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY #94520
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_102","GLOBAL",1)
~ THEN BEGIN 15
  SAY #94041
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY #94042
  IF ~  Global("OHB_EVENT_102_DIALOG","MYAREA",0)
~ THEN DO ~StartCutSceneMode()
ClearAllActions()
SetGlobal("OHB_START_BATTLE","GLOBAL",3)
SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",1)
SetGlobal("ohb_spawn_gladiators","myarea",0)
StartCutScene("ohbcut09")
~ EXIT
  IF ~  !Global("OHB_EVENT_102_DIALOG","MYAREA",0)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 21
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_102","GLOBAL",1)
Global("OHB_EVENT_102_DIALOG","MYAREA",1)
~ THEN BEGIN 17
  SAY #94057
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #94059
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY #94061
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",2)
Wait(1)
FadeToColor([30.0],0)
Wait(3)
DayNight(DUSK_END)
CreateCreature("OHBMIN01",[1578.690],SSW)
CreateCreature("OHBMIN01",[1701.786],SSW)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_102","GLOBAL",1)
Global("OHB_EVENT_102_DIALOG","MYAREA",2)
~ THEN BEGIN 20
  SAY #94062
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",3)
~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY #94064
  IF ~~ THEN REPLY #94065 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 22
  IF ~~ THEN REPLY #94066 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 23
  IF ~  OR(2)
Global("ohb_102_item_good","global",0)
Global("ohb_102_item_great","global",0)
~ THEN REPLY #94068 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 24
  IF ~~ THEN REPLY #94070 GOTO 25
  IF ~~ THEN REPLY #94071 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 26
END

IF ~~ THEN BEGIN 22
  SAY #94073
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY #94075
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY #94076
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY #94077
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY #94078
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_103","GLOBAL",1)
~ THEN BEGIN 27
  SAY #94124
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY #94126
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY #94127
  IF ~~ THEN REPLY #94129 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 30
  IF ~~ THEN REPLY #94130 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 31
  IF ~  OR(2)
Global("ohb_103_item_good","global",0)
Global("ohb_103_item_great","global",0)
~ THEN REPLY #94132 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 32
  IF ~~ THEN REPLY #94134 GOTO 33
  IF ~~ THEN REPLY #94135 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 34
END

IF ~~ THEN BEGIN 30
  SAY #94137
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY #94139
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY #94141
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY #94142
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY #94144
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_104","GLOBAL",1)
~ THEN BEGIN 35
  SAY #94196
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #94198
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #94199
  IF ~~ THEN REPLY #94200 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 38
  IF ~~ THEN REPLY #94201 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 39
  IF ~  OR(2)
Global("ohb_104_item_good","global",0)
Global("ohb_104_item_great","global",0)
~ THEN REPLY #94202 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 40
  IF ~~ THEN REPLY #94203 GOTO 41
  IF ~~ THEN REPLY #94204 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 42
END

IF ~~ THEN BEGIN 38
  SAY #94205
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY #94206
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY #94207
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY #94208
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 42
  SAY #94209
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 43
  SAY #94220
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 44
  SAY #94221
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 45
  SAY #94222
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY #94223
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY #94224
  IF ~~ THEN REPLY #94225 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 48
  IF ~  GlobalGT("OHB_ANTI_DENNATON","GLOBAL",2)
~ THEN REPLY #94226 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 49
  IF ~  !GlobalGT("OHB_ANTI_DENNATON","GLOBAL",2)
~ THEN REPLY #94226 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 51
  IF ~  OR(2)
Global("ohb_105_item_good","global",0)
Global("ohb_105_item_great","global",0)
~ THEN REPLY #94227 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 50
  IF ~~ THEN REPLY #94228 GOTO 52
  IF ~~ THEN REPLY #94229 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 53
END

IF ~~ THEN BEGIN 48
  SAY #94230
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY #94231
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY #94232
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 51
  SAY #94233
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 52
  SAY #94234
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 53
  SAY #94235
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_105","GLOBAL",1)
Global("OHB_EVENT_105","MYAREA",1)
~ THEN BEGIN 54
  SAY #94242
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_105","MYAREA",2)
~ GOTO 55
END

IF ~~ THEN BEGIN 55
  SAY #94243
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_ENEMY_OVERRIDE","GLOBAL",0)
SetGlobal("OHB_105","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 56
  SAY #94834
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 57
  SAY #94835
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 58
  SAY #94836
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY #94837
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY #94838
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY #94839
  IF ~~ THEN REPLY #94840 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 62
  IF ~~ THEN REPLY #94841 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 63
  IF ~  OR(2)
Global("ohb_201_item_good","global",0)
Global("ohb_201_item_great","global",0)
~ THEN REPLY #94842 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 64
  IF ~~ THEN REPLY #94843 GOTO 65
  IF ~~ THEN REPLY #94844 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 66
END

IF ~~ THEN BEGIN 62
  SAY #94845
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 63
  SAY #94846
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 64
  SAY #94847
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 65
  SAY #94848
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 66
  SAY #94849
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 67
  SAY #94883
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 68
  SAY #94884
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 69
  SAY #94885
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY #94886
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71
  SAY #94887
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
  SAY #94888
  IF ~~ THEN REPLY #94889 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 73
  IF ~~ THEN REPLY #94890 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 74
  IF ~  OR(2)
Global("ohb_202_item_good","global",0)
Global("ohb_202_item_great","global",0)
~ THEN REPLY #94891 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 75
  IF ~~ THEN REPLY #94892 GOTO 76
  IF ~~ THEN REPLY #94893 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 77
END

IF ~~ THEN BEGIN 73
  SAY #94894
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 74
  SAY #94895
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 75
  SAY #94896
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 76
  SAY #94897
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 77
  SAY #94898
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 78
  SAY #95069
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 79
  SAY #95071
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 80
  SAY #95072
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY #95073
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
  SAY #95074
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83
  SAY #95075
  IF ~~ THEN REPLY #95076 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 84
  IF ~~ THEN REPLY #95077 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 85
  IF ~  OR(2)
Global("ohb_203_item_good","global",0)
Global("ohb_203_item_great","global",0)
~ THEN REPLY #95078 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 86
  IF ~~ THEN REPLY #95079 GOTO 87
  IF ~~ THEN REPLY #95081 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 88
END

IF ~~ THEN BEGIN 84
  SAY #95082
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 85
  SAY #95083
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 86
  SAY #95084
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 87
  SAY #95085
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 88
  SAY #95086
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 89
  SAY #95317
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 90
  SAY #95318
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 91
  SAY #95319
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~~ THEN BEGIN 92
  SAY #95320
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93
  SAY #95322
  IF ~~ THEN REPLY #95323 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 94
  IF ~~ THEN REPLY #95324 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 95
  IF ~  OR(2)
Global("ohb_204_item_good","global",0)
Global("ohb_204_item_great","global",0)
~ THEN REPLY #95325 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 96
  IF ~~ THEN REPLY #95326 GOTO 97
  IF ~~ THEN REPLY #95327 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 98
END

IF ~~ THEN BEGIN 94
  SAY #95328
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 95
  SAY #95329
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 96
  SAY #95331
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 97
  SAY #95332
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 98
  SAY #95333
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 99
  SAY #95363
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 100
  SAY #95364
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 101
  SAY #95365
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102
  SAY #95366
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103
  SAY #95367
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
  SAY #95368
  IF ~~ THEN REPLY #95369 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 105
  IF ~~ THEN REPLY #95370 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 106
  IF ~  OR(2)
Global("ohb_205_item_good","global",0)
Global("ohb_205_item_great","global",0)
~ THEN REPLY #95371 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 107
  IF ~~ THEN REPLY #95372 GOTO 108
  IF ~  !Gender(Player1,FEMALE)
~ THEN REPLY #95373 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 109
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #95373 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 275
END

IF ~~ THEN BEGIN 105
  SAY #95374
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 106
  SAY #95375
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 107
  SAY #95376
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 108
  SAY #95377
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 109
  SAY #95378
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 110
  SAY #95407
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 111
  SAY #95408
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 112
  SAY #95409
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~~ THEN BEGIN 113
  SAY #95410
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
  SAY #95411
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115
  SAY #95412
  IF ~~ THEN REPLY #95413 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 116
  IF ~~ THEN REPLY #95414 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 117
  IF ~  OR(2)
Global("ohb_301_item_good","global",0)
Global("ohb_301_item_great","global",0)
~ THEN REPLY #95415 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 118
  IF ~~ THEN REPLY #95416 GOTO 119
  IF ~~ THEN REPLY #95417 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 119
END

IF ~~ THEN BEGIN 116
  SAY #95418
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 117
  SAY #95419
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 118
  SAY #95420
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 119
  SAY #95421
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 120
  SAY #95422
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 121
  SAY #95450
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 122
  SAY #95451
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 123
  SAY #95452
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~~ THEN BEGIN 124
  SAY #95453
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
  SAY #95454
  IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
  SAY #95455
  IF ~~ THEN REPLY #95456 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 127
  IF ~~ THEN REPLY #95457 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 128
  IF ~  OR(2)
Global("ohb_302_item_good","global",0)
Global("ohb_302_item_great","global",0)
~ THEN REPLY #95458 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 129
  IF ~~ THEN REPLY #95459 GOTO 130
  IF ~~ THEN REPLY #95460 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 131
END

IF ~~ THEN BEGIN 127
  SAY #95461
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 128
  SAY #95462
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 129
  SAY #95463
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 130
  SAY #95464
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 131
  SAY #95465
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 132
  SAY #95478
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 133
  SAY #95479
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 134
  SAY #95480
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~~ THEN BEGIN 135
  SAY #95481
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
  SAY #95482
  IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
  SAY #95483
  IF ~~ THEN REPLY #95484 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 138
  IF ~~ THEN REPLY #95485 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 139
  IF ~  OR(2)
Global("ohb_303_item_good","global",0)
Global("ohb_303_item_great","global",0)
~ THEN REPLY #95486 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 140
  IF ~~ THEN REPLY #95487 GOTO 141
  IF ~~ THEN REPLY #95488 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 142
END

IF ~~ THEN BEGIN 138
  SAY #95489
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 139
  SAY #95490
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 140
  SAY #95491
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 141
  SAY #95492
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 142
  SAY #95493
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 143
  SAY #95520
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 144
  SAY #95521
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 145
  SAY #95522
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~~ THEN BEGIN 146
  SAY #95523
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
  SAY #95524
  IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
  SAY #95525
  IF ~~ THEN REPLY #95526 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 149
  IF ~~ THEN REPLY #95527 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 150
  IF ~  OR(2)
Global("ohb_304_item_good","global",0)
Global("ohb_304_item_great","global",0)
~ THEN REPLY #95528 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 151
  IF ~~ THEN REPLY #95529 GOTO 152
  IF ~~ THEN REPLY #95530 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 153
END

IF ~~ THEN BEGIN 149
  SAY #95531
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 150
  SAY #95532
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 151
  SAY #95533
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 152
  SAY #95534
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 153
  SAY #95535
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 154
  SAY #95563
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 155
  SAY #95564
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 156
  SAY #95565
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~~ THEN BEGIN 157
  SAY #95566
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158
  SAY #95567
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159
  SAY #95568
  IF ~~ THEN REPLY #95569 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 160
  IF ~~ THEN REPLY #95570 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 161
  IF ~  OR(2)
Global("ohb_305_item_good","global",0)
Global("ohb_305_item_great","global",0)
~ THEN REPLY #95571 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 162
  IF ~~ THEN REPLY #95572 GOTO 163
  IF ~~ THEN REPLY #95573 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 164
END

IF ~~ THEN BEGIN 160
  SAY #95574
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 161
  SAY #95575
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 162
  SAY #95576
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 163
  SAY #95577
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 164
  SAY #95578
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 165
  SAY #94322
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 166
  SAY #94323
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 167
  SAY #94324
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~~ THEN BEGIN 168
  SAY #94325
  IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169
  SAY #94326
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
  SAY #94327
  IF ~~ THEN REPLY #94328 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 171
  IF ~~ THEN REPLY #94329 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 172
  IF ~  OR(2)
Global("ohb_401_item_good","global",0)
Global("ohb_401_item_great","global",0)
~ THEN REPLY #94330 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 173
  IF ~~ THEN REPLY #94331 GOTO 174
  IF ~~ THEN REPLY #94332 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 175
END

IF ~~ THEN BEGIN 171
  SAY #94333
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 172
  SAY #94334
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 173
  SAY #94335
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 174
  SAY #94336
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 175
  SAY #94337
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 176
  SAY #94365
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 177
  SAY #94366
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 178
  SAY #94367
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~~ THEN BEGIN 179
  SAY #94368
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180
  SAY #94369
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181
  SAY #94370
  IF ~~ THEN REPLY #94371 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 182
  IF ~~ THEN REPLY #94372 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 183
  IF ~  OR(2)
Global("ohb_402_item_good","global",0)
Global("ohb_402_item_great","global",0)
~ THEN REPLY #94373 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 184
  IF ~~ THEN REPLY #94374 GOTO 185
  IF ~~ THEN REPLY #94375 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 186
END

IF ~~ THEN BEGIN 182
  SAY #94376
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 183
  SAY #94377
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 184
  SAY #94378
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 185
  SAY #94379
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 186
  SAY #94380
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 187
  SAY #94408
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 188
  SAY #94409
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 189
  SAY #94410
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~~ THEN BEGIN 190
  SAY #94411
  IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191
  SAY #94412
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
  SAY #94413
  IF ~~ THEN REPLY #94414 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 193
  IF ~~ THEN REPLY #94415 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 194
  IF ~  OR(2)
Global("ohb_403_item_good","global",0)
Global("ohb_403_item_great","global",0)
~ THEN REPLY #94416 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 195
  IF ~~ THEN REPLY #94417 GOTO 196
  IF ~~ THEN REPLY #94418 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 197
END

IF ~~ THEN BEGIN 193
  SAY #94419
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 194
  SAY #94420
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 195
  SAY #94421
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 196
  SAY #94422
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 197
  SAY #94423
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 198
  SAY #95589
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 199
  SAY #95590
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 200
  SAY #95591
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~~ THEN BEGIN 201
  SAY #95592
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202
  SAY #95593
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203
  SAY #95594
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204
  SAY #95596
  IF ~~ THEN REPLY #95597 DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 205
  IF ~~ THEN REPLY #95598 DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 206
  IF ~  OR(2)
Global("ohb_404_item_good","global",0)
Global("ohb_404_item_great","global",0)
~ THEN REPLY #95599 DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 207
  IF ~~ THEN REPLY #95600 GOTO 208
  IF ~~ THEN REPLY #95601 DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 209
END

IF ~~ THEN BEGIN 205
  SAY #95602
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 206
  SAY #95603
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 207
  SAY #95604
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 208
  SAY #95605
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 209
  SAY #95606
  IF ~~ THEN DO ~AddJournalEntry(94819,INFO)
StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_101","GLOBAL",2)
~ THEN BEGIN 210
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_101","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN DO ~SetGlobal("OHB_101","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",101)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(11000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_102","GLOBAL",2)
~ THEN BEGIN 211
  SAY #96047
  IF ~~ THEN DO ~SetGlobal("OHB_102","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(750)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN DO ~SetGlobal("OHB_102","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",102)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(12000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_103","GLOBAL",2)
~ THEN BEGIN 212
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_103","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(1000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN DO ~SetGlobal("OHB_103","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",103)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(13000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_104","GLOBAL",2)
~ THEN BEGIN 213
  SAY #96047
  IF ~~ THEN DO ~SetGlobal("OHB_104","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(1250)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN DO ~SetGlobal("OHB_104","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",104)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(14000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_105","GLOBAL",2)
~ THEN BEGIN 214
  SAY #96048
  IF ~~ THEN DO ~SetGlobal("OHB_105","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(1500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN DO ~SetGlobal("OHB_105","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",105)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(15000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_201","GLOBAL",2)
~ THEN BEGIN 215
  SAY #96047
  IF ~~ THEN DO ~SetGlobal("OHB_201","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(2000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN DO ~SetGlobal("OHB_201","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",201)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(16000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_202","GLOBAL",2)
~ THEN BEGIN 216
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_202","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(2500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN DO ~SetGlobal("OHB_202","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",202)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(17000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_203","GLOBAL",2)
~ THEN BEGIN 217
  SAY #96047
  IF ~~ THEN DO ~SetGlobal("OHB_203","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(3000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN DO ~SetGlobal("OHB_203","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",203)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(18000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_204","GLOBAL",2)
~ THEN BEGIN 218
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_204","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(3500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN DO ~SetGlobal("OHB_204","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",204)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(19000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_205","GLOBAL",2)
~ THEN BEGIN 219
  SAY #96048
  IF ~~ THEN DO ~SetGlobal("OHB_205","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(4000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN DO ~SetGlobal("OHB_205","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",205)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(20000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_301","GLOBAL",2)
~ THEN BEGIN 220
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_301","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(4500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN DO ~SetGlobal("OHB_301","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",301)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(21000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_302","GLOBAL",2)
~ THEN BEGIN 221
  SAY #96047
  IF ~~ THEN DO ~SetGlobal("OHB_302","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(5000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN DO ~SetGlobal("OHB_302","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",302)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(22000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_303","GLOBAL",2)
~ THEN BEGIN 222
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_303","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(5500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN DO ~SetGlobal("OHB_303","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",303)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(23000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_304","GLOBAL",2)
~ THEN BEGIN 223
  SAY #96047
  IF ~~ THEN DO ~SetGlobal("OHB_304","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(6000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN DO ~SetGlobal("OHB_304","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",304)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(24000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_305","GLOBAL",2)
~ THEN BEGIN 224
  SAY #96048
  IF ~~ THEN DO ~SetGlobal("OHB_305","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(7000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN DO ~SetGlobal("OHB_305","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",305)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(25000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_401","GLOBAL",2)
~ THEN BEGIN 225
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_401","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(8000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN DO ~SetGlobal("OHB_401","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",401)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(26000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_402","GLOBAL",2)
~ THEN BEGIN 226
  SAY #96047
  IF ~~ THEN DO ~SetGlobal("OHB_402","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(9000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN DO ~SetGlobal("OHB_402","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",402)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(27000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_403","GLOBAL",2)
~ THEN BEGIN 227
  SAY #96046
  IF ~~ THEN DO ~SetGlobal("OHB_403","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(10000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN DO ~SetGlobal("OHB_403","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",403)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(28000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_404","GLOBAL",2)
~ THEN BEGIN 228
  SAY #96048
  IF ~~ THEN DO ~SetGlobal("OHB_404","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(11000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN DO ~SetGlobal("OHB_404","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",404)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(29000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 229
  SAY #100555
  IF ~~ THEN REPLY #100576 DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 232
  IF ~~ THEN REPLY #100577 DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 230
  IF ~~ THEN REPLY #100578 DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 231
END

IF ~~ THEN BEGIN 230
  SAY #100557
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 231
  SAY #100558
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232
  SAY #100559
  IF ~~ THEN REPLY #100579 GOTO 233
  IF ~~ THEN REPLY #100580 GOTO 238
END

IF ~~ THEN BEGIN 233
  SAY #100560
  IF ~  PartyHasItem("OHBBOOK6")
~ THEN REPLY #100581 GOTO 234
  IF ~~ THEN REPLY #100582 GOTO 237
  IF ~~ THEN REPLY #100583 GOTO 237
  IF ~~ THEN REPLY #100584 GOTO 237
END

IF ~~ THEN BEGIN 234
  SAY #100561
  IF ~~ THEN REPLY #100585 GOTO 235
END

IF ~~ THEN BEGIN 235
  SAY #100562
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236
  SAY #100563
  IF ~~ THEN REPLY #100586 GOTO 237
  IF ~~ THEN REPLY #100587 GOTO 237
  IF ~~ THEN REPLY #100588 GOTO 237
END

IF ~~ THEN BEGIN 237
  SAY #100564
  IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 238
  SAY #100565
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY #100589 DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY #100590 GOTO 239
  IF ~~ THEN REPLY #100591 GOTO 239
  IF ~~ THEN REPLY #100592 GOTO 239
  IF ~~ THEN REPLY #100593 GOTO 239
END

IF ~~ THEN BEGIN 239
  SAY #100566
  IF ~  CheckStatGT(Player1,14,WIS)
~ THEN REPLY #100594 DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY #100595 GOTO 240
  IF ~~ THEN REPLY #100596 GOTO 240
  IF ~~ THEN REPLY #100597 GOTO 240
  IF ~~ THEN REPLY #100598 GOTO 240
END

IF ~~ THEN BEGIN 240
  SAY #100567
  IF ~  CheckStatGT(Player1,12,WIS)
~ THEN REPLY #100599 DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY #100602 GOTO 241
  IF ~~ THEN REPLY #100603 GOTO 241
  IF ~~ THEN REPLY #100604 GOTO 241
END

IF ~~ THEN BEGIN 241
  SAY #100568
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut24")
~ EXTERN ~IMOEN2~ 0
END

IF ~~ THEN BEGIN 242
  SAY #100569
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut24")
~ EXTERN ~IMOEN2~ 0
END

IF ~  Global("ohb_finale","global",7)
!Global("OHB_DENNA_STALL","LOCALS",1)
~ THEN BEGIN 243
  SAY #100570
  IF ~~ THEN GOTO 245
END

IF ~  Global("ohb_finale","global",7)
Global("OHB_DENNA_STALL","LOCALS",1)
~ THEN BEGIN 244
  SAY #100571
  IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245
  SAY #100572
  IF ~~ THEN EXTERN ~OHBWING~ 1
END

IF ~~ THEN BEGIN 246
  SAY #100574
  IF ~~ THEN EXTERN ~OHBWING~ 2
END

IF ~  Global("OHB_ENDGAME","GLOBAL",2)
Global("OHB_DENN_END","LOCALS",0)
AreaCheck("OH8100")
~ THEN BEGIN 247
  SAY #94276
  IF ~~ THEN DO ~SetGlobal("OHB_DENN_END","LOCALS",1)
~ EXTERN ~OHBSZASS~ 0
END

IF ~~ THEN BEGIN 248
  SAY #94278
  IF ~~ THEN EXTERN ~OHBSZASS~ 1
END

IF ~~ THEN BEGIN 249
  SAY #94280
  IF ~~ THEN EXTERN ~OHBSZASS~ 2
END

IF ~~ THEN BEGIN 250
  SAY #94282
  IF ~~ THEN EXTERN ~OHBSZASS~ 3
END

IF ~~ THEN BEGIN 251
  SAY #90527
  IF ~~ THEN EXTERN ~OHBTARTL~ 76
END

IF ~~ THEN BEGIN 252
  SAY #90529
  IF ~~ THEN EXTERN ~OHBTARTL~ 77
END

IF ~~ THEN BEGIN 253
  SAY #90531
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
  SAY #90532
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255
  SAY #90533
  IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256
  SAY #90534
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 257
  SAY #90539
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
  SAY #90541
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
  SAY #90543
  IF ~~ THEN GOTO 260
END

IF ~~ THEN BEGIN 260
  SAY #90544
  IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261
  SAY #90545
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262
  SAY #90546
  IF ~~ THEN EXTERN ~OHBVOGHI~ 66
END

IF ~~ THEN BEGIN 263
  SAY #90550
  IF ~~ THEN EXTERN ~OHBTIMMO~ 70
END

IF ~~ THEN BEGIN 264
  SAY #90552
  IF ~~ THEN EXTERN ~OHBELLRA~ 31
END

IF ~~ THEN BEGIN 265
  SAY #90554
  IF ~~ THEN EXTERN ~OHBELLRA~ 32
END

IF ~~ THEN BEGIN 266
  SAY #90556
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267
  SAY #90557
  IF ~~ THEN EXTERN ~OHBMERCY~ 44
END

IF ~~ THEN BEGIN 268
  SAY #90559
  IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269
  SAY #90560
  IF ~~ THEN EXTERN ~OHBDULF~ 67
END

IF ~~ THEN BEGIN 270
  SAY #90572
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271
  SAY #90573
  IF ~~ THEN EXTERN ~OHBFELDR~ 41
END

IF ~~ THEN BEGIN 272
  SAY #94237
  IF ~~ THEN EXTERN ~OHBWING~ 4
END

IF ~~ THEN BEGIN 273
  SAY #94239
  IF ~~ THEN EXTERN ~OHBWING~ 5
END

IF ~~ THEN BEGIN 274
  SAY #94241
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_105","MYAREA",1)
SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 275
  SAY #103097
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END
