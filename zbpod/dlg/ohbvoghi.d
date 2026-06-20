BEGIN ~OHBVOGHI~

CHAIN IF ~  Global("OHB_TALKED_VOGHI","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN OHBVOGHI voghi.firstmeet
#90467 /* ~Augh, mine head! By the Oak Father's leafy arse, I've never met a woman who could drink like that! One minute I'm singing with an ale in one hand and a wench in the other, and then I wake up here... Where in the Nine Hells am I?~ */
END
IF ~~ THEN EXTERN OHBVOGHI ZBVOGINTRO

CHAIN OHBVOGHI ZBVOGINTRO
@3887 /* Wait just a moment, I must still be drunk, or sleeping. Or both! You look… so familiar… */
END
++ @3888 /* Voghiln? What are you doing here? Where IS here? */ DO ~AddJournalEntry(@800004, QUEST_DONE) AddJournalEntry(@800006, QUEST) SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)~ EXTERN OHBVOGHI voghi.friend
++ @3889 /* Oh, great. It’s you. */ DO ~AddJournalEntry(@800004, QUEST_DONE) AddJournalEntry(@800006, QUEST) SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)~ EXTERN OHBVOGHI ZBVOGRELIEVED
++ @3890 /* Who the hells are you? */ DO ~AddJournalEntry(@800004, QUEST_DONE) AddJournalEntry(@800006, QUEST) SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)~ EXTERN OHBVOGHI ZBVOGMISTAKEN
++ @3891 /* Get out of my way, I don’t have time for imbeciles. */ DO ~AddJournalEntry(@800004, QUEST_DONE) AddJournalEntry(@800006, QUEST) SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)~ EXTERN OHBVOGHI ZBVOGBADEXIT


CHAIN OHBVOGHI ZBVOGRELIEVED
@3900 /* I see it is I who is more relieved to see you than you me. Thankfully, a skald’s heart is not so easily broken! In spite of this, I cannot tell you where we are. */
END 
IF ~~ THEN EXTERN OHBVOGHI voghi.room


CHAIN OHBVOGHI ZBVOGMISTAKEN
@3901 /* Perhaps I was mistaken, but I most certainly recognize you! Any skald worthy of his beard in these parts knows the tales of <CHARNAME> of Baldur’s Gate—though… I can’t tell you what these parts actually are. */
END 
IF ~~ THEN EXTERN OHBVOGHI voghi.room

CHAIN OHBVOGHI ZBVOGLETDOWN
@3902 /* Mine friend, if you looked into my eyes right now you would see temptation swimming around like so many skipjack tuna. I do not like to disappoint you, but all I wish to do right now is find a place to sit and drink. */
END
IF ~~ THEN EXTERN OHBVOGHI ZBVOGGOODEXIT

CHAIN OHBVOGHI ZBVOGBADEXIT
  @3898 /* Keep on joking. Perhaps I will get through to you another time, ja? */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3905 /* Where do we find ourselves now, I wonder? Being thrown into the unknown on a whim—it almost reminds me of my beloved Sigil. */
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3906 /* I do not see any bars trapping us, so I will count our blessings where we can get them. May Arvoreen watch over us. */
  == JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3907 /* I am concerned as to our captor’s true identity. It is not many that can command a planetar into doing their bidding. Why they’d want a man like Voghiln is beyond me. */
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3908 /* Alright, it’s not just me, right? My magic is all gone. I’d *really* like to get out of here. */
  == AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3909 /* This isn’t good, <CHARNAME>. I… I can’t access my magic. Let’s be careful, alright? */
  == EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3910 /* My spells! They are being… restricted. Bah, no matter! Nothing can contain Edwin Odesseiron for long. (I cannot say the same for the rest of these monkeys, however…) */
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3911 /* To have been captured so easily… it puts a berserker’s heart to shame! Eh? What is that, Boo? …Ah, as wise as ever my miniature furry friend—it is THEIR mistake for inviting Minsc and friends into their lair! */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3912 /* Be careful not to work yourself into a battlerage just yet, Minsc. We must be cautious in this place—we have no idea how powerful our enemy is, nor their true intent. */
  == ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3913 /* Well, if that man has survived as long as he has in this snake’s den, I suspect we’ll fare better. Let us find the villains that did this and put an end to them. */
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3914 /* Nature cringes from this prison of steel and stone. Let us find our way out, or better yet, sunder this abhorrent place. */
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3915 /* It’s from one drama to another with you, isn’t it? Ah, well. They say variety is the spice of life, after all. */
  == IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3916 /* Heh. Seems we're trapped all over again. This is starting to feel a little personal now. Let's break out of here fast, alright? */
EXIT

CHAIN OHBVOGHI ZBVOGEXIT
  @3899 /* Aye. Well, if you find out where the food, ale, and women are, <CHARNAME>, come back and tell Voghiln!  */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3905 /* Where do we find ourselves now, I wonder? Being thrown into the unknown on a whim—it almost reminds me of my beloved Sigil. */
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3906 /* I do not see any bars trapping us, so I will count our blessings where we can get them. May Arvoreen watch over us. */
  == JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3907 /* I am concerned as to our captor’s true identity. It is not many that can command a planetar into doing their bidding. Why they’d want a man like Voghiln is beyond me. */
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3908 /* Alright, it’s not just me, right? My magic is all gone. I’d *really* like to get out of here. */
  == AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3909 /* This isn’t good, <CHARNAME>. I… I can’t access my magic. Let’s be careful, alright? */
  == EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3910 /* My spells! They are being… restricted. Bah, no matter! Nothing can contain Edwin Odesseiron for long. (I cannot say the same for the rest of these monkeys, however…) */
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3911 /* To have been captured so easily… it puts a berserker’s heart to shame! Eh? What is that, Boo? …Ah, as wise as ever my miniature furry friend—it is THEIR mistake for inviting Minsc and friends into their lair! */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3912 /* Be careful not to work yourself into a battlerage just yet, Minsc. We must be cautious in this place—we have no idea how powerful our enemy is, nor their true intent. */
  == ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3913 /* Well, if that man has survived as long as he has in this snake’s den, I suspect we’ll fare better. Let us find the villains that did this and put an end to them. */
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3914 /* Nature cringes from this prison of steel and stone. Let us find our way out, or better yet, sunder this abhorrent place. */
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3915 /* It’s from one drama to another with you, isn’t it? Ah, well. They say variety is the spice of life, after all. */
  == IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3916 /* Heh. Seems we're trapped all over again. This is starting to feel a little personal now. Let's break out of here fast, alright? */
