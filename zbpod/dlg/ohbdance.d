// creator  : weidu (version 24900)
// argument : OHBDANCE.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBDANCE~

IF ~  Global("OHB_DORMAMUS_DOOR","GLOBAL",0)
~ THEN BEGIN 0
  SAY ~Do you have business with Master Dormamus? He's out at the moment.~
  IF ~  Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~"Swordfish."~ DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY ~Dormamus invited me to visit his beautiful quarters anytime, even if he's absent.~ GOTO 1
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY ~Dormamus invited me to visit his beautiful quarters anytime, even if he's absent.~ GOTO 3
  IF ~  CheckStatGT(Player1,15,STR)
~ THEN REPLY ~Dormamus asked me to get something from his room. I'll let him know you wouldn't let me in.~ GOTO 2
  IF ~  !CheckStatGT(Player1,15,STR)
~ THEN REPLY ~Dormamus asked me to get something from his room. I'll let him know you wouldn't let me in.~ GOTO 3
  IF ~~ THEN REPLY ~I'll come back.~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Come in, please. Make yourself comfortable.~
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~No, please don't! If Master Dormamus sent you, then all is well. Come in, come in.~
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Do you have the password?~
  IF ~  Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~"Swordfish."~ DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
~ EXIT
  IF ~~ THEN REPLY ~"Orange pantaloons"?~ GOTO 4
  IF ~~ THEN REPLY ~"The salmon are early this year."~ GOTO 4
  IF ~~ THEN REPLY ~"Let me in or I'll kill you."~ GOTO 5
  IF ~~ THEN REPLY ~No, sorry.~ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY ~Ah, no. I don't think so.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Eeek!~
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_DOOR","GLOBAL",1)
Unlock("Dormamus_door")
OpenDoor("Dormamus_door")
SetGlobal("ohb_dancers_panic","oh8100",1)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~You'll need the password.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,1)
~ THEN BEGIN 7
  SAY ~Isn't this place beautiful?~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,2)
~ THEN BEGIN 8
  SAY ~Would you like to see me dance?~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,3)
~ THEN BEGIN 9
  SAY ~I think I'll go take a nap.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,4)
~ THEN BEGIN 10
  SAY ~Anyone else hungry? I'm having some grapes sent up.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,5)
~ THEN BEGIN 11
  SAY ~I hope the cook makes his famous mushroom soup again soon.~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,6)
~ THEN BEGIN 12
  SAY ~Would you like to brush my hair?~
  IF ~~ THEN EXIT
END

IF ~  RandomNum(7,7)
~ THEN BEGIN 13
  SAY ~The silk on these cushions is itchy.~
  IF ~~ THEN EXIT
END
