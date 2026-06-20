/* some interjections are added via EXTERN + CHAIN to existing dialogues but, if wanted, the externs / dialogues might be moved over here instead later
for now those files are: OHBVOGHI & OHBJOKER */ 

// Minsc Najim
INTERJECT_COPY_TRANS OHBNAJIM 0 ZBNAJIM_MINSC
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3872 /* There is no danger with Minsc and Boo at your side! Take heed, floaty-man, the hamster will protect you! */
END

INTERJECT_COPY_TRANS OHBTARTL 75 ZBSFEASTJAHEIRA
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3716 /* For one so small of stature, his ego seems disproportionately sized. */
END

INTERJECT_COPY_TRANS OHBTIMMO 70 ZBSFEASTKELDORN
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3717 /* One cannot question his valour. His chances of success however... */
END

INTERJECT_COPY_TRANS OHBELLRA 31 ZBSFEASTRASAAD1
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3718 /* The light of Selûne will yet offer guidance. */
END

INTERJECT_COPY_TRANS OHBELLRA 32 ZBSFEASTRASAAD2
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3719 /* I did not expect to find one as enlightened within these dark halls. */
END

INTERJECT_COPY_TRANS OHBMERCY 44 ZBSFEASTDORN1
== DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3720 /* I should mention, <CHARNAME>, that this woman seeks my blood. Not that she has any hope of defeating me. */
END

INTERJECT_COPY_TRANS OHBHORT 49 ZBSFEASTDORN2
== DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3721 /* I could strike you both down in a single blow! */
END

/* mercy whitedove reacts to dorn il'khan's presence
NOT PROOFREAD / FULLY IC YET. Heavy edits expected.
possibly extend this so she refuses to join the pc in the arena if dorn is present in the party */
INTERJECT_COPY_TRANS OHBMERCY 3 ZBSMERCYDORN1
== OHBMERCY IF ~!Global("OHB_TALKED_MERCY","LOCALS",1) InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3722 /* Given your choice of companion, I doubt we have anything to discuss. */
== DORNJ @3723 /* Does my presence infuriate you, Whitedove? You should be thankful that the arena prevents us from killing one another. You fight another day only through that mercy. */
== OHBMERCY @3724 /* I swear, blackguard, one day you shall answer for your actions! I will personally hunt you down and drag you to face retribution. */
== DORNJ @3725 /* Big words. Especially when you can't back them up. */
== OHBMERCY @3726 /* Is there aught else your companion wants? I've little time for idle chatter. */
END

/* random single interjections to dialogue */

INTERJECT_COPY_TRANS OHBMOLZA 19 ZBJAN1
== JANJ IF ~Global("ZBPODINTRO","GLOBAL",1) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3727 /* Turnip bandits. Truly the most despicable of all villians. Why, this reminds me of a story, my cousin, Dipsy, was robbed by a most unbecoming fellow who... */
END

/* the companions interject to stannel's ongoing lies - we're going alphabetically & only adding a few batches per fight. so they don't ALL fire at once */

INTERJECT_COPY_TRANS OHBSTANN 59 ZBSTANNELBATCH1
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3728 /* Why would he say such awful things? He's twisting everything we've done, everything we're going through, and turning it into something so ugly... so wrong. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3729 /* This affront to our honor will not stand. Such lies, when allowed to spread, often take on a life of their own. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3730 /* These tall tales are like leaves drifting upon the wind. They will scatter in time. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3731 /* You think to besmirch my reputation with such drivel? Your envy is as transparent as it is pitiable. */
END

INTERJECT_COPY_TRANS OHBSTANN 63 ZBSTANNELBATCH2
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3732 /* What dark muse inspires him to write such a tragedy, I wonder? */
== IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3733 /* At least he's creative about his lies? Too bad, really, I wouldn't mind stories about Imoen the Magnificent bravely saving others. Just...not the opposite so much. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3734 /* Truth is stubborn and it will outlast his petty words. Pay him no heed. We have greater concerns to tend to. */
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3735 /* Slander, eh? You'd think he'd try to be clever about it. I once knew a fellow who claimed I stole his golden pantaloons — turns out we don't even wear the same size,  and he didn't own any to begin with. */
END

INTERJECT_COPY_TRANS OHBSTANN 69 ZBSTANNELBATCH3
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3736 /* Such lies are a coward's weapon. Let him spin his tales, our actions will speak louder than his words. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3737 /* Let him yap on. Words are cheap. */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3738 /* While these insults do not reflect on my true character, I don't believe it honorable to strike someone simply for speaking their piece. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3739 /* What? Why would you tell such lies about us? Boo and I are heroes not villains! */
END

INTERJECT_COPY_TRANS OHBSTANN 71 ZBSTANNELBATCH4
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3740 /* Nobles would often partake in these games; spreading terrible rumours to cover their own shameful wrongdoings. The practice disgusts me. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3741 /* This is not the first time my name's been dragged through the mud. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3742 /* Pfeh! I will not lower myself to address this male's petty lies. Nothing he says holds any worth to me. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3743 /* Having such a reputation is not without its perks. Fear inspires as much as love. */
END

INTERJECT_COPY_TRANS OHBSTANN 75 ZBSTANNELBATCH5 /* the EE NPCs */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3744 /* Still your tongue unless you have a death wish! I've had enough of your ceaseless prattling. */
// == HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN ~[write suitable line here idek :/]~
== NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3745 /* Oh, come on! You *know* that's not true. ...Maybe I'll turn you into a chicken and see how much you like being the butt of the joke. */
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3746 /* Do not give credibility to these lies. He hopes to unsettle us. We must rise above his barbs. */
== WILSONJ IF ~InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN @3747 /* Hrrrmph. Snort! */
END

// Before Training matches
INTERJECT_COPY_TRANS OHBSTIRV 7 ZBTRAININGPRE1
  == KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3867 /* Ach. It be a marvelous wonder to cut through wee beasties an' get paid fer the pleasure. */
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3748 /* Why must we fight defenceless animals? Boo does not think this is a very heroic act. */
  == AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3863 /* D-do we... have to... kill animals? I would never think to hurt an innocent creature… this is nothing like the circus. This is WRONG. */
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3752 /* These twisted animals are an affront to Nature. Balance requires that we must purge them. */
  == OHBSTIRV IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3904 /* Defenceless? Heh, you’re in for a nasty surprise, slave. C’mon, git going! */
END
