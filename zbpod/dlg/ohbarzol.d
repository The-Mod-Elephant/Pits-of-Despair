// creator  : weidu (version 24900)
// argument : OHBARZOL.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBARZOL~

IF ~~ THEN BEGIN 0
  SAY @10 /* Sorry, I don't think so. */
  IF ~~ THEN EXTERN ~OHBTARTL~ 1
END

IF ~~ THEN BEGIN 1
  SAY @11 /* That IS inappropriate! */
  IF ~~ THEN EXTERN ~OHBBERYL~ 1
END

IF ~~ THEN BEGIN 2
  SAY @12 /* So shut your face. Dennaton hasn't prohibited roughing you up. */
  IF ~~ THEN EXTERN ~OHBTARTL~ 4
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 3
  SAY @13 /* I've nothing to say to you, performer. */
  IF ~~ THEN REPLY @14 /* Rude! */ GOTO 5
  IF ~~ THEN REPLY @15 /* Oh, I doubt that's true. I bet you've seen all sorts of things around here. */ GOTO 6
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN REPLY @16 /* Then I'll leave you alone. */ DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN REPLY @16 /* Then I'll leave you alone. */ DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN REPLY @16 /* Then I'll leave you alone. */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 4
  SAY @17 /* Quit bothering me! */
  IF ~~ THEN REPLY @14 /* Rude! */ GOTO 5
  IF ~~ THEN REPLY @18 /* Come on, I'm bored. I bet you've seen all sorts of interesting things 'round here. Tell me some of them, please. */ GOTO 6
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN REPLY @19 /* As you wish. */ DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN REPLY @19 /* As you wish. */ DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN REPLY @19 /* As you wish. */ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @20 /* Not nearly as rude as a sword in the face, which is what you'll get if you don't leave me alone! */
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21 /* What part of "I've nothing to say to you," don't you understand? Begone! */
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN EXIT
END
