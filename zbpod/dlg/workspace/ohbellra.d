// creator  : weidu (version 24900)
// argument : OHBELLRA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBELLRA~

IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
~ THEN BEGIN 0
  SAY #92534 /* ~WHAT?! I mean—what can I do for you, my stray sheep?~ [OH92534] */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",0)
~ THEN BEGIN 1
  SAY #92484 /* ~What do you want? Er, I mean, greetings of the Vigilant One, Lathander, to you, blessed, uh, child. In what way might this humble monk be of service to you?~ [OH92484] */
  IF ~~ THEN REPLY #92485 /* ~Hello. Who are you?~ */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY #92486 /* ~Isn't Helm called "The Vigilant One?"~ */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY #92487 /* ~Something funny's going on here. Are you sure you are a monk?~ */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY #92488 /* ~I must be going.~ */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY #92489 /* ~I'd sooner take financial advice from a beggar than a blessing from you.~ */ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY #92491 /* ~May Lathander watch over you. And remember, I'm always open to donations to, ah, further his work.~ [OH92491] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY #92492 /* ~I'll slice you from belly to—ah, I mean, Lathander, god of the dead, will, uh, judge your words when you pass from this world and stand before him.~ [OH92492] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY #92494 /* ~Understanding comes only with time and many donations to the church of Lathander, the god of knowledge, understanding, and, ah... bountiful donations.~ [OH92494] */
  IF ~~ THEN REPLY #92496 /* ~Uh... okay... can I ask you something else?~ */ GOTO 14
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92498 /* ~You are living proof that ignorance truly is bliss.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY #92500 /* ~Why? What've you heard? That is, I'm a monk of Lathander, of course. I am Brother Ellraish, a monk of the Sun Soul and follower of Lathander, god of nature and flowing rivers! All donations accepted.~ [OH92500] */
  IF ~~ THEN REPLY #92503 /* ~Good to meet you, Ellraish. May I ask you something else?~ */ GOTO 14
  IF ~~ THEN REPLY #92506 /* ~What are the donations for?~ */ GOTO 6
  IF ~~ THEN REPLY #95062 /* ~I'm sure they are. I'll be going now.~ */ GOTO 2
  IF ~~ THEN REPLY #92507 /* ~Donations? Sounds like a scam to me. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY #92508 /* ~For the... ah... starving... children! Yes. The starving children. Yes! All donations accepted for the poor starving orphans of, er, Lantan. Think of all those destitute boys and girls shivering in the icy snow.~ [OH92508] */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #92510 /* ~Please, take these 10 gold pieces. It's not much, I know, but—~ */ DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #92511 /* ~Doesn't Lantan have a temperate climate? It doesn't snow there.~ */ GOTO 9
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92512 /* ~More likely the donations go to Brother Ellraish. What a sham!~ */ GOTO 3
END

IF ~~ THEN BEGIN 7
  SAY #92513 /* ~10 gold? That's IT? I mean... please consider that the winter has been especially harsh this year. Surely you could spare some more.~ [OH92513] */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #92514 /* ~Very well. Here is 100 gold.~ */ DO ~TakePartyGold(100)
~ GOTO 8
  IF ~~ THEN REPLY #92515 /* ~Wait, Lantan has a temperate climate, does it not? It doesn't snow there.~ */ GOTO 9
  IF ~~ THEN REPLY #95063 /* ~If my donation isn't enough for you, I'll just be moving on.~ */ GOTO 2
  IF ~~ THEN REPLY #92516 /* ~Perhaps I could, but not for this sham of a charity.~ */ GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY #92517 /* ~Aha! Now I can buy that new—turkey. For the starving widows. Ahhh... Lathander's blessing on you. I must pray now!~ [OH92517] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY #92518 /* ~Oh no! I assure you—it is quite cold there. Nothing but tundra yetis and floating chunks of ice.~ [OH92518] */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #92510 /* ~Please, take these 10 gold pieces. It's not much, I know, but—~ */ DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #92520 /* ~I'd like to ask you something else.~ */ GOTO 14
  IF ~~ THEN REPLY #95064 /* ~I'm going to check this out. If it's true, I'll return.~ */ GOTO 2
  IF ~~ THEN REPLY #92521 /* ~You're as dumb as a tundra yeti if you think I'm buying that. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 10
  SAY #92522 /* ~When the mouse enters his burrow, does he not find the seeds he has stored away for the winter? And does not the winter follow the fall? Therein lies the answer to your question.~ [OH92522] */
  IF ~~ THEN REPLY #92523 /* ~That doesn't make any sense.~ */ GOTO 4
  IF ~~ THEN REPLY #95065 /* ~I'm going to leave now and give your words the consideration they merit.~ */ GOTO 2
  IF ~~ THEN REPLY #92524 /* ~I don't know about mice and seeds, but you're nuts.~ */ GOTO 3