EXIT

CHAIN OHBVOGHI ZBVOGEXIT2
  @3899 /* Aye. Well, if you find out where the food, ale, and women are, <CHARNAME>, come back and tell Voghiln!  */
EXIT

CHAIN OHBVOGHI ZBVOGEXIT4
  @3898 /* Keep on joking. Perhaps I will get through to you another time, ja? */
EXIT

CHAIN OHBVOGHI ZBVOGGOODEXIT
  @3903 /* If it comes to a fight, though, you can rely on Voghiln! Now, I am going to go on a grand quest… to find a kitchen. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3905 /* Where do we find ourselves now, I wonder? Being thrown into the unknown on a whim—it almost reminds me of my beloved Sigil. */
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3906 /* I do not see any bars trapping us, so I will count our blessings where we can get them. May Arvoreen watch over us. */
  == JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3907 /* I am concerned as to our captor’s true identity. It is not many that can command a planetar into doing their bidding. Why they’d want a man like Voghiln is beyond me. */
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3908 /* Alright, it’s not just me, right? My magic is all gone. I’d *really* like to get out of here. */
  == AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3909 /* This isn’t good, <CHARNAME>. I… I can’t access my magic. Let’s be careful, alright? */
  == EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3910 /* My spells! They are being… restricted. Bah, no matter! Nothing can contain Edwin Odesseiron for long. (I cannot say the same for the rest of these monkeys, however…) */
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3911 /* To have been captured so easily… it puts a berserker’s heart to shame! Eh? What is that, Boo? …Ah, as wise as ever my miniature furry friend—it is THEIR mistake for inviting Minsc and friends into their lair! */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3912 /* Be careful not to work yourself into a battlerage just yet, Minsc. We must be cautious in this place—we have no idea how powerful our enemy is, nor their true intent. */
  == ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3913 /* Well, if that man has survived as long as he has in this snake’s den, I suspect we’ll fare better. Let us find the villains that did this and put an end to them. */
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3914 /* Nature cringes from this prison of steel and stone. Let us find our way out, or better yet, sunder this abhorrent place. */
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3915 /* It’s from one drama to another with you, isn’t it? Ah, well. They say variety is the spice of life, after all. */
  == IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3916 /* Heh. Seems we're trapped all over again. This is starting to feel a little personal now. Let's break out of here fast, alright? */
EXIT

CHAIN OHBVOGHI voghi.friend
@3892 /* My heart is filled with relief to see you again, mine friend! The moment we parted ways I had a most terrible <PRO_RACE> Bhaalspawn-shaped hole in mine heart! Alas, I cannot tell you where we are. */
END 
IF ~~ THEN EXTERN OHBVOGHI voghi.room

CHAIN OHBVOGHI voghi.room
#90472 /* ~I would if I could, but the guards say nothing to me. I tell you this, though: From where I stand, it is looking like a room of some sort. Has a floor... walls... doors. Ja! We are in a room!~ */
END
++ #90473 /* ~How long have you been here?~ */ EXTERN OHBVOGHI voghi.howlong
++ #90474 /* ~Do you know why we were brought here?~ */ EXTERN OHBVOGHI voghi.whyhere
++ #90475 /* ~My gods, you're right! I'll be leaving it now.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #90476 /* ~It would appear intelligence is not a prerequisite for being held here.~ */ EXTERN OHBVOGHI ZBVOGBADEXIT

CHAIN OHBVOGHI voghi.howlong
#90477 /* ~A couple of hours, maybe. Long enough to be getting hungry, I'll tell you this.~ */
END
++ #90478 /* ~Very well, thank you for your time.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #90479 /* ~You can get hungry? I find that hard to believe. Well, I must be going.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #90480 /* ~For you, that would take, what, five minutes?~ */ EXTERN OHBVOGHI ZBVOGBADEXIT

CHAIN OHBVOGHI voghi.whyhere
#90481 /* ~I do not know why we were brought here. I am thinking I was snatched for my fame in fighting, drinking, and my way with the ladies.~ */
END
++ #90482 /* ~Thank you for your time. I must go now.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #90479 /* ~You can get hungry? I find that hard to believe. Well, I must be going.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #90483 /* ~Are you sure you weren't brought here for your finely honed, razor-sharp wit?~ */ EXTERN OHBVOGHI ZBVOGBADEXIT

CHAIN IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_finale","global",0)
~ THEN OHBVOGHI voghi.foodfight
#91389 /* ~Ja! And what can mighty Voghiln do for you?~ */
END
++ #91397 /* ~Nothing, never mind.~ */ EXTERN OHBVOGHI ZBVOGEXIT2

