BEGIN ~OHBLARIS~

IF ~~ THEN BEGIN 0
  SAY #94934
  IF ~~ THEN EXTERN ~OHBTIMMO~ 10
END

IF ~~ THEN BEGIN 1
  SAY #94949
  IF ~~ THEN EXTERN ~OHBTIMMO~ 17
END

IF ~  Global("ohb_laris_vs_curell","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY #94570
  IF ~~ THEN DO ~SetGlobal("ohb_laris_vs_curell","global",1)
AddJournalEntry(94646,INFO)
~ EXTERN ~OHBCUREL~ 1
END

IF ~~ THEN BEGIN 3
  SAY #94572
  IF ~~ THEN EXTERN ~OHBCUREL~ 2
END

IF ~~ THEN BEGIN 4
  SAY #94578
  IF ~~ THEN REPLY #94579 DO ~SetGlobal("ohb_pc_insulted_garagos","global",1)
~ GOTO 5
  IF ~~ THEN REPLY #94580 DO ~SetGlobal("ohb_pc_praised_tempus","global",1)
~ GOTO 6
  IF ~~ THEN REPLY #94581 GOTO 7
  IF ~~ THEN REPLY #94582 DO ~SetGlobal("ohb_pc_praised_garagos","global",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY #94583
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY #94584
  IF ~~ THEN REPLY #94585 GOTO 11
  IF ~~ THEN REPLY #94586 GOTO 12
  IF ~~ THEN REPLY #94587 GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94588 GOTO 14
  IF ~~ THEN REPLY #94589 EXIT
END

IF ~~ THEN BEGIN 7
  SAY #94590
  IF ~~ THEN EXTERN ~OHBCUREL~ 4
END

IF ~~ THEN BEGIN 8
  SAY #94598
  IF ~~ THEN REPLY #94599 GOTO 11
  IF ~~ THEN REPLY #94600 GOTO 12
  IF ~~ THEN REPLY #94601 GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94602 GOTO 14
  IF ~~ THEN REPLY #94603 EXIT
END

IF ~~ THEN BEGIN 9
  SAY #94604
  IF ~~ THEN EXTERN ~OHBCUREL~ 5
END

IF ~~ THEN BEGIN 10
  SAY #94606
  IF ~~ THEN REPLY #94607 GOTO 11
  IF ~~ THEN REPLY #94608 GOTO 12
  IF ~~ THEN REPLY #94609 GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94610 GOTO 14
  IF ~~ THEN REPLY #94611 EXIT
END

IF ~~ THEN BEGIN 11
  SAY #94612
  IF ~~ THEN REPLY #94613 GOTO 12
  IF ~~ THEN REPLY #94614 GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94615 GOTO 14
  IF ~~ THEN REPLY #94616 EXIT
END

IF ~~ THEN BEGIN 12
  SAY #94617
  IF ~~ THEN REPLY #94618 GOTO 11
  IF ~~ THEN REPLY #94619 GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94620 GOTO 14
  IF ~~ THEN REPLY #94621 EXIT
END

IF ~~ THEN BEGIN 13
  SAY #94622
  IF ~~ THEN REPLY #94623 GOTO 11
  IF ~~ THEN REPLY #94624 GOTO 12
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94625 GOTO 14
  IF ~~ THEN REPLY #94626 EXIT
END

IF ~~ THEN BEGIN 14
  SAY #94627
  IF ~~ THEN REPLY #94628 GOTO 11
  IF ~~ THEN REPLY #94629 GOTO 12
  IF ~~ THEN REPLY #94630 GOTO 13
  IF ~~ THEN REPLY #94631 EXIT
END

IF ~  Global("ohb_pc_insulted_garagos","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 15
  SAY #94632
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_pc_insulted_garagos","global",0)
Global("ohb_pc_praised_garagos","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 16
  SAY #94633
  IF ~~ THEN REPLY #94634 GOTO 11
  IF ~~ THEN REPLY #94635 GOTO 12
  IF ~~ THEN REPLY #94636 GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94637 GOTO 14
  IF ~~ THEN REPLY #94638 EXIT
END

IF ~  Global("ohb_pc_insulted_garagos","global",0)
Global("ohb_pc_praised_garagos","global",0)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 17
  SAY #94639
  IF ~~ THEN REPLY #94640 GOTO 11
  IF ~~ THEN REPLY #94641 GOTO 12
  IF ~~ THEN REPLY #94642 GOTO 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY #94643 GOTO 14
  IF ~~ THEN REPLY #94644 EXIT
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_garagos","global",0)
~ THEN BEGIN 18
  SAY #92974
  IF ~~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,2,0,0)
~ GOTO 20
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_garagos","global",1)
~ THEN BEGIN 19
  SAY #92974
  IF ~~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
~ GOTO 20
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_laris_line_gift","global",1)
~ THEN BEGIN 20
  SAY #92975
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY #92974
  IF ~  Global("ohb_pc_praised_garagos","global",0)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,2,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("ohb_pc_praised_garagos","global",1)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_garagos","global",0)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",0)
GiveItemCreate("potn55",Player1,2,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_garagos","global",1)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_garagos","global",0)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,2,0,0)
~ EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_garagos","global",1)
~ THEN DO ~SetGlobal("ohb_laris_line_gift","global",1)
GiveItemCreate("potn55",Player1,4,0,0)
~ EXTERN ~OHBMARDU~ 17
END

IF ~~ THEN BEGIN 22
  SAY #94648
  IF ~~ THEN EXTERN ~OHBCUREL~ 7
END

IF ~~ THEN BEGIN 23
  SAY #94650
  IF ~~ THEN EXTERN ~OHBCUREL~ 8
END

IF ~~ THEN BEGIN 24
  SAY #94294
  IF ~~ THEN EXTERN ~OHBCUREL~ 35
END

IF ~~ THEN BEGIN 25
  SAY #94299
  IF ~~ THEN EXTERN ~OHBMOLZA~ 60
END
