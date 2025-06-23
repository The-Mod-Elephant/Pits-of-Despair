BEGIN ZBNEPHJ

/// Before Match 1
IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2) GlobalGT("zb_train_spawn","GLOBAL",0)~ THEN BEGIN 0
  SAY @34 /* *waves* Hello 'Hero', I saw your battles with the beasts. 'Quite ferocious', but then again they were just beasts. Good job. */
  IF ~~ THEN GOTO 1
END

IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2)~ THEN BEGIN 1
  SAY @35 /* Even though everyone laughs at the orc warband, it has cut down many unwary new gladiators. That's why Dennaton keeps tormenting the orcs. He will raise them from the dead and mock them for every failed attempt to kill even a single gladiator. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTERJECT_1","GLOBAL",3)~ EXIT
END
///

/// After Match 1
IF ~Global("ZB_NEPH_POST_INTERJECT_1","GLOBAL",3)~ THEN BEGIN 1.1
  SAY @128 /* Survival is not pretty but it is all that matters. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_1","GLOBAL",4)~ EXIT
END
///

/// After Match 2 - After Dennaton kills part of a gladiatorial party
IF ~Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)~ THEN BEGIN 2.1
  SAY @41 /* As you see, anyone can be replaced here. Even the most loyal are enslaved in some way. Whether it is money, magic, or by force. It's detestable but that is the way it works here. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_2","GLOBAL",4)~ EXIT
END
///

/// Before Match 3 - Lizards
IF ~Global("ZB_NEPH_INTERJECT_3","GLOBAL",2)~ THEN BEGIN 3
  SAY @67 /* I am going to tell you a little secret, <CHARNAME>. I despise lizards. In Chult, the lizardmen are fierce warriors and their skin is very thick. Their shamans also pack a punch and are annoying because they use bugs to fight. Yuck. Please, rid Faerun of them. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_3","GLOBAL",3)~ EXIT
END
///

/// After Match 3
IF ~Global("ZB_NEPH_POST_INTERJECT_3","GLOBAL",3)~ THEN BEGIN 3.1
  SAY @129 /* Are they all dead? ...Good. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_3","GLOBAL",4)~ EXIT
END
///

/// Before Match 4 - Elder Umber Hulks
IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",2)~ THEN BEGIN 4
  SAY @45 /* Elder Umber Hulks are extremely dangerous and fast to boot. They can easily overpower those that gaze into their eyes. There are potions that protect from these types of effects and I happen to have one right here. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ GOTO 5
END

IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 5
  SAY @124 /* Yours, for a price of course. */
  IF ~~ THEN REPLY @46 /* I'll take it! */ DO ~TakePartyGold(700) GiveItemCreate("POTN21",Player1,1,0,0)~ EXIT
  IF ~~ THEN REPLY @47 /* Keep your potion, my eyes are on the prize. */ GOTO 6
END

IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 6
  SAY @48 /* As long as you don't meet the gaze of those Umber Hulks, eh? */
  IF ~~ THEN EXIT
END
///

