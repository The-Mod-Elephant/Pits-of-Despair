BEGIN ~OHBSTIRV~

IF ~Global("OHB_FINALE","GLOBAL",0)~
THEN BEGIN 0
  SAY @3038 /* Look at my puppies. Pretty, aren't they? You wanna pet 'em? Take one for a walk? */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @3039 /* Don't look at me all crooked-like. I know them aren't puppies! You dirty slave, think I'm dumb? Look who's dumb! You're the slave. You got caught, just like my puppies! Hah! */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @3040 /* You slaves are no better than them—in fact, you're worse! You smell, an' you ain't half as pretty. */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @3041 /* You know what my puppies are good at? Fighting. Oh yes, they are. Wanna take one out for a tumble? It'll cost. But don't worry—I won't let the fighting go to the end. Least not theirs! */
  IF ~Global("ohb_stirv_training","global",0)~ THEN REPLY @3042 /* Dialogue for first training goes here  */ GOTO 7
  IF ~Global("ohb_stirv_training","global",1)~ THEN REPLY @3042 /* Dialogue for second training goes here  */ GOTO 8
  IF ~Global("ohb_stirv_training","global",2)~ THEN REPLY @3042 /* Dialogue for thord training goes here  */ GOTO 9
  IF ~~ THEN REPLY @973 /* Not right now. */ GOTO 15
END

IF ~~ THEN BEGIN 7
  SAY @3050 /* Good, give the gold here. */
  IF ~~ THEN DO ~
  SetGlobal("ohb_stirv_training","global",1)
  ClearAllActions()
  StartCutSceneMode()
  StartCutScene("zbtrain1")
  ~
  EXIT
END

IF ~~ THEN BEGIN 8
  SAY @3050 /* Good, give the gold here. */
  IF ~~ THEN DO ~
  SetGlobal("ohb_stirv_training","global",2)
  ClearAllActions()
  StartCutSceneMode()
  StartCutScene("zbtrain2")
  ~
  EXIT
END

IF ~~ THEN BEGIN 9
  SAY @3050 /* Good, give the gold here. */
  IF ~~ THEN DO ~
  SetGlobal("ohb_stirv_training","global",3)
  ClearAllActions()
  StartCutSceneMode()
  StartCutScene("zbtrain3")
  ~
  EXIT
END



IF ~~ THEN BEGIN 15
  SAY @3051 /* Off with you, then. I got work to do. Daddy's coming, darlings! */
  IF ~~ THEN EXIT
END
