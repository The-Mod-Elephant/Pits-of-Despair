// creator  : weidu (version 24900)
// argument : OHBLAMP1.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBLAMP1~

IF ~  Global("OHB_NAJIM","GLOBAL",0)
~ THEN BEGIN 0
  SAY ~An ornate iron flask lies on the pedestal. Strange, hypnotic shapes whirl within the translucent metal. A hollow yell reaches your ears: "Let me out! Someone, let me out of here!" You recognize the voice of Najim, the djinni who tried to warn you of the Planar Hunters' attack in the tavern.~
  IF ~~ THEN REPLY ~Najim, is that you?~ GOTO 1
  IF ~~ THEN REPLY ~(Open the bottle.)~ DO ~SetGlobal("OHB_NAJIM","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ohbcut10")
~ EXIT
  IF ~~ THEN REPLY ~(Leave the bottle alone.)~ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Najim does not appear to hear or see you.~
  IF ~~ THEN DO ~DestroySelf()
~ EXIT
END

IF ~  Global("OHB_DORMAMUS_TRAPPED","GLOBAL",1)
~ THEN BEGIN 2
  SAY ~The bottle is now filled with swirling flames and smoke. Smoldering red eyes glare at you, as if trying to burn through the bottle's iron. A voice filled with rage bellows: "I will find you Najim, you and the <PRO_RACE> you've bound yourself to! I will find you and watch you burn for eternity!"~
  IF ~~ THEN EXIT
END
