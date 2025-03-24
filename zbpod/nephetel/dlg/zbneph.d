BEGIN ZBNEPH

/// Introduction ///
IF ~Global("ZB_NEPH_BEGIN", "GLOBAL",1)~ THEN BEGIN zbnepharenaintro
  SAY @11 /* Well look here, a mighty Bhaalspawn. They say that you are one of a kind, more than your brothers and sisters in Murder. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_BEGIN","GLOBAL",2)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_BEGIN","GLOBAL",2)~ GOTO zbneph1
END

IF ~~ BEGIN zbneph1
  SAY @14 /* My name is Nephetel. Perhaps you would allow me to give you a word of advice? */
  IF ~~ THEN REPLY @15 /* Of course my lady. */ GOTO zbneph2
  IF ~~ THEN REPLY @16 /* Whatcha got? */ GOTO zbneph2
  IF ~~ THEN REPLY @17 /* I've no need for advice from a stranger. I keep my own counsel. */ GOTO zbneph3
END

IF ~~ BEGIN zbneph2
  SAY @18 /* Before you begin in the arena you should consider fighting in the Creature Features. They'll give you a…  taste for the real matches, see Stirv in the kennel to get started. */
    =
  @19 /* Watch out for that crazy bastard Stirv. He is a sadist. His 'puppies' love him and he performs all kinds of experiments on them using concoctions, mutations, and devilish training techniques. He has even been able to get them to fight as a team without ripping each other apart. If there are great evils like the Pits of Despair, then there are lesser evils that hide within them and Stirv is one. He will laugh and delight in watching his pets eat you alive. */
  IF ~~ EXIT
END

IF ~~ BEGIN zbneph3
  SAY @20 /* A cold response but understandable. You should still heed my word and consider fighting in the Creature Features in the kennel. There is something to put your fangs into there. */
  IF ~~ EXIT
END
///

/* main arena hub */
IF ~IsGabber(Player1)~ zbnepharenahub
SAY @21 /* Hero of Baldur's Gate, eh? The star in the night sky as far as Dennaton is concerned. What can I do for you? */
+ ~Global("nepharena1","LOCALS",0)~ + @22 /* Who are you? */ + zbnepharena1
+ ~Global("nepharena2","LOCALS",0)~ + @23 /* How did you come to this place? */ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + @24 /* Would you be interested in helping me escape this place? */ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + @25 /* You look familiar. There was this messenger who got me into this mess and your voice sounds suspiciously similar. */ + zbnepharena4
+ ~Global("nepharena5","LOCALS",0)~ + @26 /* You stood next to Dennaton during the feast. Are you two close? */ + zbnepharena5
++ @27 /* I'll let you get back to whatever you were doing. */ EXIT /* reword this line bucket omg */
END

IF ~~ zbnepharena1
SAY @28 /* Me? My name is Nephetel, nice to meet you. */
IF ~~ DO ~SetGlobal("nepharena1","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena2
SAY @29 /* I got trapped in a spider's web and found myself here, just like you. */
IF ~~ DO ~SetGlobal("nepharena2","LOCALS",1)~ + zbnepharenahub2
END


IF ~~ zbnepharena3
SAY @30 /* Between the two of us you are not the only one with a bone to pick with Dennaton. It is unwise to discuss it now openly, yes? Get familiar with what we're dealing with and learn the lay of the land and we'll talk again soon. */
IF ~~ DO ~SetGlobal("nepharena3","LOCALS",1)~ + zbnepharenahub2
END


IF ~~ zbnepharena4
SAY @31 /* Being suspicious is fine, but rude as well? A woman is a cavalcade of mystery and I'm no exception. */
IF ~~ DO ~SetGlobal("nepharena4","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena5
SAY @32 /* Why would we be? I always like to stay close to those who might need a nudge with my dagger. */
IF ~~ DO ~SetGlobal("nepharena5","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharenahub2
SAY @33 /* Anything else I can clear up for you? */
+ ~Global("nepharena1","LOCALS",0)~ + @22 /* Who are you? */ + zbnepharena1
+ ~Global("nepharena2","LOCALS",0)~ + @23 /* How did you come to this place? */ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + @24 /* Would you be interested in helping me escape this place? */ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + @25 /* You look familiar. There was this messenger who got me into this mess and your voice sounds suspiciously similar. */ + zbnepharena4
+ ~Global("nepharena5","LOCALS",0)~ + @26 /* You stood next to Dennaton during the feast. Are you two close? */ + zbnepharena5
++ @27 /* I'll let you get back to whatever you were doing. */ EXIT /* reword this line bucket omg */
END
