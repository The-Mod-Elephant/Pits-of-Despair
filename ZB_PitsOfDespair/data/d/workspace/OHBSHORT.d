// creator  : weidu (version 24900)
// argument : OHBSHORT.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBSHORT~

IF ~  Global("OHB_COOK_DEAD","GLOBAL",1)
GlobalGT("OHB_FINALE","GLOBAL",0)
~ THEN BEGIN 0
  SAY #100670 /* ~<CHARNAME>, what's going on out there?~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 14
END

IF ~  Global("OHB_KITCHEN_TALK","GLOBAL",1)
Global("tier","GLOBAL",1)
~ THEN BEGIN 1
  SAY #90674 /* ~No talking here! No talking!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY #93834 /* ~Please, don't tell him...~ */
  IF ~~ THEN EXTERN ~OHBCOOK~ 37
END

IF ~  False()
Global("OHB_COOK_POISON","GLOBAL",5)
~ THEN BEGIN 3
  SAY #93889 /* ~What'll happen to us?~ */
  IF ~~ THEN EXIT
END

IF ~  False()
Global("OHB_COOK_POISON","GLOBAL",2)
~ THEN BEGIN 4
  SAY #93906 /* ~Sorry, can't talk. Marduuk won't allow it.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("ohb_finale","global",6)
Global("OHB_COOK_DEAD","GLOBAL",2)
~ THEN BEGIN 5
  SAY #92973 /* ~Go get 'em, <CHARNAME>! Strike a blow for us all!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY #93851 /* ~We've seen you in the arena. Can we talk?~ */
  IF ~~ THEN REPLY #91948 /* ~Go ahead.~ */ EXTERN ~OHBMARDU~ 19
  IF ~~ THEN REPLY #92282 /* ~Who are you two?~ */ EXTERN ~OHBMARDU~ 28
  IF ~~ THEN REPLY #92097 /* ~I don't have time for this.~ */ EXTERN ~OHBMARDU~ 27
END

IF ~~ THEN BEGIN 7
  SAY #93863 /* ~We can't take it anymore.~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 22
END

IF ~~ THEN BEGIN 8
  SAY #93869 /* ~The cook LOVES mushrooms.~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 24
END

IF ~~ THEN BEGIN 9
  SAY #93877 /* ~Quick, Marduuk, let's get back—I think I hear the cook.~ */
  IF ~~ THEN DO ~AddJournalEntry(94554,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY #93879 /* ~Come, Marduuk, let's go back—I hear the cook looking for us.~ */
  IF ~~ THEN DO ~SetGlobal("OHB_SOUSCHEF_PLOT","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #93881 /* ~That's not my real name. Cook thought it'd be funny to give me a nickname like Dennaton does with the arena performers.~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 29
END

IF ~~ THEN BEGIN 12
  SAY #93885 /* ~It's been going on like this for YEARS.~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 31
END

IF ~~ THEN BEGIN 13
  SAY #90657 /* ~You didn't say he'd die, Marduuk! You said he'd just get sick and take to his bed a tenday or two. Gods! What have we done?~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 33
END

IF ~~ THEN BEGIN 14
  SAY #90660 /* ~If you say so...~ */
  IF ~~ THEN EXTERN ~OHBMARDU~ 35
END

IF ~~ THEN BEGIN 15
  SAY #90667 /* ~Shhh! He'll—~ */
  IF ~~ THEN EXTERN ~OHBCOOK~ 50
END

IF ~  Global("OHB_KITCHEN_TALK","GLOBAL",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 16
  SAY #90672 /* ~Marduuk…~ */
  IF ~~ THEN DO ~SetGlobal("OHB_KITCHEN_TALK","GLOBAL",1)
~ EXTERN ~OHBMARDU~ 40
END
