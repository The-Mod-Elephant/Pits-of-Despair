BEGIN ~OHBWING~

IF ~~ THEN BEGIN 0
  SAY #90460
  IF ~~ THEN DO ~SetGlobal("OHB_BP2_CAPTURE","GLOBAL",4)
SetGlobalTimer("ohb_suzail_delay","oh8000",60)
SetGlobalTimer("ohb_najim_intro","oh8000",5)
Enemy()
ActionOverride("ohbbanno",Enemy())
ActionOverride("ohbthass",Enemy())
ActionOverride("ohbdorma",Enemy())
ActionOverride("ohbjoker",Enemy())
ActionOverride("ohbpol",Enemy())
ChangeEnemyAlly("ohbnajim",GOODCUTOFF)
ReallyForceSpellRES("ohbsuza1","ohbnajim")
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #100573
  IF ~~ THEN REPLY #100605 EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY #100606 EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY #100607 EXTERN ~OHBDENNA~ 246
  IF ~~ THEN REPLY #100608 EXTERN ~OHBDENNA~ 246
END

IF ~~ THEN BEGIN 2
  SAY #100575
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",8)
Enemy()
ActionOverride("ohbjoker",Enemy())
ActionOverride("ohbdorma",Enemy())
ActionOverride("ohbbanno",Enemy())
ActionOverride("ohbthass",Enemy())
ActionOverride("ohbpol",Enemy())
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_105","GLOBAL",1)
~ THEN BEGIN 3
  SAY #94236
  IF ~~ THEN EXTERN ~OHBDENNA~ 272
END

IF ~~ THEN BEGIN 4
  SAY #94238
  IF ~~ THEN EXTERN ~OHBDENNA~ 273
END

IF ~~ THEN BEGIN 5
  SAY #94240
  IF ~~ THEN EXTERN ~OHBDENNA~ 274
END
