BEGIN ~OHBCUREL~

IF ~~ THEN BEGIN 0
  SAY #94937
  IF ~~ THEN EXTERN ~OHBTIMMO~ 12
END

IF ~~ THEN BEGIN 1
  SAY #94571
  IF ~~ THEN EXTERN ~OHBLARIS~ 3
END

IF ~~ THEN BEGIN 2
  SAY #94573
  IF ~  Detect("OHBTIMMO")
~ THEN EXTERN ~OHBTIMMO~ 62
  IF ~  !Detect("OHBTIMMO")
~ THEN EXTERN ~OHBMOLZA~ 49
END

IF ~~ THEN BEGIN 3
  SAY #94575
  IF ~~ THEN EXTERN ~OHBMOLZA~ 48
END

IF ~~ THEN BEGIN 4
  SAY #94591
  IF ~  Detect("OHBTIMMO")
~ THEN EXTERN ~OHBTIMMO~ 63
  IF ~  !Detect("OHBTIMMO")
~ THEN EXTERN ~OHBLARIS~ 8
END

IF ~~ THEN BEGIN 5
  SAY #94605
  IF ~~ THEN EXTERN ~OHBLARIS~ 10
END

IF ~  Global("ohb_laris_vs_curell","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 6
  SAY #94647
  IF ~~ THEN DO ~SetGlobal("ohb_laris_vs_curell","global",1)
AddJournalEntry(94727,INFO)
~ EXTERN ~OHBLARIS~ 22
END

IF ~~ THEN BEGIN 7
  SAY #94649
  IF ~~ THEN EXTERN ~OHBLARIS~ 23
END

IF ~~ THEN BEGIN 8
  SAY #94651
  IF ~  !Detect("OHBTIMMO")
~ THEN EXTERN ~OHBMOLZA~ 53
  IF ~  Detect("OHBTIMMO")
~ THEN EXTERN ~OHBTIMMO~ 64
END

IF ~~ THEN BEGIN 9
  SAY #94653
  IF ~~ THEN EXTERN ~OHBMOLZA~ 52
END

IF ~~ THEN BEGIN 10
  SAY #94656
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94657 DO ~SetGlobal("ohb_pc_insulted_tempus","global",1)
~ GOTO 13
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94657 DO ~SetGlobal("ohb_pc_insulted_tempus","global",1)
~ GOTO 11
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94658 DO ~SetGlobal("ohb_pc_praised_garagos","global",1)
~ GOTO 16
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94658 DO ~SetGlobal("ohb_pc_praised_garagos","global",1)
~ GOTO 14
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94659 GOTO 19
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94659 GOTO 17
  IF ~  !Detect("ohbtimmo")
~ THEN REPLY #94660 DO ~SetGlobal("ohb_pc_praised_tempus","global",1)
~ GOTO 22
  IF ~  Detect("ohbtimmo")
~ THEN REPLY #94660 DO ~SetGlobal("ohb_pc_praised_tempus","global",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 11
  SAY #94661
  IF ~~ THEN EXTERN ~OHBTIMMO~ 65
END

IF ~~ THEN BEGIN 12
  SAY #94664
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY #94665
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY #94666
  IF ~~ THEN EXTERN ~OHBTIMMO~ 66
END

IF ~~ THEN BEGIN 15
  SAY #94669
  IF ~~ THEN REPLY #94670 GOTO 23
  IF ~~ THEN REPLY #94671 GOTO 24
  IF ~~ THEN REPLY #94672 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94673 GOTO 26
  IF ~~ THEN REPLY #94674 EXIT
END

IF ~~ THEN BEGIN 16
  SAY #94675
  IF ~~ THEN REPLY #94676 GOTO 23
  IF ~~ THEN REPLY #94677 GOTO 24
  IF ~~ THEN REPLY #94678 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94679 GOTO 26
  IF ~~ THEN REPLY #94680 EXIT
END

IF ~~ THEN BEGIN 17
  SAY #94681
  IF ~~ THEN EXTERN ~OHBTIMMO~ 67
END

IF ~~ THEN BEGIN 18
  SAY #94684
  IF ~~ THEN REPLY #94685 GOTO 23
  IF ~~ THEN REPLY #94686 GOTO 24
  IF ~~ THEN REPLY #94687 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94688 GOTO 26
  IF ~~ THEN REPLY #94689 EXIT
END

IF ~~ THEN BEGIN 19
  SAY #94690
  IF ~~ THEN REPLY #94685 GOTO 23
  IF ~~ THEN REPLY #94686 GOTO 24
  IF ~~ THEN REPLY #94691 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94692 GOTO 26
  IF ~~ THEN REPLY #94693 EXIT
END

IF ~~ THEN BEGIN 20
  SAY #94694
  IF ~~ THEN EXTERN ~OHBTIMMO~ 68
END

IF ~~ THEN BEGIN 21
  SAY #94697
  IF ~~ THEN REPLY #94698 GOTO 23
  IF ~~ THEN REPLY #94699 GOTO 24
  IF ~~ THEN REPLY #94700 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94688 GOTO 26
  IF ~~ THEN REPLY #94693 EXIT
END

IF ~~ THEN BEGIN 22
  SAY #94701
  IF ~~ THEN REPLY #94702 GOTO 23
  IF ~~ THEN REPLY #94686 GOTO 24
  IF ~~ THEN REPLY #94703 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94704 GOTO 26
  IF ~~ THEN REPLY #94693 EXIT
END

IF ~~ THEN BEGIN 23
  SAY #94705
  IF ~~ THEN REPLY #94686 GOTO 24
  IF ~~ THEN REPLY #94706 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94707 GOTO 26
  IF ~~ THEN REPLY #94693 EXIT
END

IF ~~ THEN BEGIN 24
  SAY #94708
  IF ~~ THEN REPLY #94709 GOTO 23
  IF ~~ THEN REPLY #94710 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94711 GOTO 26
  IF ~~ THEN REPLY #94693 EXIT
END

IF ~~ THEN BEGIN 25
  SAY #94712
  IF ~~ THEN REPLY #94685 GOTO 23
  IF ~~ THEN REPLY #94713 GOTO 24
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94714 GOTO 26
  IF ~~ THEN REPLY #94693 EXIT
END

IF ~~ THEN BEGIN 26
  SAY #94715
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #94716
  IF ~~ THEN REPLY #94717 GOTO 23
  IF ~~ THEN REPLY #94686 GOTO 24
  IF ~~ THEN REPLY #94718 GOTO 25
  IF ~~ THEN REPLY #94693 EXIT
END

IF ~  Global("ohb_pc_insulted_tempus","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 28
  SAY #94719
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_pc_insulted_tempus","global",0)
Global("ohb_pc_praised_tempus","global",1)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 29
  SAY #94720
  IF ~~ THEN REPLY #94721 GOTO 23
  IF ~~ THEN REPLY #94686 GOTO 24
  IF ~~ THEN REPLY #94722 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94725 GOTO 26
  IF ~~ THEN REPLY #94723 EXIT
END

IF ~  Global("ohb_pc_insulted_tempus","global",0)
Global("ohb_pc_praised_tempus","global",0)
GlobalLT("ohb_finale","global",6)
~ THEN BEGIN 30
  SAY #94724
  IF ~~ THEN REPLY #94685 GOTO 23
  IF ~~ THEN REPLY #94686 GOTO 24
  IF ~~ THEN REPLY #94718 GOTO 25
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_curell_ask_gauntlet","global",0)
~ THEN REPLY #94725 GOTO 26
  IF ~~ THEN REPLY #94723 EXIT
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_curel_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",0)
~ THEN BEGIN 31
  SAY #92976
  IF ~~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ GOTO 33
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_curel_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",1)
~ THEN BEGIN 32
  SAY #92976
  IF ~~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ GOTO 33
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_curel_line_gift","global",1)
~ THEN BEGIN 33
  SAY #92977
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY #92976
  IF ~  Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",0)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,1,0,0)
GiveItemCreate("potn05",Player1,1,0,0)
~ EXTERN ~OHBLARIS~ 21
  IF ~  Global("ohb_laris_line_gift","global",0)
Global("ohb_pc_praised_tempus","global",1)
~ THEN DO ~SetGlobal("ohb_curel_line_gift","global",1)
GiveItemCreate("potn09",Player1,2,0,0)
GiveItemCreate("potn05",Player1,2,0,0)
~ EXTERN ~OHBLARIS~ 21
END

IF ~~ THEN BEGIN 35
  SAY #94295
  IF ~~ THEN EXTERN ~OHBMOLZA~ 59
END

IF ~~ THEN BEGIN 36
  SAY #94297
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #94298
  IF ~~ THEN EXTERN ~OHBLARIS~ 25
END

IF ~~ THEN BEGIN 38
  SAY #94301
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",5)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut22")
~ EXIT
END
