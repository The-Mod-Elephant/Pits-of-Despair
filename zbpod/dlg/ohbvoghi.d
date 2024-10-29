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
  SAY @3472 /* Augh, mine head! By the Oak Father's leafy arse, I've never met a woman who could drink like that! One minute I'm singing with an ale in one hand and a wench in the other, and then I wake up here... Where in the Nine Hells am I? */
  IF ~~ THEN REPLY @3473 /* I was hoping you could tell me. */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY @3474 /* No clue. I'll ask someone else. */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @3475 /* Your brain hurts? Well, at least it's a small problem. */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 1
  SAY @3476 /* Aye. Well, if you find out where the food, ale, and women are, come back and tell Voghiln! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @3477 /* I would if I could, but the guards say nothing to me. I tell you this, though: From where I stand, it is looking like a room of some sort. Has a floor... walls... doors. Ja! We are in a room! */
  IF ~~ THEN REPLY @3478 /* How long have you been here? */ GOTO 3
  IF ~~ THEN REPLY @3479 /* Do you know why we were brought here? */ GOTO 4
  IF ~~ THEN REPLY @3480 /* My gods, you're right! I'll be leaving it now. */ GOTO 1
  IF ~~ THEN REPLY @3481 /* It would appear intelligence is not a prerequisite for being held here. */ GOTO 21
END

IF ~~ THEN BEGIN 3
  SAY @3482 /* A couple of hours, maybe. Long enough to be getting hungry, I'll tell you this. */
  IF ~~ THEN REPLY @3483 /* Very well, thank you for your time. */ GOTO 1
  IF ~~ THEN REPLY @3484 /* You can get hungry? I find that hard to believe. Well, I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3485 /* For you, that would take, what, five minutes? */ GOTO 21
END

IF ~~ THEN BEGIN 4
  SAY @3486 /* I do not know why we were brought here. I am thinking I was snatched for my fame in fighting, drinking, and my way with the ladies. */
  IF ~~ THEN REPLY @3487 /* Thank you for your time. I must go now. */ GOTO 1
  IF ~~ THEN REPLY @3484 /* You can get hungry? I find that hard to believe. Well, I must be going. */ GOTO 1
  IF ~~ THEN REPLY @3488 /* Are you sure you weren't brought here for your finely honed, razor-sharp wit? */ GOTO 21
END

IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 5
  SAY @3489 /* Ja! And what can mighty Voghiln do for you? */
  IF ~~ THEN REPLY @1123 /* Nothing, never mind. */ GOTO 23
END