/// After Match 4
IF ~Global("ZB_NEPH_POST_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 4.1
  SAY @130 /* Heh, *I* can see you. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_4","GLOBAL",4)~ EXIT
END
///

/// Before Match 5
IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",2)~ THEN BEGIN 7
  SAY @60 /* I spied a war party of drow who were recently captured by the Planar Hunters. Whether it is poison, magic, or their spider pets, they will use every advantage to destroy you. You would be the first to face them, so be careful. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ GOTO 8
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN 8
  SAY @123 /* In fact, I think you could use a hand. While most of these amateurs will charge you for their assistance, I will fight for you free and clear this time only. What say you? A favor to my new favorite gladiator. */
  IF ~~ THEN REPLY @64 /* We'd love a hand, Nephetel. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.2
  IF ~Global("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",0)~ THEN REPLY @65 /* How can you assist me? */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.5
  IF ~~ THEN REPLY @55 /* We don't need any dead weight. */ GOTO zbneph5.3
  IF ~~ THEN REPLY @66 /* I appreciate the offer, but we'll be fine on our own. */  DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.4
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.2
  SAY @49 /* You won't regret it. I'll meet you in the arena with my dagger drawn. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~SetGlobal("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",1)~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.3
  SAY @51 /* Speaking of dead weight, I hope you don't die … horribly 'Hero'. */
  IF ~~ THEN REPLY @52 /* Oof, first blood is yours. We'll do without your help. */ GOTO zbneph5.4
  IF ~~ THEN REPLY @125 /* We'll be fine, I have no fear of drow. */ GOTO zbneph5.4
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.4
  SAY @53 /* Suit yourself, 'Hero' */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.5
  SAY @54 /* I am a dancer in the shadows, my tricks and the shadows are the tools of my trade. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",1)~ GOTO 8
END
///

/// Before match 1, If PC has completed at least 1 training match
INTERJECT_COPY_TRANS ZBNEPHJ 0 ZB_NEPH_INTERJECT_1.1
  == EDWINJ IF ~GlobalGT("zb_train_spawn","GLOBAL",0) InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @42 /* So the strumpet has claws (Then again sometimes we like that, don't we? Hmm.). */
  == JAHEIRAJ IF ~GlobalGT("zb_train_spawn","GLOBAL",0) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @43 /* You think it's a good job to destroy nature's children? We do as the balance dictates. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 1 ZB_NEPH_INTERJECT_1.2
  == AERIEJ IF ~InParty("AERIE") InMyArea("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @44 /* That is horrible, h-he is truly a despicable man */
  == ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @131 /* Revolting behavior, even for a Red Wizard. We will repay Dennaton with justice for his cruel ways. */
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @132 /* A bloody slaughter it will be. An' bloody satisfying! */
  == RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @133 /* May Selune have mercy on their souls. */
  == EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @134 /* Bah! A waste of our time to dispose of this worthless chattel. Let us be quick about it. */
END
///

/// After Match 1 - Orcs
INTERJECT_COPY_TRANS ZBNEPHJ 1.1 ZBPOSTMATCH1_1
  == RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @135 /* We are as water in the river flowing to the ocean. Contained by the hands of earth and channeled but inevitable is our freedom. In our journey we cut through the very earth our own path, no matter how it may try to contain us. */
  == JAHEIRAJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @136 /* I wonder if you can lecture a gladiator into submission. */
  == RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @137 /* If any were to know, it would be you Jaheria. */
  == JAHEIRAJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @138 /* Hmph. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 1.1 ZBPOSTMATCH1_2
  == DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @139 /* Bah, no self respecting orc warband would allow themselves to be taken alive. Grummsh would flay their skin from their weakling bones. */
  == KORGANJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @140 /* Ye don't have the stones fer that, half-breed. */
  == DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @141 /* If you've the guts, Korgan, perhaps this pit will one day host us against each other and I'll shatter YOUR bones! */
  == KORGANJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID) InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @142 /* Anytime, cragmuncher. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 1.1 ZBPOSTMATCH1_3
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @143 /* T'was a performance most dizzying! I must confess I feel the beating heart of the arena where the audience's lust for spectacle burns bright. */
  == MAZZYJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @144 /* Planesman, it should cause you regret to be in the machinations of the foul wizards, not delight. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @145 /* Come now. Do you not feel the pulsing thread of life in this moment? We must capture it's singularity and savor the marrow before it decays before our eyes. */
  == MAZZYJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @146 /* A true hero can see this evil for what it is. The virtuous are dishonored in seeking pleasure for killing. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @147 /* I shall leave virtue and honor to you, Tiny Hawk, for who is more deserving? */
END

