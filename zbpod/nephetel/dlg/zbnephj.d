BEGIN ZBNEPHJ

// If PC has completed at least 1 training match
INTERJECT_COPY_TRANS OHBTARTL 7 ZBNEPHINTERJ1
  == ZBNEPHJ IF ~Global("OHB_101","GLOBAL",0) GlobalGT("zb_train_spawn","GLOBAL",0)~ THEN
  @34 /* *waves* Hello 'Hero', I saw your battles with the beasts. 'Quite ferocious', but then again they were just beasts. Good job. */ /* *waves* Hello 'Hero', I saw your battles with the beasts. Quite ferocious, but they could not stand up to your team. Congratulations! */
  == EDWINJ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @42 /* So the strumpet has claws (Then again sometimes we like that, don't we? Hmm.). */
  == JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @43 /* You think it's a good job to destroy nature's children? We do as the balance dictates. */
  == ZBNEPHJ IF ~Global("OHB_101","GLOBAL",0)~ THEN
  @35 /* Even though everyone laughs at the orc warband, it has cut down many unwary new gladiators. That's why Dennaton keeps tormenting the orcs. He will raise them from the dead and mock them for every failed attempt to kill even a single gladiator. */
  == AERIEJ IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @44 /* That is horrible, h-he is truly a despicable man */
END
