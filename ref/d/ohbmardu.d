BEGIN ~OHBMARDU~

IF WEIGHT #1 ~  Global("ohb_finale","global",0)
Global("OHB_KITCHEN_TALK","GLOBAL",1)
OR(2)
Global("tier","GLOBAL",1)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",2)
~ THEN BEGIN 0
  SAY #90671
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY #93832
  IF ~~ THEN EXTERN ~OHBCOOK~ 36
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",3)
Global("ohb_hide_cook","locals",0)
~ THEN BEGIN 2
  SAY #93887
  IF ~~ THEN REPLY #91948 DO ~SetGlobal("ohb_hide_cook","locals",1)
~ EXIT
  IF ~~ THEN REPLY #92282 DO ~SetGlobal("ohb_hide_cook","locals",2)
~ EXIT
  IF ~~ THEN REPLY #92097 EXIT
END

IF WEIGHT #3 ~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",3)
Global("ohb_hide_cook","locals",3)
~ THEN BEGIN 3
  SAY #93852
  IF ~~ THEN DO ~SetGlobal("ohb_mardu_moveback","locals",0)
~ GOTO 19
END

IF WEIGHT #4 ~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",3)
Global("ohb_hide_cook","locals",4)
~ THEN BEGIN 4
  SAY #93880
  IF ~~ THEN DO ~SetGlobal("ohb_mardu_moveback","locals",0)
~ EXTERN ~OHBSHORT~ 11
END

IF WEIGHT #5 ~  Global("ohb_finale","global",0)
Global("OHB_COOK_POISON","GLOBAL",5)
~ THEN BEGIN 5
  SAY #93888
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("ohb_finale","global",0)
Global("OHB_COOK_DEAD","GLOBAL",1)
Global("ohb_marduuk_now_cook","locals",0)
~ THEN BEGIN 6
  SAY #93893
  IF ~~ THEN REPLY #93894 DO ~SetGlobal("ohb_marduuk_now_cook","locals",1)
~ GOTO 7
  IF ~~ THEN REPLY #93895 DO ~SetGlobal("ohb_marduuk_now_cook","locals",1)
~ GOTO 8
  IF ~~ THEN REPLY #93896 DO ~SetGlobal("ohb_marduuk_now_cook","locals",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY #93897
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 GOTO 11
  IF ~~ THEN REPLY #99395 EXIT
END

IF ~~ THEN BEGIN 8
  SAY #93898
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 GOTO 11
  IF ~~ THEN REPLY #99394 EXIT
END

IF ~~ THEN BEGIN 9
  SAY #93899
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 GOTO 11
  IF ~~ THEN REPLY #92200 EXIT
END

IF WEIGHT #7 ~  Global("ohb_finale","global",0)
Global("OHB_COOK_DEAD","GLOBAL",1)
Global("ohb_marduuk_now_cook","locals",1)
~ THEN BEGIN 10
  SAY #93900
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 GOTO 11
  IF ~~ THEN REPLY #90617 EXIT
END

IF ~~ THEN BEGIN 11
  SAY #93901
  IF ~~ THEN REPLY #93902 GOTO 12
  IF ~~ THEN REPLY #92069 GOTO 12
  IF ~~ THEN REPLY #92290 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY #93903
  IF ~~ THEN REPLY #93904 GOTO 13
  IF ~~ THEN REPLY #92170 EXIT
END

