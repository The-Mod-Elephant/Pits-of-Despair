BEGIN ZBNEPH

/// Introduction ///
IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO","GLOBAL",0) ReputationLT(Player1,7)~ THEN BEGIN zbnepharenaintro1
  SAY @36 /* Your reputation has preceded you. You certainly don't mind getting your hands dirty. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,15)~ THEN BEGIN zbnepharenaintro2
  SAY @37 /* People seem to know you as someone who they can count on when they are in need. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,6) ReputationLT(Player1,17)~ THEN BEGIN zbnepharenaintro3
  SAY @11 /* Well look here, a mighty Bhaalspawn. They say that you are one of a kind, more than your brothers and sisters in Murder. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~~ BEGIN zbneph1
  SAY @14 /* My name is Nephetel. Perhaps you would allow me to give you a word of advice? */
  IF ~~ THEN REPLY @15 /* Of course my lady. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ GOTO zbneph2
  IF ~~ THEN REPLY @16 /* Whatcha got? */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ GOTO zbneph2
  IF ~~ THEN REPLY @17 /* I've no need for advice from a stranger. I keep my own counsel. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",2)~ GOTO zbneph3
END

IF ~~ BEGIN zbneph2
  SAY @18 /* Before you begin in the arena you should consider fighting in the training matches. They'll give you a …  taste for the real matches, see Stirv in the kennel to get started. */
    =
  @19 /* Watch out for that crazy bastard Stirv. He is a sadist. His 'puppies' love him and he performs all kinds of experiments on them using concoctions, mutations, and devilish training techniques. He has even been able to get them to fight as a team without ripping each other apart and he will delight in watching his pets eat you alive. */
  IF ~~ EXIT
END

IF ~~ BEGIN zbneph3
  SAY @20 /* Good, a tough response. You should still heed my words. Consider fighting in the training matches in the kennel. */
  IF ~~ EXIT
END
///

/* main arena hub */
IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ THEN BEGIN zbnepharenahub01
  SAY @21 /* Known as the Hero of Baldur's Gate? Hmm, and as far as Dennaton is concerned the main attraction in his three ring circus. You don't look as savage as I expected, I can see why he was interested in you. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharenahub
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",2)~ THEN BEGIN zbnepharenahub02
  SAY @38 /* I thought the 'Hero' of Baldur's Gate didn't need my advice. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharenahub
END


IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ THEN BEGIN zbnepharenahub
SAY @22 /* What can I do for you? */
+ ~Global("nepharena1","LOCALS",0)~ + @23 /* How did you come to this place? */ + zbnepharena1
+ ~Global("nepharena2","LOCALS",0)~ + @39 /* I only know your name, Could you tell me a bit about yourself? */ /* I only know your name, tell me a bit about yourself? */ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + @24 /* Do you have any ideas on how to escape this place? */ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + @25 /* You look familiar. There was a messenger who got me into this mess and your voice sounds suspiciously similar. */ + zbnepharena4
++ @27 /* I'll let you get back to whatever you were doing. */ EXIT
END

IF ~~ zbnepharena1
SAY @29 /* I got trapped in a spider's web and found myself here, just like you. */
IF ~~ DO ~SetGlobal("nepharena1","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena2
SAY @40 /* Hah! I'm just your average, helpful tiefling. */
IF ~~ DO ~SetGlobal("nepharena2","LOCALS",1)~ + zbnepharenahub2
END

IF ~~ zbnepharena3
SAY @30 /* Between the two of us, you are not the only one with a bone to pick with Dennaton. It is unwise to discuss it now openly, yes? Get familiar with what we're dealing with and learn the lay of the land and we'll speak again soon. */
IF ~~ DO ~SetGlobal("nepharena3","LOCALS",1)~ + zbnepharenahub2
END


IF ~~ zbnepharena4
SAY @31 /* Being suspicious is fine. Deception and trickery is part of my profession. But, perhaps you should take more care with your words. Hmm?. */
IF ~~ DO ~SetGlobal("nepharena4","LOCALS",1)~ + zbnepharenahub2
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ zbnepharenahub2
SAY @33 /* Anything else I can clear up for you? */
+ ~Global("nepharena1","LOCALS",0)~ + @23 /* How did you come to this place? */ + zbnepharena2
+ ~Global("nepharena2","LOCALS",0)~ + @39 /* I only know your name, Could you tell me a bit about yourself? */ /* I only know your name, tell me a bit about yourself? */ + zbnepharena2
+ ~Global("nepharena3","LOCALS",0)~ + @24 /* Do you have any ideas on how to escape this place? */ + zbnepharena3
+ ~Global("nepharena4","LOCALS",0)~ + @25 /* You look familiar. There was a messenger who got me into this mess and your voice sounds suspiciously similar. */ + zbnepharena4
++ @27 /* I'll let you get back to whatever you were doing. */ EXIT
END

// Before Match 4 - Elder Umber Hulks (monstrosities that have confusing gaze and are lightning fast with razored claws and bite attacks) think of those shell monsters from The Dark Crystal.
IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",0)~ 15
  SAY @45 /* Elder Umber Hulks are extremely dangerous and fast to boot. They can easily overpower those that gaze into their eyes. There are potions that  protect from these types of effects and I happen to have one right here. Yours, for a price of course. */
  IF ~~ THEN REPLY @46 /* I'll take it! */ DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",1) TakePartyGold(700) GiveItemCreate("POTN21",Player1,1,0,0)~ EXIT
  IF ~~ THEN REPLY @47 /* Keep your potion, my eyes are on the prize. */ DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",1)~ GOTO 16
END

IF ~~ 16
  SAY @48 /* As long as you don't meet the gaze of those Umber Hulks, eh? */
  IF ~~ EXIT
END

IF ~~ 17
  SAY @49 /* You won't regret it. I'll meet you in the arena with my dagger drawn. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~SetGlobal("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",1)~ EXIT
END

IF ~~ 18
  SAY @51 /* Speaking of dead weight, I hope you don't die … horribly 'Hero'. */
  IF ~~ THEN REPLY @52 /* Oof, first blood is yours. We'll do without your help. */ EXIT
END

IF ~~ 19
  SAY @53 /* Suit yourself, 'Hero' */
  IF ~~ EXIT
END

IF ~~ 20
  SAY @54 /* I am a dancer in the shadows, my tricks and the shadows are the tools of my trade. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~SetGlobal("ZB_NEPHY_JOINS","GLOBAL",1)~ GOTO 17
  IF ~~ THEN REPLY @55 /* We don't need any dead weight. */ GOTO 18
  IF ~~ THEN REPLY @56 /* We'll be fine, I have no fear of drow. */  DO ~SetGlobal("ZB_NEPHY_JOINS","GLOBAL",1)~ GOTO 19
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)~ 21
  SAY @57 /* Excellent! An appropriate death to our enemies. Let us speak of escape if you wish it. */
  IF ~~ THEN REPLY @58 /* I wish to discuss escaping the Pits of Despair. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",12)~ GOTO 22
END

IF ~~ 22
  SAY @59 /* An opportunity has come our way, and by Tymora, it is time to take advantage. Meet me in the sleeping quarters to discuss our plan. */
  IF ~~ EXIT
