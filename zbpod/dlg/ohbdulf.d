// creator  : weidu (version 24900)
// argument : OHBDULF.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBDULF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY @931 /* But one would think the guards would have some way of opening any door here. What would they do if the slaves barricaded themselves in a room? */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY @932 /* I remember my adventuring days. Vaguely. */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 68 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY @933 /* And you are...? Uh... What—what is this place? Are—are you my apprentice? */
  IF ~~ THEN REPLY @934 /* I am not. Farewell, old man. */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
GlobalGT("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY @935 /* You were saying, Geshtemachin—that is your name, correct?—you were saying... well, what WERE you saying? */
  IF ~~ THEN DO ~SetGlobal("ohb_pc_talked_to_dulf","global",1)
AddJournalEntry(95659,INFO)
~ EXTERN ~OHBGEZZT~ 45
END

IF WEIGHT #5 /* Triggers after states #: 68 even though they appear after this state */
~  Dead("OHBGEZZT")
GlobalGT("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_pc_talked_to_dulf","global",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 4
  SAY @933 /* And you are...? Uh... What—what is this place? Are—are you my apprentice? */
  IF ~  PartyHasItem("OHBPTN02")
~ THEN REPLY @936 /* Here, have this drink. It should help you focus. */ DO ~AddJournalEntry(103099,QUEST_DONE)
TakePartyItem("OHBPTN02")
DestroyItem("OHBPTN02")
SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",THREE_HOURS)
SetGlobal("ohb_pc_talked_to_dulf","global",1)
SetGlobal("ohb_know_dulf_needs_salve","global",1)
~ GOTO 15
  IF ~~ THEN REPLY @934 /* I am not. Farewell, old man. */ DO ~SetGlobal("ohb_pc_talked_to_dulf","global",1)
SetGlobal("ohb_know_dulf_needs_salve","global",1)
AddJournalEntry(95659,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @937 /* Hmm... I—I'll have to reflect on that. */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 46
END

IF ~~ THEN BEGIN 6
  SAY @938 /* Oh! H-hello. Have you been standing there long? Gazmithin and I were... well, we were having an edifying discussion about the, uh... well, something. */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 47
END

IF WEIGHT #6 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
Global("ohb_know_dulf_needs_salve","global",0)
~ THEN BEGIN 7
  SAY @939 /* So, young... one. Uh—uh, you—you wanted to speak to me about... something? Please speak loudly and clearly. Goozlemin is a bit hard of hearing, you see. */
  IF ~~ THEN REPLY @940 /* How did you end up here, Master Ebonbeard? */ GOTO 8
  IF ~~ THEN REPLY @941 /* What do you make of this place? */ GOTO 8
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @942 /* Would you join my team for the next fight in the arena? */ GOTO 8
  IF ~~ THEN REPLY @943 /* I'll come back later. */ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @944 /* So, uh—Ghoulravin. Yeah, about the beet root's empyreumeutic, uh—e-empyreumatic, uh, salts. Those—those salts... */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 48
END

IF WEIGHT #7 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 9
  SAY @945 /* Well, it—it's good to see you again, uh, Grubash Nettlehammer! Haha! Ha... huh. That's just old man humor. I remember you just fine, <CHARNAME>. What can I do for you? */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY @946 /* I have the components you requested for the scroll. */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY @947 /* I have this shard from the mirror in Bannor's room. Will it suffice as a scroll component? */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY @948 /* How's the scroll coming? */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY @949 /* I could use a wizard with your experience in the arena. */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY @949 /* I could use a wizard with your experience in the arena. */ GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ THEN REPLY @950 /* I changed my mind. I'll help you acquire the scroll components. */ GOTO 34
  IF ~  PartyGoldGT(11999)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY @951 /* Here are the 12,000 gold pieces you wanted for the scroll. */ GOTO 52
  IF ~  PartyGoldGT(7999)
CheckStatGT(Player1,14,CHR)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY @952 /* About that scroll—I can give you 8,000 gold pieces for it. */ GOTO 49
  IF ~~ THEN REPLY @953 /* How did you come to be here, Lord Ebonbeard? */ GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY @941 /* What do you make of this place? */ GOTO 22
  IF ~~ THEN REPLY @954 /* Nothing for now. Just checking to see how you were. */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 68 even though they appear after this state */
~  Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 10
  SAY @955 /* Well, don't—don't worry, I—I still know who you are, <CHARNAME>. Now, what can I do for you? */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY @956 /* I have the material components you need for the scroll. */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY @957 /* I have this shard from the mirror in Bannor's room. Will it do as a scroll component? */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY @958 /* How is the scroll coming along? */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY @959 /* I could use a wizard's help in the arena. */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY @959 /* I could use a wizard's help in the arena. */ GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ THEN REPLY @960 /* I changed my mind. I'll get the components you need for that scroll. */ GOTO 34
  IF ~  PartyGoldGT(11999)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY @951 /* Here are the 12,000 gold pieces you wanted for the scroll. */ GOTO 52
  IF ~  PartyGoldGT(7999)
CheckStatGT(Player1,14,CHR)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ THEN REPLY @961 /* About that scroll. I can only give you 8,000 gold pieces for it. */ GOTO 49
  IF ~~ THEN REPLY @953 /* How did you come to be here, Lord Ebonbeard? */ GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY @941 /* What do you make of this place? */ GOTO 22
  IF ~~ THEN REPLY @962 /* For now? Nothing. That may change soon. */ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @963 /* Well, when it does, be sure to let me know. */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 68 even though they appear after this state */
~  Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 12
  SAY @964 /* Ah, good, y-you're here. Come, my apprentice, we... we've got much work to do. */
  IF ~  PartyHasItem("OHBPTN02")
~ THEN REPLY @965 /* Before we do that, have a drink. To your health! */ DO ~SetGlobal("OHB_DULF_SANE","GLOBAL",1)
SetGlobalTimer("OHB_DULF_TIMER","GLOBAL",THREE_HOURS)
TakePartyItem("OHBPTN02")
DestroyItem("OHBPTN02")
~ GOTO 15
  IF ~~ THEN REPLY @966 /* I'm afraid I can't help you right now. Farewell. */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 68 even though they appear after this state */
~  !Dead("OHBGEZZT")
Global("ohb_pc_talked_to_dulf","global",1)
!Global("OHB_DULF_SANE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 13
  SAY @967 /* No! You—you don't understand! The diacritics on the old Netherese scrolls ARE critical to proper recitation— */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 49
  IF ~  Global("OHB_DULF_RESTOREDONCE","GLOBAL",1)
~ THEN EXTERN ~OHBGEZZT~ 50
END

IF ~~ THEN BEGIN 14
  SAY @968 /* With pleasure, Gatchounkemin. Uh, here's to your health, my—my young friend. */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @969 /* Ah! Much better. Uh, thank you, <CHARNAME>. I—I—I—I take it you want to speak with me? */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY @970 /* I have the material components you need to make the scroll. */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY @971 /* I have this shard from the mirror in Bannor's room; will it suffice as a component for the scroll? */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY @972 /* How's work on the scroll progressing? */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY @949 /* I could use a wizard with your experience in the arena. */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY @949 /* I could use a wizard with your experience in the arena. */ GOTO 38
  IF ~~ THEN REPLY @953 /* How did you come to be here, Lord Ebonbeard? */ GOTO 21
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY @941 /* What do you make of this place? */ GOTO 22
  IF ~~ THEN REPLY @973 /* Not right now. */ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @974 /* And to you, my—my young friend... */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @975 /* Oh, my, that, uh... that IS tasty! Mmm! My head feels, uh... feels light all of a sudden. */
  IF ~~ THEN DO ~AddJournalEntry(103099,QUEST_DONE)
~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @976 /* Gezzthemin, w-what is in that drink? Bring me a barrel! I feel twenty years younger—in mind, if not body. */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 54
END

IF ~~ THEN BEGIN 19
  SAY @977 /* Well, I hope there's more where it came from. These tonics never last very long, unfortunately. */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @978 /* So, you had a question. I—I'm all yours. For the time being, at least. */
  IF ~~ THEN REPLY @979 /* How did a master magician like yourself end up here? */ GOTO 21
  IF ~~ THEN REPLY @980 /* Tell me, what do you make of this place? */ GOTO 22
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY @949 /* I could use a wizard with your experience in the arena. */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY @949 /* I could use a wizard with your experience in the arena. */ GOTO 38
  IF ~~ THEN REPLY @981 /* I've no use for you now. Perhaps we'll talk more later. */ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @982 /* I can't really recall... The last thing I remember, I was in the Cloven Mountains, riding towards Lachom. The library there houses a collection of scrolls I wished to study. */
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",1)
PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY @983 /* Speaking of scrolls, I have the material components you asked for. */ GOTO 42
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",2)
PartyHasItem("OHBCOM12")
~ THEN REPLY @984 /* On a related subject, I have this shard from the mirror in Bannor's room. Will it suffice as a scroll component? */ GOTO 45
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN REPLY @985 /* As you mention scrolls, how is ours coming along? */ GOTO 56
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",0)
~ THEN REPLY @986 /* I could use a wizard of your experience in the arena. */ GOTO 37
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
Global("OHB_dulfhiredbefore","LOCALS",1)
~ THEN REPLY @986 /* I could use a wizard of your experience in the arena. */ GOTO 38
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",0)
~ THEN REPLY @987 /* What do you make of this place, Master Ebonbeard? */ GOTO 22
  IF ~~ THEN REPLY @988 /* You were doubtless attacked and captured by the Winged and her crew. Nearly all of us were. */ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @989 /* I haven't seen much of it. Or maybe I have and just don't remember. It reminds me of some of the wizardry schools built beneath the forest floor of Cormanthor. They did that to protect the ancient trees in the event of an "incident" in one of the schools. */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @990 /* The PEOPLE who brought and keep us here are much more distinct. I remember Dennaton's speech. And I've a very clear picture of the planetar they call the Winged, as well as the large metal golem that follows her. */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @991 /* I know who that golem is, or rather was. */
  IF ~  !Dead("OHBGEZZT")
~ THEN EXTERN ~OHBGEZZT~ 55
  IF ~  Dead("OHBGEZZT")
~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @992 /* Bannor was a terrifically talented wizard. */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY @993 /* Well, just so. A terrifically talented wizard. */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @994 /* Nobody knows exactly how he ended up in the adamantine golem's form. I theorize he was experimenting with spirit transference, a school of magic not yet fully developed. */
  IF ~  !Dead("OHBGEZZT")
~ THEN EXTERN ~OHBGEZZT~ 56
  IF ~  Dead("OHBGEZZT")
~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @995 /* I doubt anyone even knows where that body is now. But the original vessel is unimportant. His mind could be transferred to any being, and that being's spirit would replace his in the golem. It could be done by a supremely skilled wizard. */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 57
END

IF ~~ THEN BEGIN 29
  SAY @996 /* I don't know if anyone ever tried to return his mind to his body. But the original vessel is unimportant. His mind could be transferred to any being, and that being's spirit would replace his in the golem. It could be done, by a supremely skilled wizard. I might be able to manage it... */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @997 /* Perhaps... */
  IF ~~ THEN REPLY @998 /* How would you go about it? */ GOTO 31
  IF ~~ THEN REPLY @999 /* Really? You could do that? */ GOTO 32
  IF ~~ THEN REPLY @1000 /* Sounds like you may be losing touch with reality again. Do you need another drink? */ GOTO 33
END

IF ~~ THEN BEGIN 31
  SAY @1001 /* The spell required is long and complicated. I'd need to inscribe it on a scroll beforehand. All I'd need are a few material components. What do you say? Would you like to help? */
  IF ~~ THEN REPLY @1002 /* Of course. */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",1)
AddJournalEntry(95780,QUEST)
~ GOTO 34
  IF ~  !Dead("OHBGEZZT")
~ THEN REPLY @1003 /* I'd like to, but I won't. */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 35
  IF ~  Dead("OHBGEZZT")
~ THEN REPLY @1003 /* I'd like to, but I won't. */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 36
  IF ~  !Dead("OHBGEZZT")
~ THEN REPLY @1004 /* You're beyond my help, ancient one. */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 35
  IF ~  Dead("OHBGEZZT")
~ THEN REPLY @1004 /* You're beyond my help, ancient one. */ DO ~SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",1)
SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",-1)
~ GOTO 36
END

IF ~~ THEN BEGIN 32
  SAY @1005 /* Well, you sound doubtful. Well, you've good reason to be, I suppose. */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 33
  SAY @1006 /* Well, it wouldn't hurt, but I—I believe I'm all right for now. */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 34
  SAY @1007 /* Wonderful. Get me a wyrm tooth, a carrion crawler egg, and parchment made from ettin skin. Also, I'll need something belonging to Bannor. Anything, so long as it's unique to him. Come back when you have everything and I'll get right on it. What a wonderful, exciting project. It's almost rejuvenating! */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",1)
AddJournalEntry(95781,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @1008 /* Well, that's a shame. Gezzthemin, how about you? Would you like to help? */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 58
END

IF ~~ THEN BEGIN 36
  SAY @1009 /* Well, that's a shame! Well... if you change your mind, I'll—I'll be around. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37
  SAY @1010 /* Me? You want me? An old wizard like me? You're not afraid I'll crumple to the ground in the middle of it? */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY @1011 /* Your experience will pay off. I'll give you 1,500 gold pieces to join me. */ GOTO 39
  IF ~~ THEN REPLY @1012 /* 1,500 gold pieces seems to be the going rate for arena assistance. I don't have that much yet. When I do, I'll be in touch. */ GOTO 40
  IF ~~ THEN REPLY @1013 /* You may be right. Never mind. */ GOTO 41
END

IF ~~ THEN BEGIN 38
  SAY @1014 /* Well, it's good someone values the contribution of their elders. Of course I will join you. Same conditions as before. */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY @1015 /* Here are 1,500 gold pieces. */ GOTO 39
  IF ~~ THEN REPLY @1016 /* I don't have the 1,500 gold pieces. Perhaps another time. */ GOTO 40
  IF ~~ THEN REPLY @1017 /* Actually, I've changed my mind. */ GOTO 41
END

IF ~~ THEN BEGIN 39
  SAY @1018 /* Well, it's good to feel wanted despite one's advanced age. Uh—let's go kick some arses. We'll boot them all the way to Icewind Dale! */
  IF ~~ THEN DO ~TakePartyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_DULF_HIRED","GLOBAL",1)
SetGlobal("OHB_dulfhiredbefore","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 40
  SAY @1019 /* Well, I've never been good with money myself. Like you say, maybe another time. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY @1020 /* Well, I understand. The gods know mine changes often enough! Maybe another time, then. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY @1021 /* Wonderful, let—let me see. Yes, everything I need is there. */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",2)
TakePartyItem("ohbcom06")
DestroyItem("ohbcom06")
TakePartyItem("ohbcom07")
DestroyItem("ohbcom07")
TakePartyItem("ohbcom08")
DestroyItem("ohbcom08")
~ GOTO 44
END

IF ~~ THEN BEGIN 43
  SAY @1022 /* With that and the piece of Bannor's broken mirror, I have all I need to begin. I'll let you know when it's done. */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",4)
SetGlobal("OHB_BANNOR_SWITCH","GLOBAL",2)
AddJournalEntry(95786,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 44
  SAY @1023 /* Almost. Uh, have you an item belonging to Bannor? */
  IF ~  PartyHasItem("ohbcom12")
~ THEN REPLY @1024 /* I have this shard from the mirror in Bannor's room. Will it suffice? */ GOTO 45
  IF ~  !PartyHasItem("ohbcom12")
~ THEN REPLY @1025 /* I haven't found anything yet. I'll return when I do. */ EXIT
END

IF ~~ THEN BEGIN 45
  SAY @1026 /* Well, that should work. */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_MIRROR","GLOBAL",1)
TakePartyItem("ohbcom12")
DestroyItem("ohbcom12")
~ GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY @1027 /* I've given this project some thought. I initially took it on as an activity to busy my mind, but there may be more use to it. An ally's mind could be transferred to the golem, bringing its might to our side. */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @1028 /* But, given the complex magic involved, only one who is intimate with the Weave—a wizard or a sorcerer—will be able to make the transfer. */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @1029 /* Well, you can see just how dangerous this scroll could be. Scribing is an immense commitment. I must be certain you are fully committed as well. To prove this, I'll need some substantial coin. 12,000 gold pieces. */
  IF ~  CheckStatGT(Player1,14,CHR)
PartyGoldGT(7999)
~ THEN REPLY @1030 /* 12,000 gold pieces! Drink some more of your salve, old man. Make it 8,000. */ DO ~AddJournalEntry(95785,QUEST)
~ GOTO 49
  IF ~  PartyGoldGT(11999)
~ THEN REPLY @1031 /* That's a lot of gold. Fortunately, I have a lot of gold. Here it is. */ GOTO 52
  IF ~~ THEN REPLY @1032 /* That's a lot of gold. I just don't have that much right now. */ DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY @1033 /* Let me think on this. */ DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 55
  IF ~~ THEN REPLY @1034 /* 12,000 gold pieces? I don't need the scroll that badly. */ DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",3)
~ GOTO 54
END

IF ~~ THEN BEGIN 49
  SAY @1035 /* 8,000 gold pieces will suffice. */
  IF ~~ THEN DO ~TakePartyGold(8000)
~ GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @1036 /* I have everything I need to begin. I'll let you know when I am finished. */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",4)
AddJournalEntry(95786,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 51
  SAY @1037 /* Do you have the other components I requested? */
  IF ~~ THEN REPLY @1038 /* Not yet. I'll be back when I do. */ EXIT
  IF ~  PartyHasItem("ohbcom06")
PartyHasItem("ohbcom07")
PartyHasItem("ohbcom08")
~ THEN REPLY @1039 /* Here they are. */ DO ~TakePartyItem("ohbcom06")
DestroyItem("ohbcom06")
TakePartyItem("ohbcom07")
DestroyItem("ohbcom07")
TakePartyItem("ohbcom08")
DestroyItem("ohbcom08")
~ GOTO 50
END

IF ~~ THEN BEGIN 52
  SAY @1040 /* Well, excellent! Now I am confident of your commitment. */
  IF ~~ THEN DO ~TakePartyGold(12000)
~ GOTO 50
END

IF ~~ THEN BEGIN 53
  SAY @1041 /* I'll begin work on the scroll nonetheless. But you'll not get it till I get the gold. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54
  SAY @1042 /* When you change your mind, let me know. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55
  SAY @1043 /* Let me know when you make your decision. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56
  SAY @1044 /* Well, this magic takes time. I'll come to you when the scroll is ready. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 57
  SAY @1045 /* Wait? Well, who are we waiting on? A-a-are YOU the one we're waiting on? */
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
END

IF ~~ THEN BEGIN 58
  SAY @1046 /* Re-rebel? Why? What—? W-who are you? */
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
END

IF ~~ THEN BEGIN 59
  SAY @1047 /* Bravo! Who's Tartle? */
  IF ~~ THEN EXTERN ~OHBBRODL~ 64
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 34
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 37
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 39
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 56
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 40
END

IF ~~ THEN BEGIN 60
  SAY @1048 /* I think the more important question is... wait, what were we talking about? */
  IF ~~ THEN EXTERN ~OHBBRODL~ 70
END

IF ~~ THEN BEGIN 61
  SAY @1049 /* Woohoo! Ha... ha... What are... ha... what are we cheering about again?  */
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 58
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 41
END

IF WEIGHT #11 /* Triggers after states #: 68 even though they appear after this state */
~  Global("ohb_finale","global",1)
~ THEN BEGIN 62
  SAY @1049 /* Woohoo! Ha... ha... What are... ha... what are we cheering about again?  */
  IF ~~ THEN EXIT
END

IF WEIGHT #12 /* Triggers after states #: 68 even though they appear after this state */
~  Global("ohb_finale","global",6)
!Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN BEGIN 63
  SAY @1050 /* Huh? Well, they say you're—you're going to do something dangerous. Whatever that is, good luck! */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 68 even though they appear after this state */
~  Global("ohb_finale","global",6)
Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
~ THEN BEGIN 64
  SAY @1051 /* I have a feeling this was for you. It has your name on it, in any case. Good tidings, young <PRO_MANWOMAN>! */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
GiveItemCreate("ohbscrl",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 65
  SAY @1052 /* Thanks for all you've done, <CHARNAME>. Take this. My father gave it to me when I became a chef. Maybe it'll prove useful against Dennaton.  */
  IF ~~ THEN DO ~SetGlobal("OHB_DULF_BANNORSWITCH","GLOBAL",5)
GiveItemCreate("ohbscrl",Player1,1,0,0)
StartCutSceneMode()
StartCutSceneEx("ohbcut23",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 66
  SAY @1053 /* Well done, whoever you are! Who are you again...? */
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
END

IF ~~ THEN BEGIN 67
  SAY @1054 /* Huh? What? W-where am I? Who are you? Who am I? */
  IF ~~ THEN EXTERN ~OHBDENNA~ 2
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 68
  SAY @1045 /* Wait? Well, who are we waiting on? A-a-are YOU the one we're waiting on? */
  IF ~~ THEN EXIT
END