/// After Match 2 - After Dennaton kills part of a gladiatorial party
INTERJECT_COPY_TRANS ZBNEPHJ 2.1 ZBPOSTMATCH2_1
  == VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @148 /* Twisted experiments, ferocious deadly creatures salivating…you must smell like you wear meat hanging around your neck. Everything is fine, abbil. */
  == JANJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @149 /* Don't forget the evil weasels. */
  == VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @150 /* What are you blathering about again, you stunted slave? */
  == JANJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @151 /* The evil weasels. Great Aunt Petunia always said it was the drow who turned them evil. I had heard they used cursed spider's legs and blood to make them vicious and hungry for fingers to bite. Not my fingers, you evil weasels! */
  == VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @152 /* You truly live in your own tiny world. */
  == JANJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @153 /* Did my ears deceive me or is that a short joke? Uncle Scratchy would be proud to see you have adapted to the surface so well. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 2.1 ZBPOSTMATCH2_2
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @154 /* Oh, to be a fly on the guildmaster's wall. Even in Thay assassins know of THE Yoshimo and to fear him! */
  == NEERAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @155 /* THE Yoshimo? Is that your brother? Ooo, I know, it's your sister, right? */
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @156 /* Come, child, even my family loves my exploits and they will dazzle your already swimming mind! Let's start with the robbery of the Vault of Vapors, oh yes, that one I … */
  == NEERAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @157 /* *yawn* */
END

INTERJECT_COPY_TRANS ZBNEPHJ 2.1 ZBPOSTMATCH2_3
  == ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @158 /* Pah, these beasts are no challenge for a servant of Helm. They are mindless chattel—it is to their masters that justice must be delivered. */
  == JAHEIRAJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @159 /* Perhaps, Anomen, but there is no shame in cleaning up deserving rabble. Not every battle must test your body and spirit. */
  == ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN  @160 /* You don't suggest that we settle for clearing the way so that others may achieve greatness in our stead, do you? We are more than capable of dealing with the fools at the head of this charade. */
  == JAHEIRAJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN  @161 /* These things come only with patience, oh pious one. For now, we bide our time until the moment to strike arrives. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 2.1 ZBPOSTMATCH2_4
  == NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @162 /* My uncle once had minotaurs in a maze. They frightened me as a child. */
  == JANJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @163 /* Don't be afraid, Nalia dear. It hasn't come up, but my great uncle Suladead was an expert maze builder. The rats he put through them couldn't tell their heads from their tails. It was quite a sight to see them stacked on top of one another getting over the walls to find the cheese. */
  == NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @164 /* You were going somewhere with that? */
  == JANJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @165 /* Oh yes, quite right! The best way to escape a maze is to follow your nose, just like a little rat. */
  == NALIA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @166 /* Thanks… I think. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 2.1 ZBPOSTMATCH2_5
  == JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @167 /* You know, that match reminded me of the Great Bovine-Turnip War of 1343. It's an excellent story, let me tell you. The bulls ran wild and trampled the turnip fields. This left landmines so big that Uncle Scratchy never buys boots anymore, something about the sound of the squishing. I am still, to this day, unconvinced the bulls were horning in on gnome territory. */
  == MINSCJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @168 /* No, Boo, this is a load of bull. */
  == JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @169 /* Don't listen to him, Boo, beware the bovine! */
END

/// Before Match 3 - Lizards
INTERJECT_COPY_TRANS ZBNEPHJ 3 ZBNEPHPREMATCH3_1
  == JANJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN")~ THEN @68 /* Oh, Nephetel, you are too harsh. I once traded Lissa's prize turnip for a racing lizard. And let me tell you, she was not happy I did. I named him Binky and he was the world to me when I was 38. In fact, he still travels with me as a necklace, see? Don't mind the bones, it just means he's lucky. */ DO ~GiveItemCreate("ZBBINK0",Player1,1,0,0)~
  == EDWINJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN") !StateCheck("EDWIN", CD_STATE_NOTVALID) InParty("EDWIN")~ THEN @69 /* You let this thing travel with you? (Am I really discussing lizard bones? Inane and irritating.) */
  == MINSCJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InParty("JAN") !StateCheck("MINSC", CD_STATE_NOTVALID) InParty("MINSC")~ THEN @70 /* Oh, that is horrible! These things are not for the likes of Boo. When his time comes I  shall bury him as a rashemi warrior in my homeland. */
END
///

