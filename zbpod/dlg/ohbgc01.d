// creator  : weidu (version 24900)
// argument : OHBGC01.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBGC01~

IF ~  NumTimesTalkedToLT(1)
HasItemEquiped("ohbnoshu",LastTalkedToBy)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 0
  SAY @1255 /* You, come over here. Let me have a look at you. */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1256 /* I recognize you. You're not a Noser; you're a performer. Your trick worked on my boy downstairs, but you don't have me fooled. */
  IF ~~ THEN DO ~AddJournalEntry(101245,QUEST)
~ GOTO 6
END

IF ~  NumTimesTalkedToLT(1)
!HasItemEquiped("ohbnoshu",LastTalkedToBy)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 2
  SAY @1257 /* You, stop right there. You're not supposed to be up here. */
  IF ~~ THEN REPLY @1258 /* Master Dennaton asked me to get something from the Winged's room. */ DO ~AddJournalEntry(101246,QUEST)
~ GOTO 3
  IF ~~ THEN REPLY @1259 /* Sorry, I'm lost. I'll just go back the way I came. */ DO ~AddJournalEntry(101246,QUEST)
~ GOTO 4
  IF ~~ THEN REPLY @1260 /* I'm the new Noser, but I haven't received my uniform yet. */ DO ~AddJournalEntry(101246,QUEST)
~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @1261 /* Sure he did. And I'm Duke Belt's long lost son. */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @1262 /* Nobody gets lost up here. Nobody who isn't trespassing, anyway. */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @1263 /* Dennaton would have told me if a new staff member were coming. */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1264 /* You and I both know you're not supposed to be here. Dennaton wouldn't be happy about this. Not at all. */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1265 /* Maybe he doesn't need to find out. I could let you go on your way—if you make it worth my while. */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @1266 /* You could buy passage from me for, say, 5,000 gold? Or you could take care of something I've been wanting dealt with. What would you prefer? */
  IF ~  PartyGoldGT(4999)
~ THEN REPLY @1267 /* Take the gold, you greedy swine. */ DO ~AddJournalEntry(101247,QUEST)
~ GOTO 9
  IF ~~ THEN REPLY @1268 /* I don't have that kind of gold. */ GOTO 10
  IF ~~ THEN REPLY @1269 /* What would you want taken care of? */ GOTO 15
END

IF ~~ THEN BEGIN 9
  SAY @1270 /* Welcome to the Hunters' Lounge. Don't call attention to yourself or we'll both be in trouble. */
  IF ~~ THEN DO ~TakePartyGold(5000)
AmbientActivate("lounge_barrier1",FALSE)
AmbientActivate("lounge_barrier2",FALSE)
PlaySound("EFF_M10")
Unlock("LoungeDoor")
OpenDoor("LoungeDoor")
Face(SW)
SetGlobal("OHB_GCENTRY","OH8100",5)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1271 /* Then you've no choice but to do me that little service, do you? */
  IF ~~ THEN REPLY @1272 /* And if I refuse? */ GOTO 11
  IF ~~ THEN REPLY @1273 /* Let's hear it. */ GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @1274 /* You won't, not if you like breathing. */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @1275 /* I said I wanted you to take care of something. It's actually someone. Worst thing about it is he's one of my guards. But he's got loose lips. Can't keep guard business between us guards. */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @1276 /* I can't fire him. He's one of Dennaton's nephews, which means his casual talk might reach our master's ears. And that wouldn't be good for morale. */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @1277 /* His name's Branson. He's usually on his bunk when he's off-duty. Cut his throat, pierce his heart, I don't care. Just get it done and I'll turn my head on your comings and goings here and have my boys to do the same. */
  IF ~~ THEN DO ~AddJournalEntry(101248,QUEST)
CreateCreatureImpassable("ohbbrans",[1108.2605],NW)
SetGlobal("OHB_GCENTRY","OH8100",1)
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @1278 /* Are you sure you wouldn't rather pay the gold? Once I tell you what I need, there's no turning back—that offer's off the table. */
  IF ~  PartyGoldGT(4999)
~ THEN REPLY @1279 /* Something tells me I'm happier not knowing. Take the gold. */ DO ~AddJournalEntry(101247,QUEST)
~ GOTO 9
  IF ~~ THEN REPLY @1280 /* I don't have that kind of money. */ GOTO 10
  IF ~~ THEN REPLY @1281 /* Fine. Tell me what you need. */ GOTO 12
END

IF ~  NumTimesTalkedToGT(0)
!Dead("OHBBRANS")
Global("OHB_GCENTRY","OH8100",1)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 16
  SAY @1282 /* You again? Don't you have things to take care of downstairs? Go back and don't return before it's done. */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Dead("OHBBRANS")