CHAIN IF ~  Global("OHB_TALKED_VOGHI","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN OHBVOGHI voghi.secondmeet
#91286 /* ~Ho ho, what have we here? Come raise a flagon with me! We'll drink till we die in the arena... or the bar. The bar is more likely for me.~ */
END
++ #91287 /* ~Drinking already? Isn't it a bit early for that?~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2) AddJournalEntry(@800013,QUEST)~ EXTERN OHBVOGHI voghi.paladin
+ ~Gender(LastTalkedToBy,FEMALE)~ + #91288 /* ~Pour me a flagon, and let's get started!~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2) AddJournalEntry(@800013,QUEST)~ EXTERN OHBVOGHI voghi.wildone
+ ~Gender(LastTalkedToBy,MALE)~ + #91288 /* ~Pour me a flagon, and let's get started!~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2) AddJournalEntry(@800013,QUEST)~ EXTERN OHBVOGHI voghi.goodman
++ #91289 /* ~All right, who taught the ape to talk and hold a flagon?~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2) AddJournalEntry(@800013,QUEST)~ EXTERN OHBVOGHI voghi.funnyone

CHAIN OHBVOGHI voghi.paladin
#91290 /* ~I thought I was getting a late start! What are you, some sort of paladin?~ */
END
+ ~Class(LastTalkedToBy,PALADIN_ALL)~ + #91291 /* ~I am a paladin, yes.~ */ EXTERN OHBVOGHI voghi.loosen
++ #91292 /* ~No. I just want to stay sober and survive my first day in this place.~ */ EXTERN OHBVOGHI voghi.loosen
++ #91293 /* ~No, but looking at you, I'm considering it.~ */ EXTERN OHBVOGHI voghi.funnyone

CHAIN OHBVOGHI voghi.wildone
#91294 /* ~Oh ho ho! A wild one we have here. Tell you what, my lady... after our first victory, come see me. We'll have a celebration all our own.~ */
END
++ #91295 /* ~Sounds like fun.~ */ EXTERN OHBVOGHI voghi.nameis
++ #91296 /* ~I think I'll pass. Who are you, anyway?~ */ EXTERN OHBVOGHI voghi.nameis
++ #91297 /* ~It'll take more than marginally coherent drunken babbling to seduce me, you oaf.~ */ EXTERN OHBVOGHI voghi.funnyone

CHAIN OHBVOGHI voghi.goodman
#91299 /* ~Good man! Come, have a drink with old Voghiln. I'll tell you secrets that will get you any woman in Faerûn. Assuming she isn't already with me, of course.~ */
END
++ #91300 /* ~Great. I've never had much luck with women.~ */ EXTERN OHBVOGHI voghi.watchlearn
++ #91301 /* ~Maybe I'll pass. Tell me your name.~ */ EXTERN OHBVOGHI voghi.nameis
++ #91303 /* ~Do you have any "secrets" that don't involve pouring gallons of ale down your throat?~ */ EXTERN OHBVOGHI voghi.funnyone

CHAIN OHBVOGHI voghi.watchlearn
#91304 /* ~Watch and learn. We are going to be good friends! I can feel it in my gut—and my gut's never wrong.~ */
END
++ #91306 /* ~It certainly isn't today. Nice to meet you.~ */ EXTERN OHBVOGHI voghi.nameis
++ #91307 /* ~One can't have too many friends, especially in a place like this. What's your name?~ */ EXTERN OHBVOGHI voghi.nameis
++ #91308 /* ~I see you keep it well supplied.~ */ EXTERN OHBVOGHI voghi.funnyone

CHAIN OHBVOGHI voghi.funnyone
#91309 /* ~Ah—we've got a funny one!~ */
END
++ #91310 /* ~My apologies. Who are you again?~ */ EXTERN OHBVOGHI voghi.nameis
++ #91311 /* ~Who in the Nine Hells are you?~ */ EXTERN OHBVOGHI voghi.nameis
++ #91312 /* ~Try it and we'll see who laughs last.~ */ EXTERN OHBVOGHI voghi.nameis

CHAIN OHBVOGHI voghi.loosen
#91313 /* ~That's unfortunate. But don't worry! Old Voghiln will loosen you up. I'll have you singing and drinking with the best of them in a tenday. If you're still alive, that is.~ */
END
++ #91314 /* ~I don't intend to die any time soon.~ */ EXTERN OHBVOGHI voghi.nameis
++ #91315 /* ~We'll see.~ */ EXTERN OHBVOGHI voghi.nameis
++ #91316 /* ~It's your own life you should worry about. Who are you?~ */ EXTERN OHBVOGHI voghi.nameis

CHAIN OHBVOGHI voghi.nameis
#91317 /* ~Voghiln's the name. A fighter, drinker, and lover... though not necessarily in that order.~ */
END
++ #91318 /* ~How did you come to be here, Voghiln?~ */ EXTERN OHBVOGHI voghi.notsofast
++ #91319 /* ~You seem to have many skills and stories.~ */ EXTERN OHBVOGHI voghi.manystories
++ #91320 /* ~Nice to meet you. I'll be going now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91321 /* ~You forgot "eater."~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.manystories
#91322 /* ~I'll tell you what I know and a few things I don't!~ */
END
++ #91323 /* ~You're a good fighter, I take it?~ */ EXTERN OHBVOGHI voghi.fighter
++ #91324 /* ~So, you said you know a thing or two about women?~ */ EXTERN OHBVOGHI voghi.women
++ #91325 /* ~I gather you like to have a drink now and then? Especially now.~ */ EXTERN OHBVOGHI voghi.drinking
+ ~GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)~ + #91326 /* ~How did you end up here, Voghiln?~ */ EXTERN OHBVOGHI voghi.notsofast
+ ~GlobalGT("OHB_LAST_BATTLE","GLOBAL",104) GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)~ + #91326 /* ~How did you end up here, Voghiln?~ */ EXTERN OHBVOGHI voghi.anothertime
+ ~GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)~ + #91326 /* ~How did you end up here, Voghiln?~ */ EXTERN OHBVOGHI voghi.tricked
++ #91327 /* ~That's all for now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2

CHAIN OHBVOGHI voghi.tricked
#91328 /* ~Funny you should ask. It seems most around here got their teeth kicked in by that Winged wench and her gang. But not Voghiln! They tricked me!~ */
END
++ #91329 /* ~Really? What happened?~ */ EXTERN OHBVOGHI voghi.jokerstory
++ #91330 /* ~How'd they manage that?~ */ EXTERN OHBVOGHI voghi.jokerstory
++ #91337 /* ~What did they do? Offer you some ale?~ */ EXTERN OHBVOGHI voghi.smartone

