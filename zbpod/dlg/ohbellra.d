// creator  : weidu (version 24900)
// argument : OHBELLRA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBELLRA~

IF ~  Global("OHB_FOOD_FIGHT","MYAREA",0)
~ THEN BEGIN 0
  SAY ~WHAT?! I mean—what can I do for you, my stray sheep?~ [OH92534]
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",0)
~ THEN BEGIN 1
  SAY ~What do you want? Er, I mean, greetings of the Vigilant One, Lathander, to you, blessed, uh, child. In what way might this humble monk be of service to you?~ [OH92484]
  IF ~~ THEN REPLY ~Hello. Who are you?~ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY ~Isn't Helm called "The Vigilant One?"~ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 10
  IF ~~ THEN REPLY ~Something funny's going on here. Are you sure you are a monk?~ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 11
  IF ~~ THEN REPLY ~I must be going.~ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY ~I'd sooner take financial advice from a beggar than a blessing from you.~ DO ~AddJournalEntry(92593,INFO)
SetGlobal("OHB_TALKED_ELLRA","LOCALS",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~May Lathander watch over you. And remember, I'm always open to donations to, ah, further his work.~ [OH92491]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~I'll slice you from belly to—ah, I mean, Lathander, god of the dead, will, uh, judge your words when you pass from this world and stand before him.~ [OH92492]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Understanding comes only with time and many donations to the church of Lathander, the god of knowledge, understanding, and, ah... bountiful donations.~ [OH92494]
  IF ~~ THEN REPLY ~Uh... okay... can I ask you something else?~ GOTO 14
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~You are living proof that ignorance truly is bliss.~ GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY ~Why? What've you heard? That is, I'm a monk of Lathander, of course. I am Brother Ellraish, a monk of the Sun Soul and follower of Lathander, god of nature and flowing rivers! All donations accepted.~ [OH92500]
  IF ~~ THEN REPLY ~Good to meet you, Ellraish. May I ask you something else?~ GOTO 14
  IF ~~ THEN REPLY ~What are the donations for?~ GOTO 6
  IF ~~ THEN REPLY ~I'm sure they are. I'll be going now.~ GOTO 2
  IF ~~ THEN REPLY ~Donations? Sounds like a scam to me. ~ GOTO 3
END

IF ~~ THEN BEGIN 6
  SAY ~For the... ah... starving... children! Yes. The starving children. Yes! All donations accepted for the poor starving orphans of, er, Lantan. Think of all those destitute boys and girls shivering in the icy snow.~ [OH92508]
  IF ~  PartyGoldGT(9)
~ THEN REPLY ~Please, take these 10 gold pieces. It's not much, I know, but—~ DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY ~Doesn't Lantan have a temperate climate? It doesn't snow there.~ GOTO 9
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~More likely the donations go to Brother Ellraish. What a sham!~ GOTO 3
END

IF ~~ THEN BEGIN 7
  SAY ~10 gold? That's IT? I mean... please consider that the winter has been especially harsh this year. Surely you could spare some more.~ [OH92513]
  IF ~  PartyGoldGT(99)
~ THEN REPLY ~Very well. Here is 100 gold.~ DO ~TakePartyGold(100)
~ GOTO 8
  IF ~~ THEN REPLY ~Wait, Lantan has a temperate climate, does it not? It doesn't snow there.~ GOTO 9
  IF ~~ THEN REPLY ~If my donation isn't enough for you, I'll just be moving on.~ GOTO 2
  IF ~~ THEN REPLY ~Perhaps I could, but not for this sham of a charity.~ GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY ~Aha! Now I can buy that new—turkey. For the starving widows. Ahhh... Lathander's blessing on you. I must pray now!~ [OH92517]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Oh no! I assure you—it is quite cold there. Nothing but tundra yetis and floating chunks of ice.~ [OH92518]
  IF ~  PartyGoldGT(9)
~ THEN REPLY ~Please, take these 10 gold pieces. It's not much, I know, but—~ DO ~TakePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY ~I'd like to ask you something else.~ GOTO 14
  IF ~~ THEN REPLY ~I'm going to check this out. If it's true, I'll return.~ GOTO 2
  IF ~~ THEN REPLY ~You're as dumb as a tundra yeti if you think I'm buying that. ~ GOTO 3
END

IF ~~ THEN BEGIN 10
  SAY ~When the mouse enters his burrow, does he not find the seeds he has stored away for the winter? And does not the winter follow the fall? Therein lies the answer to your question.~ [OH92522]
  IF ~~ THEN REPLY ~That doesn't make any sense.~ GOTO 4
  IF ~~ THEN REPLY ~I'm going to leave now and give your words the consideration they merit.~ GOTO 2
  IF ~~ THEN REPLY ~I don't know about mice and seeds, but you're nuts.~ GOTO 3
END

IF ~~ THEN BEGIN 11
  SAY ~Of course! Why else would I have this shaved head?~ [OH92525]
  IF ~~ THEN REPLY ~But... your head isn't shaved.~ GOTO 12
  IF ~~ THEN REPLY ~Oh, forget this.~ GOTO 2
  IF ~~ THEN REPLY ~A delusional monk. Just when I thought this place couldn't get any weirder.~ GOTO 3
END

IF ~~ THEN BEGIN 12
  SAY ~It's a wig. I'm far too humble to display my deep devotion and piety to my fellow performers, so I wear a wig.~ [OH92528]
  IF ~~ THEN REPLY ~Discussing it clearly makes you uncomfortable. May I ask you something else?~ GOTO 14
  IF ~~ THEN REPLY ~It doesn't look like a wig. ~ GOTO 13
  IF ~~ THEN REPLY ~Your humility is something else. I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~You may have something atop your head, but there's little inside of it.~ GOTO 3
END

IF ~~ THEN BEGIN 13
  SAY ~Things are not always as they seem! Does an apple tree bear acorns? Does the bear resemble the walnut in the thicket when spring melts the winter snows? So it is with my wig.~ [OH92531]
  IF ~~ THEN REPLY ~That... doesn't make any sense.~ GOTO 4
  IF ~~ THEN REPLY ~I must take some time to contemplate this wisdom. Excuse me.~ GOTO 2
  IF ~~ THEN REPLY ~That is quite possibly the most nonsensical statement that has ever reached my ears.~ GOTO 3
END

IF ~  Global("OHB_TALKED_ELLRA","LOCALS",1)
~ THEN BEGIN 14
  SAY ~WHAT?! I mean—what can I do for you, my stray sheep?~ [OH92534]
  IF ~~ THEN REPLY ~Who are you, again?~ GOTO 5
  IF ~~ THEN REPLY ~Can I ask you some questions?~ GOTO 15
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
~ THEN REPLY ~Brother Ellraish, I need some help dealing with a... delicate situation.~ GOTO 20
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY ~Brother, I'm in need of assistance. Would you help me in my next match?~ GOTO 27
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",1)
PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY ~I have the powdered quartz and rat droppings for the poison.~ GOTO 24
  IF ~  PartyHasItem("OHBKEY01")
Global("OHB_ELLRA_RUNE","GLOBAL",3)
~ THEN REPLY ~I've returned with the runestone you requested.~ GOTO 30
  IF ~~ THEN REPLY ~Nothing, never mind.~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~Lathander is "the Curious God"! Ask away.~ [OH92541]
  IF ~~ THEN REPLY ~Lathander's "the Curious God"? Are you sure about that?~ GOTO 16
  IF ~~ THEN REPLY ~Something funny's going on here. Are you sure you are a monk?~ GOTO 11
  IF ~~ THEN REPLY ~Would you mind telling me a little more about yourself?~ GOTO 18
  IF ~~ THEN REPLY ~Tell me how you came to be here, Brother Ellraish.~ GOTO 26
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
END

IF ~~ THEN BEGIN 16
  SAY ~Consider this: You have come to me with questions, and I have spoken to you of Lathander, which has prompted more questions.~ [OH92546]
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~Yes, even as the egg reveals its secret in the summertime and blooms into a wondrous... butterfly, Lathander incites wonder and curiosities in his followers! Even as the honeybee causes the oxen to migrate west in times of drought, so Lathander reveals the deepest secrets and rewards his followers.~ [OH92547]
  IF ~~ THEN REPLY ~That doesn't make any sense.~ GOTO 4
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~Have you ever actually listened to what's coming out of your mouth?~ GOTO 3
END

IF ~~ THEN BEGIN 18
  SAY ~I am a monk of the Sun Soul. I've taken vows of poverty, shaved my head, and now proclaim the wonders of Lathander, god of suffering! I also accept donations.~ [OH92550]
  IF ~~ THEN REPLY ~But... your head isn't shaved. You have hair.~ GOTO 12
  IF ~~ THEN REPLY ~Lathander's the god of suffering? I thought that was Ilmater. ~ GOTO 19
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~Vows of poverty don't justify a tongue of stupidity.~ GOTO 3
END

IF ~~ THEN BEGIN 19
  SAY ~Yes. Quite sure. God of suffering. ~ [OH92554]
  IF ~~ THEN REPLY ~If you say so. I'd like to ask you something else.~ GOTO 14
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~I'll take your word for it. Well, no, I won't, but I will be leaving.~ GOTO 3
END

IF ~~ THEN BEGIN 20
  SAY ~Of course! Anything for a donation. Uh, and to help a soul in need. What's the problem?~ [OH92557]
  IF ~  Global("OHB_ELLRA_POISON","GLOBAL",0)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY ~I need a poison.~ GOTO 21
  IF ~  Global("OHB_ELLRA_RUNE","GLOBAL",0)
Global("ohb_lounge_door_needs_key","global",1)
~ THEN REPLY ~I need to unlock the door to the Hunters' Lounge.~ GOTO 28
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
END

IF ~~ THEN BEGIN 21
  SAY ~Poison? What would a monk such as myself know about poison?~ [OH92560]
  IF ~  PartyGoldGT(999)
~ THEN REPLY ~I have 1,000 gold to spend on some poison. Are you sure you know nothing of poisons?~ DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 22
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY ~Surely a learned man like you knows something of poisons.~ DO ~SetGlobal("OHB_ELLRA_POISON","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~Bah! You are worthless. ~ GOTO 3
END

IF ~~ THEN BEGIN 22
  SAY ~WAIT! I have just had a vision from Lathander. I have been shown how to create a poison in return for your donation of 1,000 gold coins. She has shown me: I need some powdered quartz and rat droppings.~ [OH92564]
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY ~Very well, here is the 1,000 gold.~ DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY ~I'll return when I have the donation.~ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY ~Never mind, I must be going.~ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY ~Powdered quartz and rat droppings? What nonsense. ~ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 23
  SAY ~Well... I may know something of them. Unfortunately, I am forbidden by my god to create them unless a donation of... say... 1,000 gold is made to the cause of Lathander. I'll also need some powdered quartz and rat droppings to complete the mixture. ~ [OH92568]
  IF ~  PartyGoldGT(999)
PartyHasItem("OHBCOM10")
PartyHasItem("OHBCOM04")
~ THEN REPLY ~Very well, here is the 1,000 gold.~ DO ~TakePartyGold(1000)
~ GOTO 24
  IF ~~ THEN REPLY ~I'll return when I have the donation.~ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY ~Never mind, I must be going.~ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 2
  IF ~~ THEN REPLY ~Powdered quartz and rat droppings? What nonsense. ~ DO ~AddJournalEntry(92594,QUEST)
SetGlobal("ohb_rat_droppings","global",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 24
  SAY ~Here's your poison. Pleasure doing business—I mean, Lathander bless you.~ [OH92573]
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
  SAY ~I was investigating that vault near the merchant stalls. I heard there are powerful magical items in there... all for the Sun Soul brotherhood, of course! I wouldn't dream of breaking into it and taking everything for myself.~ [OH92574]
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY ~While engaged in a completely legal and legitimate investigation of a certain highly sought-after holy relic, I was captured by that unholy Winged and her bounty hunters.~ [OH92575]
  IF ~~ THEN REPLY ~Right. I would like to ask you something else.~ GOTO 14
  IF ~~ THEN REPLY ~Never mind, I must be going.~ GOTO 2
  IF ~~ THEN REPLY ~You are the worst liar I have ever met.~ GOTO 3
END

IF ~~ THEN BEGIN 27
  SAY ~Of course I would! Lathander is the god of battle and warriors, after all!~ [OH92580]
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_ELLRAISH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY ~A VISION! I have had a vision from above! Lathander has revealed to me the location of a key to the Hunters' Lounge. He is the god of keys and opening doors, you know. Before I give it to you, though, Lathander has a task for you.~ [OH92582]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~There is a certain runestone held by the illithid merchant. Lathander demands you bring me the stone before I can give you the key.~ [OH92584]
  IF ~~ THEN DO ~AddJournalEntry(92596,QUEST)
SetGlobal("OHB_ELLRA_RUNE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY ~Lathander be praised! Here is your key. ~ [OH92585]
  IF ~~ THEN DO ~AddJournalEntry(92597,QUEST)
TakePartyItem("OHBKEY01")
GiveItemCreate("OHBKEY02",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY ~The Pits of Despair seem darkest to those who will not see.~ [OH90553]
  IF ~~ THEN EXTERN ~OHBDENNA~ 265
END

IF ~~ THEN BEGIN 32
  SAY ~A lion alone can have no pride.~ [OH90555]
  IF ~~ THEN EXTERN ~OHBDENNA~ 266
END
