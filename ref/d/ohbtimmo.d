BEGIN ~OHBTIMMO~

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY #92952
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY #92953
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY #94912
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~  Global("ohb_pc_talked_to_me","locals",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY #94912
  IF ~~ THEN REPLY #94913 DO ~SetGlobal("ohb_pc_talked_to_me","locals",1)
AddJournalEntry(94982,INFO)
~ GOTO 4
  IF ~~ THEN REPLY #94914 DO ~SetGlobal("ohb_pc_talked_to_me","locals",1)
AddJournalEntry(94982,INFO)
~ GOTO 6
  IF ~~ THEN REPLY #94915 DO ~SetGlobal("ohb_pc_talked_to_me","locals",1)
AddJournalEntry(94982,INFO)
~ GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY #94916
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY #94917
  IF ~~ THEN REPLY #94918 GOTO 9
  IF ~~ THEN REPLY #94919 GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94920 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94920 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94920 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94920 GOTO 29
  IF ~~ THEN REPLY #94921 EXIT
END

IF ~~ THEN BEGIN 6
  SAY #94922
  IF ~~ THEN REPLY #94923 GOTO 9
  IF ~~ THEN REPLY #94924 GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94925 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94925 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94925 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94925 GOTO 29
  IF ~~ THEN REPLY #94926 EXIT
END

IF ~~ THEN BEGIN 7
  SAY #94927
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY #94928
  IF ~~ THEN REPLY #94929 GOTO 9
  IF ~~ THEN REPLY #94930 GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94931 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94931 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94931 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94931 GOTO 29
  IF ~~ THEN REPLY #94932 EXIT
END

IF ~~ THEN BEGIN 9
  SAY #94933
  IF ~~ THEN EXTERN ~OHBLARIS~ 0
END

IF ~~ THEN BEGIN 10
  SAY #94935
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #94936
  IF ~~ THEN EXTERN ~OHBCUREL~ 0
END

IF ~~ THEN BEGIN 12
  SAY #94938
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY #94939
  IF ~~ THEN REPLY #94940 GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94941 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94941 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94941 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94941 GOTO 29
  IF ~~ THEN REPLY #94942 EXIT
END

IF ~~ THEN BEGIN 14
  SAY #94943
  IF ~~ THEN REPLY #94944 GOTO 15
  IF ~~ THEN REPLY #94945 GOTO 21
  IF ~~ THEN REPLY #94946 GOTO 24
END

IF ~~ THEN BEGIN 15
  SAY #94947
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY #94948
  IF ~~ THEN EXTERN ~OHBLARIS~ 1
END

IF ~~ THEN BEGIN 17
  SAY #94950
  IF ~~ THEN REPLY #94951 GOTO 18
  IF ~~ THEN REPLY #94952 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY #94953
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY #94954
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #94955
  IF ~~ THEN REPLY #94956 GOTO 9
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94957 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94957 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94957 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94957 GOTO 29
  IF ~~ THEN REPLY #94958 EXIT
END

IF ~~ THEN BEGIN 21
  SAY #94959
  IF ~~ THEN REPLY #94960 GOTO 23
  IF ~~ THEN REPLY #94961 GOTO 22
  IF ~~ THEN REPLY #94962 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY #94963
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY #94964
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 24
  SAY #94965
  IF ~~ THEN DO ~SetGlobal("OHB_TIMMOTH_INSULTED","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY #94966
  IF ~~ THEN REPLY #94967 GOTO 9
  IF ~~ THEN REPLY #94968 GOTO 14
  IF ~~ THEN REPLY #94969 EXIT
END

IF ~~ THEN BEGIN 26
  SAY #94970
  IF ~~ THEN REPLY #94971 GOTO 9
  IF ~~ THEN REPLY #94972 GOTO 14
  IF ~~ THEN REPLY #94973 EXIT
END

IF ~~ THEN BEGIN 27
  SAY #94974
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #94975 GOTO 28
  IF ~~ THEN REPLY #94976 GOTO 30
  IF ~~ THEN REPLY #94977 GOTO 31
END

IF ~~ THEN BEGIN 28
  SAY #94978
  IF ~~ THEN DO ~TakePartyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_TIMMOTH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY #94979
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_TIMMOTH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY #94980
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY #94981
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  Global("OHB_TIMMOTH_INSULTED","LOCALS",1)
Global("ohb_pc_talked_to_me","locals",1)
~ THEN BEGIN 32
  SAY #94983
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  !Global("OHB_TIMMOTH_INSULTED","LOCALS",1)
Global("ohb_pc_talked_to_me","locals",1)
~ THEN BEGIN 33
  SAY #94984
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY #94985 GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY #94985 GOTO 40
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
~ THEN REPLY #94986 GOTO 46
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY #94987 GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY #94988 GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94989 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94989 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94989 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #94989 GOTO 29
  IF ~~ THEN REPLY #94990 EXIT
END

IF ~~ THEN BEGIN 34
  SAY #94991
  IF ~~ THEN REPLY #94992 GOTO 35
  IF ~~ THEN REPLY #94993 GOTO 36
  IF ~~ THEN REPLY #94994 GOTO 37
  IF ~~ THEN REPLY #94995 GOTO 38
  IF ~~ THEN REPLY #94996 GOTO 39
END

IF ~~ THEN BEGIN 35
  SAY #94997
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 36
  SAY #94998
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 37
  SAY #94999
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 38
  SAY #95000
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY #95001
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY #95002
  IF ~  OR(2)
Class(Player1,PALADIN)
Class(Player1,CLERIC_ALL)
~ THEN GOTO 41
  IF ~  !Class(Player1,PALADIN)
!Class(Player1,CLERIC_ALL)
~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41
  SAY #95003
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42
  SAY #95004
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY #95005
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY #95006
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY #95007
  IF ~~ THEN DO ~SetGlobal("ohb_timmoth_subject_glove","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 46
  SAY #95008
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY #95022
  IF ~~ THEN REPLY #95023 GOTO 48
  IF ~~ THEN REPLY #95024 GOTO 49
  IF ~~ THEN REPLY #95025 GOTO 50
  IF ~~ THEN REPLY #95026 GOTO 51
END

IF ~~ THEN BEGIN 48
  SAY #95027
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY #95028 GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY #95028 GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY #95029 GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY #95030 GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95031 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95031 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95031 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95031 GOTO 29
  IF ~~ THEN REPLY #94921 EXIT
END

IF ~~ THEN BEGIN 49
  SAY #95032
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY #95033 GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY #95033 GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY #95034 GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY #95035 GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95036 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95036 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95036 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95036 GOTO 29
  IF ~~ THEN REPLY #94921 EXIT
END

IF ~~ THEN BEGIN 50
  SAY #95037
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY #95038 GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY #95038 GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY #95040 GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY #95041 GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95042 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95042 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95042 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95042 GOTO 29
  IF ~~ THEN REPLY #94921 EXIT
END

IF ~~ THEN BEGIN 51
  SAY #95044
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY #95045 GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY #95045 GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY #95046 GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY #95047 GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95049 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95049 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95049 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95049 GOTO 29
  IF ~~ THEN REPLY #94921 EXIT
END

IF ~~ THEN BEGIN 52
  SAY #95050
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY #95052 GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY #95052 GOTO 40
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
~ THEN REPLY #95054 GOTO 46
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95055 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95055 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95055 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95055 GOTO 29
  IF ~~ THEN REPLY #94921 EXIT
END

IF ~~ THEN BEGIN 53
  SAY #95057
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY #95058 GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY #95058 GOTO 40
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
~ THEN REPLY #95060 GOTO 46
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95061 GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95061 GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95061 GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #95061 GOTO 29
  IF ~~ THEN REPLY #94921 EXIT
END

IF ~~ THEN BEGIN 54
  SAY #92878
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 57
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 38
END

IF ~~ THEN BEGIN 55
  SAY #92883
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
END

IF ~~ THEN BEGIN 56
  SAY #92897
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
END

IF ~~ THEN BEGIN 57
  SAY #92912
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
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 41
END

IF ~~ THEN BEGIN 58
  SAY #92925
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
END

IF WEIGHT #7 ~  Global("ohb_finale","global",1)
~ THEN BEGIN 59
  SAY #92925
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~  Global("ohb_finale","global",6)
~ THEN BEGIN 60
  SAY #92986
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61
  SAY #100624
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
END

IF ~~ THEN BEGIN 62
  SAY #94574
  IF ~~ THEN EXTERN ~OHBCUREL~ 3
END

IF ~~ THEN BEGIN 63
  SAY #94592
  IF ~~ THEN REPLY #94593 EXTERN ~OHBLARIS~ 11
  IF ~~ THEN REPLY #94594 EXTERN ~OHBLARIS~ 12
  IF ~~ THEN REPLY #94595 EXTERN ~OHBLARIS~ 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94596 EXTERN ~OHBLARIS~ 14
  IF ~~ THEN REPLY #94597 EXIT
END

IF ~~ THEN BEGIN 64
  SAY #94652
  IF ~~ THEN EXTERN ~OHBCUREL~ 9
END

IF ~~ THEN BEGIN 65
  SAY #94662
  IF ~~ THEN EXTERN ~OHBMOLZA~ 54
END

IF ~~ THEN BEGIN 66
  SAY #94667
  IF ~~ THEN EXTERN ~OHBMOLZA~ 55
END

IF ~~ THEN BEGIN 67
  SAY #94682
  IF ~~ THEN EXTERN ~OHBMOLZA~ 56
END

IF ~~ THEN BEGIN 68
  SAY #94695
  IF ~~ THEN EXTERN ~OHBMOLZA~ 57
END

IF ~~ THEN BEGIN 69
  SAY #90501
  IF ~~ THEN EXTERN ~OHBGEZZT~ 60
END

IF ~~ THEN BEGIN 70
  SAY #90551
  IF ~~ THEN EXTERN ~OHBDENNA~ 264
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 71
  SAY #92878
  IF ~~ THEN EXIT
END
