// creator  : weidu (version 24900)
// argument : OHBCOGUA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBCOGUA~

IF ~~ THEN BEGIN 0
  SAY ~I could fry you and your friends a dozen ways. Stay out of the kitchen.~
  IF ~~ THEN EXTERN ~OHBCOOK~ 5
END

IF ~  GlobalLT("OHB_COOK_POISON","GLOBAL",5)
Global("OHB_COOK_MUSHROOM","GLOBAL",0)
RandomNum(4,1)
~ THEN BEGIN 1
  SAY ~You have no business in the kitchen. Get out of here, now.~
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("OHB_COOK_POISON","GLOBAL",5)
Global("OHB_COOK_MUSHROOM","GLOBAL",0)
RandomNum(4,2)
~ THEN BEGIN 2
  SAY ~Move! You're in the way.~
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("OHB_COOK_POISON","GLOBAL",5)
Global("OHB_COOK_MUSHROOM","GLOBAL",0)
RandomNum(4,3)
~ THEN BEGIN 3
  SAY ~Why are you still here? Go away before I get angry.~
  IF ~~ THEN EXIT
END

IF ~  GlobalLT("OHB_COOK_POISON","GLOBAL",5)
Global("OHB_COOK_MUSHROOM","GLOBAL",0)
RandomNum(4,4)
~ THEN BEGIN 4
  SAY ~What did I tell you? Get out!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Can I have a bit of the soup too, boss?~
  IF ~~ THEN EXTERN ~OHBCOOK~ 28
END

IF ~  OR(2)
Global("OHB_COOK_MUSHROOM","GLOBAL",1)
Global("OHB_COOK_MUSHROOM","GLOBAL",2)
~ THEN BEGIN 6
  SAY ~Cook's waiting on that mushroom chunk. Don't disappoint him.~
  IF ~~ THEN EXIT
END

IF ~  OR(2)
Global("OHB_COOK_POISON","GLOBAL",5)
Global("OHB_COOK_MUSHROOM","GLOBAL",3)
~ THEN BEGIN 7
  SAY ~Cook doesn't mind you so much. Just don't bother him.~
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 8
  SAY ~Move. You're not needed here.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Out! Out of here, now!~
  IF ~~ THEN EXTERN ~OHBCOOK~ 47
END