IF ~  Global("OHB_TALKED_VOGHI","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 6
  SAY @3490 /* Ho ho, what have we here? Come raise a flagon with me! We'll drink till we die in the arena... or the bar. The bar is more likely for me. */
  IF ~~ THEN REPLY @3491 /* Drinking already? Isn't it a bit early for that? */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 7
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @3492 /* Pour me a flagon, and let's get started! */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 8
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY @3492 /* Pour me a flagon, and let's get started! */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 9
  IF ~~ THEN REPLY @3493 /* All right, who taught the ape to talk and hold a flagon? */ DO ~SetGlobal("OHB_TALKED_VOGHI","LOCALS",2)
~ GOTO 11
END

IF ~~ THEN BEGIN 7
  SAY @3494 /* I thought I was getting a late start! What are you, some sort of paladin? */
  IF ~  Class(LastTalkedToBy,PALADIN_ALL)
~ THEN REPLY @3495 /* I am a paladin, yes. */ GOTO 12
  IF ~~ THEN REPLY @3496 /* No. I just want to stay sober and survive my first day in this place. */ GOTO 12
  IF ~~ THEN REPLY @3497 /* No, but looking at you, I'm considering it. */ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @3498 /* Oh ho ho! A wild one we have here. Tell you what, my lady... after our first victory, come see me. We'll have a celebration all our own. */
  IF ~~ THEN REPLY @3499 /* Sounds like fun. */ GOTO 13
  IF ~~ THEN REPLY @3500 /* I think I'll pass. Who are you, anyway? */ GOTO 13
  IF ~~ THEN REPLY @3501 /* It'll take more than marginally coherent drunken babbling to seduce me, you oaf. */ GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @3502 /* Good man! Come, have a drink with old Voghiln. I'll tell you secrets that will get you any woman in Faerûn. Assuming she isn't already with me, of course. */
  IF ~~ THEN REPLY @3503 /* Great. I've never had much luck with women. */ GOTO 10
  IF ~~ THEN REPLY @3504 /* Maybe I'll pass. Tell me your name. */ GOTO 13
  IF ~~ THEN REPLY @3505 /* Do you have any "secrets" that don't involve pouring gallons of ale down your throat? */ GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @3506 /* Watch and learn. We are going to be good friends! I can feel it in my gut—and my gut's never wrong. */
  IF ~~ THEN REPLY @3507 /* It certainly isn't today. Nice to meet you. */ GOTO 13
  IF ~~ THEN REPLY @3508 /* One can't have too many friends, especially in a place like this. What's your name? */ GOTO 13
  IF ~~ THEN REPLY @3509 /* I see you keep it well supplied. */ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @3510 /* Ah—we've got a funny one! */
  IF ~~ THEN REPLY @3511 /* My apologies. Who are you again? */ GOTO 13
  IF ~~ THEN REPLY @3512 /* Who in the Nine Hells are you? */ GOTO 13
  IF ~~ THEN REPLY @3513 /* Try it and we'll see who laughs last. */ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @3514 /* That's unfortunate. But don't worry! Old Voghiln will loosen you up. I'll have you singing and drinking with the best of them in a tenday. If you're still alive, that is. */
  IF ~~ THEN REPLY @3515 /* I don't intend to die any time soon. */ GOTO 13
  IF ~~ THEN REPLY @857 /* We'll see. */ GOTO 13
  IF ~~ THEN REPLY @3516 /* It's your own life you should worry about. Who are you? */ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @3517 /* Voghiln's the name. A fighter, drinker, and lover... though not necessarily in that order. */
  IF ~~ THEN REPLY @3518 /* How did you come to be here, Voghiln? */ GOTO 16
  IF ~~ THEN REPLY @3519 /* You seem to have many skills and stories. */ GOTO 14
  IF ~~ THEN REPLY @3520 /* Nice to meet you. I'll be going now. */ GOTO 23
  IF ~~ THEN REPLY @3521 /* You forgot "eater." */ GOTO 21
END

IF ~~ THEN BEGIN 14
  SAY @3522 /* I'll tell you what I know and a few things I don't! */
  IF ~~ THEN REPLY @3523 /* You're a good fighter, I take it? */ GOTO 24
  IF ~~ THEN REPLY @3524 /* So, you said you know a thing or two about women? */ GOTO 29
  IF ~~ THEN REPLY @3525 /* I gather you like to have a drink now and then? Especially now. */ GOTO 33
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN REPLY @3526 /* How did you end up here, Voghiln? */ GOTO 16
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY @3526 /* How did you end up here, Voghiln? */ GOTO 17
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY @3526 /* How did you end up here, Voghiln? */ GOTO 15
  IF ~~ THEN REPLY @3527 /* That's all for now. */ GOTO 23
END

IF ~~ THEN BEGIN 15
  SAY @3528 /* Funny you should ask. It seems most around here got their teeth kicked in by that Winged wench and her gang. But not Voghiln! They tricked me! */
  IF ~~ THEN REPLY @3529 /* Really? What happened? */ GOTO 18
  IF ~~ THEN REPLY @3530 /* How'd they manage that? */ GOTO 18
  IF ~~ THEN REPLY @3531 /* What did they do? Offer you some ale? */ GOTO 19
END

IF ~~ THEN BEGIN 16
  SAY @3532 /* Eh, not so soon, not so soon. Win a few fights—then you'll have earned the right to hear the story of how they captured the mighty Voghiln! */
  IF ~~ THEN REPLY @3533 /* Fair enough. Can I ask you something else? */ GOTO 34
  IF ~~ THEN REPLY @3534 /* Fine. I'll be going now. */ GOTO 23
  IF ~~ THEN REPLY @3535 /* Pfft. They probably just dangled a banana in front of a giant sack. */ GOTO 21
END

IF ~~ THEN BEGIN 17
  SAY @3536 /* Ach! I'll tell you another time... if you survive that long. */
  IF ~~ THEN REPLY @3533 /* Fair enough. Can I ask you something else? */ GOTO 34
  IF ~~ THEN REPLY @3534 /* Fine. I'll be going now. */ GOTO 23
  IF ~~ THEN REPLY @3535 /* Pfft. They probably just dangled a banana in front of a giant sack. */ GOTO 21
END

IF ~~ THEN BEGIN 18
  SAY @3537 /* That pretty little half-elf girl... Joker. She got me alone in my favorite tavern after I made some coin doing a job for High Captain Baram of Luskan. */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY @3538 /* Ach, you are a smart one. That is exactly what happened! */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 20
  SAY @3539 /* Never met anyone that could match me drink for drink, but she did. Next thing I knew, the room was spinning and I woke up in this place. Joker, hah! She is nothing to laugh at, I'll tell you that much! */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3540 /* Interesting story. Can I ask you about something else? */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91575,INFO)
