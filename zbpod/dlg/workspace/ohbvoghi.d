// creator  : weidu (version 24900)
// argument : OHBVOGHI.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBVOGHI~

IF ~  Global("OHB_TALKED_VOGHI","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY #90467 /* ~Augh, mine head! By the Oak Father's leafy arse, I've never met a woman who could drink like that! One minute I'm singing with an ale in one hand and a wench in the other, and then I wake up here... Where in the Nine Hells am I?~ [OH90467] */
  IF ~~ THEN REPLY #90468 /* ~I was hoping you could tell me.~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY #90469 /* ~No clue. I'll ask someone else.~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #90470 /* ~Your brain hurts? Well, at least it's a small problem.~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 1
  SAY #90471 /* ~Aye. Well, if you find out where the food, ale, and women are, come back and tell Voghiln!~ [OH90471] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY #90472 /* ~I would if I could, but the guards say nothing to me. I tell you this, though: From where I stand, it is looking like a room of some sort. Has a floor... walls... doors. Ja! We are in a room!~ [OH90472] */
  IF ~~ THEN REPLY #90473 /* ~How long have you been here?~ */ GOTO 3
  IF ~~ THEN REPLY #90474 /* ~Do you know why we were brought here?~ */ GOTO 4
  IF ~~ THEN REPLY #90475 /* ~My gods, you're right! I'll be leaving it now.~ */ GOTO 1
  IF ~~ THEN REPLY #90476 /* ~It would appear intelligence is not a prerequisite for being held here.~ */ GOTO 21
END

IF ~~ THEN BEGIN 3
  SAY #90477 /* ~A couple of hours, maybe. Long enough to be getting hungry, I'll tell you this.~ [OH90477] */
  IF ~~ THEN REPLY #90478 /* ~Very well, thank you for your time.~ */ GOTO 1
  IF ~~ THEN REPLY #90479 /* ~You can get hungry? I find that hard to believe. Well, I must be going.~ */ GOTO 1
  IF ~~ THEN REPLY #90480 /* ~For you, that would take, what, five minutes?~ */ GOTO 21
END

IF ~~ THEN BEGIN 4
  SAY #90481 /* ~I do not know why we were brought here. I am thinking I was snatched for my fame in fighting, drinking, and my way with the ladies.~ [OH90481] */
  IF ~~ THEN REPLY #90482 /* ~Thank you for your time. I must go now.~ */ GOTO 1
  IF ~~ THEN REPLY #90479 /* ~You can get hungry? I find that hard to believe. Well, I must be going.~ */ GOTO 1
  IF ~~ THEN REPLY #90483 /* ~Are you sure you weren't brought here for your finely honed, razor-sharp wit?~ */ GOTO 21
END

IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 5
  SAY #91389 /* ~Ja! And what can mighty Voghiln do for you?~ [OH91389] */
  IF ~~ THEN REPLY #91397 /* ~Nothing, never mind.~ */ GOTO 23
END

IF ~  Global("OHB_TALKED_VOGHI","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 6
  SAY #91286 /* ~Ho ho, what have we here? Come raise a flagon with me! We'll drink till we die in the arena... or the bar. The bar is more likely for me.~ [OH91286] */
  IF ~~ THEN REPLY #91287 /* ~Drinking already? Isn't it a bit early for that?~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 7
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY #91288 /* ~Pour me a flagon, and let's get started!~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 8
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY #91288 /* ~Pour me a flagon, and let's get started!~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 9
  IF ~~ THEN REPLY #91289 /* ~All right, who taught the ape to talk and hold a flagon?~ */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 11
END

IF ~~ THEN BEGIN 7
  SAY #91290 /* ~I thought I was getting a late start! What are you, some sort of paladin?~ [OH91290] */
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
~ THEN REPLY #91291 /* ~I am a paladin, yes.~ */ GOTO 12
  IF ~~ THEN REPLY #91292 /* ~No. I just want to stay sober and survive my first day in this place.~ */ GOTO 12
  IF ~~ THEN REPLY #91293 /* ~No, but looking at you, I'm considering it.~ */ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY #91294 /* ~Oh ho ho! A wild one we have here. Tell you what, my lady... after our first victory, come see me. We'll have a celebration all our own.~ [OH91294] */
  IF ~~ THEN REPLY #91295 /* ~Sounds like fun.~ */ GOTO 13
  IF ~~ THEN REPLY #91296 /* ~I think I'll pass. Who are you, anyway?~ */ GOTO 13
  IF ~~ THEN REPLY #91297 /* ~It'll take more than marginally coherent drunken babbling to seduce me, you oaf.~ */ GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY #91299 /* ~Good man! Come, have a drink with old Voghiln. I'll tell you secrets that will get you any woman in Faerûn. Assuming she isn't already with me, of course.~ [OH91299] */
  IF ~~ THEN REPLY #91300 /* ~Great. I've never had much luck with women.~ */ GOTO 10
  IF ~~ THEN REPLY #91301 /* ~Maybe I'll pass. Tell me your name.~ */ GOTO 13
  IF ~~ THEN REPLY #91303 /* ~Do you have any "secrets" that don't involve pouring gallons of ale down your throat?~ */ GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY #91304 /* ~Watch and learn. We are going to be good friends! I can feel it in my gut—and my gut's never wrong.~ [OH91304] */
  IF ~~ THEN REPLY #91306 /* ~It certainly isn't today. Nice to meet you.~ */ GOTO 13
  IF ~~ THEN REPLY #91307 /* ~One can't have too many friends, especially in a place like this. What's your name?~ */ GOTO 13
  IF ~~ THEN REPLY #91308 /* ~I see you keep it well supplied.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #91309 /* ~Ah—we've got a funny one!~ [OH91309] */
  IF ~~ THEN REPLY #91310 /* ~My apologies. Who are you again?~ */ GOTO 13
  IF ~~ THEN REPLY #91311 /* ~Who in the Nine Hells are you?~ */ GOTO 13
  IF ~~ THEN REPLY #91312 /* ~Try it and we'll see who laughs last.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY #91313 /* ~That's unfortunate. But don't worry! Old Voghiln will loosen you up. I'll have you singing and drinking with the best of them in a tenday. If you're still alive, that is.~ [OH91313] */
  IF ~~ THEN REPLY #91314 /* ~I don't intend to die any time soon.~ */ GOTO 13
  IF ~~ THEN REPLY #91315 /* ~We'll see.~ */ GOTO 13
  IF ~~ THEN REPLY #91316 /* ~It's your own life you should worry about. Who are you?~ */ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY #91317 /* ~Voghiln's the name. A fighter, drinker, and lover... though not necessarily in that order.~ [OH91317] */
  IF ~~ THEN REPLY #91318 /* ~How did you come to be here, Voghiln?~ */ GOTO 16
  IF ~~ THEN REPLY #91319 /* ~You seem to have many skills and stories.~ */ GOTO 14
  IF ~~ THEN REPLY #91320 /* ~Nice to meet you. I'll be going now.~ */ GOTO 23
  IF ~~ THEN REPLY #91321 /* ~You forgot "eater."~ */ GOTO 21
END

IF ~~ THEN BEGIN 14
  SAY #91322 /* ~I'll tell you what I know and a few things I don't!~ [OH91322] */
  IF ~~ THEN REPLY #91323 /* ~You're a good fighter, I take it?~ */ GOTO 24
  IF ~~ THEN REPLY #91324 /* ~So, you said you know a thing or two about women?~ */ GOTO 29
  IF ~~ THEN REPLY #91325 /* ~I gather you like to have a drink now and then? Especially now.~ */ GOTO 33
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN REPLY #91326 /* ~How did you end up here, Voghiln?~ */ GOTO 16
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY #91326 /* ~How did you end up here, Voghiln?~ */ GOTO 17
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY #91326 /* ~How did you end up here, Voghiln?~ */ GOTO 15
  IF ~~ THEN REPLY #91327 /* ~That's all for now.~ */ GOTO 23
END

IF ~~ THEN BEGIN 15
  SAY #91328 /* ~Funny you should ask. It seems most around here got their teeth kicked in by that Winged wench and her gang. But not Voghiln! They tricked me!~ [OH91328] */
  IF ~~ THEN REPLY #91329 /* ~Really? What happened?~ */ GOTO 18
  IF ~~ THEN REPLY #91330 /* ~How'd they manage that?~ */ GOTO 18
  IF ~~ THEN REPLY #91337 /* ~What did they do? Offer you some ale?~ */ GOTO 19
END

IF ~~ THEN BEGIN 16
  SAY #91338 /* ~Eh, not so soon, not so soon. Win a few fights—then you'll have earned the right to hear the story of how they captured the mighty Voghiln!~ [OH91338] */
  IF ~~ THEN REPLY #91339 /* ~Fair enough. Can I ask you something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91340 /* ~Fine. I'll be going now.~ */ GOTO 23
  IF ~~ THEN REPLY #91341 /* ~Pfft. They probably just dangled a banana in front of a giant sack.~ */ GOTO 21
END

IF ~~ THEN BEGIN 17
  SAY #91342 /* ~Ach! I'll tell you another time... if you survive that long.~ [OH91342] */
  IF ~~ THEN REPLY #91339 /* ~Fair enough. Can I ask you something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91340 /* ~Fine. I'll be going now.~ */ GOTO 23
  IF ~~ THEN REPLY #91341 /* ~Pfft. They probably just dangled a banana in front of a giant sack.~ */ GOTO 21
END

IF ~~ THEN BEGIN 18
  SAY #91343 /* ~That pretty little half-elf girl... Joker. She got me alone in my favorite tavern after I made some coin doing a job for High Captain Baram of Luskan.~ [OH91343] */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY #91344 /* ~Ach, you are a smart one. That is exactly what happened!~ [OH91344] */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 20
  SAY #91345 /* ~Never met anyone that could match me drink for drink, but she did. Next thing I knew, the room was spinning and I woke up in this place. Joker, hah! She is nothing to laugh at, I'll tell you that much!~ [OH91345] */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91346 /* ~Interesting story. Can I ask you about something else?~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91575,INFO)
~ GOTO 34
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91347 /* ~That's good to know. I'll take my leave of you now.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91575,INFO)
~ GOTO 23
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91348 /* ~I'll keep it in mind. Thank you.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91575,INFO)
~ GOTO 21
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91346 /* ~Interesting story. Can I ask you about something else?~ */ GOTO 34
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91347 /* ~That's good to know. I'll take my leave of you now.~ */ GOTO 23
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91348 /* ~I'll keep it in mind. Thank you.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY #91186 /* ~Keep on joking. I'll put my boot so far up your arse you'll taste my sole!~ [OH91186] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY #102811 /* ~Keep on joking...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY #91349 /* ~Well, come find me the next time you need a drink, a laugh, or a pummeling!~ [OH91349] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY #91350 /* ~Good at fighting? You could say that. I killed a dozen tundra yeti barehanded! Barehanded! You've heard of tundra yeti, yes?~ [OH91350] */
  IF ~~ THEN REPLY #91351 /* ~I'm afraid not.~ */ GOTO 25
  IF ~~ THEN REPLY #91352 /* ~Yes. Terrible creatures. A threat to all goodly folk.~ */ GOTO 26
  IF ~~ THEN REPLY #91353 /* ~Aye, I have.~ */ GOTO 26
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY #91354 /* ~Actually I'd rather hear of your recent fights in the arena.~ */ GOTO 41
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN REPLY #91354 /* ~Actually I'd rather hear of your recent fights in the arena.~ */ GOTO 43
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY #91354 /* ~Actually I'd rather hear of your recent fights in the arena.~ */ GOTO 45
  IF ~~ THEN REPLY #91355 /* ~I sort of feel like I'm talking to a partially shaved yeti right now.~ */ GOTO 21
END

IF ~~ THEN BEGIN 25
  SAY #91356 /* ~Twice as tall as a man and thrice as wide. Claws and fangs like daggers. Reminds me of me, now I think of it, except for the claws and fangs, of course.~ [OH91356] */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #91357 /* ~I was escorting a caravan from the Ten Towns south to Luskan. We made camp for the night. I told them not to, but they didn't listen to Voghiln.~ [OH91357] */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY #91358 /* ~In the middle of the night, a pack of yetis attacked. In the chaos, I lost my axe. I had to rip one of their hairy arms off and use it to club the others to death.~ [OH91358] */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY #91359 /* ~The devils had killed the oxen and most of the guards. I had to pull the wagons to Luskan myself, fighting yetis and bandits the whole way!~ [OH91359] */
  IF ~~ THEN REPLY #91360 /* ~An impressive feat. Could I ask you something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91361 /* ~I completely, totally believe you. And I'll be on my way now.~ */ GOTO 23
  IF ~~ THEN REPLY #91362 /* ~You spin a good yarn. I'll give you that, and wide berth to boot.~ */ GOTO 21
END

IF ~~ THEN BEGIN 29
  SAY #91363 /* ~Saying Voghiln knows a thing or two about women is like saying Elminster can cast a few spells! I know things about women they don't even know about themselves.~ [OH91363] */
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY #91364 /* ~For instance?~ */ GOTO 30
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY #91365 /* ~Oh really? And what do you know about me I don't know of myself?~ */ GOTO 31
  IF ~~ THEN REPLY #91366 /* ~Perhaps we can discuss something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91367 /* ~I'm guessing the only thing you know about women is how it feels when they slap your face.~ */ GOTO 21
END

IF ~~ THEN BEGIN 30
  SAY #91368 /* ~Nice try. Figure out your own secrets.~ [OH91368] */
  IF ~~ THEN REPLY #91369 /* ~Fine, be that way. I have another question for you.~ */ GOTO 34
  IF ~~ THEN REPLY #91370 /* ~I'll do that. Farewell.~ */ GOTO 23
  IF ~~ THEN REPLY #91371 /* ~I'm guessing the only thing you know about women is how it feels when they slap your face.~ */ GOTO 21
END

IF ~~ THEN BEGIN 31
  SAY #91372 /* ~I know that you'll be giving in to my charms!~ [OH91372] */
  IF ~~ THEN REPLY #91373 /* ~We'll see. I have other questions for you now.~ */ GOTO 34
  IF ~~ THEN REPLY #91375 /* ~We'll never know. See you later, Voghiln.~ */ GOTO 32
  IF ~~ THEN REPLY #91376 /* ~You have charms? Er, what are they...?~ */ GOTO 22
END

IF ~~ THEN BEGIN 32
  SAY #91378 /* ~You will change your mind. They all do!~ [OH91378] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33
  SAY #91379 /* ~I like a drink... when I'm not fighting or sleeping or drinking already.~ [OH91379] */
  IF ~~ THEN REPLY #91381 /* ~We're going to get along fabulously. Can I ask you some questions?~ */ GOTO 34
  IF ~~ THEN REPLY #91383 /* ~Who doesn't? Me, that's who. I'll be going now.~ */ GOTO 23
END

IF ~  Global("OHB_TALKED_VOGHI","LOCALS",2)
Global("ohb_finale","global",0)
~ THEN BEGIN 34
  SAY #91389 /* ~Ja! And what can mighty Voghiln do for you?~ [OH91389] */
  IF ~~ THEN REPLY #91390 /* ~You're clearly a man of many skills and stories.~ */ GOTO 14
  IF ~~ THEN REPLY #91391 /* ~Can I ask you a question about drinking?~ */ GOTO 35
  IF ~  Global("OHB_VOGHILIN_DRUNK","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #91393 /* ~Greetings, Voghiln. I've a question for you: What would it take to get you to join me in my next fight?~ */ GOTO 40
  IF ~  Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #91393 /* ~Greetings, Voghiln. I've a question for you: What would it take to get you to join me in my next fight?~ */ GOTO 38
  IF ~  OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY #91394 /* ~Hello, Voghiln. I was hoping you could help me with a plan.~ */ GOTO 55
  IF ~~ THEN REPLY #91397 /* ~Nothing, never mind.~ */ GOTO 23
END

IF ~~ THEN BEGIN 35
  SAY #91398 /* ~Drinking? You have come to the right place, my friend! What do you want to know?~ [OH91398] */
  IF ~  OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY #91400 /* ~Is it true you're a connoisseur of fine drinks?~ */ GOTO 56
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)
Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)
~ THEN REPLY #91402 /* ~Maybe we could have a few rounds of ale together?~ */ GOTO 36
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)
~ THEN REPLY #91402 /* ~Maybe we could have a few rounds of ale together?~ */ GOTO 37
  IF ~~ THEN REPLY #91199 /* ~Never mind, I was just leaving.~ */ GOTO 23
  IF ~~ THEN REPLY #91404 /* ~Wait, never mind. I forgot I had decided to stop talking to semi-coherent drunks.~ */ GOTO 21