CHAIN OHBVOGHI voghi.notsofast
#91338 /* ~Eh, not so soon, not so soon. Win a few fights—then you'll have earned the right to hear the story of how they captured the mighty Voghiln!~ */
END
++ #91339 /* ~Fair enough. Can I ask you something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91340 /* ~Fine. I'll be going now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91341 /* ~Pfft. They probably just dangled a banana in front of a giant sack.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.anothertime
#91342 /* ~Ach! I'll tell you another time... if you survive that long.~ */
END
++ #91339 /* ~Fair enough. Can I ask you something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91340 /* ~Fine. I'll be going now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91341 /* ~Pfft. They probably just dangled a banana in front of a giant sack.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.smartone
#91344 /* ~Ach, you are a smart one. That is exactly what happened!~ */
== OHBVOGHI #91343 /* ~That pretty little half-elf girl... Joker. She got me alone in my favorite tavern after I made some coin doing a job for High Captain Baram of Luskan.~ */
== OHBVOGHI #91345 /* ~Never met anyone that could match me drink for drink, but she did. Next thing I knew, the room was spinning and I woke up in this place. Joker, hah! She is nothing to laugh at, I'll tell you that much!~ */
END
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91346 /* ~Interesting story. Can I ask you about something else?~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91575,INFO)~ EXTERN OHBVOGHI voghi.mainhub
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91347 /* ~That's good to know. I'll take my leave of you now.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91575,INFO)~ EXTERN OHBVOGHI ZBVOGEXIT2
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91348 /* ~I'll keep it in mind. Thank you.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91575,INFO)~ EXTERN OHBVOGHI ZBVOGEXIT4
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91346 /* ~Interesting story. Can I ask you about something else?~ */ EXTERN OHBVOGHI voghi.mainhub
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91347 /* ~That's good to know. I'll take my leave of you now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91348 /* ~I'll keep it in mind. Thank you.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.jokerstory
#91343 /* ~That pretty little half-elf girl... Joker. She got me alone in my favorite tavern after I made some coin doing a job for High Captain Baram of Luskan.~ */
== OHBVOGHI #91345 /* ~Never met anyone that could match me drink for drink, but she did. Next thing I knew, the room was spinning and I woke up in this place. Joker, hah! She is nothing to laugh at, I'll tell you that much!~ */
END
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91346 /* ~Interesting story. Can I ask you about something else?~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91575,INFO)~ EXTERN OHBVOGHI voghi.mainhub
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91347 /* ~That's good to know. I'll take my leave of you now.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91575,INFO)~ EXTERN OHBVOGHI ZBVOGEXIT2
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91348 /* ~I'll keep it in mind. Thank you.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91575,INFO)~ EXTERN OHBVOGHI ZBVOGEXIT4
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91346 /* ~Interesting story. Can I ask you about something else?~ */ EXTERN OHBVOGHI voghi.mainhub
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91347 /* ~That's good to know. I'll take my leave of you now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91348 /* ~I'll keep it in mind. Thank you.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.fighter
#91350 /* ~Good at fighting? You could say that. I killed a dozen tundra yeti barehanded! Barehanded! You've heard of tundra yeti, yes?~ */
END
++ #91351 /* ~I'm afraid not.~ */ EXTERN OHBVOGHI voghi.yetidesc
++ #91352 /* ~Yes. Terrible creatures. A threat to all goodly folk.~ */ EXTERN OHBVOGHI voghi.yeticaravan
++ #91353 /* ~Aye, I have.~ */ EXTERN OHBVOGHI voghi.yeticaravan
+ ~GlobalGT("OHB_LAST_BATTLE","GLOBAL",104) GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)~ + #91354 /* ~Actually I'd rather hear of your recent fights in the arena.~ */ EXTERN OHBVOGHI voghi.minotaurs
+ ~GlobalGT("OHB_LAST_BATTLE","GLOBAL",204) GlobalLT("OHB_LAST_BATTLE","GLOBAL",305)~ + #91354 /* ~Actually I'd rather hear of your recent fights in the arena.~ */ EXTERN OHBVOGHI voghi.githyanki
+ ~GlobalGT("OHB_LAST_BATTLE","GLOBAL",304)~ + #91354 /* ~Actually I'd rather hear of your recent fights in the arena.~ */ EXTERN OHBVOGHI voghi.mindflayers
++ #91355 /* ~I sort of feel like I'm talking to a partially shaved yeti right now.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.yetidesc
#91356 /* ~Twice as tall as a man and thrice as wide. Claws and fangs like daggers. Reminds me of me, now I think of it, except for the claws and fangs, of course.~ */
== OHBVOGHI #91357 /* ~I was escorting a caravan from the Ten Towns south to Luskan. We made camp for the night. I told them not to, but they didn't listen to Voghiln.~ */
== OHBVOGHI #91358 /* ~In the middle of the night, a pack of yetis attacked. In the chaos, I lost my axe. I had to rip one of their hairy arms off and use it to club the others to death.~ */
== OHBVOGHI #91359 /* ~The devils had killed the oxen and most of the guards. I had to pull the wagons to Luskan myself, fighting yetis and bandits the whole way!~ */
END
++ #91360 /* ~An impressive feat. Could I ask you something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91361 /* ~I completely, totally believe you. And I'll be on my way now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91362 /* ~You spin a good yarn. I'll give you that, and wide berth to boot.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.yeticaravan
#91357 /* ~I was escorting a caravan from the Ten Towns south to Luskan. We made camp for the night. I told them not to, but they didn't listen to Voghiln.~ */
== OHBVOGHI #91358 /* ~In the middle of the night, a pack of yetis attacked. In the chaos, I lost my axe. I had to rip one of their hairy arms off and use it to club the others to death.~ */
== OHBVOGHI #91359 /* ~The devils had killed the oxen and most of the guards. I had to pull the wagons to Luskan myself, fighting yetis and bandits the whole way!~ */
END
++ #91360 /* ~An impressive feat. Could I ask you something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91361 /* ~I completely, totally believe you. And I'll be on my way now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91362 /* ~You spin a good yarn. I'll give you that, and wide berth to boot.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.women
#91363 /* ~Saying Voghiln knows a thing or two about women is like saying Elminster can cast a few spells! I know things about women they don't even know about themselves.~ */
END
+ ~Gender(LastTalkedToBy,MALE)~ + #91364 /* ~For instance?~ */ EXTERN OHBVOGHI voghi.nicetry
+ ~Gender(LastTalkedToBy,FEMALE)~ + #91365 /* ~Oh really? And what do you know about me I don't know of myself?~ */ EXTERN OHBVOGHI voghi.mycharms
++ #91366 /* ~Perhaps we can discuss something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91367 /* ~I'm guessing the only thing you know about women is how it feels when they slap your face.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.nicetry
#91368 /* ~Nice try. Figure out your own secrets.~ */
END
++ #91369 /* ~Fine, be that way. I have another question for you.~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91370 /* ~I'll do that. Farewell.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #91371 /* ~I'm guessing the only thing you know about women is how it feels when they slap your face.~ */ EXTERN OHBVOGHI ZBVOGBADEXIT

