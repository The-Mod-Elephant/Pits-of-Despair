BEGIN ZBNEPHJ

// After Match 2 - After Dennaton kills part of a gladiatorial party
IF ~Global("ZB_NEPH_INTERJECT_2","GLOBAL",2)~ THEN BEGIN 0
  SAY @41 /* As you see, anyone can be replaced here. Even the most loyal are enslaved in some way. Whether it is money, magic, or by force. It's detestable but that is the way it works here. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_2","GLOBAL",3)~ EXIT
END

// Before match 1, If PC has completed at least 1 training match
CHAIN
IF ~Global("ZB_NEPH_INTERJECT_1","GLOBAL",0) GlobalGT("zb_train_spawn","GLOBAL",0)~
THEN ZBNEPHJ 1
  @34 /* *waves* Hello 'Hero', I saw your battles with the beasts. 'Quite ferocious', but then again they were just beasts. Good job. */
DO ~SetGlobal("ZB_NEPH_INTERJECT_1","GLOBAL",1)~
  == EDWINJ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @42 /* So the strumpet has claws (Then again sometimes we like that, don't we? Hmm.). */
  == JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @43 /* You think it's a good job to destroy nature's children? We do as the balance dictates. */
  == ZBNEPHJ @35 /* Even though everyone laughs at the orc warband, it has cut down many unwary new gladiators. That's why Dennaton keeps tormenting the orcs. He will raise them from the dead and mock them for every failed attempt to kill even a single gladiator. */
  == AERIEJ IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @44 /* That is horrible, h-he is truly a despicable man */
END
