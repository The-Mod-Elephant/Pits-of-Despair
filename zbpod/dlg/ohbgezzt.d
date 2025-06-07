// creator  : weidu (version 24900)
// argument : OHBGEZZT.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBGEZZT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY @1384 /* Perhaps Stirv's menagerie can be used against them. */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY @1385 /* There are enough of us to surround the guards. Why do we delay? */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1386 /* Fools. No matter how well we're treated, we're ultimately just slaves who live and die at the whims of our master. */
  IF ~~ THEN EXTERN ~OHBHORT~ 50
END

IF ~~ THEN BEGIN 3
  SAY @1387 /* At last, a voice of reason. No matter how well we're treated, we ultimately live and die at the whims of our new master. */
  IF ~~ THEN EXTERN ~OHBHORT~ 50
END

IF WEIGHT #3 /* Triggers after states #: 63 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",0)
~ THEN BEGIN 4
  SAY @1388 /* Wonderful. Another person I am sure won't prove to be hopelessly dull and predictable has come to speak with me. */
  IF ~~ THEN REPLY @1389 /* Forget it. I'm leaving. */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 63 even though they appear after this state */
~  Global("OHB_TALKED_GEZZT","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 5
  SAY @1388 /* Wonderful. Another person I am sure won't prove to be hopelessly dull and predictable has come to speak with me. */
  IF ~~ THEN REPLY @1390 /* There's no call for sarcasm. */ DO ~AddJournalEntry(94814,INFO)
SetGlobal("OHB_TALKED_GEZZT","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY @1391 /* Sarcasm from a drow. Shocking. */ DO ~AddJournalEntry(94814,INFO)
SetGlobal("OHB_TALKED_GEZZT","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY @1392 /* Spare me your sarcasm and I'll spare you your life, drow. */ DO ~AddJournalEntry(94814,INFO)
SetGlobal("OHB_TALKED_GEZZT","LOCALS",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1393 /* Sarcasm? You wound me. */
  IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
~ THEN REPLY @1394 /* Let's try to start over. Let me ask you a few questions. */ GOTO 9
  IF ~~ THEN REPLY @1389 /* Forget it. I'm leaving. */ GOTO 7
  IF ~~ THEN REPLY @1395 /* Not yet I haven't. */ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @1396 /* No! Please stay. I've nothing better to do than answer each question that flits through your feeble mind. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1397 /* Ah, what a retort! I'll have to steal it. */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 63 71 even though they appear after this state */
~  Global("OHB_TALKED_GEZZT","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 9
  SAY @1398 /* Speak, please, I beg you! I can wait no longer! */
  IF ~~ THEN REPLY @1399 /* I'd like to know more about you. */ GOTO 10
  IF ~~ THEN REPLY @1400 /* I've got to know... how did you end up here? */ GOTO 13
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN REPLY @1401 /* What is it you're looking at? */ GOTO 25
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN REPLY @1401 /* What is it you're looking at? */ GOTO 31
  IF ~  PartyHasItem("ohbcom05")
~ THEN REPLY @1402 /* I've... acquired a feather. A feather from a planetar's wing. */ GOTO 64
  IF ~  Global("OHB_GEZZT_POISON","GLOBAL",0)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY @1403 /* I have need of your expertise. Can you create poisons? */ GOTO 19
  IF ~  Global("OHB_GEZZT_POISON","GLOBAL",1)
PartyHasItem("OHBCOM03")
PartyHasItem("OHBPTN09")
~ THEN REPLY @1404 /* I have the poison ingredients you required. */ GOTO 22
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @1405 /* I would like your assistance in my next match. */ GOTO 23
  IF ~~ THEN REPLY @1106 /* Oh, forget this. */ GOTO 7
END

IF ~~ THEN BEGIN 10
  SAY @1406 /* If you wish to know more about me, it only stands to reason that I long to divulge my most closely kept secrets to you. Indeed, I've been standing here hoping I could recount my life story to a complete stranger. */
  IF ~~ THEN REPLY @1407 /* I didn't expect your life story, but some common knowledge would be appreciated. */ GOTO 12
  IF ~~ THEN REPLY @1408 /* Perhaps we could speak about something else. */ GOTO 9
  IF ~~ THEN REPLY @1409 /* Never mind, then. I'll be going. */ GOTO 7
  IF ~~ THEN REPLY @1410 /* You are a self-involved fool, you know that? */ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @1411 /* Ask foolish questions, expect foolish answers. Now begone. You bother me. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1412 /* No knowledge of me is remotely "common." I have lived for centuries and accumulated a store of knowledge so great that renowned wizards journey from all corners of Faerûn seeking an audience. */
  IF ~~ THEN REPLY @1413 /* Forgive my impertinence. With your permission, I'd like to ask you something. */ GOTO 9
  IF ~~ THEN REPLY @1414 /* Your humility is truly stunning. Unfortunately, I must take my leave of you. */ GOTO 7
  IF ~~ THEN REPLY @1415 /* No, you are not common. Narcissistic and self-absorbed, yes, but not common. */ GOTO 8
END

IF ~~ THEN BEGIN 13
  SAY @1416 /* I suppose this is the curse of my imprisonment here, to be forced to tolerate the rabble around me. */
  IF ~~ THEN REPLY @1417 /* There's no need to be rude. I'm just trying to make conversation. */ GOTO 14
  IF ~~ THEN REPLY @1418 /* Never mind. I'd hate to bore you with my prattling. */ GOTO 7
  IF ~~ THEN REPLY @1419 /* Your ego didn't save you from the Winged, drow. */ GOTO 8
END

IF ~~ THEN BEGIN 14
  SAY @1420 /* Rude? I merely state the facts. But perhaps I have been overly hasty. Looking about me, I see little opportunity for conversation more engaging than that you offer. */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @1421 /* Therefore, I will share the tale of my betrayal and subsequent incarceration. Yes, you heard correctly. I said "betrayal." The Winged, that capricious and wanton mercenary, is no stranger to me.  */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @1422 /* I have advised her on occasion, and she has provided certain useful services to me. In recent decades, my experiments required certain unusual reagents. Powdered unicorn horn among them. */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @1423 /* You can imagine my excitement when I received word that the Winged had secured some for me. I rushed to meet her—and her band of hunters, as it turned out. */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @1424 /* I was not defenseless; I never am. I injured one of her cohorts and immobilized two others before they breached my wards and brought me to these infernal halls. */
  IF ~~ THEN REPLY @1425 /* An entertaining story, if a familiar one. May I ask you something else? */ GOTO 9
  IF ~~ THEN REPLY @1426 /* A fine tale. I must be going now, however. */ GOTO 7
  IF ~~ THEN REPLY @1427 /* Such a simple trap to snare the most ingenious of mages. I imagine you'd blush, were you capable of it. */ GOTO 8
END

IF ~~ THEN BEGIN 19
  SAY @1428 /* How fortunate for you I stand here day and night waiting, nay, hoping you might come to me with some task so I could be of use to you. */
  IF ~~ THEN REPLY @1429 /* Ah... yes... so can you make the poison? I'd appreciate it greatly. */ GOTO 20
  IF ~~ THEN REPLY @1430 /* Very funny. Can you make the poison or not? */ GOTO 20
  IF ~~ THEN REPLY @1431 /* Whatever use you might be to me cannot possibly justify this abuse. Farewell. */ GOTO 7
END

IF ~~ THEN BEGIN 20
  SAY @1432 /* For you, my dear friend? No. For my other dear friend, the one that glitters? Perhaps. That is, if enough of my glittering friends gathered together in one place. 1,500 of them, to be exact. */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY @1433 /* 1,500 gold pieces? A fair price. Here you go. */ DO ~TakePartyGold(1500)
DestroyGold(1500)
~ GOTO 21
  IF ~  PartyGoldLT(1500)
~ THEN REPLY @1434 /* Eh, I need to go... */ GOTO 7
  IF ~~ THEN REPLY @1435 /* Eh, perhaps another time. */ GOTO 8
END

IF ~~ THEN BEGIN 21
  SAY @1436 /* Listen carefully. I require certain ingredients to make this poison. Gather some lotus root and distilled alcohol. The merchants may have such things. Bring them to me when you've found them. */
  IF ~~ THEN DO ~SetGlobal("OHB_GEZZT_POISON","GLOBAL",1)
AddJournalEntry(94815,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @1437 /* Excellent. The poison is prepared but for these ingredients. Just give me a moment to add them... There! Finished. */
  IF ~~ THEN REPLY @1438 /* Thank you, Gezzthemin. */ DO ~SetGlobal("OHB_GEZZT_POISON","GLOBAL",2)
TakePartyItem("OHBPTN09")
DestroyItem("OHBPTN09")
TakePartyItem("OHBCOM03")
DestroyItem("OHBCOM03")
GiveItemCreate("OHBPTN05",LastTalkedToBy,1,0,0)
AddJournalEntry(94816,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @1439 /* Of course you seek my support in the pits. It is the surest way to secure an easy and safe yet dazzling and spectacular victory, for which Dennaton will reward you handsomely.  */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @1440 /* You realize such luxuries do not come cheaply, of course... 1,700 gold pieces is my price. A bargain in any estimation! */
  IF ~  PartyGoldGT(1699)
~ THEN REPLY @1441 /* 1,700 gold pieces? That sounds like about right. Here you go. */ DO ~TakePartyGold(1700)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_GEZZ_HIRED","GLOBAL",1)
~ EXIT
  IF ~  PartyGoldLT(1700)
~ THEN REPLY @1442 /* I don't have 1,700 gold pieces at the moment. I'll return when I do. */ GOTO 7
  IF ~~ THEN REPLY @1443 /* I don't want your help that much. Farewell. */ GOTO 7
  IF ~~ THEN REPLY @1444 /* I'd rather focus on the enemies before me without worrying about a dagger in the back. */ GOTO 8
END

IF ~~ THEN BEGIN 25
  SAY @1445 /* I've often wondered what it is about a brilliant wizard deep in thought that compels every passerby to inquire as to his current activity. */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @1446 /* The umber hulk in the holding area. I was contemplating the interface between its gaze and the resulting coupled resonance excited in the Weave which stimulates the appropriate brainwaves, resulting in the confusion of its target. */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @1447 /* Aldar N'Vosh—a little-known but prolific writer on the subject—hypothesized that the phenomenon of the umber hulk's gaze affecting the Weave in this manner suggests arcane— */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @1448 /* And now you stand there agape, trying to grasp the first word of the first sentence I uttered to you. This is a waste of my time and yours. A poor outcome for me, as my time has actual value. */
  IF ~  OR(2)
CheckStatGT(Player1,17,INT)
CheckStatGT(Player1,59,LORE)
~ THEN REPLY @1449 /* Actually, I was surprised at your quoting Aldar N'Vosh. Wasn't he discredited by Ulrich Fenheld? */ GOTO 29
  IF ~~ THEN REPLY @1450 /* Ah... right... I would like to ask you something else. */ GOTO 9
  IF ~~ THEN REPLY @1451 /* I have little time for such speculations. Good <DAYNIGHTALL>. */ GOTO 7
  IF ~~ THEN REPLY @1452 /* What nonsense. That umber hulk's addled your brains. */ GOTO 8
END

IF ~~ THEN BEGIN 29
  SAY @1453 /* You have read Fenheld's treatise? Splendid! I must admit, when he introduced the hypothesis of multilateral universalism and the duality of arcane reduction, I was skeptical. But by the fourteenth volume, he makes a compelling case. */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @1454 /* We should speak again sometime. For now, I would return to my thoughts. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @1455 /* *sigh* Very well. Direct your eyes to the holding pen. What do you see? An ordinary clay golem? Yes. That is certainly what it appears to be. */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY @1456 /* Even those with knowledge of golemcraft might be fooled. It's little surprise that it takes a mind such as mine to perceive this particular golem's true nature. */
  IF ~  OR(2)
CheckStatGT(Player1,17,INT)
CheckStatGT(Player1,59,LORE)
~ THEN REPLY @1457 /* It is a shattering golem. I've read about them in Drenaur's "Treatise on Golemcraft." */ GOTO 34
  IF ~~ THEN REPLY @1458 /* What kind of golem is it? */ GOTO 35
  IF ~~ THEN REPLY @1459 /* That is very impressive. I would like to speak to you about something else. */ GOTO 33
  IF ~~ THEN REPLY @1460 /* Never mind. I must be going. */ GOTO 7
  IF ~~ THEN REPLY @1461 /* Have you ever bored a <PRO_MANWOMAN> to death? Because you're about to. */ GOTO 8
END

IF ~~ THEN BEGIN 33
  SAY @1462 /* The loss is yours. Well then, why have you sought me out? */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 34
  SAY @1463 /* Most impressive! That is exactly what it is. When damaged severely, this golem breaks into many smaller ones. A brilliant design—one well worth my attention. My undivided attention. Excuse me. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35
  SAY @1464 /* It is called a "shattering golem." */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @1465 /* The most fascinating aspect of its creation is the incorporation of the individual minds of the smaller ones into a hive mind that operates in concert or individually as the situation dictates. Brilliant. */
  IF ~~ THEN REPLY @1466 /* I don't know which is more impressive, the golem or your knowledge of it. Could I talk to you about something else? */ GOTO 9
  IF ~~ THEN REPLY @1467 /* I'm certain someone would find that fascinating. I'll be going now. */ GOTO 7
  IF ~~ THEN REPLY @1461 /* Have you ever bored a <PRO_MANWOMAN> to death? Because you're about to. */ GOTO 8
END

IF ~~ THEN BEGIN 37
  SAY @1468 /* They are right. We should marshal all available resources. */
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
END

IF ~~ THEN BEGIN 38
  SAY @1469 /* Without a doubt. */
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 58
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 33
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 36
END

IF ~~ THEN BEGIN 39
  SAY @1470 /* If I find the little toad, I'll roast him with a well-placed fireball! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 63
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 34
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 37
END

IF ~~ THEN BEGIN 40
  SAY @1471 /* Before any of us. Whatever they would do to that toad is nothing compared to what awaits him at my hands. */
  IF ~~ THEN EXTERN ~OHBBRODL~ 69
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 60
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 35
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 38
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 41
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 57
END

IF ~~ THEN BEGIN 41
  SAY @1472 /* Time to send some fools to the afterlife. */
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 58
END

IF WEIGHT #7 /* Triggers after states #: 63 71 even though they appear after this state */
~  Global("ohb_finale","global",1)
~ THEN BEGIN 42
  SAY @1472 /* Time to send some fools to the afterlife. */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 63 71 even though they appear after this state */
~  Global("ohb_finale","global",6)
~ THEN BEGIN 43
  SAY @1473 /* You hold all our fates in your hands. We are surely doomed. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44
  SAY @1474 /* You have slain our captors, <CHARNAME>. My thanks. You've saved me some effort. */
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
END

IF ~~ THEN BEGIN 45
  SAY @1475 /* Actually, my name is Gezunteitimin. I was talking about how violent heat causes empyreumatic salts in the beet root. */
  IF ~~ THEN EXTERN ~OHBDULF~ 5
END

IF ~~ THEN BEGIN 46
  SAY @1476 /* You have a visitor. */
  IF ~~ THEN EXTERN ~OHBDULF~ 6
END

IF ~~ THEN BEGIN 47
  SAY @1477 /* I love the old wizard. He's the only one who has anything worthwhile to say in this place. */
  IF ~~ THEN EXTERN ~OHBDULF~ 7
END

IF ~~ THEN BEGIN 48
  SAY @1478 /* Seems the old man's already forgotten about you, <CHARNAME>. I can't say I blame him. Go to the merchants and see if any have Teodgren's Salve of Senile Serenity. That should help him focus, if only briefly. */
  IF ~~ THEN DO ~AddJournalEntry(103096,QUEST)
SetGlobal("ohb_know_dulf_needs_salve","global",1)
~ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @1479 /* He doesn't stop. There is genius in him, buried way down. Do you have that drink I recommended? */
  IF ~  PartyHasItem("ohbptn02")
~ THEN REPLY @89 /* Here you go. */ DO ~SetGlobal("OHB_DULF_RESTOREDONCE","GLOBAL",1)
SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",900)
TakePartyItem("ohbptn02")
DestroyItem("ohbptn02")
~ GOTO 52
  IF ~~ THEN REPLY @1480 /* Not yet. */ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @1481 /* I'm afraid Dulf's mind is clouded again. Do you have any more of Bellowgulp's tonic? */
  IF ~  PartyHasItem("ohbptn02")
~ THEN REPLY @1482 /* Luckily, I do. */ DO ~SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",900)
TakePartyItem("ohbptn02")
DestroyItem("ohbptn02")
~ GOTO 51
  IF ~~ THEN REPLY @973 /* Not right now. */ EXIT
END

IF ~~ THEN BEGIN 51
  SAY @1483 /* Dulf! Here, have a drink! */
  IF ~~ THEN EXTERN ~OHBDULF~ 14
END

IF ~~ THEN BEGIN 52
  SAY @1484 /* Why does Bellowgulp insist on giving his potions such ridiculous names? "Salve"? I'm not rubbing it on the old man's head. */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
  SAY @1485 /* Dulf, our friend here brought us a drink! Let us make a toast. To your venerable age, Dulf Ebonbeard—by human standards, at least—and to many long years ahead. */
  IF ~~ THEN EXTERN ~OHBDULF~ 16
END

IF ~~ THEN BEGIN 54
  SAY @1486 /* Our good friend here brought it for you. I believe they wish to speak with you. */
  IF ~~ THEN EXTERN ~OHBDULF~ 19
END

IF ~~ THEN BEGIN 55
  SAY @1487 /* It is Bannor, isn't it? */
  IF ~~ THEN EXTERN ~OHBDULF~ 26
END

IF ~~ THEN BEGIN 56
  SAY @1488 /* Has anyone ever tried to return his mind to his body? */
  IF ~~ THEN EXTERN ~OHBDULF~ 28
END

IF ~~ THEN BEGIN 57
  SAY @1489 /* Like yourself, perhaps? */
  IF ~~ THEN EXTERN ~OHBDULF~ 30
END

IF ~~ THEN BEGIN 58
  SAY @1490 /* That would require effort on my part. I think not. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59
  SAY @1491 /* Performers? */
  IF ~~ THEN EXTERN ~OHBMERCY~ 43
END

IF ~~ THEN BEGIN 60
  SAY @1492 /* True. But there are many of them. And the spellcasters among us have been rendered powerless. Better to bide our time and gather information. */
  IF ~~ THEN EXTERN ~OHBHORT~ 47
END

IF ~~ THEN BEGIN 61
  SAY @1493 /* And I such wisdom from an orc. */
  IF ~~ THEN EXTERN ~OHBHORT~ 48
END

IF ~~ THEN BEGIN 62
  SAY @1494 /* Calm yourself. You actually growled a few two-syllable words there. You don't want to break your brain now, do you? */
  IF ~~ THEN EXTERN ~OHBMESSE~ 4
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 63
  SAY @1385 /* There are enough of us to surround the guards. Why do we delay? */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64
  SAY @1495 /* "A feather from a planetar's wing." In six words you have become infinitely more interesting, <CHARNAME>. */
  IF ~~ THEN REPLY @1496 /* You can use it? */ GOTO 66
  IF ~~ THEN REPLY @1497 /* I'm glad to hear it. */ GOTO 66
  IF ~~ THEN REPLY @1498 /* I'm going to sell it. */ GOTO 65
END

IF ~~ THEN BEGIN 65
  SAY @1499 /* And now you bore me once again. */
  IF ~~ THEN REPLY @1500 /* You may find me boring, but I think this feather interests you. */ GOTO 70
  IF ~~ THEN REPLY @1501 /* You've got a better use for it? */ GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @1502 /* As luck would have it, I was just researching a new spell... */
  IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
  SAY @1503 /* I might be able to devise something that would help one fight the planetar whose wing that feather came from. */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @1504 /* If one were so inclined to fight said planetar...? */
  IF ~~ THEN REPLY @1505 /* Do it. */ GOTO 69
  IF ~~ THEN REPLY @1506 /* I think I'll just sell it, thanks. */ EXIT
END

IF ~~ THEN BEGIN 69
  SAY @1507 /* As you wish. Come see me on the morrow. */
  IF ~~ THEN DO ~TakePartyItem("ohbcom05")
DestroyItem("ohbcom05")
SetGlobal("ohb_gezzt_feather","global",1)
SetGlobalTimer("ohb_gezzt_feather_timer","global",TWENTY_HOURS)
~ EXIT
END

IF ~~ THEN BEGIN 70
  SAY @1508 /* Perhaps it does at that. */
  IF ~~ THEN GOTO 66
END

IF WEIGHT #5 ~  Global("OHB_TALKED_GEZZT","LOCALS",1)
Global("ohb_finale","global",0)
Global("ohb_gezzt_feather","global",1)
GlobalTimerExpired("ohb_gezzt_feather_timer","global")
~ THEN BEGIN 71
  SAY @1509 /* Ah, there you are. And here is that scroll we discussed the other day. Use it wisely. */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
  SAY @1510 /* As wisely as anyone planning to battle a planetar can use anything, at any rate. */
  IF ~~ THEN DO ~SetGlobal("ohb_gezzt_feather","global",1)
GiveItemCreate("ohbscrl3",LastTalkedToBy(Myself),1,0,0)
~ EXIT
END
