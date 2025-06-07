// creator  : weidu (version 24900)
// argument : OHBELLRA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBELLRA~

IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
~ THEN BEGIN 0
  SAY @1068 /* WHAT?! I mean—what can I do for you, my stray sheep? */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",0)
~ THEN BEGIN 1
  SAY @1069 /* What do you want? Er, I mean, greetings of the Vigilant One, Lathander, to you, blessed, uh, child. In what way might this humble monk be of service to you? */
  IF ~~ THEN REPLY @1070 /* Hello. Who are you? */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY @1071 /* Isn't Helm called "The Vigilant One?" */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY @1072 /* Something funny's going on here. Are you sure you are a monk? */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY @1073 /* I must be going. */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY @1074 /* I'd sooner take financial advice from a beggar than a blessing from you. */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @1075 /* May Lathander watch over you. And remember, I'm always open to donations to, ah, further his work. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1076 /* I'll slice you from belly to—ah, I mean, Lathander, god of the dead, will, uh, judge your words when you pass from this world and stand before him. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1077 /* Understanding comes only with time and many donations to the church of Lathander, the god of knowledge, understanding, and, ah... bountiful donations. */
  IF ~~ THEN REPLY @1078 /* Uh... okay... can I ask you something else? */ GOTO 14
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1080 /* You are living proof that ignorance truly is bliss. */ GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @1081 /* Why? What've you heard? That is, I'm a monk of Lathander, of course. I am Brother Ellraish, a monk of the Sun Soul and follower of Lathander, god of nature and flowing rivers! All donations accepted. */
  IF ~~ THEN REPLY @1082 /* Good to meet you, Ellraish. May I ask you something else? */ GOTO 14
  IF ~~ THEN REPLY @1083 /* What are the donations for? */ GOTO 6
  IF ~~ THEN REPLY @1084 /* I'm sure they are. I'll be going now. */ GOTO 2
  IF ~~ THEN REPLY @1085 /* Donations? Sounds like a scam to me.  */ GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY @1086 /* For the... ah... starving... children! Yes. The starving children. Yes! All donations accepted for the poor starving orphans of, er, Lantan. Think of all those destitute boys and girls shivering in the icy snow. */
  IF ~  PartyGoldGT(9)
~ THEN REPLY @1087 /* Please, take these 10 gold pieces. It's not much, I know, but— */ DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY @1088 /* Doesn't Lantan have a temperate climate? It doesn't snow there. */ GOTO 9
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1089 /* More likely the donations go to Brother Ellraish. What a sham! */ GOTO 3
END

IF ~~ THEN BEGIN 7
  SAY @1090 /* 10 gold? That's IT? I mean... please consider that the winter has been especially harsh this year. Surely you could spare some more. */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @1091 /* Very well. Here is 100 gold. */ DO ~TakePartyGold(100)
~ GOTO 8
  IF ~~ THEN REPLY @1092 /* Wait, Lantan has a temperate climate, does it not? It doesn't snow there. */ GOTO 9
  IF ~~ THEN REPLY @1093 /* If my donation isn't enough for you, I'll just be moving on. */ GOTO 2
  IF ~~ THEN REPLY @1094 /* Perhaps I could, but not for this sham of a charity. */ GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY @1095 /* Aha! Now I can buy that new—turkey. For the starving widows. Ahhh... Lathander's blessing on you. I must pray now! */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1096 /* Oh no! I assure you—it is quite cold there. Nothing but tundra yetis and floating chunks of ice. */
  IF ~  PartyGoldGT(9)
~ THEN REPLY @1087 /* Please, take these 10 gold pieces. It's not much, I know, but— */ DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY @1097 /* I'd like to ask you something else. */ GOTO 14
  IF ~~ THEN REPLY @1098 /* I'm going to check this out. If it's true, I'll return. */ GOTO 2
  IF ~~ THEN REPLY @1099 /* You're as dumb as a tundra yeti if you think I'm buying that.  */ GOTO 3
END

IF ~~ THEN BEGIN 10
  SAY @1100 /* When the mouse enters his burrow, does he not find the seeds he has stored away for the winter? And does not the winter follow the fall? Therein lies the answer to your question. */
  IF ~~ THEN REPLY @1101 /* That doesn't make any sense. */ GOTO 4
  IF ~~ THEN REPLY @1102 /* I'm going to leave now and give your words the consideration they merit. */ GOTO 2
  IF ~~ THEN REPLY @1103 /* I don't know about mice and seeds, but you're nuts. */ GOTO 3