END

IF ~~ THEN BEGIN 36
  SAY #91406 /* ~Maybe when you've won a few fights. I want to be sure I'm not left carrying your arse back to the bunk room.~ [OH91406] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37
  SAY #91407 /* ~So, you think you are ready to drink with mighty Voghiln, do you? Fine. You are buying! Ho ho ho ho!~ [OH91407] */
  IF ~  PartyGoldGT(19)
CheckStatGT(LastTalkedToBy,13,CON)
~ THEN REPLY #91409 /* ~Very well. This one's on me!~ */ GOTO 51
  IF ~  PartyGoldGT(19)
!CheckStatGT(LastTalkedToBy,13,CON)
~ THEN REPLY #91409 /* ~Very well. This one's on me!~ */ GOTO 52
  IF ~~ THEN REPLY #91410 /* ~Looks like I don't have enough gold. Some other time.~ */ GOTO 23
  IF ~~ THEN REPLY #91412 /* ~Forget it. Buy your own ale.~ */ GOTO 23
END

IF ~~ THEN BEGIN 38
  SAY #91414 /* ~My assistance does not come without a price.~ [OH91414] */
  IF ~~ THEN REPLY #91416 /* ~What price is that, then?~ */ GOTO 39
  IF ~~ THEN REPLY #91419 /* ~Never mind, then.~ */ GOTO 23
  IF ~~ THEN REPLY #91421 /* ~Pay for help from a half-drunk ape? Forget it!~ */ GOTO 21
