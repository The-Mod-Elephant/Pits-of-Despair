BEGIN ~OHBDANCE~

IF ~  Global("OHB_DORMAMUS_DOOR","GLOBAL",0)
~ THEN BEGIN 0
  SAY #92790
  IF ~  Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY #92787 DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92791 GOTO 1
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92791 GOTO 3
  IF ~  CheckStatGT(Player1,15,STR)
~ THEN REPLY #92792 GOTO 2
  IF ~  !CheckStatGT(Player1,15,STR)
~ THEN REPLY #92792 GOTO 3
  IF ~~ THEN REPLY #92794 EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92795
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92796
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY #92788
  IF ~  Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY #92787 DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
  IF ~~ THEN REPLY #101649 GOTO 4
  IF ~~ THEN REPLY #101650 GOTO 4
  IF ~~ THEN REPLY #101651 GOTO 5
  IF ~~ THEN REPLY #101652 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY #92789
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY #92786
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
SetGlobal("ohb_dancers_panic","oh8100",1)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY #92793
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,1)
~ THEN BEGIN 7
  SAY #92797
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,2)
~ THEN BEGIN 8
  SAY #92798
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,3)
~ THEN BEGIN 9
  SAY #92799
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,4)
~ THEN BEGIN 10
  SAY #92800
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,5)
~ THEN BEGIN 11
  SAY #92801
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,6)
~ THEN BEGIN 12
  SAY #92802
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,7)
~ THEN BEGIN 13
  SAY #92803
  IF ~~ THEN EXIT
END