CHAIN OHBVOGHI voghi.mycharms
#91372 /* ~I know that you'll be giving in to my charms!~ */
END
++ #91373 /* ~We'll see. I have other questions for you now.~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91375 /* ~We'll never know. See you later, Voghiln.~ */ EXTERN OHBVOGHI voghi.willchange
++ #91376 /* ~You have charms? Er, what are they...?~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.willchange
#91378 /* ~You will change your mind. They all do!~ */
END
IF ~~ EXIT

CHAIN OHBVOGHI voghi.drinking
#91379 /* ~I like a drink... when I'm not fighting or sleeping or drinking already.~ */
END
++ #91381 /* ~We're going to get along fabulously. Can I ask you some questions?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91383 /* ~Who doesn't? Me, that's who. I'll be going now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2

CHAIN IF ~  Global("OHB_TALKED_VOGHI","LOCALS",2)
Global("ohb_finale","global",0)
~ THEN OHBVOGHI voghi.mainhub
#91389 /* ~Ja! And what can mighty Voghiln do for you?~ */
END
++ #91390 /* ~You're clearly a man of many skills and stories.~ */ EXTERN OHBVOGHI voghi.manystories
++ #91391 /* ~Can I ask you a question about drinking?~ */ EXTERN OHBVOGHI voghi.drinkinghub
+ ~Global("OHB_VOGHILIN_DRUNK","GLOBAL",1) !Global("OHB_HIRE","GLOBAL",1)~ + #91393 /* ~Greetings, Voghiln. I've a question for you: What would it take to get you to join me in my next fight?~ */ EXTERN OHBVOGHI voghi.honored
+ ~Global("OHB_VOGHILIN_DRUNK","GLOBAL",0) !Global("OHB_HIRE","GLOBAL",1)~ + #91393 /* ~Greetings, Voghiln. I've a question for you: What would it take to get you to join me in my next fight?~ */ EXTERN OHBVOGHI voghi.myprice
+ ~OR(2) Global("OHB_POISON_JOKER","GLOBAL",2) Global("OHB_POISON_JOKER","GLOBAL",3)~ + #91394 /* ~Hello, Voghiln. I was hoping you could help me with a plan.~ */ EXTERN OHBVOGHI voghi.everyoneneeds
++ #91397 /* ~Nothing, never mind.~ */ EXTERN OHBVOGHI ZBVOGEXIT2

CHAIN OHBVOGHI voghi.drinkinghub
#91398 /* ~Drinking? You have come to the right place, my friend! What do you want to know?~ */
END
+ ~OR(2) Global("OHB_POISON_JOKER","GLOBAL",2) Global("OHB_POISON_JOKER","GLOBAL",3)~ + #91400 /* ~Is it true you're a connoisseur of fine drinks?~ */ EXTERN OHBVOGHI voghi.connoisseur
+ ~GlobalLT("OHB_LAST_BATTLE","GLOBAL",105) Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)~ + #91402 /* ~Maybe we could have a few rounds of ale together?~ */ EXTERN OHBVOGHI voghi.winfirst
+ ~GlobalGT("OHB_LAST_BATTLE","GLOBAL",104) Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)~ + #91402 /* ~Maybe we could have a few rounds of ale together?~ */ EXTERN OHBVOGHI voghi.yourebuying
++ #91199 /* ~Never mind, I was just leaving.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91404 /* ~Wait, never mind. I forgot I had decided to stop talking to semi-coherent drunks.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.winfirst
#91406 /* ~Maybe when you've won a few fights. I want to be sure I'm not left carrying your arse back to the bunk room.~ */
END
IF ~~ EXIT

CHAIN OHBVOGHI voghi.yourebuying
#91407 /* ~So, you think you are ready to drink with mighty Voghiln, do you? Fine. You are buying! Ho ho ho ho!~ */
END
+ ~PartyGoldGT(19) CheckStatGT(LastTalkedToBy,13,CON)~ + #91409 /* ~Very well. This one's on me!~ */ EXTERN OHBVOGHI voghi.goodale
+ ~PartyGoldGT(19) !CheckStatGT(LastTalkedToBy,13,CON)~ + #91409 /* ~Very well. This one's on me!~ */ EXTERN OHBVOGHI voghi.cantkeepup
++ #91410 /* ~Looks like I don't have enough gold. Some other time.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91412 /* ~Forget it. Buy your own ale.~ */ EXTERN OHBVOGHI ZBVOGEXIT2

