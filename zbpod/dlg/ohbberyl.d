// creator  : weidu (version 24900)
// argument : OHBBERYL.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBBERYL~

IF ~~ THEN BEGIN 0
  SAY @113 /* We heard you. The answer's no. Dennaton doesn't want his performers injured outside the arena. You don't like it, take it up with him. */
  IF ~~ THEN EXTERN ~OHBTARTL~ 2
END

IF ~~ THEN BEGIN 1
  SAY @114 /* Yes. It does a disservice to knuckle-dragging apes everywhere. */
  IF ~~ THEN EXTERN ~OHBTARTL~ 3
END

IF ~~ THEN BEGIN 2
  SAY @115 /* Yes. Yes, we are. */
  IF ~~ THEN EXTERN ~OHBARZOL~ 2
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 3
  SAY @116 /* I'm not paid enough to associate with scum. Talk to Tartle. */
  IF ~~ THEN REPLY @117 /* Hey, I'm not scum! */ GOTO 5
  IF ~~ THEN REPLY @118 /* What if I need to talk to you? */ GOTO 6
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN REPLY @119 /* But you're so much more pleasant than him! But I'll go if that's what you want. */ DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN REPLY @119 /* But you're so much more pleasant than him! But I'll go if that's what you want. */ DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",1)
~ THEN REPLY @119 /* But you're so much more pleasant than him! But I'll go if that's what you want. */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 4
  SAY @120 /* If you need something, talk to Tartle. */
  IF ~~ THEN REPLY @118 /* What if I need to talk to you? */ GOTO 6
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN REPLY @121 /* Very well. */ DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN REPLY @121 /* Very well. */ DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",1)
~ THEN REPLY @121 /* Very well. */ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @122 /* Wow. I hurt a slave's feelings. That rips me up inside. Now bugger off! */
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @123 /* Then you'll STILL need to talk to Tartle, because I'll not speak with you. */
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_BERYL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_ARZOL_TALK","GLOBAL",1)
Global("OHB_BERYL_TALK","GLOBAL",1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @124 /* Well, if you're not staying, neither are we. We're not paid enough to deal with the likes of <PRO_HIMHER>! */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
SetGlobal("ohb_finale_arena2_flee","global",1)
EscapeArea()
ActionOverride("ohbarzol",EscapeArea())
ActionOverride("ohbtartl",EscapeArea())
ActionOverride("ohbsymm",EscapeArea())
~ EXIT
END