END

IF ~~ THEN BEGIN 11
  SAY @1104 /* Of course! Why else would I have this shaved head? */
  IF ~~ THEN REPLY @1105 /* But... your head isn't shaved. */ GOTO 12
  IF ~~ THEN REPLY @1106 /* Oh, forget this. */ GOTO 2
  IF ~~ THEN REPLY @1107 /* A delusional monk. Just when I thought this place couldn't get any weirder. */ GOTO 3
END

IF ~~ THEN BEGIN 12
  SAY @1108 /* It's a wig. I'm far too humble to display my deep devotion and piety to my fellow performers, so I wear a wig. */
  IF ~~ THEN REPLY @1109 /* Discussing it clearly makes you uncomfortable. May I ask you something else? */ GOTO 14
  IF ~~ THEN REPLY @1110 /* It doesn't look like a wig.  */ GOTO 13
  IF ~~ THEN REPLY @1111 /* Your humility is something else. I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1112 /* You may have something atop your head, but there's little inside of it. */ GOTO 3
END

IF ~~ THEN BEGIN 13
  SAY @1113 /* Things are not always as they seem! Does an apple tree bear acorns? Does the bear resemble the walnut in the thicket when spring melts the winter snows? So it is with my wig. */
  IF ~~ THEN REPLY @1114 /* That... doesn't make any sense. */ GOTO 4
  IF ~~ THEN REPLY @1115 /* I must take some time to contemplate this wisdom. Excuse me. */ GOTO 2
  IF ~~ THEN REPLY @1116 /* That is quite possibly the most nonsensical statement that has ever reached my ears. */ GOTO 3
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",1)
~ THEN BEGIN 14
  SAY @1068 /* WHAT?! I mean—what can I do for you, my stray sheep? */
  IF ~~ THEN REPLY @1117 /* Who are you, again? */ GOTO 5
  IF ~~ THEN REPLY @1118 /* Can I ask you some questions? */ GOTO 15
  IF ~  OR(2)
Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("OHB_ELLRA_RUNE","GLOBAL",0)
OR(2)
Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("ohb_lounge_door_needs_key","global",1)
OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_ELLRA_RUNE","GLOBAL",0)
OR(2)
Global("OHB_POISON_JOKER","GLOBAL",2)
Global("ohb_lounge_door_needs_key","global",1)
~ THEN REPLY @1119 /* Brother Ellraish, I need some help dealing with a... delicate situation. */ GOTO 20
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @1120 /* Brother, I'm in need of assistance. Would you help me in my next match? */ GOTO 27
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",1)
PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY @1121 /* I have the powdered quartz and rat droppings for the poison. */ GOTO 24
  IF ~  PartyHasItem("OHBKEY01")
Global("OHB_ELLRA_RUNE","GLOBAL",3)
~ THEN REPLY @1122 /* I've returned with the runestone you requested. */ GOTO 30
  IF ~~ THEN REPLY @1123 /* Nothing, never mind. */ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @1124 /* Lathander is "the Curious God"! Ask away. */
  IF ~~ THEN REPLY @1125 /* Lathander's "the Curious God"? Are you sure about that? */ GOTO 16
  IF ~~ THEN REPLY @1072 /* Something funny's going on here. Are you sure you are a monk? */ GOTO 11
  IF ~~ THEN REPLY @1126 /* Would you mind telling me a little more about yourself? */ GOTO 18
  IF ~~ THEN REPLY @1127 /* Tell me how you came to be here, Brother Ellraish. */ GOTO 26
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
END

IF ~~ THEN BEGIN 16
  SAY @1128 /* Consider this: You have come to me with questions, and I have spoken to you of Lathander, which has prompted more questions. */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @1129 /* Yes, even as the egg reveals its secret in the summertime and blooms into a wondrous... butterfly, Lathander incites wonder and curiosities in his followers! Even as the honeybee causes the oxen to migrate west in times of drought, so Lathander reveals the deepest secrets and rewards his followers. */
  IF ~~ THEN REPLY @1101 /* That doesn't make any sense. */ GOTO 4
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1130 /* Have you ever actually listened to what's coming out of your mouth? */ GOTO 3
END

IF ~~ THEN BEGIN 18
  SAY @1131 /* I am a monk of the Sun Soul. I've taken vows of poverty, shaved my head, and now proclaim the wonders of Lathander, god of suffering! I also accept donations. */
  IF ~~ THEN REPLY @1132 /* But... your head isn't shaved. You have hair. */ GOTO 12
  IF ~~ THEN REPLY @1133 /* Lathander's the god of suffering? I thought that was Ilmater.  */ GOTO 19
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1134 /* Vows of poverty don't justify a tongue of stupidity. */ GOTO 3
END