END

IF ~~ THEN BEGIN 39
  SAY #91423 /* ~1,500 gold pieces and my axe is yours.~ [OH91423] */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #90515 /* ~Very well.~ */ DO ~TakePartyGold(1500)
DestroyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_VOGHILN_HIRED","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #91419 /* ~Never mind, then.~ */ GOTO 23
  IF ~~ THEN REPLY #91421 /* ~Pay for help from a half-drunk ape? Forget it!~ */ GOTO 21
END

IF ~~ THEN BEGIN 40
  SAY #91428 /* ~I would be honored to fight next to anyone who can drink me under the table. Just stay out of my way. I'd hate to cut you down along with the nasty buggers in the pits!~ [OH91428] */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_VOGHILN_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY #91430 /* ~For my last fight, I faced a bunch of minotaurs! Big ones too, and smart. They tried to outflank me, but I put my back to the wall and started swinging! We'll be eating roast beef tonight!~ [OH91430] */
  IF ~~ THEN REPLY #91431 /* ~Most impressive. May I ask you something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91432 /* ~More likely the minotaurs caught a whiff of you and keeled over!~ */ GOTO 21
  IF ~~ THEN REPLY #91433 /* ~Heard any rumors of what to expect next?~ */ GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY #91435 /* ~Nothing specific, though I did overhear a guard muttering something about holy water and garlic...~ [OH91435] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43
  SAY #91437 /* ~Ah! The fights are finally getting interesting! At first, those skinny, pointy-eared fellows didn't look so tough. Githyanki, Tartle calls them. But I'll tell you this: Those devils are fast.~ [OH91437] */
  IF ~~ THEN REPLY #91440 /* ~Glad you survived. Can I ask you something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91441 /* ~There are glaciers that move faster than you, fat man.~ */ GOTO 21
  IF ~~ THEN REPLY #91443 /* ~Any word on what the next fight will be?~ */ GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY #91445 /* ~I cannot say for sure, but I heard Tartle muttering about a... phylactery? I do not know what that is, but if it is some sort of drink, I am going to get a taste of it!~ [OH91445] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY #91447 /* ~I faced some strange beasts yesterday. They looked like walking squids. I thought to myself, "It's seafood for dinner tonight!" Next thing I knew, the arena was spinning and it was all I could do to stand there as they wrapped their tentacles around my head and started biting at me.~ [OH91447] */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY #91449 /* ~One of the other performers said they were trying to eat my brains.~ [OH91449] */
  IF ~~ THEN REPLY #91451 /* ~I'm glad you've got such a thick skull. Could I ask you something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91453 /* ~Trying to get at your brains through your head? They should have checked the other end!~ */ GOTO 21
  IF ~~ THEN REPLY #91455 /* ~What do you think we'll face next?~ */ GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY #91457 /* ~Nobody has said anything, but last night, I was at the bar, and I heard a roaring and what sounded like huge wings flapping. Never saw where it came from though. Figured I'd had enough drink and went to bed.~ [OH91457] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48
  SAY #91459 /* ~Oh ho ho! People have been talking about mighty Voghiln, have they now? Well, you know, where there's vultures, there's fighting!~ [OH91459] */
  IF ~~ THEN REPLY #91461 /* ~So it's true?~ */ GOTO 50
  IF ~  CheckStatGT(LastTalkedToBy,15,CHR)