Global("OHB_GCENTRY","OH8100",3)
GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 17
  SAY @1283 /* I'm told Branson is nowhere to be found, but nobody's seen his body. If you took care of him, what's your proof? */
  IF ~  !PartyHasItem("ohbring2")
~ THEN EXIT
  IF ~  PartyHasItem("ohbring2")
~ THEN REPLY @1284 /* Here's his family ring. I got it off his body. */ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @1285 /* Dennaton has one just like it. It's apparently very important in their family. Good work. But what did you do with the body? */
  IF ~~ THEN REPLY @1286 /* It's wyvern dung now. */ GOTO 19
  IF ~~ THEN REPLY @1287 /* Piled it in with the other arena cadavers. */ GOTO 19
  IF ~~ THEN REPLY @1288 /* Trade secret. */ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @1289 /* All right. Well then, the Hunters' Lounge is yours to explore. Don't attract attention to yourself or we'll both feed Stirv's beasts. */
  IF ~~ THEN DO ~AddJournalEntry(101252,QUEST_DONE)
EraseJournalEntry(101238)
EraseJournalEntry(101239)
EraseJournalEntry(101240)
EraseJournalEntry(101241)
EraseJournalEntry(101242)
EraseJournalEntry(101243)
EraseJournalEntry(101244)
EraseJournalEntry(101245)
EraseJournalEntry(101246)
EraseJournalEntry(101247)
EraseJournalEntry(101248)
EraseJournalEntry(101249)
EraseJournalEntry(101250)
TakePartyItemNum("ohbring2",1)
AmbientActivate("lounge_barrier1",FALSE)
AmbientActivate("lounge_barrier2",FALSE)
PlaySound("EFF_M10")
Unlock("LoungeDoor")
OpenDoor("LoungeDoor")
Face(SW)
SetGlobal("OHB_GCENTRY","OH8100",5)
~ EXIT
END

IF ~  GlobalLT("OHB_GCENTRY","OH8100",5)
Dead("OHBBRANS")
~ THEN BEGIN 20
  SAY @1290 /* I hear you've taken care of things downstairs. Good <PRO_GIRLBOY>. The Hunters' Lounge is yours to explore. Don't attract attention to yourself or we'll both feed Stirv's beasts. */
  IF ~~ THEN DO ~AddJournalEntry(101251,QUEST_DONE)
EraseJournalEntry(101238)
EraseJournalEntry(101239)
EraseJournalEntry(101240)
EraseJournalEntry(101241)
EraseJournalEntry(101242)
EraseJournalEntry(101243)
EraseJournalEntry(101244)
EraseJournalEntry(101245)
EraseJournalEntry(101246)
EraseJournalEntry(101247)
EraseJournalEntry(101248)
EraseJournalEntry(101249)
EraseJournalEntry(101250)
AmbientActivate("lounge_barrier1",FALSE)
AmbientActivate("lounge_barrier2",FALSE)
PlaySound("EFF_M10")
Unlock("LoungeDoor")
OpenDoor("LoungeDoor")
Face(SW)
SetGlobal("OHB_GCENTRY","OH8100",5)
~ EXIT
END

IF ~  GlobalLT("ohb_finale","global",1)
~ THEN BEGIN 21
  SAY @1291 /* You and I have nothing to talk about. Keep it that way. Stay out of my trouble. */
  IF ~~ THEN EXIT
END

IF ~  GlobalGT("ohb_finale","global",1)
Global("ohb_finale_captain_bark","oh8100",1)
Global("ohb_finale_captain_bark2","oh8100",1)
Global("ohb_finale_captain_bark3","oh8100",0)
~ THEN BEGIN 22
  SAY @1292 /* You leave me no choice but to kill you, slaves! Dennaton's orders be damned! */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_captain_bark3","oh8100",1)
Enemy()
Shout(151)
~ EXIT
END

IF ~  Global("ohb_finale","global",1)
Global("ohb_finale_captain_bark","oh8100",0)
~ THEN BEGIN 23
  SAY @1293 /* Your little rebellion has come to naught, slaves! When the Hunters return—or reinforcements arrive—we'll destroy you. Or maybe we'll just let you starve and watch you die slow! */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_captain_bark","oh8100",1)
~ EXIT
END

IF ~  GlobalGT("ohb_finale","global",1)
Global("ohb_finale_captain_bark2","oh8100",0)
~ THEN BEGIN 24
  SAY @1294 /* Stormed the barracks, did you? It matters not. You're trapped and reinforcements will arrive any minute. */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_captain_bark2","oh8100",1)
~ EXIT
END