/// After Match 3 - Lizards
INTERJECT_COPY_TRANS ZBNEPHJ 3.1 ZBPOSTMATCH3_1
  == HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN @170 /* The smell of reptile blood. Disgusting. */
  == NALIAJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @171 /* I didn't realize you had such a discerning taste, Hexxat. Speaking of which, how do you know which blood will taste good and which will taste bad? */
  == HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @172 /* By the smell usually, my dear. If it's from a lizard, it's repugnant. */
  == NALIAJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID) InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @173 /* Okay, but what does it actually smell like? Actually, never mind. I've decided I don't want to know. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 3.1 ZBPOSTMATCH3_2
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @174 /* The nation of Thay is a vile blight upon Faerun. An evil magic empire that festers and rots like a wound. */
  == VALYGARJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @175 /* Such blighted magic be damned. */
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @176 /* Of course, brave Valygar. We shall destroy such evil through Arvoreen's will. Delivering justice with blade and virtue. Onward, my friend! */
END

INTERJECT_COPY_TRANS ZBNEPHJ 3.1 ZBPOSTMATCH3_3
  == JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @177 /* It gives me no pleasure to have defeated this tribe. Their nature has been twisted to fit the designs of Red Wizards. */
  == KELDORJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @178 /* They are savages that worship primitive gods that care not a whit for them. They most assuredly deserve the justice we bring. */
  == JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @179 /* Have you no compassion left in those old bones, 'Sir' Keldorn? */
  == KELDORJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @180 /* Victory requires we discard the frailties of compassion against evil. Even Harpers know this truth. */
END

/// After Match 4
INTERJECT_COPY_TRANS ZBNEPHJ 4.1 ZBPOSTMATCH4_1
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @181 /* You know, one time I actually turned INTO an umber hulk! It was amazing. You could see everywhere with all those eyes and dig! Dig, dig, dig. It felt like eating chocolate. So satisfying. Oh, now I'm hungry. */
  == ANOMENJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @182 /* When are you not? */
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @183 /* An umber hulk? All the time. See? *waves* */
  == ANOMENJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID) InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @184 /* The chaos never leaves you, by Helm. You were born umber in your soul. */
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @185 /* Someone's hungry and I'm not sharing any of my snacks. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 4.1 ZBPOSTMATCH4_2
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @186 /* Torm has witnessed us triumph on our righteous path to victory. Thay is a loathsome den where evil festers and such creatures must be rooted out whenever the opportunity arises. */
  == VALYGARJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @187 /* It will do little good—the entirety of Thay should be considered if one wishes to rid evil from our world. */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @188 /* Be that as it may, Valygar, we can only do what our bodies will allow us. Should the chance arise, still would I hesitate. While evil may lurk in every shadow, there is much that is sacred and worth defending—even in this place. */
  == VALYGARJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @189 /* I'll believe what my eyes show me. So far, I'm not impressed. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 4.1 ZBPOSTMATCH4_3
  == EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @190 /* Mindless abominations easily defeated by my peerless magical prowess. (Saving this bumbling party, no doubt.) */
  == VICONIJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @191 /* Are you preening, Edwin? Only the stupidest of males preen as you do. */
  == EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @192 /* In my experience, only women trade barbs like you. (Yes, that should do it.) */
  == VICONIJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @193 /* Do not complain of my tongue wizard, it will lash you to ribbons. */
  == EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @194 /* (I think I would enjoy that… ) */
END

/// Before Match 5 - The final match of their initial capture tuned for their level. Drow (underground evil elves with magic resistance) war party consists of a full complement of a mage and a cleric. When killed they burst into spiders that poison you and attack. The most difficult match up to this point in the content.
INTERJECT_COPY_TRANS ZBNEPHJ 7 ZB_NEPH_INTERJECT_5.1
  == VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @61 /* Hmph. I wonder what fate befell their house? Only the weak allow themselves to be captured by surfacers. */
  == JAHEIRAJ IF ~InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @62 /* Oh really, Viconia? As I remember it, you yourself were captured at one point. */
  == VICONIJ IF ~InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @63 /* Only for moments, then they faced justice as any who dare to chain a drow would. */
END
///