~ THEN REPLY #91463 /* ~You certainly must be important. Who might that contact be, if you don't mind my asking?~ */ GOTO 49
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY #91466 /* ~I was thinking about challenging Joker to a drinking contest. Could you arrange that?~ */ GOTO 62
  IF ~~ THEN REPLY #91468 /* ~Or maybe there are vultures because you smell like a dead troll.~ */ GOTO 21
END

IF ~~ THEN BEGIN 49
  SAY #91529 /* ~I suppose telling a friend like you wouldn't hurt... It was that Joker girl. The one that tricked me into coming here in the first place! She liked what she saw, if you know what I mean.~ [OH91529] */
  IF ~~ THEN REPLY #91530 /* ~I guess she did. I've another question for you.~ */ GOTO 34
  IF ~~ THEN REPLY #91531 /* ~Unfortunately, I know exactly what you mean. I'll be going now.~ */ GOTO 23
  IF ~~ THEN REPLY #91532 /* ~Or maybe she just likes drinking you under the table.~ */ GOTO 21
END

IF ~~ THEN BEGIN 50
  SAY #91533 /* ~It is no secret that women can't stay away from me, and the half-elf that works for Dennaton is a woman... But I have not had enough to drink to be telling THAT story yet.~ [OH91533] */
  IF ~~ THEN REPLY #91534 /* ~Too bad. I'd like to hear it. I guess I'll go now.~ */ GOTO 23
  IF ~~ THEN REPLY #91535 /* ~Can I ask you about something else?~ */ GOTO 34
  IF ~~ THEN REPLY #91536 /* ~And I haven't drunk enough to listen to your blather.~ */ GOTO 21