CHAIN OHBVOGHI voghi.myprice
#91414 /* ~My assistance does not come without a price.~ */
END
++ #91416 /* ~What price is that, then?~ */ EXTERN OHBVOGHI voghi.goldpieces
++ #91419 /* ~Never mind, then.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91421 /* ~Pay for help from a half-drunk ape? Forget it!~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.goldpieces
#91423 /* ~1,500 gold pieces and my axe is yours.~ */
END
+ ~PartyGoldGT(1499)~ + #90515 /* ~Very well.~ */ DO ~TakePartyGold(1500) DestroyGold(1500) SetGlobal("OHB_HIRE","GLOBAL",1) SetGlobal("OHB_VOGHILN_HIRED","GLOBAL",1)~ EXIT
++ #91419 /* ~Never mind, then.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91421 /* ~Pay for help from a half-drunk ape? Forget it!~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.honored
#91428 /* ~I would be honored to fight next to anyone who can drink me under the table. Just stay out of my way. I'd hate to cut you down along with the nasty buggers in the pits!~ */
END
IF ~~ DO ~SetGlobal("OHB_HIRE","GLOBAL",1) SetGlobal("OHB_VOGHILN_HIRED","GLOBAL",1)~ EXIT

CHAIN OHBVOGHI voghi.minotaurs
#91430 /* ~For my last fight, I faced a bunch of minotaurs! Big ones too, and smart. They tried to outflank me, but I put my back to the wall and started swinging! We'll be eating roast beef tonight!~ */
END
++ #91431 /* ~Most impressive. May I ask you something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91432 /* ~More likely the minotaurs caught a whiff of you and keeled over!~ */ EXTERN OHBVOGHI ZBVOGEXIT4
++ #91433 /* ~Heard any rumors of what to expect next?~ */ EXTERN OHBVOGHI voghi.holywater

CHAIN OHBVOGHI voghi.holywater
#91435 /* ~Nothing specific, though I did overhear a guard muttering something about holy water and garlic...~ */
END
IF ~~ EXIT

CHAIN OHBVOGHI voghi.githyanki
#91437 /* ~Ah! The fights are finally getting interesting! At first, those skinny, pointy-eared fellows didn't look so tough. Githyanki, Tartle calls them. But I'll tell you this: Those devils are fast.~ */
END
++ #91440 /* ~Glad you survived. Can I ask you something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91441 /* ~There are glaciers that move faster than you, fat man.~ */ EXTERN OHBVOGHI ZBVOGEXIT4
++ #91443 /* ~Any word on what the next fight will be?~ */ EXTERN OHBVOGHI voghi.phylactery

CHAIN OHBVOGHI voghi.phylactery
#91445 /* ~I cannot say for sure, but I heard Tartle muttering about a... phylactery? I do not know what that is, but if it is some sort of drink, I am going to get a taste of it!~ */
END
IF ~~ EXIT

CHAIN OHBVOGHI voghi.mindflayers
#91447 /* ~I faced some strange beasts yesterday. They looked like walking squids. I thought to myself, "It's seafood for dinner tonight!" Next thing I knew, the arena was spinning and it was all I could do to stand there as they wrapped their tentacles around my head and started biting at me.~ */
== OHBVOGHI #91449 /* ~One of the other performers said they were trying to eat my brains.~ */
END
++ #91451 /* ~I'm glad you've got such a thick skull. Could I ask you something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91453 /* ~Trying to get at your brains through your head? They should have checked the other end!~ */ EXTERN OHBVOGHI ZBVOGEXIT4
++ #91455 /* ~What do you think we'll face next?~ */ EXTERN OHBVOGHI voghi.wingflapping

CHAIN OHBVOGHI voghi.wingflapping
#91457 /* ~Nobody has said anything, but last night, I was at the bar, and I heard a roaring and what sounded like huge wings flapping. Never saw where it came from though. Figured I'd had enough drink and went to bed.~ */
END
IF ~~ EXIT

CHAIN OHBVOGHI voghi.vultures
#91459 /* ~Oh ho ho! People have been talking about mighty Voghiln, have they now? Well, you know, where there's vultures, there's fighting!~ */
END
++ #91461 /* ~So it's true?~ */ EXTERN OHBVOGHI voghi.notsecret
+ ~CheckStatGT(LastTalkedToBy,15,CHR)~ + #91463 /* ~You certainly must be important. Who might that contact be, if you don't mind my asking?~ */ EXTERN OHBVOGHI voghi.jokercontact
+ ~Global("OHB_POISON_JOKER","GLOBAL",3)~ + #91466 /* ~I was thinking about challenging Joker to a drinking contest. Could you arrange that?~ */ EXTERN OHBVOGHI voghi.drinkingcontest
++ #91468 /* ~Or maybe there are vultures because you smell like a dead troll.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.jokercontact
#91529 /* ~I suppose telling a friend like you wouldn't hurt... It was that Joker girl. The one that tricked me into coming here in the first place! She liked what she saw, if you know what I mean.~ */
END
++ #91530 /* ~I guess she did. I've another question for you.~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91531 /* ~Unfortunately, I know exactly what you mean. I'll be going now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91532 /* ~Or maybe she just likes drinking you under the table.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.notsecret
#91533 /* ~It is no secret that women can't stay away from me, and the half-elf that works for Dennaton is a woman... But I have not had enough to drink to be telling THAT story yet.~ */
END
++ #91534 /* ~Too bad. I'd like to hear it. I guess I'll go now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91535 /* ~Can I ask you about something else?~ */ EXTERN OHBVOGHI voghi.mainhub
++ #91536 /* ~And I haven't drunk enough to listen to your blather.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.goodale
#91537 /* ~Ahh! Now that is some good ale! Reminds me of some I had not too long ago. I tell you, it's good to have contacts upstairs.~ */
END
++ #91538 /* ~Perhaps you could care to tell me more? Over another round, of course.~ */ EXTERN OHBVOGHI voghi.jokerhangsaround
++ #91539 /* ~I should be going now. Liquor and I are a dangerous combination.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91540 /* ~It's also good to have baths. You should try one sometime.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.cantkeepup
#91541 /* ~Oh ho ho ho! Looks like you can't keep up with mighty Voghiln. Best be getting to bed before you fall out of your chair!~ */
END
IF ~~ EXIT

