// creator  : weidu (version 24900)
// argument : OHBFELDR.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBFELDR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY #92948 /* ~I'll make a necklace of their ears!~ [OH92948] */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY #92949 /* ~Animals are as likely to turn on us as the guards.~ [OH92949] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 43 even though they appear after this state */
~  OR(2)
Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_insult_feldrak","locals",1)
~ THEN BEGIN 2
  SAY #92379 /* ~What're you lookin' at? You tired o' havin' eyes in their sockets? Because they won't be there long if you don't look elsewhere!~ [OH92379] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY #90579 /* ~Back off, orc. He's on the List. You can kill him when I'm finished!~ [OH90579] */
  IF ~~ THEN REPLY #90580 /* ~Hold, everyone. We'll gain nothing by fighting each other!~ */ GOTO 4
  IF ~~ THEN REPLY #90581 /* ~You pathetic nitwits! Don't you get that we're all slaves? You do this fool's bidding, fighting each other!~ */ EXTERN ~OHBGEZZT~ 3
  IF ~~ THEN REPLY #90582 /* ~Oh, good. A fight! Finally, some entertainment.~ */ EXTERN ~OHBGEZZT~ 2
END

IF ~~ THEN BEGIN 4
  SAY #90583 /* ~Wrong. I'll gain the satisfaction of gutting a pompous ape.~ [OH90583] */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 2
END

