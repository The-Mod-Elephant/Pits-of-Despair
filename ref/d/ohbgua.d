BEGIN ~OHBGUA~

IF ~  GlobalLT("OHB_FOOD_FIGHT","oh8100",4)
RandomNum(5,1)
~ THEN BEGIN 0
  SAY #90512
  IF ~~ THEN REPLY #90513 GOTO 5
  IF ~~ THEN REPLY #90514 GOTO 6
  IF ~~ THEN REPLY #90515 EXIT
END

IF ~  GlobalLT("OHB_FOOD_FIGHT","oh8100",4)
RandomNum(5,2)
~ THEN BEGIN 1
  SAY #90516
  IF ~~ THEN REPLY #90513 GOTO 5
  IF ~~ THEN REPLY #90514 GOTO 6
  IF ~~ THEN REPLY #90515 EXIT
END

IF ~  GlobalLT("OHB_FOOD_FIGHT","oh8100",4)
RandomNum(5,3)
~ THEN BEGIN 2
  SAY #90517
  IF ~~ THEN REPLY #90513 GOTO 5
  IF ~~ THEN REPLY #90514 GOTO 6
  IF ~~ THEN REPLY #90515 EXIT
END

IF ~  GlobalLT("OHB_FOOD_FIGHT","oh8100",4)
RandomNum(5,4)
~ THEN BEGIN 3
  SAY #90518
  IF ~~ THEN REPLY #90513 GOTO 5
  IF ~~ THEN REPLY #90514 GOTO 6
  IF ~~ THEN REPLY #90515 EXIT
END

IF ~  GlobalLT("OHB_FOOD_FIGHT","oh8100",4)
RandomNum(5,5)
~ THEN BEGIN 4
  SAY #90519
  IF ~~ THEN REPLY #90513 GOTO 5
  IF ~~ THEN REPLY #90514 GOTO 6
  IF ~~ THEN REPLY #90515 EXIT
END

IF ~~ THEN BEGIN 5
  SAY #90520
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY #90521
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,1)
~ THEN BEGIN 7
  SAY #100656
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,2)
~ THEN BEGIN 8
  SAY #100657
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,3)
~ THEN BEGIN 9
  SAY #100658
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,4)
~ THEN BEGIN 10
  SAY #100659
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,5)
~ THEN BEGIN 11
  SAY #100660
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,6)
~ THEN BEGIN 12
  SAY #100661
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,7)
~ THEN BEGIN 13
  SAY #100662
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,8)
~ THEN BEGIN 14
  SAY #100663
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,9)
~ THEN BEGIN 15
  SAY #100664
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(10,10)
~ THEN BEGIN 16
  SAY #100665
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(4,1)
~ THEN BEGIN 17
  SAY #100661
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(4,2)
~ THEN BEGIN 18
  SAY #100662
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(4,3)
~ THEN BEGIN 19
  SAY #100663
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
Global("ohb_finale","global",0)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
RandomNum(4,4)
~ THEN BEGIN 20
  SAY #100665
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
GlobalGT("ohb_finale","global",0)
RandomNum(4,1)
~ THEN BEGIN 21
  SAY #100658
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
GlobalGT("ohb_finale","global",0)
RandomNum(4,2)
~ THEN BEGIN 22
  SAY #100661
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
GlobalGT("ohb_finale","global",0)
RandomNum(4,3)
~ THEN BEGIN 23
  SAY #100664
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("OHB_FOOD_FIGHT","oh8100",3)
GlobalGT("ohb_finale","global",0)
RandomNum(4,4)
~ THEN BEGIN 24
  SAY #100665
  IF ~~ THEN EXIT
END
