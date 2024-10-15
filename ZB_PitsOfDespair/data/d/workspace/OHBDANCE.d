// creator  : weidu (version 24900)
// argument : OHBDANCE.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBDANCE~

IF ~  Global("OHB_DORMAMUS_DOOR","GLOBAL",0)
~ THEN BEGIN 0
  SAY #92790 /* ~Do you have business with Master Dormamus? He's out at the moment.~ */
  IF ~  Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY #92787 /* ~"Swordfish."~ */ DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92791 /* ~Dormamus invited me to visit his beautiful quarters anytime, even if he's absent.~ */ GOTO 1
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92791 /* ~Dormamus invited me to visit his beautiful quarters anytime, even if he's absent.~ */ GOTO 3
  IF ~  CheckStatGT(Player1,15,STR)
~ THEN REPLY #92792 /* ~Dormamus asked me to get something from his room. I'll let him know you wouldn't let me in.~ */ GOTO 2
  IF ~  !CheckStatGT(Player1,15,STR)
~ THEN REPLY #92792 /* ~Dormamus asked me to get something from his room. I'll let him know you wouldn't let me in.~ */ GOTO 3
  IF ~~ THEN REPLY #92794 /* ~I'll come back.~ */ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92795 /* ~Come in, please. Make yourself comfortable.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92796 /* ~No, please don't! If Master Dormamus sent you, then all is well. Come in, come in.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY #92788 /* ~Do you have the password?~ */
  IF ~  Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY #92787 /* ~"Swordfish."~ */ DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
  IF ~~ THEN REPLY #101649 /* ~"Orange pantaloons"?~ */ GOTO 4
  IF ~~ THEN REPLY #101650 /* ~"The salmon are early this year."~ */ GOTO 4
  IF ~~ THEN REPLY #101651 /* ~"Let me in or I'll kill you."~ */ GOTO 5
  IF ~~ THEN REPLY #101652 /* ~No, sorry.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY #92789 /* ~Ah, no. I don't think so.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY #92786 /* ~Eeek!~ */
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
SetGlobal("ohb_dancers_panic","oh8100",1)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY #92793 /* ~You'll need the password.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,1)
~ THEN BEGIN 7
  SAY #92797 /* ~Isn't this place beautiful?~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,2)
~ THEN BEGIN 8
  SAY #92798 /* ~Would you like to see me dance?~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,3)
~ THEN BEGIN 9
  SAY #92799 /* ~I think I'll go take a nap.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,4)
~ THEN BEGIN 10
  SAY #92800 /* ~Anyone else hungry? I'm having some grapes sent up.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,5)
~ THEN BEGIN 11
  SAY #92801 /* ~I hope the cook makes his famous mushroom soup again soon.~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,6)
~ THEN BEGIN 12
  SAY #92802 /* ~Would you like to brush my hair?~ */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,7)
~ THEN BEGIN 13
  SAY #92803 /* ~The silk on these cushions is itchy.~ */
  IF ~~ THEN EXIT
END