CHAIN OHBVOGHI voghi.jokerhangsaround
#91542 /* ~Ja! You know that half-elf girl that works for Dennaton—Joker? Well, she has hardly left me alone since I got here. She cannot get enough of mighty Voghiln's company!~ */
END
+ ~Global("OHB_POISON_JOKER","GLOBAL",0) CheckStatGT(LastTalkedToBy,17,CON)~ + #91543 /* ~Indeed? What can you tell me about her?~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91576,QUEST)~ EXTERN OHBVOGHI voghi.drunkend
+ ~Global("OHB_POISON_JOKER","GLOBAL",0) !CheckStatGT(LastTalkedToBy,17,CON)~ + #91543 /* ~Indeed? What can you tell me about her?~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91576,QUEST)~ EXTERN OHBVOGHI voghi.cantkeepup
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91544 /* ~I'd like to hear more, but I'm afraid I must bid you good <DAYNIGHTALL> now.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91576,QUEST)~ EXTERN OHBVOGHI ZBVOGEXIT2
+ ~Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91545 /* ~She might not be able to get enough of you, but I certainly have. Goodbye.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2) AddexperienceParty(15000) AddJournalEntry(91576,QUEST)~ EXTERN OHBVOGHI ZBVOGEXIT4
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0) CheckStatGT(LastTalkedToBy,17,CON)~ + #91543 /* ~Indeed? What can you tell me about her?~ */ EXTERN OHBVOGHI voghi.drunkend
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0) !CheckStatGT(LastTalkedToBy,17,CON)~ + #91543 /* ~Indeed? What can you tell me about her?~ */ EXTERN OHBVOGHI voghi.cantkeepup
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91544 /* ~I'd like to hear more, but I'm afraid I must bid you good <DAYNIGHTALL> now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
+ ~!Global("OHB_POISON_JOKER","GLOBAL",0)~ + #91545 /* ~She might not be able to get enough of you, but I certainly have. Goodbye.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.drunkend
#91546 /* ~Ja. Well... She's liking her ales as much as I do. And she is nice enough company, but... I would like to get her back for bringing me... here... Zzz...~ */
END
IF ~~ DO ~AddJournalEntry(91577,INFO) SetGlobal("OHB_VOGHILIN_DRUNK","GLOBAL",1)~ EXIT

CHAIN OHBVOGHI voghi.everyoneneeds
#91547 /* ~Of course! Everyone needs Voghiln's help. Where would you be without me? Now, tell me what you are needing.~ */
END
+ ~Global("OHB_POISON_JOKER","GLOBAL",3)~ + #91548 /* ~I intend to try to poison Joker.~ */ EXTERN OHBVOGHI voghi.poisonplan
+ ~Global("OHB_POISON_JOKER","GLOBAL",2)~ + #91549 /* ~I need help with a plan, but it is not quite ready yet. I need more items first.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
+ ~GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)~ + #91550 /* ~Rumor is that you have connections around here.~ */ EXTERN OHBVOGHI voghi.vultures
+ ~CheckStatGT(LastTalkedToBy,15,CHR)~ + #91551 /* ~It is a secret matter, but I should be able to trust an honorable warrior such as yourself.~ */ EXTERN OHBVOGHI voghi.boundwarriors
++ #91552 /* ~Nothing, never mind.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #91553 /* ~Forget it. I need help from something smarter than the stone floor we are standing on.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.connoisseur
#91554 /* ~I have had every drink there is from Calimshan to Kuldahar, but I am always looking to try another! You have something new for mighty Voghiln?~ */
END
+ ~Global("OHB_POISON_JOKER","GLOBAL",3)~ + #91555 /* ~I happen to have a very rare one right here! Try it.~ */ EXTERN OHBVOGHI voghi.smellsgood
+ ~Global("OHB_POISON_JOKER","GLOBAL",2) OR(2) PartyHasItem("ohbptn04") PartyHasItem("misc61")~ + #91556 /* ~I have the drink, but it's missing a special ingredient.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91557 /* ~No, I was just wondering. I'll be going now.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #91558 /* ~Yes. Soap.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.smellsgood
#91559 /* ~Hmm... *sniff* Smells good. Mmm... Tastes even better! Give me some more. Ja! That's some of the best I've ever tasted! I will have to tell Joker about this...~ */
END
IF ~~ DO ~AddJournalEntry(91578,QUEST) SetGlobal("OHB_POISON_JOKER","GLOBAL",4) CreateCreature("ohbcutsc",[1.1],S) StartCutSceneMode() StartCutScene("ohbcut13")~ EXIT