~ GOTO 34
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3541 /* That's good to know. I'll take my leave of you now. */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91575,INFO)
~ GOTO 23
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3542 /* I'll keep it in mind. Thank you. */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91575,INFO)
~ GOTO 21
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3540 /* Interesting story. Can I ask you about something else? */ GOTO 34
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3541 /* That's good to know. I'll take my leave of you now. */ GOTO 23
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3542 /* I'll keep it in mind. Thank you. */ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @3543 /* Keep on joking. I'll put my boot so far up your arse you'll taste my sole! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22
  SAY @3544 /* Keep on joking... */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @3545 /* Well, come find me the next time you need a drink, a laugh, or a pummeling! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @3546 /* Good at fighting? You could say that. I killed a dozen tundra yeti barehanded! Barehanded! You've heard of tundra yeti, yes? */
  IF ~~ THEN REPLY @3547 /* I'm afraid not. */ GOTO 25
  IF ~~ THEN REPLY @3548 /* Yes. Terrible creatures. A threat to all goodly folk. */ GOTO 26
  IF ~~ THEN REPLY @3549 /* Aye, I have. */ GOTO 26
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY @3550 /* Actually I'd rather hear of your recent fights in the arena. */ GOTO 41
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
GlobalLT("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN REPLY @3550 /* Actually I'd rather hear of your recent fights in the arena. */ GOTO 43
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY @3550 /* Actually I'd rather hear of your recent fights in the arena. */ GOTO 45
  IF ~~ THEN REPLY @3551 /* I sort of feel like I'm talking to a partially shaved yeti right now. */ GOTO 21
END

IF ~~ THEN BEGIN 25
  SAY @3552 /* Twice as tall as a man and thrice as wide. Claws and fangs like daggers. Reminds me of me, now I think of it, except for the claws and fangs, of course. */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @3553 /* I was escorting a caravan from the Ten Towns south to Luskan. We made camp for the night. I told them not to, but they didn't listen to Voghiln. */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @3554 /* In the middle of the night, a pack of yetis attacked. In the chaos, I lost my axe. I had to rip one of their hairy arms off and use it to club the others to death. */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @3555 /* The devils had killed the oxen and most of the guards. I had to pull the wagons to Luskan myself, fighting yetis and bandits the whole way! */
  IF ~~ THEN REPLY @3556 /* An impressive feat. Could I ask you something else? */ GOTO 34
  IF ~~ THEN REPLY @3557 /* I completely, totally believe you. And I'll be on my way now. */ GOTO 23
  IF ~~ THEN REPLY @3558 /* You spin a good yarn. I'll give you that, and wide berth to boot. */ GOTO 21
END

IF ~~ THEN BEGIN 29
  SAY @3559 /* Saying Voghiln knows a thing or two about women is like saying Elminster can cast a few spells! I know things about women they don't even know about themselves. */
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY @3560 /* For instance? */ GOTO 30
  IF ~  Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @3561 /* Oh really? And what do you know about me I don't know of myself? */ GOTO 31
  IF ~~ THEN REPLY @3562 /* Perhaps we can discuss something else? */ GOTO 34
  IF ~~ THEN REPLY @3563 /* I'm guessing the only thing you know about women is how it feels when they slap your face. */ GOTO 21
END

IF ~~ THEN BEGIN 30
  SAY @3564 /* Nice try. Figure out your own secrets. */
  IF ~~ THEN REPLY @3565 /* Fine, be that way. I have another question for you. */ GOTO 34
  IF ~~ THEN REPLY @3566 /* I'll do that. Farewell. */ GOTO 23
  IF ~~ THEN REPLY @3563 /* I'm guessing the only thing you know about women is how it feels when they slap your face. */ GOTO 21
END

IF ~~ THEN BEGIN 31
  SAY @3567 /* I know that you'll be giving in to my charms! */
  IF ~~ THEN REPLY @3568 /* We'll see. I have other questions for you now. */ GOTO 34
  IF ~~ THEN REPLY @3569 /* We'll never know. See you later, Voghiln. */ GOTO 32
  IF ~~ THEN REPLY @3570 /* You have charms? Er, what are they...? */ GOTO 22
END

IF ~~ THEN BEGIN 32
  SAY @3571 /* You will change your mind. They all do! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33
  SAY @3572 /* I like a drink... when I'm not fighting or sleeping or drinking already. */
  IF ~~ THEN REPLY @3573 /* We're going to get along fabulously. Can I ask you some questions? */ GOTO 34
  IF ~~ THEN REPLY @3574 /* Who doesn't? Me, that's who. I'll be going now. */ GOTO 23
END

IF ~  Global("OHB_TALKED_VOGHI","LOCALS",2)
Global("ohb_finale","global",0)
~ THEN BEGIN 34
  SAY @3489 /* Ja! And what can mighty Voghiln do for you? */
  IF ~~ THEN REPLY @3575 /* You're clearly a man of many skills and stories. */ GOTO 14
  IF ~~ THEN REPLY @3576 /* Can I ask you a question about drinking? */ GOTO 35
  IF ~  Global("OHB_VOGHILIN_DRUNK","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3577 /* Greetings, Voghiln. I've a question for you: What would it take to get you to join me in my next fight? */ GOTO 40
  IF ~  Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3577 /* Greetings, Voghiln. I've a question for you: What would it take to get you to join me in my next fight? */ GOTO 38
  IF ~  OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY @3578 /* Hello, Voghiln. I was hoping you could help me with a plan. */ GOTO 55
  IF ~~ THEN REPLY @1123 /* Nothing, never mind. */ GOTO 23
END

IF ~~ THEN BEGIN 35
  SAY @3579 /* Drinking? You have come to the right place, my friend! What do you want to know? */
  IF ~  OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY @3580 /* Is it true you're a connoisseur of fine drinks? */ GOTO 56
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)
Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)
~ THEN REPLY @3581 /* Maybe we could have a few rounds of ale together? */ GOTO 36
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
Global("OHB_VOGHILIN_DRUNK","GLOBAL",0)
~ THEN REPLY @3581 /* Maybe we could have a few rounds of ale together? */ GOTO 37
  IF ~~ THEN REPLY @2110 /* Never mind, I was just leaving. */ GOTO 23
  IF ~~ THEN REPLY @3582 /* Wait, never mind. I forgot I had decided to stop talking to semi-coherent drunks. */ GOTO 21
