BEGIN zbmes

IF ~IsGabber(Player1)~ THEN BEGIN zbmessenger
SAY @0 /* Why, hello there. I was told that you might be hard to find—for once I’m glad that my source was wrong. Makes my job a lot easier and yours harder, I’d wager.   */
= @1 /* I’ve got a letter for you. You’ve drawn the attention of someone very curious about your… talents. Congratulations, I suppose. Its contents might make up for any sore feelings caused by your lack of anonymity. If you’re feeling charitable, a coin will do. Otherwise, let’s call it a favor owed. */
  IF ~PartyGoldGT(0)~ THEN REPLY @2 /* Here, take a gold piece as my thanks. */ GOTO zbmessenger1
  IF ~~ THEN REPLY @3 /* Haven’t you already been paid? */ GOTO zbmessenger2
  IF ~~ THEN REPLY @4 /* Your job is complete, now get out of my sight. */ GOTO  zbmessenger3
END


IF ~~ THEN BEGIN zbmessenger1
  SAY @5 /* How touching. Generosity like yours makes it all worth it. */
  IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4)
  GiveItemCreate("zbrrrind",Player1,1,0,0)
  TakePartyGold(1) ~ EXIT
END

IF ~~ THEN BEGIN zbmessenger1.5 /* the 5 gold variant */
  SAY @5 /* How touching. Generosity like yours makes it all worth it. */
  IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4)
  GiveItemCreate("zbrrrind",Player1,1,0,0)
  TakePartyGold(5)~ EXIT
END

IF ~~ THEN BEGIN zbmessenger2
  SAY @6 /* Fast and reliable only gets you so far in this business. I’m sure one as dignified as yourself can spare a few coins for quality service. */
  IF ~PartyGoldGT(0)~ THEN REPLY @7 /* Fine, take a gold piece. Don’t spend it all in one place. */ GOTO zbmessenger1
  IF ~PartyGoldGT(4)~ THEN REPLY @8 /* You're right, take 5 gold for your time. */ GOTO zbmessenger1.5
  IF ~~ THEN REPLY @9 /* Don’t test me, urchin. You are overstaying your welcome. */ GOTO zbmessenger3
END

IF ~~ THEN BEGIN zbmessenger3
  SAY @10 /* Shame on me for thinking the high and mighty hero could spare a single coin. */
  IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4)
  GiveItemCreate("zbrrrind",Player1,1,0,0)~ EXIT
END

INTERJECT_COPY_TRANS ZBMES zbmessenger ZBMESVANILIAINTERJECT
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN ~She's a sly one… let us open this gift with care.~
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~Give her a gold piece, <CHARNAME>. We can't really be as easy to find as she claims.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~Don't give th' lass any more 'n she's due <CHARNAME>, lest the whole of Athkatla be thinking we give handouts.~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN ~Messengers ought not to be so flippant in their tasks. Do not reward poor behavior, <CHARNAME>.~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~This letter will be a cry for help, no doubt. We would do well to heed its call.~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~I've spent too long around Harpers not to recognize when someone is purposefully undermining their own abilities.~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~They should open a mailbox on your shoulders, <CHARNAME>. You receive enough messages to warrant it.~
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN ~Leave it and begone, waif.~
END
