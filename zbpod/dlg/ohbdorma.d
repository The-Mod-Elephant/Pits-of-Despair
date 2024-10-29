// creator  : weidu (version 24900)
// argument : OHBDORMA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBDORMA~

IF ~  Global("ohb_finale","GLOBAL",8)
Global("OHB_NAJIM","GLOBAL",4)
~ THEN BEGIN 0
  SAY ~The time has come to shed this appalling disguise. I am Dormamus no more! Now come, <CHARNAME>, and let us win our freedom!~ [OH100610]
  IF ~~ THEN DO ~SetGlobal("OHB_NAJIM","GLOBAL",5)
CreateVisualEffectObject("SPPOLYMP",Myself)
ChangeAnimation("ohbnajim")
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Is it really you?~
  IF ~~ THEN EXTERN ~OHBTHASS~ 0
END

IF ~~ THEN BEGIN 2
  SAY ~You should have stayed out of this, djinni. Guilty consciences are unhealthy.~
  IF ~~ THEN EXTERN ~OHBNAJIM~ 17
END

IF ~~ THEN BEGIN 3
  SAY ~No. I'm keeping this one for myself.~
  IF ~~ THEN EXTERN ~OHBTHASS~ 1
END