IF ~~ THEN BEGIN 19
  SAY @1135 /* Yes. Quite sure. God of suffering.  */
  IF ~~ THEN REPLY @1136 /* If you say so. I'd like to ask you something else. */ GOTO 14
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1137 /* I'll take your word for it. Well, no, I won't, but I will be leaving. */ GOTO 3
END

IF ~~ THEN BEGIN 20
  SAY @1138 /* Of course! Anything for a donation. Uh, and to help a soul in need. What's the problem? */
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY @1139 /* I need a poison. */ GOTO 21
  IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",0)
Global("ohb_lounge_door_needs_key","global",1)
~ THEN REPLY @1140 /* I need to unlock the door to the Hunters' Lounge. */ GOTO 28
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
END

IF ~~ THEN BEGIN 21
  SAY @1141 /* Poison? What would a monk such as myself know about poison? */
  IF ~  PartyGoldGT(999)
~ THEN REPLY @1142 /* I have 1,000 gold to spend on some poison. Are you sure you know nothing of poisons? */ DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 22
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @1143 /* Surely a learned man like you knows something of poisons. */ DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1144 /* Bah! You are worthless.  */ GOTO 3
END

IF ~~ THEN BEGIN 22
  SAY @1145 /* WAIT! I have just had a vision from Lathander. I have been shown how to create a poison in return for your donation of 1,000 gold coins. She has shown me: I need some powdered quartz and rat droppings. */
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY @1146 /* Very well, here is the 1,000 gold. */ DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY @1147 /* I'll return when I have the donation. */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY @1148 /* Powdered quartz and rat droppings? What nonsense.  */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 23
  SAY @1149 /* Well... I may know something of them. Unfortunately, I am forbidden by my god to create them unless a donation of... say... 1,000 gold is made to the cause of Lathander. I'll also need some powdered quartz and rat droppings to complete the mixture.  */
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY @1146 /* Very well, here is the 1,000 gold. */ DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY @1147 /* I'll return when I have the donation. */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY @1148 /* Powdered quartz and rat droppings? What nonsense.  */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 24
  SAY @1150 /* Here's your poison. Pleasure doing business—I mean, Lathander bless you. */
  IF ~~ THEN DO ~AddJournalEntry(92595,QUEST)
SetGlobal("OHB_ELLRA_POISON","GLOBAL",2)
TakePartyItem("OHBCOM10")
DestroyItem("OHBCOM10")
TakePartyItem("OHBCOM04")
DestroyItem("OHBCOM04")
GiveItemCreate("OHBPTN07",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @1151 /* I was investigating that vault near the merchant stalls. I heard there are powerful magical items in there... all for the Sun Soul brotherhood, of course! I wouldn't dream of breaking into it and taking everything for myself. */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @1152 /* While engaged in a completely legal and legitimate investigation of a certain highly sought-after holy relic, I was captured by that unholy Winged and her bounty hunters. */
  IF ~~ THEN REPLY @1153 /* Right. I would like to ask you something else. */ GOTO 14
  IF ~~ THEN REPLY @1079 /* Never mind, I must be going. */ GOTO 2
  IF ~~ THEN REPLY @1154 /* You are the worst liar I have ever met. */ GOTO 3
END

IF ~~ THEN BEGIN 27
  SAY @1155 /* Of course I would! Lathander is the god of battle and warriors, after all! */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_ELLRAISH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @1156 /* A VISION! I have had a vision from above! Lathander has revealed to me the location of a key to the Hunters' Lounge. He is the god of keys and opening doors, you know. Before I give it to you, though, Lathander has a task for you. */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @1157 /* There is a certain runestone held by the illithid merchant. Lathander demands you bring me the stone before I can give you the key. */
  IF ~~ THEN DO ~AddJournalEntry(92596,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @1158 /* Lathander be praised! Here is your key.  */
  IF ~~ THEN DO ~AddJournalEntry(92597,QUEST)
TakePartyItem("OHBKEY01")
GiveItemCreate("OHBKEY02",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @1159 /* The Pits of Despair seem darkest to those who will not see. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 265
END

IF ~~ THEN BEGIN 32
  SAY @1160 /* A lion alone can have no pride. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 266
END
