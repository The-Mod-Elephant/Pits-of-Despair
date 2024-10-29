// creator  : weidu (version 24900)
// argument : OHBNPC01.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBNPC01~

IF ~  AreaCheck("OH9000")
~ THEN BEGIN 0
  SAY ~Shadowstep~
  IF ~~ THEN REPLY ~Yes.~ DO ~SetGlobal("NPC01_HIRED","GLOBAL",1)
ChangeEnemyAlly(Myself,ALLY)
MakeGlobal()
~ EXIT
  IF ~~ THEN REPLY ~No.~ EXIT
END