END

IF ~~ THEN BEGIN 36
  SAY @3583 /* Maybe when you've won a few fights. I want to be sure I'm not left carrying your arse back to the bunk room. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37
  SAY @3584 /* So, you think you are ready to drink with mighty Voghiln, do you? Fine. You are buying! Ho ho ho ho! */
  IF ~  PartyGoldGT(19)
CheckStatGT(LastTalkedToBy,13,CON)
~ THEN REPLY @3585 /* Very well. This one's on me! */ GOTO 51
  IF ~  PartyGoldGT(19)
!CheckStatGT(LastTalkedToBy,13,CON)
~ THEN REPLY @3585 /* Very well. This one's on me! */ GOTO 52
  IF ~~ THEN REPLY @3586 /* Looks like I don't have enough gold. Some other time. */ GOTO 23
  IF ~~ THEN REPLY @3587 /* Forget it. Buy your own ale. */ GOTO 23
END

IF ~~ THEN BEGIN 38
  SAY @3588 /* My assistance does not come without a price. */
  IF ~~ THEN REPLY @3589 /* What price is that, then? */ GOTO 39
  IF ~~ THEN REPLY @3590 /* Never mind, then. */ GOTO 23
  IF ~~ THEN REPLY @3591 /* Pay for help from a half-drunk ape? Forget it! */ GOTO 21