CHAIN OHBVOGHI voghi.boundwarriors
#91560 /* ~We have fought in the same pit and are bound as warriors. If you cannot trust me, who can you trust? Now tell mighty Voghiln what you are thinking.~ */
END
+ ~Global("OHB_POISON_JOKER","GLOBAL",3)~ + #91561 /* ~I intend to try to poison Joker. Can you help?~ */ EXTERN OHBVOGHI voghi.poisonplan
+ ~Global("OHB_POISON_JOKER","GLOBAL",2) OR(2) PartyHasItem("ohbptn04") PartyHasItem("misc61")~ + #91562 /* ~On second thought, I've changed my mind. I'll take my leave of you now.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91563 /* ~On second thought, I think I have changed my mind. I must be going.~ */ EXTERN OHBVOGHI ZBVOGEXIT
++ #91564 /* ~Forget it, Voghiln. I trust Stirv's wyvern more than you.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.poisonplan
#91565 /* ~Ho ho! Ever since that skinny half-elf captured me, I have been looking to put her in her place. This sounds like just the way to do it! What do you need?~ */
END
++ #91566 /* ~Tell her I have a drink so strong it'll knock her on her rear.~ */ EXTERN OHBVOGHI voghi.shellcoming
++ #91567 /* ~Nothing. This was a bad idea. I've got to go.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91568 /* ~Forget it. I need someone who can speak in coherent sentences.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.bashguards
#91569 /* ~Are you sure you don't need me to bash some guards or break down some walls?~ */
END
++ #91570 /* ~That won't be necessary. Just mention the drink.~ */ EXTERN OHBVOGHI voghi.shellcoming
++ #91571 /* ~On second thought, forget it. I must be going.~ */ EXTERN OHBVOGHI ZBVOGEXIT2
++ #91572 /* ~In retrospect, it seems to me my scheme requires more subtlety than you're capable of. I'll get one of Stirv's umber hulks instead.~ */ EXTERN OHBVOGHI ZBVOGEXIT4

CHAIN OHBVOGHI voghi.shellcoming
#91573 /* ~She will be coming to see you before you know it. She can't resist me.~ */
END
IF ~~ DO ~AddJournalEntry(91578,QUEST) SetGlobal("OHB_POISON_JOKER","GLOBAL",4) CreateCreature("ohbcutsc",[1.1],S) StartCutSceneMode() StartCutScene("ohbcut13")~ EXIT

CHAIN OHBVOGHI voghi.drinkingcontest
#91574 /* ~Challenging Joker to a drinking contest? Have you lost your mind? Well, it is your funeral. I'll let her know for you.~ */
END
IF ~~ DO ~AddJournalEntry(91579,QUEST) SetGlobal("OHB_POISON_JOKER","GLOBAL",5) CreateCreature("ohbcutsc",[1.1],S) StartCutSceneMode() StartCutScene("ohbcut13")~ EXIT

CHAIN IF ~  Global("ohb_finale_arena","oh8200",4)
~ THEN OHBVOGHI voghi.finalearena
#94316 /* ~You have my thanks, <CHARNAME>, and my word is true! I will return to the pits and slaughter the rest of the guards, but I want you to have these. Where you are going, you will need them more than I.~ */
END
IF ~~ DO ~ClearAllActions() SetGlobal("ohb_finale_arena","oh8200",5) GiveItemCreate("potn18",LastTalkedToBy,1,0,0) GiveItemCreate("potn14",LastTalkedToBy,1,0,0) EscapeAreaMove("oh8100",4015,3145,W)~ EXIT
IF ~InMyArea("ohblea") !Dead("ohblea")~ DO ~ClearAllActions() SetGlobal("ohb_finale_arena","oh8200",5) GiveItemCreate("potn18",LastTalkedToBy,1,0,0) GiveItemCreate("potn14",LastTalkedToBy,1,0,0) EscapeAreaMove("oh8100",4015,3145,W)~ EXTERN ~OHBLEA~ 16
IF ~InMyArea("ohbgerro") !Dead("ohbgerro")~ DO ~ClearAllActions() SetGlobal("ohb_finale_arena","oh8200",5) GiveItemCreate("potn18",LastTalkedToBy,1,0,0) GiveItemCreate("potn14",LastTalkedToBy,1,0,0) EscapeAreaMove("oh8100",4015,3145,W)~ EXTERN ~OHBGERRO~ 38

CHAIN OHBVOGHI voghi.victory
#100617 /* ~Ah, you have had a stunning victory here today, <CHARNAME>! I'll raise a tankard or three in your name in every alehouse across Faerûn.~ */
END
IF ~~ EXTERN ~OHBBRODL~ 89
IF ~InMyArea("ohblea") !Dead("ohblea")~ EXTERN ~OHBLEA~ 17
IF ~InMyArea("ohbdulf") !Dead("ohbdulf")~ EXTERN ~OHBDULF~ 66
IF ~InMyArea("ohbtimmo") !Dead("ohbtimmo")~ EXTERN ~OHBTIMMO~ 61
IF ~InMyArea("ohbgerro") !Dead("ohbgerro")~ EXTERN ~OHBGERRO~ 40
IF ~InMyArea("ohbfeldr") !Dead("ohbfeldr")~ EXTERN ~OHBFELDR~ 39
IF ~InMyArea("ohbmercy") !Dead("ohbmercy")~ EXTERN ~OHBMERCY~ 42
IF ~InMyArea("ohbhort") !Dead("ohbhort")~ EXTERN ~OHBHORT~ 45
IF ~InMyArea("ohbsymm") !Dead("ohbsymm")~ EXTERN ~OHBSYMM~ 38
IF ~InMyArea("ohbgezzt") !Dead("ohbgezzt")~ EXTERN ~OHBGEZZT~ 44

CHAIN OHBVOGHI voghi.feast
#90509 /* ~Might as well. Food is food, and I believe a feast was mentioned.~ */
END
IF ~~ EXTERN ~OHBMESSE~ 1

CHAIN OHBVOGHI voghi.thevast
#90547 /* ~The Vast? What is this? I have never used such a nickname!~ */
== OHBVOGHI #90549 /* ~Eh... Fine, it fits.~ */
END
IF ~~ EXTERN ~OHBDENNA~ 263

CHAIN OHBVOGHI voghi.greatestwarrior
#90575 /* ~You? The greatest warrior? Greatest halfling warrior, maybe, but that still only makes you half the warrior I am!~ */
END
IF ~~ EXTERN ~OHBFELDR~ 42

CHAIN OHBVOGHI voghi.nightmares
#90577 /* ~I conquered the Nightmares! An entire clan of orcs wiped out in an afternoon!~ */
END
IF ~~ EXTERN ~OHBHORT~ 49
