// creator  : weidu (version 24900)
// argument : OHBGUA11.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBGUA11~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY ~What's the matter, slaves? Nowhere to go? That whole rebellion thing doesn't look so good now, does it?~
  IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN GOTO 1
  IF ~  GlobalLT("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN DO ~CreateCreature("ohbbrodl",[1530.2240],NW)
~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~When reinforcements arrive, you'll be sorry. Then we'll—argh!~
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut21")
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~When reinforcements arrive, you'll be sorry. Then we'll—~
  IF ~~ THEN EXTERN ~OHBBRODL~ 76
END
