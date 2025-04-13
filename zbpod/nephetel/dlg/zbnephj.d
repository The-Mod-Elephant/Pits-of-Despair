BEGIN ZBNEPHJ

/// After Match 2 - After Dennaton kills part of a gladiatorial party
IF ~Global("ZB_NEPH_INTERJECT_2","GLOBAL",2)~ THEN BEGIN 0
  SAY @41 /* As you see, anyone can be replaced here. Even the most loyal are enslaved in some way. Whether it is money, magic, or by force. It's detestable but that is the way it works here. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",3)~ EXIT
END
///

/// Before Match 4 - Elder Umber Hulks
IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",0)~ 1
  SAY @45 /* Elder Umber Hulks are extremely dangerous and fast to boot. They can easily overpower those that gaze into their eyes. There are potions that  protect from these types of effects and I happen to have one right here. Yours, for a price of course. */
  IF ~~ THEN REPLY @46 /* I'll take it! */ DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",1) TakePartyGold(700) GiveItemCreate("POTN21",Player1,1,0,0)~ EXIT
  IF ~~ THEN REPLY @47 /* Keep your potion, my eyes are on the prize. */ DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",1)~ GOTO zbnephj2
END

IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",1)~ THEN BEGIN zbnephj2
  SAY @48 /* As long as you don't meet the gaze of those Umber Hulks, eh? */
  IF ~~ EXIT
END
///

/// Before Match 5
IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",1)~ THEN BEGIN zbnephj3
  SAY @49 /* You won't regret it. I'll meet you in the arena with my dagger drawn. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~SetGlobal("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",1)~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",1)~ THEN BEGIN zbnephj4
  SAY @51 /* Speaking of dead weight, I hope you don't die … horribly 'Hero'. */
  IF ~~ THEN REPLY @52 /* Oof, first blood is yours. We'll do without your help. */ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",1)~ THEN BEGIN zbnephj5
  SAY @53 /* Suit yourself, 'Hero' */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",1)~ THEN BEGIN zbnephj6
  SAY @54 /* I am a dancer in the shadows, my tricks and the shadows are the tools of my trade. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbnephj3
  IF ~~ THEN REPLY @55 /* We don't need any dead weight. */ GOTO zbnephj4
  IF ~~ THEN REPLY @56 /* We'll be fine, I have no fear of drow. */  DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbnephj5
END

// Before Match 5 - The final match of their initial capture tuned for their level. Drow (underground evil elves with magic resistance) war party consists of a full complement of a mage and a cleric. When killed they burst into spiders that poison you and attack. The most difficult match up to this point in the content.
CHAIN
IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",0)~
THEN ZBNEPHJ 7
@60 /* I spied a war party of drow who were recently captured by the Planar Hunters. Whether it is poison, magic, or their spider pets, they will use every advantage to destroy you. You would be the first to face them, so be careful.  In fact, I think you could use a hand. While most of these amateurs will charge you for their assistance, I will fight for you free and clear this time only. What say you? A favor to my new favorite gladiator. */
DO ~SetGlobal("ZB_NEPH_INTERJECT_5","GLOBAL",1)~
  == BVICONI IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @61 /* Hmph. I wonder what fate befell their house? Only the weak allow themselves to be captured by surfacers. */
  == BJAHEIR IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @62 /* Oh really, Viconia? As I remember it, you yourself were captured at one point. */
  == BVICONI IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @63 /* Only for moments, then they faced justice as any who dare to chain a drow would. */
END
IF ~~ THEN REPLY @64 /* We'd love a hand, Nephetel. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbnephj3
IF ~~ THEN REPLY @65 /* How can you assist me? */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbnephj6
IF ~~ THEN REPLY @55 /* We don't need any dead weight. */ GOTO zbnephj4
IF ~~ THEN REPLY @66 /* I appreciate the offer, but we'll be fine on our own. */  DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbnephj5
///

// Before Match 3 - After Dennaton kills part of a gladiatorial party
CHAIN
IF ~Global("ZB_NEPH_INTERJECT_3","GLOBAL",0)~
THEN ZBNEPHJ 8
@67 /* I am going to tell you a little secret, <CHARNAME>. I despise lizards. In Chult, the lizardmen are fierce warriors and their skin is very thick. Their shamans also pack a punch and are annoying because they use bugs to fight. Yuck. Please, rid Faerun of them. */
DO ~SetGlobal("ZB_NEPH_INTERJECT_3","GLOBAL",1)~
  // GIVES JAN BINKY THE LIZARD ITEM.
  == BJAN IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN")~ THEN @68 /* Oh, Nephetel, you are too harsh. I once traded Lissa's prize turnip for a racing lizard. And let me tell you, she was not happy I did. I named him Binky and he was the world to me when I was 38. In fact, he still travels with me as a necklace, see? Don't mind the bones, it just means he's lucky. */
  == BEDWIN IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN") !StateCheck("EDWIN", CD_STATE_NOTVALID) InParty("EDWIN")~ THEN @69 /* You let this thing travel with you? (Am I really discussing lizard bones? Inane and irritating.) */
  == BMINSC IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN") !StateCheck("MINSC", CD_STATE_NOTVALID) InParty("MINSC")~ THEN @70 /* Oh, that is horrible! These things are not for the likes of Boo. When his time comes I  shall bury him as a rashemi warrior in my homeland. */
EXIT

// Before match 1, If PC has completed at least 1 training match
CHAIN
IF ~Global("ZB_NEPH_INTERJECT_1","GLOBAL",0)~
THEN ZBNEPHJ 9
  @34 /* *waves* Hello 'Hero', I saw your battles with the beasts. 'Quite ferocious', but then again they were just beasts. Good job. */
DO ~SetGlobal("ZB_NEPH_INTERJECT_1","GLOBAL",1)~
  == BEDWIN IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @42 /* So the strumpet has claws (Then again sometimes we like that, don't we? Hmm.). */
  == BJAHEIR IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @43 /* You think it's a good job to destroy nature's children? We do as the balance dictates. */
  == ZBNEPHJ @35 /* Even though everyone laughs at the orc warband, it has cut down many unwary new gladiators. That's why Dennaton keeps tormenting the orcs. He will raise them from the dead and mock them for every failed attempt to kill even a single gladiator. */
  == BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @44 /* That is horrible, h-he is truly a despicable man */
EXIT