END

IF ~~ THEN BEGIN 11
  SAY #92525 /* ~Of course! Why else would I have this shaved head?~ [OH92525] */
  IF ~~ THEN REPLY #92526 /* ~But... your head isn't shaved.~ */ GOTO 12
  IF ~~ THEN REPLY #95066 /* ~Oh, forget this.~ */ GOTO 2
  IF ~~ THEN REPLY #92527 /* ~A delusional monk. Just when I thought this place couldn't get any weirder.~ */ GOTO 3
END

IF ~~ THEN BEGIN 12
  SAY #92528 /* ~It's a wig. I'm far too humble to display my deep devotion and piety to my fellow performers, so I wear a wig.~ [OH92528] */
  IF ~~ THEN REPLY #95067 /* ~Discussing it clearly makes you uncomfortable. May I ask you something else?~ */ GOTO 14
  IF ~~ THEN REPLY #92529 /* ~It doesn't look like a wig. ~ */ GOTO 13
  IF ~~ THEN REPLY #95068 /* ~Your humility is something else. I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92530 /* ~You may have something atop your head, but there's little inside of it.~ */ GOTO 3
END

IF ~~ THEN BEGIN 13
  SAY #92531 /* ~Things are not always as they seem! Does an apple tree bear acorns? Does the bear resemble the walnut in the thicket when spring melts the winter snows? So it is with my wig.~ [OH92531] */
  IF ~~ THEN REPLY #92532 /* ~That... doesn't make any sense.~ */ GOTO 4
  IF ~~ THEN REPLY #95070 /* ~I must take some time to contemplate this wisdom. Excuse me.~ */ GOTO 2
  IF ~~ THEN REPLY #92533 /* ~That is quite possibly the most nonsensical statement that has ever reached my ears.~ */ GOTO 3
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",1)
~ THEN BEGIN 14
  SAY #92534 /* ~WHAT?! I mean—what can I do for you, my stray sheep?~ [OH92534] */
  IF ~~ THEN REPLY #92535 /* ~Who are you, again?~ */ GOTO 5
  IF ~~ THEN REPLY #92536 /* ~Can I ask you some questions?~ */ GOTO 15
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
~ THEN REPLY #92537 /* ~Brother Ellraish, I need some help dealing with a... delicate situation.~ */ GOTO 20
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY #92538 /* ~Brother, I'm in need of assistance. Would you help me in my next match?~ */ GOTO 27
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",1)
PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY #92539 /* ~I have the powdered quartz and rat droppings for the poison.~ */ GOTO 24
  IF ~  PartyHasItem("OHBKEY01")
Global("OHB_ELLRA_RUNE","GLOBAL",3)
~ THEN REPLY #92540 /* ~I've returned with the runestone you requested.~ */ GOTO 30
  IF ~~ THEN REPLY #91552 /* ~Nothing, never mind.~ */ EXIT
END

IF ~~ THEN BEGIN 15
  SAY #92541 /* ~Lathander is "the Curious God"! Ask away.~ [OH92541] */
  IF ~~ THEN REPLY #92542 /* ~Lathander's "the Curious God"? Are you sure about that?~ */ GOTO 16
  IF ~~ THEN REPLY #92543 /* ~Something funny's going on here. Are you sure you are a monk?~ */ GOTO 11
  IF ~~ THEN REPLY #92544 /* ~Would you mind telling me a little more about yourself?~ */ GOTO 18
  IF ~~ THEN REPLY #92545 /* ~Tell me how you came to be here, Brother Ellraish.~ */ GOTO 26
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
END

IF ~~ THEN BEGIN 16
  SAY #92546 /* ~Consider this: You have come to me with questions, and I have spoken to you of Lathander, which has prompted more questions.~ [OH92546] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY #92547 /* ~Yes, even as the egg reveals its secret in the summertime and blooms into a wondrous... butterfly, Lathander incites wonder and curiosities in his followers! Even as the honeybee causes the oxen to migrate west in times of drought, so Lathander reveals the deepest secrets and rewards his followers.~ [OH92547] */
  IF ~~ THEN REPLY #92548 /* ~That doesn't make any sense.~ */ GOTO 4
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92549 /* ~Have you ever actually listened to what's coming out of your mouth?~ */ GOTO 3
END

