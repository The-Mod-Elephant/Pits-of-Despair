// creator  : weidu (version 24900)
// argument : OHBMESSE.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBMESSE~

IF ~~ THEN BEGIN 0
  SAY ~Try it. You won't get three steps before you're sliced to ribbons. Now go eat your dinner.~
  IF ~~ THEN EXTERN ~OHBTIMMO~ 69
END

IF ~~ THEN BEGIN 1
  SAY ~Proceed south to the banquet hall. You can't miss it.~
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut05")
~ EXIT
END

IF ~  OR(2)
Global("OHB_DINNERBELL","MYAREA",0)
Global("OHB_DINNERBELL","MYAREA",1)
~ THEN BEGIN 2
  SAY ~Quit yer jabbering and listen up! All performers are to report to the banquet hall for the welcoming feast!~
  IF ~~ THEN DO ~SetGlobal("OHB_DINNERBELL","MYAREA",2)
~ EXTERN ~OHBGEZZT~ 59
END

IF ~~ THEN BEGIN 3
  SAY ~The cook's really outdone himself this time, so enjoy. For some of you, it'll be your last meal. Now get going!~
  IF ~~ THEN EXTERN ~OHBHORT~ 46
END

IF ~~ THEN BEGIN 4
  SAY ~Enough.You aren't fighting anyone, orc. Not yet. And you, drow, save the wit for the arena.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~I'll not say it again. On your way!~
  IF ~~ THEN EXTERN ~OHBVOGHI~ 65
END