END

IF ~~ THEN BEGIN 51
  SAY #91537 /* ~Ahh! Now that is some good ale! Reminds me of some I had not too long ago. I tell you, it's good to have contacts upstairs.~ [OH91537] */
  IF ~~ THEN REPLY #91538 /* ~Perhaps you could care to tell me more? Over another round, of course.~ */ GOTO 53
  IF ~~ THEN REPLY #91539 /* ~I should be going now. Liquor and I are a dangerous combination.~ */ GOTO 23
  IF ~~ THEN REPLY #91540 /* ~It's also good to have baths. You should try one sometime.~ */ GOTO 21
END

IF ~~ THEN BEGIN 52
  SAY #91541 /* ~Oh ho ho ho! Looks like you can't keep up with mighty Voghiln. Best be getting to bed before you fall out of your chair!~ [OH91541] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53
  SAY #91542 /* ~Ja! You know that half-elf girl that works for Dennaton—Joker? Well, she has hardly left me alone since I got here. She cannot get enough of mighty Voghiln's company!~ [OH91542] */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY #91543 /* ~Indeed? What can you tell me about her?~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 54
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
!CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY #91543 /* ~Indeed? What can you tell me about her?~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 52
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91544 /* ~I'd like to hear more, but I'm afraid I must bid you good <DAYNIGHTALL> now.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 23
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91545 /* ~She might not be able to get enough of you, but I certainly have. Goodbye.~ */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 21
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY #91543 /* ~Indeed? What can you tell me about her?~ */ GOTO 54
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
!CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY #91543 /* ~Indeed? What can you tell me about her?~ */ GOTO 52
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91544 /* ~I'd like to hear more, but I'm afraid I must bid you good <DAYNIGHTALL> now.~ */ GOTO 23
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY #91545 /* ~She might not be able to get enough of you, but I certainly have. Goodbye.~ */ GOTO 21
END