IF ~~ THEN BEGIN 18
  SAY #92550 /* ~I am a monk of the Sun Soul. I've taken vows of poverty, shaved my head, and now proclaim the wonders of Lathander, god of suffering! I also accept donations.~ [OH92550] */
  IF ~~ THEN REPLY #92551 /* ~But... your head isn't shaved. You have hair.~ */ GOTO 12
  IF ~~ THEN REPLY #92552 /* ~Lathander's the god of suffering? I thought that was Ilmater. ~ */ GOTO 19
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92553 /* ~Vows of poverty don't justify a tongue of stupidity.~ */ GOTO 3
END

IF ~~ THEN BEGIN 19
  SAY #92554 /* ~Yes. Quite sure. God of suffering. ~ [OH92554] */
  IF ~~ THEN REPLY #92555 /* ~If you say so. I'd like to ask you something else.~ */ GOTO 14
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92556 /* ~I'll take your word for it. Well, no, I won't, but I will be leaving.~ */ GOTO 3
END

IF ~~ THEN BEGIN 20
  SAY #92557 /* ~Of course! Anything for a donation. Uh, and to help a soul in need. What's the problem?~ [OH92557] */
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #92558 /* ~I need a poison.~ */ GOTO 21
  IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",0)
Global("ohb_lounge_door_needs_key","global",1)
~ THEN REPLY #92559 /* ~I need to unlock the door to the Hunters' Lounge.~ */ GOTO 28
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21
  SAY #92560 /* ~Poison? What would a monk such as myself know about poison?~ [OH92560] */
  IF ~  PartyGoldGT(999)
~ THEN REPLY #92561 /* ~I have 1,000 gold to spend on some poison. Are you sure you know nothing of poisons?~ */ DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 22
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #92562 /* ~Surely a learned man like you knows something of poisons.~ */ DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92563 /* ~Bah! You are worthless. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 22
  SAY #92564 /* ~WAIT! I have just had a vision from Lathander. I have been shown how to create a poison in return for your donation of 1,000 gold coins. She has shown me: I need some powdered quartz and rat droppings.~ [OH92564] */
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY #92565 /* ~Very well, here is the 1,000 gold.~ */ DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY #92566 /* ~I'll return when I have the donation.~ */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #92567 /* ~Powdered quartz and rat droppings? What nonsense. ~ */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 23
  SAY #92568 /* ~Well... I may know something of them. Unfortunately, I am forbidden by my god to create them unless a donation of... say... 1,000 gold is made to the cause of Lathander. I'll also need some powdered quartz and rat droppings to complete the mixture. ~ [OH92568] */
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY #92565 /* ~Very well, here is the 1,000 gold.~ */ DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY #92566 /* ~I'll return when I have the donation.~ */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY #92567 /* ~Powdered quartz and rat droppings? What nonsense. ~ */ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 24
  SAY #92573 /* ~Here's your poison. Pleasure doing business—I mean, Lathander bless you.~ [OH92573] */
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
  SAY #92574 /* ~I was investigating that vault near the merchant stalls. I heard there are powerful magical items in there... all for the Sun Soul brotherhood, of course! I wouldn't dream of breaking into it and taking everything for myself.~ [OH92574] */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #92575 /* ~While engaged in a completely legal and legitimate investigation of a certain highly sought-after holy relic, I was captured by that unholy Winged and her bounty hunters.~ [OH92575] */
  IF ~~ THEN REPLY #92578 /* ~Right. I would like to ask you something else.~ */ GOTO 14
  IF ~~ THEN REPLY #90713 /* ~Never mind, I must be going.~ */ GOTO 2
  IF ~~ THEN REPLY #92579 /* ~You are the worst liar I have ever met.~ */ GOTO 3
END

IF ~~ THEN BEGIN 27
  SAY #92580 /* ~Of course I would! Lathander is the god of battle and warriors, after all!~ [OH92580] */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_ELLRAISH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY #92582 /* ~A VISION! I have had a vision from above! Lathander has revealed to me the location of a key to the Hunters' Lounge. He is the god of keys and opening doors, you know. Before I give it to you, though, Lathander has a task for you.~ [OH92582] */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY #92584 /* ~There is a certain runestone held by the illithid merchant. Lathander demands you bring me the stone before I can give you the key.~ [OH92584] */
  IF ~~ THEN DO ~AddJournalEntry(92596,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY #92585 /* ~Lathander be praised! Here is your key. ~ [OH92585] */
  IF ~~ THEN DO ~AddJournalEntry(92597,QUEST)
TakePartyItem("OHBKEY01")
GiveItemCreate("OHBKEY02",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY #90553 /* ~The Pits of Despair seem darkest to those who will not see.~ [OH90553] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 265
END

IF ~~ THEN BEGIN 32
  SAY #90555 /* ~A lion alone can have no pride.~ [OH90555] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 266
END