IF ~~ THEN BEGIN 13
  SAY #93905
  IF ~~ THEN DO ~AddJournalEntry(101266,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY #100671
  IF ~~ THEN DO ~SetGlobal("OHB_COOK_DEAD","GLOBAL",2)
ChangeEnemyAlly("ohbshort",GOODCUTOFF)
ChangeEnemyAlly(Myself,GOODCUTOFF)
~ EXIT
END

IF WEIGHT #8 ~  Global("ohb_finale","global",6)
Global("OHB_COOK_DEAD","GLOBAL",2)
Global("ohb_cook_line_gift","global",0)
~ THEN BEGIN 15
  SAY #92969
  IF ~~ THEN DO ~SetGlobal("ohb_cook_line_gift","global",1)
GiveItemCreate("OHBBLUN1",Player1,1,0,0)
~ GOTO 16
END

IF WEIGHT #9 ~  Global("ohb_finale","global",6)
Global("OHB_COOK_DEAD","GLOBAL",2)
Global("ohb_cook_line_gift","global",1)
~ THEN BEGIN 16
  SAY #92970
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY #92969
  IF ~~ THEN DO ~SetGlobal("ohb_cook_line_gift","global",1)
GiveItemCreate("OHBBLUN1",Player1,1,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
~ THEN DO ~SetGlobal("ohb_cook_line_gift","global",1)
GiveItemCreate("OHBBLUN1",Player1,1,0,0)
~ EXTERN ~OHBDULF~ 65
END

IF WEIGHT #10 ~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",1)
~ THEN BEGIN 18
  SAY #93850
  IF ~~ THEN EXTERN ~OHBSHORT~ 6
END

IF ~~ THEN BEGIN 19
  SAY #93855
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #93861
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY #93862
  IF ~~ THEN EXTERN ~OHBSHORT~ 7
END

IF ~~ THEN BEGIN 22
  SAY #93864
  IF ~~ THEN REPLY #93865 GOTO 23
  IF ~~ THEN REPLY #93866 GOTO 23
  IF ~~ THEN REPLY #93867 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY #93868
  IF ~~ THEN EXTERN ~OHBSHORT~ 8
END

IF ~~ THEN BEGIN 24
  SAY #93871
  IF ~~ THEN REPLY #93872 DO ~AddJournalEntry(94553,QUEST)
SetGlobal("OHB_COOK_POISON","GLOBAL",1)
SetGlobal("OHB_SOUSCHEF_PLOT","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #93873 GOTO 27
END

IF ~~ THEN BEGIN 25
  SAY #93874
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #93876
  IF ~~ THEN EXTERN ~OHBSHORT~ 9
END

IF ~~ THEN BEGIN 27
  SAY #93878
  IF ~~ THEN EXTERN ~OHBSHORT~ 10
END

IF ~~ THEN BEGIN 28
  SAY #93880
  IF ~~ THEN EXTERN ~OHBSHORT~ 11
END

IF ~~ THEN BEGIN 29
  SAY #93882
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY #93884
  IF ~~ THEN EXTERN ~OHBSHORT~ 12
END

IF ~~ THEN BEGIN 31
  SAY #93886
  IF ~~ THEN REPLY #91948 GOTO 19
  IF ~~ THEN REPLY #92097 GOTO 27
END

IF WEIGHT #0 ~  Global("OHB_COOK_POISON","GLOBAL",3)
~ THEN BEGIN 32
  SAY #90656
  IF ~~ THEN EXTERN ~OHBSHORT~ 13
END

IF ~~ THEN BEGIN 33
  SAY #90658
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY #90659
  IF ~~ THEN EXTERN ~OHBSHORT~ 14
END

IF ~~ THEN BEGIN 35
  SAY #90661
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #90662
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #90663
  IF ~~ THEN DO ~AddJournalEntry(94557,QUEST_DONE)
EraseJournalEntry(94553)
EraseJournalEntry(94554)
EraseJournalEntry(90956)
SetGlobal("OHB_COOK_POISON","GLOBAL",4)
GiveGoldForce(500)
~ EXIT
END

IF WEIGHT #11 ~  Global("OHB_KITCHEN_TALK","GLOBAL",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 38
  SAY #90666
  IF ~~ THEN DO ~SetGlobal("OHB_KITCHEN_TALK","GLOBAL",1)
~ EXTERN ~OHBSHORT~ 15
END

IF ~~ THEN BEGIN 39
  SAY #90669
  IF ~~ THEN EXTERN ~OHBCOOK~ 51
END

IF ~~ THEN BEGIN 40
  SAY #90673
  IF ~~ THEN EXTERN ~OHBCOOK~ 52
END

IF ~~ THEN BEGIN 41
  SAY #90669
  IF ~~ THEN EXTERN ~OHBCOOK~ 53
END
