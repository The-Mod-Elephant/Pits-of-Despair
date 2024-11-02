BEGIN ~OHBJOKER~

IF ~  GlobalGT("ohb_finale","global",7)
Global("OHB_POISON_JOKER","GLOBAL",22)
~ THEN BEGIN 0
  SAY #100614
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
  SAY #90418
  IF ~~ THEN REPLY #90419 DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
  IF ~~ THEN REPLY #90420 GOTO 7
  IF ~~ THEN REPLY #90421 GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY #90422
  IF ~~ THEN EXTERN ~OHBDORMA~ 1
END

IF ~~ THEN BEGIN 3
  SAY #90455
  IF ~~ THEN EXTERN ~OHBNAJIM~ 5
END

IF ~~ THEN BEGIN 4
  SAY #90459
  IF ~~ THEN EXTERN ~OHBWING~ 0
END

IF ~~ THEN BEGIN 5
  SAY #90461
  IF ~~ THEN EXTERN ~OHBWING~ 0
END

IF ~~ THEN BEGIN 6
  SAY #90462
  IF ~~ THEN EXTERN ~OHBWING~ 0
END

IF ~~ THEN BEGIN 7
  SAY #90464
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #90465
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",2)
StartCutSceneMode()
SmallWait(5)
CreateCreatureDoor("ohbnajim",[640.447],SE)
Wait(5)
ActionOverride("ohbnajim",StartDialogNoSet(Player1))
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY #102801
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
  SAY #92826
  IF ~~ THEN REPLY #92835 GOTO 11
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92827 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92828 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92829 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92830 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92831 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 11
  SAY #92832
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
  SAY #92833
  IF ~~ THEN REPLY #92834 GOTO 13
  IF ~~ THEN REPLY #92835 GOTO 11
  IF ~~ THEN REPLY #92836 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY #92837
  IF ~  CheckStatGT(Player1,12,CON)
~ THEN REPLY #92838 GOTO 16
  IF ~  CheckStatGT(Player1,12,CON)
~ THEN REPLY #92839 GOTO 16
  IF ~  CheckStatGT(Player1,12,CON)
~ THEN REPLY #92840 GOTO 16
  IF ~  !CheckStatGT(Player1,12,CON)
~ THEN REPLY #92838 GOTO 14
  IF ~  !CheckStatGT(Player1,12,CON)
~ THEN REPLY #92839 GOTO 14
  IF ~  !CheckStatGT(Player1,12,CON)
~ THEN REPLY #92840 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY #101264
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
  SAY #92842
  IF ~~ THEN DO ~AddJournalEntry(92859,QUEST)
ClearAllActions()
Face(S)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut15")
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #92843
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92844 GOTO 17
  IF ~  CheckStatGT(Player1,13,CON)
~ THEN REPLY #92845 GOTO 18
  IF ~  !CheckStatGT(Player1,13,CON)
~ THEN REPLY #92845 GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 17
  SAY #92846
  IF ~  CheckStatGT(Player1,13,CON)
~ THEN REPLY #90515 GOTO 18
  IF ~  !CheckStatGT(Player1,13,CON)
~ THEN REPLY #90515 GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 18
  SAY #92847
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY #92848
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #92849
  IF ~  CheckStatGT(Player1,15,CON)
~ THEN REPLY #90515 GOTO 21
  IF ~  !CheckStatGT(Player1,15,CON)
~ THEN REPLY #90515 GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 21
  SAY #92851
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92852 GOTO 22
  IF ~  CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 GOTO 25
  IF ~  !CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 22
  SAY #92854
  IF ~~ THEN REPLY #102679 GOTO 23
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 23
  SAY #92855
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #101265
  IF ~  CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 GOTO 25
  IF ~  !CheckStatGT(Player1,16,CON)
~ THEN REPLY #92853 GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 25
  SAY #92858
  IF ~~ THEN REPLY #92853 GOTO 14
  IF ~  PartyHasItem("OHBPTN10")
~ THEN REPLY #92176 DO ~TakePartyItem("OHBPTN10")
DestroyItem("OHBPTN10")
SetGlobal("OHB_POISON_JOKER","GLOBAL",6)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN05")
~ THEN REPLY #92190 DO ~TakePartyItem("OHBPTN05")
DestroyItem("OHBPTN05")
SetGlobal("OHB_POISON_JOKER","GLOBAL",7)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN06")
~ THEN REPLY #92189 DO ~TakePartyItem("OHBPTN06")
DestroyItem("OHBPTN06")
SetGlobal("OHB_POISON_JOKER","GLOBAL",8)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN07")
~ THEN REPLY #92185 DO ~TakePartyItem("OHBPTN07")
DestroyItem("OHBPTN07")
SetGlobal("OHB_POISON_JOKER","GLOBAL",9)
~ GOTO 15
  IF ~  PartyHasItem("OHBPTN03")
~ THEN REPLY #92191 DO ~TakePartyItem("OHBPTN03")
DestroyItem("OHBPTN03")
SetGlobal("OHB_POISON_JOKER","GLOBAL",10)
~ GOTO 15
END

IF ~~ THEN BEGIN 26
  SAY #90442
  IF ~~ THEN EXTERN ~OHBDORMA~ 2
END