IF ~~ THEN BEGIN 54
  SAY #91546 /* ~Ja. Well... She's liking her ales as much as I do. And she is nice enough company, but... I would like to get her back for bringing me... here... Zzz...~ [OH91546] */
  IF ~~ THEN DO ~AddJournalEntry(91577,INFO)
SetGlobal("OHB_VOGHILIN_DRUNK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY #91547 /* ~Of course! Everyone needs Voghiln's help. Where would you be without me? Now, tell me what you are needing.~ [OH91547] */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY #91548 /* ~I intend to try to poison Joker.~ */ GOTO 59
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91549 /* ~I need help with a plan, but it is not quite ready yet. I need more items first.~ */ GOTO 23
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN REPLY #91550 /* ~Rumor is that you have connections around here.~ */ GOTO 48
  IF ~  CheckStatGT(LastTalkedToBy,15,CHR)
~ THEN REPLY #91551 /* ~It is a secret matter, but I should be able to trust an honorable warrior such as yourself.~ */ GOTO 58
  IF ~~ THEN REPLY #91552 /* ~Nothing, never mind.~ */ GOTO 23
  IF ~~ THEN REPLY #91553 /* ~Forget it. I need help from something smarter than the stone floor we are standing on.~ */ GOTO 21
END

IF ~~ THEN BEGIN 56
  SAY #91554 /* ~I have had every drink there is from Calimshan to Kuldahar, but I am always looking to try another! You have something new for mighty Voghiln?~ [OH91554] */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY #91555 /* ~I happen to have a very rare one right here! Try it.~ */ GOTO 57
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
OR(2)
PartyHasItem("ohbptn04")
PartyHasItem("misc61")
~ THEN REPLY #91556 /* ~I have the drink, but it's missing a special ingredient.~ */ GOTO 23
  IF ~~ THEN REPLY #91557 /* ~No, I was just wondering. I'll be going now.~ */ GOTO 23
  IF ~~ THEN REPLY #91558 /* ~Yes. Soap.~ */ GOTO 21
END

IF ~~ THEN BEGIN 57
  SAY #91559 /* ~Hmm... *sniff* Smells good. Mmm... Tastes even better! Give me some more. Ja! That's some of the best I've ever tasted! I will have to tell Joker about this...~ [OH91559] */
  IF ~~ THEN DO ~AddJournalEntry(91578,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",4)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~~ THEN BEGIN 58
  SAY #91560 /* ~We have fought in the same pit and are bound as warriors. If you cannot trust me, who can you trust? Now tell mighty Voghiln what you are thinking.~ [OH91560] */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY #91561 /* ~I intend to try to poison Joker. Can you help?~ */ GOTO 59
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
OR(2)
PartyHasItem("ohbptn04")
PartyHasItem("misc61")
~ THEN REPLY #91562 /* ~On second thought, I've changed my mind. I'll take my leave of you now.~ */ GOTO 23
  IF ~~ THEN REPLY #91563 /* ~On second thought, I think I have changed my mind. I must be going.~ */ GOTO 23
  IF ~~ THEN REPLY #91564 /* ~Forget it, Voghiln. I trust Stirv's wyvern more than you.~ */ GOTO 21
END

IF ~~ THEN BEGIN 59
  SAY #91565 /* ~Ho ho! Ever since that skinny half-elf captured me, I have been looking to put her in her place. This sounds like just the way to do it! What do you need?~ [OH91565] */
  IF ~~ THEN REPLY #91566 /* ~Tell her I have a drink so strong it'll knock her on her rear.~ */ GOTO 61
  IF ~~ THEN REPLY #91567 /* ~Nothing. This was a bad idea. I've got to go.~ */ GOTO 23
  IF ~~ THEN REPLY #91568 /* ~Forget it. I need someone who can speak in coherent sentences.~ */ GOTO 21
END

IF ~~ THEN BEGIN 60
  SAY #91569 /* ~Are you sure you don't need me to bash some guards or break down some walls?~ [OH91569] */
  IF ~~ THEN REPLY #91570 /* ~That won't be necessary. Just mention the drink.~ */ GOTO 61
  IF ~~ THEN REPLY #91571 /* ~On second thought, forget it. I must be going.~ */ GOTO 23
  IF ~~ THEN REPLY #91572 /* ~In retrospect, it seems to me my scheme requires more subtlety than you're capable of. I'll get one of Stirv's umber hulks instead.~ */ GOTO 21
END

IF ~~ THEN BEGIN 61
  SAY #91573 /* ~She will be coming to see you before you know it. She can't resist me.~ [OH91573] */
  IF ~~ THEN DO ~AddJournalEntry(91578,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",4)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~~ THEN BEGIN 62
  SAY #91574 /* ~Challenging Joker to a drinking contest? Have you lost your mind? Well, it is your funeral. I'll let her know for you.~ [OH91574] */
  IF ~~ THEN DO ~AddJournalEntry(91579,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",5)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~  Global("ohb_finale_arena","oh8200",4)
~ THEN BEGIN 63
  SAY #94316 /* ~You have my thanks, <CHARNAME>, and my word is true! I will return to the pits and slaughter the rest of the guards, but I want you to have these. Where you are going, you will need them more than I.~ [OH94316] */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("potn18",LastTalkedToBy,1,0,0)
GiveItemCreate("potn14",LastTalkedToBy,1,0,0)
EscapeAreaMove("oh8100",4015,3145,W)
~ EXIT
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN DO ~ClearAllActions()
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("potn18",LastTalkedToBy,1,0,0)
GiveItemCreate("potn14",LastTalkedToBy,1,0,0)
EscapeAreaMove("oh8100",4015,3145,W)
~ EXTERN ~OHBLEA~ 16
  IF ~  InMyArea("ohbgerro")
!Dead("ohbgerro")
~ THEN DO ~ClearAllActions()
SetGlobal("ohb_finale_arena","oh8200",5)
GiveItemCreate("potn18",LastTalkedToBy,1,0,0)
GiveItemCreate("potn14",LastTalkedToBy,1,0,0)
EscapeAreaMove("oh8100",4015,3145,W)
~ EXTERN ~OHBGERRO~ 38
END

IF ~~ THEN BEGIN 64
  SAY #100617 /* ~Ah, you have had a stunning victory here today, <CHARNAME>! I'll raise a tankard or three in your name in every alehouse across Faerûn.~ [OH100617] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 61
  IF ~  InMyArea("ohbgerro")
!Dead("ohbgerro")
~ THEN EXTERN ~OHBGERRO~ 40
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 39
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 42
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 45
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN EXTERN ~OHBSYMM~ 38
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 44
END

IF ~~ THEN BEGIN 65
  SAY #90509 /* ~Might as well. Food is food, and I believe a feast was mentioned.~ [OH90509] */
  IF ~~ THEN EXTERN ~OHBMESSE~ 1
END

IF ~~ THEN BEGIN 66
  SAY #90547 /* ~The Vast? What is this? I have never used such a nickname!~ [OH90547] */
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY #90549 /* ~Eh... Fine, it fits.~ [OH90549] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 263
END

IF ~~ THEN BEGIN 68
  SAY #90575 /* ~You? The greatest warrior? Greatest halfling warrior, maybe, but that still only makes you half the warrior I am!~ [OH90575] */
  IF ~~ THEN EXTERN ~OHBFELDR~ 42
END

IF ~~ THEN BEGIN 69
  SAY #90577 /* ~I conquered the Nightmares! An entire clan of orcs wiped out in an afternoon!~ [OH90577] */
  IF ~~ THEN EXTERN ~OHBHORT~ 49
END