END

IF ~~ THEN BEGIN 39
  SAY @3592 /* 1,500 gold pieces and my axe is yours. */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY @121 /* Very well. */ DO ~TakePartyGold(1500)
DestroyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_VOGHILN_HIRED","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY @3590 /* Never mind, then. */ GOTO 23
  IF ~~ THEN REPLY @3591 /* Pay for help from a half-drunk ape? Forget it! */ GOTO 21
END

IF ~~ THEN BEGIN 40
  SAY @3593 /* I would be honored to fight next to anyone who can drink me under the table. Just stay out of my way. I'd hate to cut you down along with the nasty buggers in the pits! */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_VOGHILN_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41
  SAY @3594 /* For my last fight, I faced a bunch of minotaurs! Big ones too, and smart. They tried to outflank me, but I put my back to the wall and started swinging! We'll be eating roast beef tonight! */
  IF ~~ THEN REPLY @3595 /* Most impressive. May I ask you something else? */ GOTO 34
  IF ~~ THEN REPLY @3596 /* More likely the minotaurs caught a whiff of you and keeled over! */ GOTO 21
  IF ~~ THEN REPLY @3597 /* Heard any rumors of what to expect next? */ GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @3598 /* Nothing specific, though I did overhear a guard muttering something about holy water and garlic... */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43
  SAY @3599 /* Ah! The fights are finally getting interesting! At first, those skinny, pointy-eared fellows didn't look so tough. Githyanki, Tartle calls them. But I'll tell you this: Those devils are fast. */
  IF ~~ THEN REPLY @3600 /* Glad you survived. Can I ask you something else? */ GOTO 34
  IF ~~ THEN REPLY @3601 /* There are glaciers that move faster than you, fat man. */ GOTO 21
  IF ~~ THEN REPLY @3602 /* Any word on what the next fight will be? */ GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @3603 /* I cannot say for sure, but I heard Tartle muttering about a... phylactery? I do not know what that is, but if it is some sort of drink, I am going to get a taste of it! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45
  SAY @3604 /* I faced some strange beasts yesterday. They looked like walking squids. I thought to myself, "It's seafood for dinner tonight!" Next thing I knew, the arena was spinning and it was all I could do to stand there as they wrapped their tentacles around my head and started biting at me. */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @3605 /* One of the other performers said they were trying to eat my brains. */
  IF ~~ THEN REPLY @3606 /* I'm glad you've got such a thick skull. Could I ask you something else? */ GOTO 34
  IF ~~ THEN REPLY @3607 /* Trying to get at your brains through your head? They should have checked the other end! */ GOTO 21
  IF ~~ THEN REPLY @3608 /* What do you think we'll face next? */ GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @3609 /* Nobody has said anything, but last night, I was at the bar, and I heard a roaring and what sounded like huge wings flapping. Never saw where it came from though. Figured I'd had enough drink and went to bed. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48
  SAY @3610 /* Oh ho ho! People have been talking about mighty Voghiln, have they now? Well, you know, where there's vultures, there's fighting! */
  IF ~~ THEN REPLY @3611 /* So it's true? */ GOTO 50
  IF ~  CheckStatGT(LastTalkedToBy,15,CHR)
~ THEN REPLY @3612 /* You certainly must be important. Who might that contact be, if you don't mind my asking? */ GOTO 49
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY @3613 /* I was thinking about challenging Joker to a drinking contest. Could you arrange that? */ GOTO 62
  IF ~~ THEN REPLY @3614 /* Or maybe there are vultures because you smell like a dead troll. */ GOTO 21
END

IF ~~ THEN BEGIN 49
  SAY @3615 /* I suppose telling a friend like you wouldn't hurt... It was that Joker girl. The one that tricked me into coming here in the first place! She liked what she saw, if you know what I mean. */
  IF ~~ THEN REPLY @3616 /* I guess she did. I've another question for you. */ GOTO 34
  IF ~~ THEN REPLY @3617 /* Unfortunately, I know exactly what you mean. I'll be going now. */ GOTO 23
  IF ~~ THEN REPLY @3618 /* Or maybe she just likes drinking you under the table. */ GOTO 21