END

// Before Match 5 - The final match of their initial capture tuned for their level. Drow (underground evil elves with magic resistance) war party consists of a full complement of a mage and a cleric. When killed they burst into spiders that poison you and attack. The most difficult match up to this point in the content.
CHAIN
IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",0)~
THEN ZBNEPH 23
@60 /* I spied a war party of drow who were recently captured by the Planar Hunters. Whether it is poison, magic, or their spider pets, they will use every advantage to destroy you. You would be the first to face them, so be careful.  In fact, I think you could use a hand. While most of these amateurs will charge you for their assistance, I will fight for you free and clear this time only. What say you? A favor to my new favorite gladiator. */
DO ~SetGlobal("ZB_NEPH_INTERJECT_5","GLOBAL",1)~
  == BVICONI IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @61 /* Hmph. I wonder what fate befell their house? Only the weak allow themselves to be captured by surfacers. */
  == BJAHEIR IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @62 /* Oh really, Viconia? As I remember it, you yourself were captured at one point. */
  == BVICONI IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @63 /* Only for moments, then they faced justice as any who dare to chain a drow would. */
END
IF ~~ THEN REPLY @64 /* We'd love a hand, Nephetel. */ DO ~SetGlobal("ZB_NEPHY_JOINS","GLOBAL",1)~ GOTO 18
IF ~~ THEN REPLY @65 /* How can you assist me? */ DO ~SetGlobal("ZB_NEPHY_JOINS","GLOBAL",1)~ GOTO 21
IF ~~ THEN REPLY @55 /* We don't need any dead weight. */ GOTO 19
IF ~~ THEN REPLY @66 /* I appreciate the offer, but we'll be fine on our own. */  DO ~SetGlobal("ZB_NEPHY_JOINS","GLOBAL",1)~ GOTO 20

// Before Match 3 - After Dennaton kills part of a gladiatorial party
CHAIN
IF ~Global("ZB_NEPH_INTERJECT_3","GLOBAL",0)~
THEN ZBNEPH 24
@67 /* I am going to tell you a little secret, <CHARNAME>. I despise lizards. In Chult, the lizardmen are fierce warriors and their skin is very thick. Their shamans also pack a punch and are annoying because they use bugs to fight. Yuck. Please, rid Faerun of them. */
DO ~SetGlobal("ZB_NEPH_INTERJECT_3","GLOBAL",1)~
  // GIVES JAN BINKY THE LIZARD ITEM.
  == BJAN IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN")~ THEN @68 /* Oh, Nephetel, you are too harsh. I once traded Lissa's prize turnip for a racing lizard. And let me tell you, she was not happy I did. I named him Binky and he was the world to me when I was 38. In fact, he still travels with me as a necklace, see? Don't mind the bones, it just means he's lucky. */
  == BEDWIN IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN") !StateCheck("EDWIN", CD_STATE_NOTVALID) InParty("EDWIN")~ THEN @69 /* You let this thing travel with you? (Am I really discussing lizard bones? Inane and irritating.) */
  == BMINSC IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN") !StateCheck("MINSC", CD_STATE_NOTVALID) InParty("MINSC")~ THEN @70 /* Oh, that is horrible! These things are not for the likes of Boo. When his time comes I  shall bury him as a rashemi warrior in my homeland. */
EXIT
