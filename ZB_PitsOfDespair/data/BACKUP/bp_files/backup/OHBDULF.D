BEGIN ~OHBDULF~

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY #92950
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY #92951
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY #95643
  IF ~~ THEN REPLY #95645 EXIT
END

IF WEIGHT #4 ~  !Dead("OHBGEZZT")
GlobalGT("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY #95642
  IF ~~ THEN DO ~SetGlobal("ohb_pc_talked_to_dulf","global",1)
AddJournalEntry(95659,INFO)
~ EXTERN ~OHBGEZZT~ 45
END

IF WEIGHT #5 ~  Dead("OHBGEZZT")
GlobalGT("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 4
  SAY #95643
  IF ~  PartyHasItem("OHBPTN02")
~ THEN REPLY #95644 DO ~AddJournalEntry(103099,QUEST_DONE)
TakePartyItem("OHBPTN02")
DestroyItem("OHBPTN02")
SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",THREE_HOURS)
SetGlobal("ohb_pc_talked_to_dulf","global",1)
SetGlobal("ohb_know_dulf_needs_salve","global",1)
~ GOTO 15
  IF ~~ THEN REPLY #95645 DO ~SetGlobal("ohb_pc_talked_to_dulf","global",1)
SetGlobal("ohb_know_dulf_needs_salve","global",1)
AddJournalEntry(95659,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY #95647
  IF ~~ THEN EXTERN ~OHBGEZZT~ 46
END

IF ~~ THEN BEGIN 6
  SAY #95649
  IF ~~ THEN EXTERN ~OHBGEZZT~ 47
END

IF WEIGHT #6 ~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
Global("ohb_know_dulf_needs_salve","global",0)
~ THEN BEGIN 7
  SAY #95651
  IF ~~ THEN REPLY #95652 GOTO 8
  IF ~~ THEN REPLY #95653 GOTO 8
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95654 GOTO 8
  IF ~~ THEN REPLY #95655 EXIT
END

IF ~~ THEN BEGIN 8
  SAY #95656
  IF ~~ THEN EXTERN ~OHBGEZZT~ 48
END

IF WEIGHT #7 ~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 9
  SAY #95660
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95661 GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95662 GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95663 GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95664 GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95664 GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ THEN REPLY #95665 GOTO 34
  IF ~  PartyGoldGT(11999)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95666 GOTO 52
  IF ~  PartyGoldGT(7999)
CheckStatGT(Player1,14,CHR)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95667 GOTO 49
  IF ~~ THEN REPLY #95668 GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95669 GOTO 22
  IF ~~ THEN REPLY #95670 EXIT
END

IF WEIGHT #8 ~  Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 10
  SAY #95671
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95672 GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95673 GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95674 GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95675 GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95675 GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ THEN REPLY #95676 GOTO 34
  IF ~  PartyGoldGT(11999)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95677 GOTO 52
  IF ~  PartyGoldGT(7999)
CheckStatGT(Player1,14,CHR)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY #95678 GOTO 49
  IF ~~ THEN REPLY #95668 GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95669 GOTO 22
  IF ~~ THEN REPLY #95679 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #95680
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~  Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 12
  SAY #95681
  IF ~  PartyHasItem("OHBPTN02")
~ THEN REPLY #95682 DO ~SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",THREE_HOURS)
TakePartyItem("OHBPTN02")
DestroyItem("OHBPTN02")
~ GOTO 15
  IF ~~ THEN REPLY #95683 EXIT
END

IF WEIGHT #10 ~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 13
  SAY #95684
  IF ~~ THEN EXTERN ~OHBGEZZT~ 49
  IF ~  Global("OHB_DULF_RESTOREDONCE","GLOBAL",1)
~ THEN EXTERN ~OHBGEZZT~ 50
END

IF ~~ THEN BEGIN 14
  SAY #95692
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY #95693
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95694 GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95695 GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95696 GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95697 GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95697 GOTO 38
  IF ~~ THEN REPLY #95668 GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95669 GOTO 22
  IF ~~ THEN REPLY #95699 EXIT
END

IF ~~ THEN BEGIN 16
  SAY #95702
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY #95703
  IF ~~ THEN DO ~AddJournalEntry(103099,QUEST_DONE)
~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #95704
  IF ~~ THEN EXTERN ~OHBGEZZT~ 54
END

IF ~~ THEN BEGIN 19
  SAY #95706
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #95707
  IF ~~ THEN REPLY #95708 GOTO 21
  IF ~~ THEN REPLY #95709 GOTO 22
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95710 GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95710 GOTO 38
  IF ~~ THEN REPLY #95711 EXIT
END

IF ~~ THEN BEGIN 21
  SAY #95712
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95713 GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY #95714 GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY #95715 GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY #95716 GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY #95716 GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY #95717 GOTO 22
  IF ~~ THEN REPLY #95718 EXIT
END

IF ~~ THEN BEGIN 22
  SAY #95719
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY #95720
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #95721
  IF ~  !Dead("OHBGEZZT")
~ THEN EXTERN ~OHBGEZZT~ 55
  IF ~  Dead("OHBGEZZT")
~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY #95723
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY #95724
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #95725
  IF ~  !Dead("OHBGEZZT")
~ THEN EXTERN ~OHBGEZZT~ 56
  IF ~  Dead("OHBGEZZT")
~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY #95727
  IF ~~ THEN EXTERN ~OHBGEZZT~ 57
END

IF ~~ THEN BEGIN 29
  SAY #95729
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY #95730
  IF ~~ THEN REPLY #95731 GOTO 31
  IF ~~ THEN REPLY #95732 GOTO 32
  IF ~~ THEN REPLY #95733 GOTO 33
END

IF ~~ THEN BEGIN 31
  SAY #95734
  IF ~~ THEN REPLY #95735 DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",1)
AddJournalEntry(95780,QUEST)
~ GOTO 34
  IF ~  !Dead("OHBGEZZT")
~ THEN REPLY #95736 DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 35
  IF ~  Dead("OHBGEZZT")
~ THEN REPLY #95736 DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 36
  IF ~  !Dead("OHBGEZZT")
~ THEN REPLY #95737 DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 35
  IF ~  Dead("OHBGEZZT")
~ THEN REPLY #95737 DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 36
END

IF ~~ THEN BEGIN 32
  SAY #95738
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 33
  SAY #95739
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 34
  SAY #95740
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",1)
AddJournalEntry(95781,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY #95741
  IF ~~ THEN EXTERN ~OHBGEZZT~ 58
END

IF ~~ THEN BEGIN 36
  SAY #95743
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37
  SAY #95744
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #95745 GOTO 39
  IF ~~ THEN REPLY #95746 GOTO 40
  IF ~~ THEN REPLY #95747 GOTO 41
END

IF ~~ THEN BEGIN 38
  SAY #95748
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #95749 GOTO 39
  IF ~~ THEN REPLY #95750 GOTO 40
  IF ~~ THEN REPLY #95751 GOTO 41
END

IF ~~ THEN BEGIN 39
  SAY #95752
  IF ~~ THEN DO ~TakePartyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_DULF_HIRED","GLOBAL",1)
SetGlobal("OHB_dulfhiredbefore","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY #95753
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY #95754
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY #95755
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",2)
TakePartyItem("ohbcom06")
DestroyItem("ohbcom06")
TakePartyItem("ohbcom07")
DestroyItem("ohbcom07")
TakePartyItem("ohbcom08")
DestroyItem("ohbcom08")
~ GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY #95756
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",4)
SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",2)
AddJournalEntry(95786,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 44
  SAY #95757
  IF ~  PartyHasItem("ohbcom12")
~ THEN REPLY #95758 GOTO 45
  IF ~  !PartyHasItem("ohbcom12")
~ THEN REPLY #95759 EXIT
END

IF ~~ THEN BEGIN 45
  SAY #95760
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_MIRROR","GLOBAL",1)
TakePartyItem("ohbcom12")
DestroyItem("ohbcom12")
~ GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY #95761
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY #95762
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY #95763
  IF ~  CheckStatGT(Player1,14,CHR)
PartyGoldGT(7999)
~ THEN REPLY #95764 DO ~AddJournalEntry(95785,QUEST)
~ GOTO 49
  IF ~  PartyGoldGT(11999)
~ THEN REPLY #95765 GOTO 52
  IF ~~ THEN REPLY #95766 DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #95767 DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 55
  IF ~~ THEN REPLY #95768 DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 54
END

IF ~~ THEN BEGIN 49
  SAY #95769
  IF ~~ THEN DO ~TakePartyGold(8000)
~ GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY #95770
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",4)
AddJournalEntry(95786,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 51
  SAY #95771
  IF ~~ THEN REPLY #95773 EXIT
  IF ~  PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY #95772 DO ~TakePartyItem("ohbcom06")
DestroyItem("ohbcom06")
TakePartyItem("ohbcom07")
DestroyItem("ohbcom07")
TakePartyItem("ohbcom08")
DestroyItem("ohbcom08")
~ GOTO 50
END

IF ~~ THEN BEGIN 52
  SAY #95774
  IF ~~ THEN DO ~TakePartyGold(12000)
~ GOTO 50
END

IF ~~ THEN BEGIN 53
  SAY #95775
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54
  SAY #95776
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55
  SAY #95777
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56
  SAY #95778
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
  SAY #92880
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
END

IF ~~ THEN BEGIN 58
  SAY #92887
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
END

IF ~~ THEN BEGIN 59
  SAY #92895
  IF ~~ THEN EXTERN ~OHBBRODL~ 64
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
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 40
END

IF ~~ THEN BEGIN 60
  SAY #92915
  IF ~~ THEN EXTERN ~OHBBRODL~ 70
END

IF ~~ THEN BEGIN 61
  SAY #92923
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
END

IF WEIGHT #11 ~  Global("ohb_finale","global",1)
~ THEN BEGIN 62
  SAY #92923
  IF ~~ THEN EXIT
END

IF WEIGHT #12 ~  Global("ohb_finale","global",6)
!Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN BEGIN 63
  SAY #92985
  IF ~~ THEN EXIT
END

IF WEIGHT #13 ~  Global("ohb_finale","global",6)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN BEGIN 64
  SAY #101777
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
GiveItemCreate("ohbscrl",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 65
  SAY #92969
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
GiveItemCreate("ohbscrl",Player1,1,0,0)
StartCutSceneMode()
StartCutSceneEx("ohbcut23",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 66
  SAY #100625
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
END

IF ~~ THEN BEGIN 67
  SAY #90561
  IF ~~ THEN EXTERN ~OHBDENNA~ 2
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 68
  SAY #92880
  IF ~~ THEN EXIT
END