END

IF ~~ THEN BEGIN 50
  SAY @3619 /* It is no secret that women can't stay away from me, and the half-elf that works for Dennaton is a woman... But I have not had enough to drink to be telling THAT story yet. */
  IF ~~ THEN REPLY @3620 /* Too bad. I'd like to hear it. I guess I'll go now. */ GOTO 23
  IF ~~ THEN REPLY @3621 /* Can I ask you about something else? */ GOTO 34
  IF ~~ THEN REPLY @3622 /* And I haven't drunk enough to listen to your blather. */ GOTO 21
END

IF ~~ THEN BEGIN 51
  SAY @3623 /* Ahh! Now that is some good ale! Reminds me of some I had not too long ago. I tell you, it's good to have contacts upstairs. */
  IF ~~ THEN REPLY @3624 /* Perhaps you could care to tell me more? Over another round, of course. */ GOTO 53
  IF ~~ THEN REPLY @3625 /* I should be going now. Liquor and I are a dangerous combination. */ GOTO 23
  IF ~~ THEN REPLY @3626 /* It's also good to have baths. You should try one sometime. */ GOTO 21
END

IF ~~ THEN BEGIN 52
  SAY @3627 /* Oh ho ho ho! Looks like you can't keep up with mighty Voghiln. Best be getting to bed before you fall out of your chair! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53
  SAY @3628 /* Ja! You know that half-elf girl that works for Dennaton—Joker? Well, she has hardly left me alone since I got here. She cannot get enough of mighty Voghiln's company! */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY @3629 /* Indeed? What can you tell me about her? */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 54
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
!CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY @3629 /* Indeed? What can you tell me about her? */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 52
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3630 /* I'd like to hear more, but I'm afraid I must bid you good <DAYNIGHTALL> now. */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 23
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3631 /* She might not be able to get enough of you, but I certainly have. Goodbye. */ DO ~SetGlobal("OHB_POISON_JOKER","GLOBAL",2)
AddexperienceParty(15000)
AddJournalEntry(91576,QUEST)
~ GOTO 21
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY @3629 /* Indeed? What can you tell me about her? */ GOTO 54
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
!CheckStatGT(LastTalkedToBy,17,CON)
~ THEN REPLY @3629 /* Indeed? What can you tell me about her? */ GOTO 52
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3630 /* I'd like to hear more, but I'm afraid I must bid you good <DAYNIGHTALL> now. */ GOTO 23
  IF ~  !Global("OHB_POISON_JOKER","GLOBAL",0)
~ THEN REPLY @3631 /* She might not be able to get enough of you, but I certainly have. Goodbye. */ GOTO 21
END

IF ~~ THEN BEGIN 54
  SAY @3632 /* Ja. Well... She's liking her ales as much as I do. And she is nice enough company, but... I would like to get her back for bringing me... here... Zzz... */
  IF ~~ THEN DO ~AddJournalEntry(91577,INFO)