IF WEIGHT #4 /* Triggers after states #: 43 even though they appear after this state */
~  Global("OHB_TALKED_FELDR","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 5
  SAY #92379 /* ~What're you lookin' at? You tired o' havin' eyes in their sockets? Because they won't be there long if you don't look elsewhere!~ [OH92379] */
  IF ~~ THEN REPLY #92380 /* ~Why would you do something like that?~ */ DO ~SetGlobal("OHB_TALKED_FELDR","LOCALS",1)
~ GOTO 8
  IF ~~ THEN REPLY #92381 /* ~I'm guessing you aren't Dennaton's hospitality coordinator.~ */ DO ~SetGlobal("OHB_TALKED_FELDR","LOCALS",1)
~ GOTO 16
  IF ~~ THEN REPLY #92382 /* ~Never mind. I was just leaving.~ */ GOTO 6
  IF ~~ THEN REPLY #92383 /* ~If you want to reach my eyes, you are going to need a ladder.~ */ DO ~SetGlobal("OHB_TALKED_FELDR","LOCALS",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY #92384 /* ~Yeah, that's right. Walk away. It's the smart thing to do.~ [OH92384] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY #92385 /* ~THAT'S IT! You just made the List!~ [OH92385] */
  IF ~~ THEN DO ~SetGlobal("ohb_insult_feldrak","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #92386 /* ~Because I'm good at it.~ [OH92386] */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #92387 /* ~Why don't you open your mouth and tell me what you want before I drastically change your outlook on the world? You got five seconds.~ [OH92387] */
  IF ~~ THEN REPLY #92388 /* ~WHOA! Easy! I just want to know who you are.~ */ GOTO 10
  IF ~~ THEN REPLY #92389 /* ~I've a question for you.~ */ GOTO 17
  IF ~~ THEN REPLY #92382 /* ~Never mind. I was just leaving.~ */ GOTO 6
  IF ~~ THEN REPLY #92390 /* ~Five seconds? Sounds like you're SHORT on time.~ */ GOTO 7
END

IF ~~ THEN BEGIN 10
  SAY #92391 /* ~Feldrak Feldrak'i. "The Fiend," Dennaton calls me. You heard of the Mirabar massacre? That was mine. Murders of Malford? That was mine too. ~ [OH92391] */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY #92392 /* ~The Drowning of the Deepwash, the Killing of Kingsdale, the Hanging of Hargrove, the Beating of Belverston, and the Burning of Browswaithe. All mine. All on the List.~ [OH92392] */
  IF ~~ THEN REPLY #92393 /* ~That's... informative. May I ask you something else?~ */ GOTO 17
  IF ~~ THEN REPLY #92394 /* ~What about the Chokings on the Chionthar? Was that yours too?~ */ GOTO 12
  IF ~~ THEN REPLY #92063 /* ~The List? What's that?~ */ GOTO 13
  IF ~~ THEN REPLY #92193 /* ~Okay. I'm just going to be leaving now.~ */ GOTO 6
  IF ~~ THEN REPLY #92395 /* ~You did all those, eh? Well, at least they were only LITTLE problems.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12
  SAY #92396 /* ~Nah, that was some gnome gang hopped up on turnip juice. Crazy buggers. Not right in the head. ~ [OH92396] */
  IF ~~ THEN REPLY #92397 /* ~There's something else I'd like to know.~ */ GOTO 17
  IF ~~ THEN REPLY #92193 /* ~Okay. I'm just going to be leaving now.~ */ GOTO 6
  IF ~~ THEN REPLY #92398 /* ~Wait, aren't you a gnome?~ */ GOTO 7
END

IF ~~ THEN BEGIN 13
  SAY #92399 /* ~Never heard of the List, huh? Not surprised. Most who know about the List end up on the List, and those on the List don't live long enough to talk about the List. That's what the List is for. Helps me remember who's getting "x-ed" next.~ [OH92399] */
  IF ~~ THEN REPLY #92400 /* ~"X-ed"? what does that mean?~ */ GOTO 14
  IF ~~ THEN REPLY #92401 /* ~Why do most who know about the List end up on the List?~ */ GOTO 15
  IF ~~ THEN REPLY #92402 /* ~Can I ask you something else?~ */ GOTO 17
  IF ~~ THEN REPLY #92193 /* ~Okay. I'm just going to be leaving now.~ */ GOTO 6
  IF ~~ THEN REPLY #92403 /* ~I'm guessing you use a list because your memory is as short as you are.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14
  SAY #92404 /* ~"X-ed." Offed, snuffed, permanently silenced, sleeping eternally, done in, resting in pieces, exterminated. It's what I do to those who get too curious. Got any other questions?~ [OH92404] */
  IF ~~ THEN REPLY #92300 /* ~Actually, I do.~ */ GOTO 17
  IF ~~ THEN REPLY #92192 /* ~No, I'll just be going now.~ */ GOTO 6
  IF ~~ THEN REPLY #92405 /* ~I do. For your benefit, I'll try to keep things SHORT.~ */ GOTO 7
END

IF ~~ THEN BEGIN 15
  SAY #92406 /* ~Most people who know about the List hear about it from me—when I tell them they're on the List. Still feeling curious?~ [OH92406] */
  IF ~~ THEN REPLY #92407 /* ~Actually, yes. I have another question for you.~ */ GOTO 17
  IF ~~ THEN REPLY #94817 /* ~No, I'll be going now. Rapidly.~ */ GOTO 6
  IF ~~ THEN REPLY #92408 /* ~No need to be SHORT with me. I was just asking.~ */ GOTO 7
END

IF ~~ THEN BEGIN 16
  SAY #92409 /* ~Hospitality coordinator? You think that's funny? You watch your step. You're real close to making the List.~ [OH92409] */
  IF ~~ THEN REPLY #92410 /* ~Whoa, easy! I just wanted to know who you are.~ */ GOTO 10
  IF ~~ THEN REPLY #94818 /* ~The List? What's that?~ */ GOTO 13
  IF ~~ THEN REPLY #92192 /* ~No, I'll just be going now.~ */ GOTO 6
  IF ~~ THEN REPLY #92411 /* ~You sure do have a SHORT fuse!~ */ GOTO 7
END

IF WEIGHT #5 /* Triggers after states #: 43 even though they appear after this state */
~  Global("OHB_TALKED_FELDR","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 17
  SAY #92412 /* ~You got a question for me? You got five seconds. Talk fast. ~ [OH92412] */
  IF ~~ THEN REPLY #92413 /* ~Who are you again?~ */ GOTO 10
  IF ~~ THEN REPLY #92414 /* ~Would you tell me a little about yourself?~ */ GOTO 18
  IF ~~ THEN REPLY #90886 /* ~How'd you end up here?~ */ GOTO 23
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #92415 /* ~Would you like to help me in my next fight?~ */ GOTO 26
  IF ~  Global("OHB_FELDR_POISON","GLOBAL",1)
PartyHasItem("OHBCOM09")
PartyHasItem("OHBPTN08")
~ THEN REPLY #92416 /* ~I have the ingredients you need.~ */ GOTO 31
  IF ~~ THEN REPLY #92417 /* ~I could use your help with something.~ */ GOTO 27
  IF ~~ THEN REPLY #92382 /* ~Never mind. I was just leaving.~ */ GOTO 6
END

IF ~~ THEN BEGIN 18
  SAY #92419 /* ~Why d'you wanna know?~ [OH92419] */
  IF ~~ THEN REPLY #92420 /* ~I heard you were a mercenary before you were brought here.~ */ GOTO 19
  IF ~~ THEN REPLY #92382 /* ~Never mind. I was just leaving.~ */ GOTO 6
  IF ~~ THEN REPLY #92421 /* ~Talk about a SHORT temper!~ */ GOTO 7
END

IF ~~ THEN BEGIN 19
  SAY #92422 /* ~I guess you could say that. I'll put it like this: When somebody's got a problem with somebody else, I get a message, some money changes hands, and the problem goes away.~ [OH92422] */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #92423 /* ~Sometimes people don't even realize they are a problem. They end up on the List, the problem gets dealt with, and I get whatever happens to be in the problem's purse at the time.~ [OH92423] */
  IF ~~ THEN REPLY #94906 /* ~What's this List you spoke of?~ */ GOTO 13
  IF ~~ THEN REPLY #92424 /* ~So you do hired killings.~ */ GOTO 21
  IF ~~ THEN REPLY #92152 /* ~I'll be going now.~ */ GOTO 6
  IF ~~ THEN REPLY #92425 /* ~Well, at least your problems are SMALL ones.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21
  SAY #92426 /* ~Sometimes I'm hired. Sometimes I do freelance work on my own. You know, walk into a bar and find out the biggest guy in there happens to be in my seat. Nothing I can do but put him on the List.~ [OH92426] */
  IF ~~ THEN REPLY #92063 /* ~The List? What's that?~ */ GOTO 13
  IF ~~ THEN REPLY #92428 /* ~So, you just kill for the fun of it?~ */ GOTO 22
  IF ~~ THEN REPLY #92152 /* ~I'll be going now.~ */ GOTO 6
  IF ~~ THEN REPLY #92430 /* ~I imagine everyone in the bar would be bigger than you.~ */ GOTO 7
END

IF ~~ THEN BEGIN 22
  SAY #92431 /* ~I kill for a lot of reasons. Got any more questions?~ [OH92431] */
  IF ~~ THEN REPLY #94907 /* ~Yes, as a matter of fact, I do.~ */ GOTO 17
  IF ~~ THEN REPLY #92152 /* ~I'll be going now.~ */ GOTO 6
  IF ~~ THEN REPLY #92432 /* ~No, I'm SHORT on time and must be going.~ */ GOTO 7
END

IF ~~ THEN BEGIN 23
  SAY #92433 /* ~So I walked into this dump of a tavern in Luskan. Just finished three big jobs and had some gold to drink through. First thing I see is a great big guy at the bar.~ [OH92433] */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY #92434 /* ~He looked pudgy—slow, you know? Should've looked twice. Soon as I explained his newly acquired "on the List" status, he throws off his cloak and grabs me. In the tavern light, I saw him as clear as day! He was made of metal.~ [OH92434] */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY #92435 /* ~I must've stabbed him a hundred times! He just smashed me in the face a dozen or so times until I blacked out. I woke up here. Thanks for remindin' me—I need to put that guy on the top of the List.~ [OH92435] */
  IF ~~ THEN REPLY #92436 /* ~I've another question for you, if you don't mind.~ */ GOTO 17
  IF ~~ THEN REPLY #92063 /* ~The List? What's that?~ */ GOTO 13
  IF ~~ THEN REPLY #92152 /* ~I'll be going now.~ */ GOTO 6
  IF ~~ THEN REPLY #92437 /* ~Sounds like a SHORT fight.~ */ GOTO 7
END

IF ~~ THEN BEGIN 26
  SAY #92438 /* ~Sure. I'm in a killing mood. I'll meet you in the arena when it's time.~ [OH92438] */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_FELDRAK_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY #92439 /* ~What am I, your mother?~ [OH92439] */
  IF ~  Global("OHB_FELDR_POISON","GLOBAL",0)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #92440 /* ~I was just wondering if you knew where I could find some poison.~ */ DO ~AddJournalEntry(92450,QUEST)
~ GOTO 29
  IF ~~ THEN REPLY #92152 /* ~I'll be going now.~ */ GOTO 6
  IF ~~ THEN REPLY #92441 /* ~Actually, there is a slim chance—no, I don't think so.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY #94908 /* ~Funny stuff. You know what I think is funny? X-ing people.~ [OH94908] */
  IF ~~ THEN REPLY #94909 /* ~"X-ing" people? what does that mean?~ */ GOTO 14
  IF ~~ THEN REPLY #94910 /* ~That is funny. It'd probably be even funnier if I knew what in the Nine Hells you were talking about.~ */ GOTO 14
END

IF ~~ THEN BEGIN 29
  SAY #92442 /* ~Maybe I do and maybe I don't. Sometimes I need assistance jogging my memory—1,200 pieces of assistance to be exact.~ [OH92442] */
  IF ~  PartyGoldGT(1199)
~ THEN REPLY #92443 /* ~1,200 gold? I can manage that. Here.~ */ DO ~TakePartyGold(1200)
~ GOTO 30
  IF ~~ THEN REPLY #92444 /* ~I don't seem to have enough gold. I must be going.~ */ GOTO 6
  IF ~~ THEN REPLY #94911 /* ~Forget it. I was just leaving.~ */ GOTO 6
END

IF ~~ THEN BEGIN 30
  SAY #92446 /* ~All right. I got most of what I need. Get me some wine vinegar and some rose petals, and we're set. Ah, don't look at me like that. You want the poison, you find 'em.~ [OH92446] */
  IF ~~ THEN DO ~AddJournalEntry(92451,QUEST)
SetGlobal("OHB_FELDR_POISON","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY #92447 /* ~Heh. Ya found 'em. Didn't expect that. But fair's fair. I have a mixture almost ready to go. Let me just add these ingredients... and there we go. ~ [OH92447] */
  IF ~~ THEN DO ~SetGlobal("OHB_FELDR_POISON","GLOBAL",2)
AddJournalEntry(92452,QUEST)
TakePartyItem("OHBCOM09")
DestroyItem("ohbcom09")
TakePartyItem("OHBPTN08")
DestroyItem("ohbptn08")
GiveItemCreate("OHBPTN06",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY #92876 /* ~No waiting. This is killing time. Let's go!~ [OH92876] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 57
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 38
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 54
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 37
END

IF ~~ THEN BEGIN 33
  SAY #92886 /* ~Don't listen to them! I've got a fever, and the only cure is bloodshed!~ [OH92886] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 58
END

IF ~~ THEN BEGIN 34
  SAY #92899 /* ~I'll flay the flesh from his bones and suck out the marrow!~ [OH92899] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 63
END

IF ~~ THEN BEGIN 35
  SAY #92914 /* ~Tartle, that little pig! I'll flay his flesh from his bones and suck out the marrow!~ [OH92914] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 69
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 60
END

IF ~~ THEN BEGIN 36
  SAY #92926 /* ~Enough words! Let's kill somethin' already!~ [OH92926] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
END

IF WEIGHT #6 /* Triggers after states #: 43 even though they appear after this state */
~  Global("ohb_finale","global",1)
~ THEN BEGIN 37
  SAY #92926 /* ~Enough words! Let's kill somethin' already!~ [OH92926] */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 43 even though they appear after this state */
~  Global("ohb_finale","global",6)
~ THEN BEGIN 38
  SAY #92984 /* ~Save Dennaton's eyeballs for me.~ [OH92984] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39
  SAY #100622 /* ~Nice job—TOO nice. The Winged was on the List, and you killed her. Normally, that'd get you on the List. I'll make an exception this one time.~ [OH100622] */
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
END

IF ~~ THEN BEGIN 40
  SAY #90496 /* ~Stranglin' your enemy with their own entrails. A classic.~ [OH90496] */
  IF ~~ THEN EXTERN ~OHBMESSE~ 0
END

IF ~~ THEN BEGIN 41
  SAY #90574 /* ~You're joking. I'm the greatest warrior here—the glory should be mine.~ [OH90574] */
  IF ~~ THEN EXTERN ~OHBVOGHI~ 68
END

IF ~~ THEN BEGIN 42
  SAY #90576 /* ~Half the warrior you are? What, you ate a fighter who wasn't a drunken fatass?~ [OH90576] */
  IF ~~ THEN EXTERN ~OHBVOGHI~ 69
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 43
  SAY #92876 /* ~No waiting. This is killing time. Let's go!~ [OH92876] */
  IF ~~ THEN EXIT
END