SetGlobal("OHB_VOGHILIN_DRUNK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 55
  SAY @3633 /* Of course! Everyone needs Voghiln's help. Where would you be without me? Now, tell me what you are needing. */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY @3634 /* I intend to try to poison Joker. */ GOTO 59
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY @3635 /* I need help with a plan, but it is not quite ready yet. I need more items first. */ GOTO 23
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN REPLY @3636 /* Rumor is that you have connections around here. */ GOTO 48
  IF ~  CheckStatGT(LastTalkedToBy,15,CHR)
~ THEN REPLY @3637 /* It is a secret matter, but I should be able to trust an honorable warrior such as yourself. */ GOTO 58
  IF ~~ THEN REPLY @1123 /* Nothing, never mind. */ GOTO 23
  IF ~~ THEN REPLY @3638 /* Forget it. I need help from something smarter than the stone floor we are standing on. */ GOTO 21
END

IF ~~ THEN BEGIN 56
  SAY @3639 /* I have had every drink there is from Calimshan to Kuldahar, but I am always looking to try another! You have something new for mighty Voghiln? */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY @3640 /* I happen to have a very rare one right here! Try it. */ GOTO 57
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
OR(2)
PartyHasItem("ohbptn04")
PartyHasItem("misc61")
~ THEN REPLY @3641 /* I have the drink, but it's missing a special ingredient. */ GOTO 23
  IF ~~ THEN REPLY @3642 /* No, I was just wondering. I'll be going now. */ GOTO 23
  IF ~~ THEN REPLY @3643 /* Yes. Soap. */ GOTO 21
END

IF ~~ THEN BEGIN 57
  SAY @3644 /* Hmm... *sniff* Smells good. Mmm... Tastes even better! Give me some more. Ja! That's some of the best I've ever tasted! I will have to tell Joker about this... */
  IF ~~ THEN DO ~AddJournalEntry(91578,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",4)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~~ THEN BEGIN 58
  SAY @3645 /* We have fought in the same pit and are bound as warriors. If you cannot trust me, who can you trust? Now tell mighty Voghiln what you are thinking. */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
~ THEN REPLY @3646 /* I intend to try to poison Joker. Can you help? */ GOTO 59
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
OR(2)
PartyHasItem("ohbptn04")
PartyHasItem("misc61")
~ THEN REPLY @3647 /* On second thought, I've changed my mind. I'll take my leave of you now. */ GOTO 23
  IF ~~ THEN REPLY @3648 /* On second thought, I think I have changed my mind. I must be going. */ GOTO 23
  IF ~~ THEN REPLY @3649 /* Forget it, Voghiln. I trust Stirv's wyvern more than you. */ GOTO 21
END

IF ~~ THEN BEGIN 59
  SAY @3650 /* Ho ho! Ever since that skinny half-elf captured me, I have been looking to put her in her place. This sounds like just the way to do it! What do you need? */
  IF ~~ THEN REPLY @3651 /* Tell her I have a drink so strong it'll knock her on her rear. */ GOTO 61
  IF ~~ THEN REPLY @3652 /* Nothing. This was a bad idea. I've got to go. */ GOTO 23
  IF ~~ THEN REPLY @3653 /* Forget it. I need someone who can speak in coherent sentences. */ GOTO 21
END

IF ~~ THEN BEGIN 60
  SAY @3654 /* Are you sure you don't need me to bash some guards or break down some walls? */
  IF ~~ THEN REPLY @3655 /* That won't be necessary. Just mention the drink. */ GOTO 61
  IF ~~ THEN REPLY @3656 /* On second thought, forget it. I must be going. */ GOTO 23
  IF ~~ THEN REPLY @3657 /* In retrospect, it seems to me my scheme requires more subtlety than you're capable of. I'll get one of Stirv's umber hulks instead. */ GOTO 21
END

IF ~~ THEN BEGIN 61
  SAY @3658 /* She will be coming to see you before you know it. She can't resist me. */
  IF ~~ THEN DO ~AddJournalEntry(91578,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",4)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~~ THEN BEGIN 62
  SAY @3659 /* Challenging Joker to a drinking contest? Have you lost your mind? Well, it is your funeral. I'll let her know for you. */
  IF ~~ THEN DO ~AddJournalEntry(91579,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",5)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~  Global("ohb_finale_arena","oh8200",4)
~ THEN BEGIN 63
  SAY @3660 /* You have my thanks, <CHARNAME>, and my word is true! I will return to the pits and slaughter the rest of the guards, but I want you to have these. Where you are going, you will need them more than I. */
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
  SAY @3661 /* Ah, you have had a stunning victory here today, <CHARNAME>! I'll raise a tankard or three in your name in every alehouse across Faerûn. */
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
  SAY @3662 /* Might as well. Food is food, and I believe a feast was mentioned. */
  IF ~~ THEN EXTERN ~OHBMESSE~ 1
END

IF ~~ THEN BEGIN 66
  SAY @3663 /* The Vast? What is this? I have never used such a nickname! */
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @3664 /* Eh... Fine, it fits. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 263
END

IF ~~ THEN BEGIN 68
  SAY @3665 /* You? The greatest warrior? Greatest halfling warrior, maybe, but that still only makes you half the warrior I am! */
  IF ~~ THEN EXTERN ~OHBFELDR~ 42
END

IF ~~ THEN BEGIN 69
  SAY @3666 /* I conquered the Nightmares! An entire clan of orcs wiped out in an afternoon! */
  IF ~~ THEN EXTERN ~OHBHORT~ 49
END
