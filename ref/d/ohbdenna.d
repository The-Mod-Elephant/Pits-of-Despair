BEGIN ~OHBDENNA~

IF ~~ THEN BEGIN 0 // from: 256.0
  SAY #90535 /* ~I mean, "OUR" wealth, of course. This is a partnership. I need you and you, me. So long as you perform and entertain our audience, you will live a life of comfort, even opulence.~ [OH90535] */
  IF ~~ THEN REPLY #90536 /* ~You expect us to kill each other for you and your patrons' amusement?~ */ GOTO 1
  IF ~~ THEN REPLY #90537 /* ~I like comfort and opulence. I like freedom even more.~ */ GOTO 257
  IF ~~ THEN REPLY #90538 /* ~Forget it. I'm not going through this again!~ */ GOTO 257
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #90542 /* ~You won't be fighting each other, at least not often. That would be counterproductive! You are the prize horses, not the mules!~ [OH90542] */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 2 // from:
  SAY #90562 /* ~Don't let that act fool you! Very cagey is the Ancient Threat. Next, we have a <PRO_MANWOMAN> whose deeds are so well known, they hardly need mentioning. A <PRO_MANWOMAN> legendary for prowess in gladiatorial combat. I give you the Champion of Baeloth's Pit, <CHARNAME>!~ [OH90562] */
  IF ~~ THEN REPLY #90563 /* ~I'll not play your pathetic game, Dennaton! I decide my own fate!~ */ GOTO 3
  IF ~~ THEN REPLY #90564 /* ~What, no nickname for me?~ */ GOTO 5
  IF ~~ THEN REPLY #90565 /* ~Let me be clear, Dennaton. I'll fight and I'll kill. It's what I do, but if the coin's not good enough, I'll butcher and stew you in a pot of your own gravy!~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #90566 /* ~Oh, <CHARNAME>, don't be so naïve. Fighting for a king, country, god, or even an ideal is still fighting for a cause that isn't you. At least this way you get rich in the process.~ [OH90566] */
  IF ~~ THEN REPLY #90567 /* ~A feeble justification. I'll hear no more of your lies.~ */ GOTO 4
  IF ~~ THEN REPLY #90568 /* ~Hmm... We shall see.~ */ GOTO 270
  IF ~~ THEN REPLY #90569 /* ~I'd better.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #90570 /* ~You don't have to like it, <CHARNAME>. You just have to fight, and if you don't? Well, then you shall be killed. A shame to lose one of your talent, but the show will go on.~ [OH90570] */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #90571 /* ~Of course you shall have one! How about "The Ravager"? No, no, no, no... "Infinite Desolation"? No, I don't like that... Of course! You are "The Scourge of Baeloth"!~ [OH90571] */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2
  SAY #90592 /* ~Oh, you'll find the money more than sufficient, don't you worry about that. You just keep them coming back for more.~ [OH90592] */
  IF ~~ THEN GOTO 270
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_101","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #94508 /* ~Lords and ladies, dignitaries and honored guests, today I give you something truly extraordinary—a champion of a rival arena making their debut here in our own! I give you the Scourge of Baeloth's Pits... <CHARNAME>!~ [OH94508] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #94509 /* ~In what is sure to be little more than an exhibition, the new challenger will face several orcs captured in the wilds near Nethra. They SEEMED ferocious at the time, but look at them cower now that their challenger has been named!~ [OH94509] */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #94510 /* ~Before we begin, <CHARNAME>, is there anything you'd like to say to the audience?~ [OH94510] */
  IF ~~ THEN REPLY #94511 /* ~These foul beasts once committed unspeakable acts of cruelty upon the civilized people of Faerûn. Today, I enact justice in the name of all their innocent victims!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 10
  IF ~~ THEN REPLY #94512 /* ~This arena is as much a joke as the last. Let's get this over with, Dennaton!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 11
  IF ~  OR(2)
Global("ohb_101_item_good","global",0)
Global("ohb_101_item_great","global",0)
~ THEN REPLY #94513 /* ~You expect me to entertain you, yet I have only the most basic of weaponry. Can a chef make a soufleé with only a firepit? Can a painter create a masterpiece with only one color? A symphony of violence requires many instruments.~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 12
  IF ~~ THEN REPLY #94514 /* ~Not particularly.~ */ GOTO 13
  IF ~~ THEN REPLY #94515 /* ~Why should I address these peasants? To gaze upon my magnificence is more than they deserve!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #94516 /* ~We shall sleep better tonight, knowing there are heroes in this world. The time has come! Combatants, to arms!~ [OH94516] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #94517 /* ~As you wish. Combatants, to arms!~ [OH94517] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #94518 /* ~My friends, our fledgling composer needs a patron. Will any of you help <PRO_HIMHER> make sweet music for you? For now, we shall let <PRO_HIMHER> demonstrate <PRO_HISHER> talent by hearing the tune <PRO_HESHE> plays with the instruments at hand! Combatants, to arms!~ [OH94518] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #94519 /* ~Inspiring stuff, <CHARNAME>. Very well, then. Combatants, to arms!~ [OH94519] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.4
  SAY #94520 /* ~Listen to the boos! So raucous! So beautiful! The applause will be thunderous the day you are brought low! Perhaps today? Let's find out! Combatants, to arms!~ [OH94520] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBORC03",94521)
SetGlobal("OHB_101","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_102","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #94041 /* ~Ladies and gentlemen, I welcome you again to our main event. You've already met our next combatant! Once again, I give you our newest attraction, the Scourge of Baeloth's Pits, <CHARNAME>!~ [OH94041] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #94042 /* ~This challenger is entirely homegrown. There's not a craven orc in the bunch! They're the top gladiatorial team out of Raskilov's Academy of Might from right here in Thay. I give you "Raskilov's Ragers!"~ [OH94042] */
  IF ~  Global("OHB_EVENT_102_DIALOG","MYAREA",0)
~ THEN DO ~StartCutSceneMode()
ClearAllActions()
SetGlobal("OHB_START_BATTLE","GLOBAL",3)
SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",1)
SetGlobal("ohb_spawn_gladiators","myarea",0)
StartCutScene("ohbcut09")
~ EXIT
  IF ~  !Global("OHB_EVENT_102_DIALOG","MYAREA",0)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 21
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_102","GLOBAL",1)
Global("OHB_EVENT_102_DIALOG","MYAREA",1)
~ THEN BEGIN 17 // from:
  SAY #94057 /* ~Everyone, please settle down and return to your seats! I'm afraid we can't pay out the bets on the last match, as it was interfered with. All wagers will be pushed to the next one!~ [OH94057] */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #94059 /* ~In the meantime, grab another ale or leg of mutton while we do some slight restaging. Our food vendors are coming down the aisles now!~ [OH94059] */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #94061 /* ~As for you "performers," let this be a lesson to you. There will be no changes to the script, and the script is this: You fight. Fight well, and you live. Fight poorly, you die. It's hardly original, but it's a crowd-pleaser.~ [OH94061] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",2)
Wait(1)
FadeToColor([30.0],0)
Wait(3)
DayNight(DUSK_END)
CreateCreature("OHBMIN01",[1578.690],SSW)
CreateCreature("OHBMIN01",[1701.786],SSW)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_102","GLOBAL",1)
Global("OHB_EVENT_102_DIALOG","MYAREA",2)
~ THEN BEGIN 20 // from:
  SAY #94062 /* ~*ahem* Attention, everyone! We are ready once more for today's main event. We've decided to keep what remains of "Raskilov's Ragers," and we're throwing in some minotaurs to help them out!~ [OH94062] */
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_102_DIALOG","MYAREA",3)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 16.1 20.0
  SAY #94064 /* ~Before we start, <CHARNAME>, would you like to address your adoring fans?~ [OH94064] */
  IF ~~ THEN REPLY #94065 /* ~I am a humble <PRO_MANWOMAN>. I scraped by as best I could in Baeloth's Pits. Faced with trained gladiators, I only hope I last long enough to provide the entertainment you deserve.~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 22
  IF ~~ THEN REPLY #94066 /* ~Really, Dennaton? You claim to provide entertainment available nowhere else. This fight will be over in seconds, and you know it.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 23
  IF ~  OR(2)
Global("ohb_102_item_good","global",0)
Global("ohb_102_item_great","global",0)
~ THEN REPLY #94068 /* ~I destroyed some orcs for your amusement—these gladiators will be no different. But you, my people, deserve more! Give me the proper tools, and I swear the front row will drip red with blood!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 24
  IF ~~ THEN REPLY #94070 /* ~Not at all.~ */ GOTO 25
  IF ~~ THEN REPLY #94071 /* ~Thayan gladiators? Ha! A nation of weaklings! No Thayan can stand against me!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 26
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #94073 /* ~Amazing! The Champion of Baeloth's Pits just convinced the crowd THEY'RE the underdog! Even more amazingly, they've convinced a crowd of Thayans to ROOT for the underdog! Good show! Combatants, to arms!~ [OH94073] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #94075 /* ~If it would ease your conscience, I can make sure your future battles are VERY DIFFICULT. Now, combatants, to arms!~ [OH94075] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.2
  SAY #94076 /* ~How can you resist a champion who begs for the opportunity to entertain you more?! Dig deep, and be generous, but above all, enjoy the show! Combatants, to arms!~ [OH94076] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.3
  SAY #94077 /* ~Boring, boring, boring! But have it your way. All right, combatants, to arms!~ [OH94077] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.4
  SAY #94078 /* ~A nation's pride has been wounded! Can Thay's sons and daughters bring honor to our homeland? We shall see! Combatants, to arms!~ [OH94078] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_102","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_103","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #94124 /* ~Welcome once more to the unequaled drama of the center arena! Again, I give you a <PRO_MANWOMAN> of unmatched reputation and skill, steadily clawing <PRO_HISHER> way to the top of our ladder. Please give a warm Thayan welcome to the Scourge of Baeloth's Pits—<CHARNAME>!~ [OH94124] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #94126 /* ~Speaking of clawing, our next challengers hail from the marshes of Chult. It takes more than just a scaly hide and forked tongue to reach the top of the lizardman heap, and this tribal chieftain did it quicker than most. Throw in his elite guard, and it's sure to be hiss-sterical!~ [OH94126] */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #94127 /* ~But before we begin—<CHARNAME>, is there anything you'd like to say to your adoring fans?~ [OH94127] */
  IF ~~ THEN REPLY #94129 /* ~The noble savage. A worthy foe. I am honored to battle such an adversary. I trust our esteemed guests will find some thrill in the contest.~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 30
  IF ~~ THEN REPLY #94130 /* ~This is shameful! Yet another hopelessly lopsided match fobbed off as entertainment. You're bilking these people out of their hard-earned coin!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 31
  IF ~  OR(2)
Global("ohb_103_item_good","global",0)
Global("ohb_103_item_great","global",0)
~ THEN REPLY #94132 /* ~Today, you will see one lizard at a time skewered—but two at a time would be better. I need proper weaponry! Come on, people! A potter cannot create vases without clay!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 32
  IF ~~ THEN REPLY #94134 /* ~Nothing they'd care to hear.~ */ GOTO 33
  IF ~~ THEN REPLY #94135 /* ~A lion doesn't address sheep.~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #94137 /* ~Noble savages indeed. Today's battle pits nature against civilization. Let us see which will prove the stronger. Combatants, to arms!~ [OH94137] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #94139 /* ~A valid point, <CHARNAME>. If the audience doesn't get their money's worth from this fight, perhaps I'll use your winnings to refund their tickets... IF you win. Now, to arms!~ [OH94139] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2
  SAY #94141 /* ~Who can resist the earnest entreaties of someone who wants nothing more than to entertain us? Be generous—help <PRO_HIMHER> help you! Now, without further ado, combatants! To arms!~ [OH94141] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.3
  SAY #94142 /* ~You are a warrior of few words. If that's all you've got, then it's time to fight. Combatants, to arms!~ [OH94142] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.4
  SAY #94144 /* ~Ah, yes, my patrons. Let your displeasure shower down upon our villain. Perhaps the Chultan savages will lay <PRO_HIMHER> low. Combatants, to arms!~ [OH94144] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("OHBLIZ01",94147)
SetGlobal("OHB_103","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_104","GLOBAL",1)
~ THEN BEGIN 35 // from:
  SAY #94196 /* ~Attention, honored guests! Prepare to be amazed. Prepare to be HORRIFIED! Once again, I give you a warrior whose victories are the talk of the arena. Everyone, let's give a round of applause to the Scourge of Baeloth's Pits, <CHARNAME>!~ [OH94196] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #94198 /* ~These next creatures were pulled from the mines of Mirabar! Some would have you believe such creatures do not exist—that they are only stories invented to frighten children. Today, you will see that they are very real indeed! Ladies and gentlemen, I present for your amusement—for your horror—a pack of rabid UMBER HULKS!~ [OH94198] */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #94199 /* ~Before we begin, <CHARNAME>, have you any words for the audience?~ [OH94199] */
  IF ~~ THEN REPLY #94200 /* ~Fear not, good people. As nightmares are banished by the light, so shall these creatures be banished by my might.~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 38
  IF ~~ THEN REPLY #94201 /* ~Dennaton, you disgusting piece of filth! You'd not last ten seconds in this arena!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 39
  IF ~  OR(2)
Global("ohb_104_item_good","global",0)
Global("ohb_104_item_great","global",0)
~ THEN REPLY #94202 /* ~At last, I face creatures capable of spilling the kind of blood you want. But imagine how much greater a spectacle you'd witness had I better weapons! You shall have a river of blood, but I yearn to give you an ocean!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 40
  IF ~~ THEN REPLY #94203 /* ~Don't think so.~ */ GOTO 41
  IF ~~ THEN REPLY #94204 /* ~These pathetic creatures will fall before me. People of Thay, lock your doors and hide your children. I give nightmares nightmares!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 42
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #94205 /* ~Courageous, and a poet to boot! Come, my patrons, show your champion support once more! Combatants, to arms!~ [OH94205] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #94206 /* ~You may be right. But the question that matters is how long YOU will last. Combatants, to arms!~ [OH94206] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2
  SAY #94207 /* ~The Scourge of Baeloth's Pits wants to give us a show. What a generous and giving spirit! Won't you be as generous for your favorite performer? While you decide, let the killing commence! Combatants, to arms!~ [OH94207] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.3
  SAY #94208 /* ~*sigh* Combatants, to arms!~ [OH94208] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 37.4
  SAY #94209 /* ~Aha! Then we are fortunate that two nightmares clash here today. Worry not, my patrons—in moments, only one will be left. Combatants! To arms!~ [OH94209] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_104","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 43 // from:
  SAY #94220 /* ~Come one, come all, to the greatest show this side of the Astral Plane! Once more, I bring you a performer that's slowly but surely winning hearts... and minds! In a world bereft of heroes, they fill the void, a beacon of light to all! I give you the Scourge of Baeloth's Pits, <CHARNAME>!~ [OH94220] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 44 // from:
  SAY #94221 /* ~Ladies and gentlemen, let me present a performer who continues to explore new and greater depths of infamy! Come on, everyone—let's REALLY hear the boos for the Scourge of Baeloth's Pits, <CHARNAME>!~ [OH94221] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_105","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 45 // from:
  SAY #94222 /* ~Come one, come all, to the greatest show this side of the Astral Plane! Once again, I bring you a performer whose skill is matched only by their lofty reputation. I give you the Scourge of Baeloth's Pits, <CHARNAME>!~ [OH94222] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 43.0 44.0 45.0
  SAY #94223 /* ~Our challengers are some of the most despicable creatures in all of Toril! The bane of all who walk in the sun, these ancient enemies of Thay are so depraved that even the light itself hates them. Fear? Loathing? Disgust? You'll feel them all for the drow of House Aiel'for!~ [OH94223] */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #94224 /* ~Before we begin, <CHARNAME>, have you anything you'd like to say?~ [OH94224] */
  IF ~~ THEN REPLY #94225 /* ~Fear not, good people of Thay! Your champion is here! When I am done this day, these despicable beasts will be naught but stains upon the arena floor!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 48
  IF ~  GlobalGT("OHB_ANTI_DENNATON","GLOBAL",2)
~ THEN REPLY #94226 /* ~I've no doubt YOU fear the drow, Dennaton. You're nothing without the Winged. One day, it'll just be you and me in this arena. Some day soon.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 49
  IF ~  !GlobalGT("OHB_ANTI_DENNATON","GLOBAL",2)
~ THEN REPLY #94226 /* ~I've no doubt YOU fear the drow, Dennaton. You're nothing without the Winged. One day, it'll just be you and me in this arena. Some day soon.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 51
  IF ~  OR(2)
Global("ohb_105_item_good","global",0)
Global("ohb_105_item_great","global",0)
~ THEN REPLY #94227 /* ~Volo wrote the History of the Sword Coast. Prism sculpted the Mask of Ellesime. I shall create the greatest spectacle of gore seen this side of the Blood War. I need only the proper tools. Help me, everyone. Help me entertain YOU!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 50
  IF ~~ THEN REPLY #94228 /* ~Nope.~ */ GOTO 52
  IF ~~ THEN REPLY #94229 /* ~Drow? Is this the best you can do? Surely even you fools know better than to fear such weaklings. I am the true dark one. FEAR ME!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #94230 /* ~I feel safer already! Lords and ladies, please cheer your champion as <PRO_HESHE> faces the minions of darkness. Combatants—~ [OH94230] */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #94231 /* ~I tire of these repeated insults, <CHARNAME>. But the show must go on! Should you live, we'll "discuss" this later. For now, combatants—~ [OH94231] */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.3
  SAY #94232 /* ~Do you hear that? The Scourge of Baeloth's Pits asks us to help create a masterpiece of death! Clearly, <PRO_HESHE> has the talent—will someone give <PRO_HIMHER> the tools? Questions to ponder, but for now, combatants—~ [OH94232] */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.2
  SAY #94233 /* ~I'd think one of your experience would concentrate more on surviving than such idle fantasies. But enough. It is time to raise the curtain on this act! Combatants, to arms!~ [OH94233] */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 47.4
  SAY #94234 /* ~Can't you at least TRY to be a little bit interesting? *sigh* Very well. Combatants, to arms!~ [OH94234] */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 47.5
  SAY #94235 /* ~Amazing! This day, I have witnessed something I never imagined I'd see: The drow are the champions of the Thayan people! Come, dark heroes! Slay the Scourge of Baeloth's Pits... if you can! Combatants, to arms!~ [OH94235] */
  IF ~  !Global("OHB_EVENT_105","MYAREA",0)
~ THEN GOTO 55
  IF ~  Global("OHB_EVENT_105","MYAREA",0)
~ THEN DO ~SetCutSceneLite(TRUE)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",3)
Global("OHB_105","GLOBAL",1)
Global("OHB_EVENT_105","MYAREA",1)
~ THEN BEGIN 54 // from:
  SAY #94242 /* ~YOU WRETCHED WENCH! THREATENING ME?! IN MY OWN ARENA?!~ [OH94242] */
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_105","MYAREA",2)
~ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 48.0 49.0 50.0 51.0 52.0 53.0 54.0
  SAY #94243 /* ~What are you all looking at?! You lot just kill each other. You in the stands... GET TO THE CHEERING, NOW!~ [OH94243] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_ENEMY_OVERRIDE","GLOBAL",0)
SetGlobal("OHB_105","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 56 // from:
  SAY #94834 /* ~Good evening! It is once again my pleasure—nay, my HONOR—to present to you the vanquisher of darkness, the destroyer of evil, the champion of the good and noble citizens of Thay, <CHARNAME>!~ [OH94834] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 57 // from:
  SAY #94835 /* ~Good evening! Once again, for the amusement of your most discerning tastes, I bring you a performer of such talent and ability as to have vanquished all before them and emerged unscathed! ~ [OH94835] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_201","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 58 // from:
  SAY #94836 /* ~Ladies, hide your children! Gentlemen, steel your nerves and steady your ladies. A villain most vile and dangerous is in our midst. I bring you that which stalks your darkest dreams and infests your deepest fears, <CHARNAME>!~ [OH94836] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 56.0 57.0 58.0
  SAY #94837 /* ~It has been whispered that the shining spires of the City of Splendors conceal beneath them dark and terrible secrets. The whispers are true.~ [OH94837] */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #94838 /* ~Plucked from the shadows beneath Waterdeep, I give you the vampire lord Gaul and his coven of eternal darkness!~ [OH94838] */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #94839 /* ~Before the carnage begins, would you like to address your adoring fans, <CHARNAME>?~ [OH94839] */
  IF ~~ THEN REPLY #94840 /* ~Dusk settles across the land, but dawn will come anew. Citizens of Thay, I am your dawn-bringer. I shall banish these foul creatures to the Nine Hells!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 62
  IF ~~ THEN REPLY #94841 /* ~These are no vampires! I can see their false fangs from here! You're trying to pass common street ruffians off as undead!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 63
  IF ~  OR(2)
Global("ohb_201_item_good","global",0)
Global("ohb_201_item_great","global",0)
~ THEN REPLY #94842 /* ~If you truly want a spectacle, ladies and gentlemen, give me something I can use to decorate this pit with my opponents' broken bodies!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 64
  IF ~~ THEN REPLY #94843 /* ~No.~ */ GOTO 65
  IF ~~ THEN REPLY #94844 /* ~You Thayans cower and squeal like stuck pigs, and for what? A handful of rotting corpses? Behold a true warrior, and know shame!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 66
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #94845 /* ~What a relief we have such a mighty champion to defend us. Let the battle begin!~ [OH94845] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #94846 /* ~You'll discover the truth of your foe's identity and despair, <CHARNAME>. Begin the battle!~ [OH94846] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #94847 /* ~Imagine the excitement of this mighty performer using YOUR gift to defeat this foe. Do not deny yourselves such an opportunity!~ [OH94847] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY #94848 /* ~I hope the fight is more interesting than your speech. Let the battle begin!~ [OH94848] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY #94849 /* ~Do not dismay, bold and honorable men of Thay. Either the foul vampires or this mocking rascal will fall this day. May the battle begin!~ [OH94849] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbvmp01",94850)
SetGlobal("OHB_201","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 67 // from:
  SAY #94883 /* ~Maidens, prepare to swoon. Men, prepare to cheer. Your champion is here once again to participate in a spectacle beyond comparison! I give you <CHARNAME>!~ [OH94883] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 68 // from:
  SAY #94884 /* ~It is my pleasure to once again bring you a seemingly unstoppable warrior who has vanquished foe after foe: <CHARNAME>!~ [OH94884] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_202","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 69 // from:
  SAY #94885 /* ~Ladies and gentlemen, our next performer needs no introduction. Their dark reputation stains the crimson honor of Thay! I give you your nemesis, <CHARNAME>!~ [OH94885] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 67.0 68.0 69.0
  SAY #94886 /* ~The sages and scholars write of the vastness of existence, how there are realms and planes vastly different and far removed from our own. Ah! I see some among you doubt me. Well, doubt no LONGER!~ [OH94886] */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #94887 /* ~See, I give you the planar travelers, the githyanki! Brought here by powerful magics, our performer will be hard-pressed to defeat their alien cunning and strength!~ [OH94887] */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #94888 /* ~Before the slaughter commences, <CHARNAME>, would you care to address the audience?~ [OH94888] */
  IF ~~ THEN REPLY #94889 /* ~I dedicate this battle to you, good people of Thay. I'll vanquish these alien monstrosities for YOU!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 73
  IF ~~ THEN REPLY #94890 /* ~You may fool the crowd with these two-copper illusions, Dennaton, but not me. These are nothing but freakishly tall goblins. They shall fall before me.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 74
  IF ~  OR(2)
Global("ohb_202_item_good","global",0)
Global("ohb_202_item_great","global",0)
~ THEN REPLY #94891 /* ~They say the githyanki wield mighty swords. Imagine what I could do with an equally mighty weapon or item to use against them! Give me one and I promise you'll not regret it!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 75
  IF ~~ THEN REPLY #94892 /* ~I'll save my breath for the battle.~ */ GOTO 76
  IF ~~ THEN REPLY #94893 /* ~With each blow I land upon my enemy, I shall imagine I am crushing one of you cowering weaklings!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 77
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #94894 /* ~Your champion has spoken! They shall smite your enemies and drive them back to their own vile plane, have no fear! Let the games begin!~ [OH94894] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #94895 /* ~You fool no one but yourself, <CHARNAME>. Begin! ~ [OH94895] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 72.2
  SAY #94896 /* ~What a joy it would be to see your mighty gift turned against the legendary blades of the githyanki! For now, however, the champion must make do with what <PRO_HESHE>'s got. Begin!~ [OH94896] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 72.3
  SAY #94897 /* ~Save your breath? I should've saved my money for a true performer. Let the combat begin.~ [OH94897] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 72.4
  SAY #94898 /* ~We are called weak and cowardly! Well, let us see how this performer fares against the masters of planar travel! Combatants, to arms!~ [OH94898] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_202","GLOBAL",2)
DisplayStringHead("ohbgit01",94899)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 78 // from:
  SAY #95069 /* ~You have seen your champion fight denizens of the surface realm and the Underdark, prevailing again and again. Now your beloved hero shall defend you against a new threat!~ [OH95069] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 79 // from:
  SAY #95071 /* ~You have seen the Scourge of Baeloth's Pits fight denizens of the surface realm and the Underdark and prevail every time! Now, they will face a new foe for your entertainment!~ [OH95071] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_203","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 80 // from:
  SAY #95072 /* ~Neither denizens of the surface realm nor the Underdark have been able to lay the enemy of Thay low! Now, the villain <CHARNAME> will face their greatest challenge yet!~ [OH95072] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 78.0 79.0 80.0
  SAY #95073 /* ~From the deepest oceans, I have captured strange and bizarre creatures the likes of which not even Thay's most learned scholars know. Look and wonder!~ [OH95073] */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #95074 /* ~An ancient and powerful race, the sahuagin produce warriors beyond compare. You will see one, accompanied by its elemental allies, battle our performer in this evening's featured bout!~ [OH95074] */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #95075 /* ~<CHARNAME>! Before we begin, have you anything to say to the Thayan people?~ [OH95075] */
  IF ~~ THEN REPLY #95076 /* ~No beasts from the sea will stop me from defending the worthy citizens of Thay! Rest easy. I am here for you!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 84
  IF ~~ THEN REPLY #95077 /* ~Is this the best you can do, Dennaton? I'll slaughter these beasts in moments. I hope you people didn't actually pay for this.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 85
  IF ~  OR(2)
Global("ohb_203_item_good","global",0)
Global("ohb_203_item_great","global",0)
~ THEN REPLY #95078 /* ~Look at my equipment, my weapons! Are there no better instruments of destruction to be had? With the mighty artifacts your great nation possesses, I could give you an unforgettable show!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 86
  IF ~~ THEN REPLY #95079 /* ~Let's get on with this.~ */ GOTO 87
  IF ~~ THEN REPLY #95081 /* ~I shall make the battle short. I'm sure you wretches want to return to your worthless lives as soon as possible.~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 88
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #95082 /* ~Your hero defends your honor once again, good citizens of Thay! And as always, refreshment carts can be found in the aisles and near each exit. Let the battle begin!~ [OH95082] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 83.1
  SAY #95083 /* ~If you feel the battles are too easy, perhaps in the future you should be stripped of your gear. But enough talk. Begin the battle!~ [OH95083] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 83.2
  SAY #95084 /* ~We are a rich and mighty nation. Is there no one in the crowd this day who wishes to bestow a gift upon the performer? Think on it while <PRO_HESHE> battles for <PRO_HISHER> life!~ [OH95084] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 83.3
  SAY #95085 /* ~As you tire of words, so the crowd tires of you. Let the battle begin.~ [OH95085] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 83.4
  SAY #95086 /* ~An insult to the hearty citizens of Thay! Let this performer hear your dismay as the battle... begins!~ [OH95086] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_203","GLOBAL",2)
DisplayStringHead("ohbsah01",95087)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 89 // from:
  SAY #95317 /* ~I do not mean to alarm you, good people of Thay, but I must be honest. I fear for your beloved champion. Today, they face a foe of cunning and power that will take them to their limit! Let your champion hear you cheer their name!~ [OH95317] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 90 // from:
  SAY #95318 /* ~I am not a sentimental man, but concern wells in my chest for our performer. Our next adversary possesses such cunning and power that even the mighty <CHARNAME> will be hard pressed to survive. Now, let me hear your cheers!~ [OH95318] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_204","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 91 // from:
  SAY #95319 /* ~People of Thay, today your nemesis, who has mocked you at every opportunity, faces a foe of such cunning and power that victory will be nearly unattainable!~ [OH95319] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.0 90.0 91.0
  SAY #95320 /* ~For your entertainment, I have found a sorcerer of such immense power that even the very manifestations of the elemental planes obey his every command. ~ [OH95320] */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #95322 /* ~As always, before we begin, I want to give you the opportunity to speak to your fans, <CHARNAME>. These may be your last words—choose them well.~ [OH95322] */
  IF ~~ THEN REPLY #95323 /* ~No sorcerous trickery, no summoned elemental lord, no conjurer of any power will thwart me. I fight for Thay!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 94
  IF ~~ THEN REPLY #95324 /* ~A halfling mage, Dennaton? Is your audience so easily parted from their hard-earned gold?~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 95
  IF ~  OR(2)
Global("ohb_204_item_good","global",0)
Global("ohb_204_item_great","global",0)
~ THEN REPLY #95325 /* ~This shall be poor entertainment—unless some generous patron or patroness has something I might use to enhance the spectacle. Anyone?~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 96
  IF ~~ THEN REPLY #95326 /* ~I have nothing to say.~ */ GOTO 97
  IF ~~ THEN REPLY #95327 /* ~You Thayans will regret caging me. When I am free, all Thayans will cower in their bedchambers at night, fearful that the mighty <CHARNAME> will come for them from the shadows!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #95328 /* ~Stand and cheer for your champion! You may turn the tide in favor of your hero. Raise your voices, cheer!~ [OH95328] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.1
  SAY #95329 /* ~Let the games begin!~ [OH95329] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 93.2
  SAY #95331 /* ~The performer calls for an item of power, a favor from the beloved people of Thay! Do not disappoint <PRO_HIMHER>!~ [OH95331] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.3
  SAY #95332 /* ~The elementals would have been more interesting. Begin the battle.~ [OH95332] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 93.4
  SAY #95333 /* ~Is there no good to be found within this performer's dark soul? No, I daresay there isn't. Very well, let Thay's antagonist fight for <PRO_HISHER> survival!~ [OH95333] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_204","GLOBAL",2)
DisplayStringHead("ohbmardi",95336)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 99 // from:
  SAY #95363 /* ~It has been said the mighty hero of Thay would travel to the Nine Hells themselves to defend your honor. This day we'll see if those tales are true! Raise your voices and cheer for <CHARNAME>!~ [OH95363] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 100 // from:
  SAY #95364 /* ~It has been said that this arena's performers could challenge the Nine Hells and prevail. Today, one of them has that opportunity.~ [OH95364] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_205","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 101 // from:
  SAY #95365 /* ~A scourge, a bane, a hated adversary strides before you. You have called this performer a devil and a demon alike. Today, we'll find out how true that is.~ [OH95365] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 99.0 100.0 101.0
  SAY #95366 /* ~From the depths of the Hells and the Abyss, the mightiest devils and demons have been brought here to battle this performer.~ [OH95366] */
  IF ~~ THEN GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #95367 /* ~Those in the first row who are in the habit of leaning over the safety railing, I beg you exercise restraint. I'd hate to see you decapitated.~ [OH95367] */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #95368 /* ~And as always, I offer you the chance to speak to your fans, <CHARNAME>. What would you have them know?~ [OH95368] */
  IF ~~ THEN REPLY #95369 /* ~Nothing can overcome my zeal for defending the Thayan people! I shall defeat these fiends for you, my noble patrons!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 105
  IF ~~ THEN REPLY #95370 /* ~Devils and demons? They're nothing but imps, you wretched fraud!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 106
  IF ~  OR(2)
Global("ohb_205_item_good","global",0)
Global("ohb_205_item_great","global",0)
~ THEN REPLY #95371 /* ~Who would see these fiends beg for mercy? Give me the means and I'll have this entire host on its knees before you!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 107
  IF ~~ THEN REPLY #95372 /* ~Let's just get this over with.~ */ GOTO 108
  IF ~  !Gender(Player1,FEMALE)
~ THEN REPLY #95373 /* ~I see devils and demons each time I look at this accursed audience! If you wish to see the true fiends, look to yourselves!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 109
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #95373 /* ~I see devils and demons each time I look at this accursed audience! If you wish to see the true fiends, look to yourselves!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 275
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #95374 /* ~What nobility! What courage! People of Thay, I give you your champion! Raise your voices and lend your strength, for it will be needed. Let the battle begin!~ [OH95374] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 106 // from: 104.1
  SAY #95375 /* ~I'll reward these "imps" with your prize money when they skewer you. Let the battle begin!~ [OH95375] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 107 // from: 104.2
  SAY #95376 /* ~Imagine it! Demons and devils, begging for mercy! Surely there is one among our benevolent patrons who can help our performer make it happen?~ [OH95376] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 108 // from: 104.3
  SAY #95377 /* ~Yes, let's. Begin!~ [OH95377] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 109 // from: 104.4
  SAY #95378 /* ~He calls us demons and devils! Let this impudent performer face the true demons and devils and fight for survival!~ [OH95378] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 110 // from:
  SAY #95407 /* ~Love hearing heresies? Fascinated with fathoming philosophies? Do you linger at temples listening to the priests debate the merits of their beloved gods and goddesses? If so, you're in for a treat!~ [OH95407] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 111 // from:
  SAY #95408 /* ~Love hearing heresies? Fascinated with fathoming philosophies? Do you linger at temples listening to the priests debate the merits of their beloved gods and goddesses? If so, you're in for a treat!~ [OH95408] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_301","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 112 // from:
  SAY #95409 /* ~Love hearing heresies? Fascinated with fathoming philosophies? Do you linger at temples listening to the priests debate the merits of their beloved gods and goddesses? The adversary of Thay stands ready! Observe!~ [OH95409] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 110.0 111.0 112.0
  SAY #95410 /* ~It is commonly believed that light and darkness constantly war, one against the other. You may be surprised, even shocked, to learn not everyone shares this opinion.~ [OH95410] */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #95411 /* ~The Cult of the Twofold believes that light and darkness both spring from a single goddess, Shar and Selûne combined. If you doubt my words, then believe your eyes, for they stand before you today, ready to fight!~ [OH95411] */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #95412 /* ~But before the clash begins—<CHARNAME>, would you care to address your adoring fans?~ [OH95412] */
  IF ~~ THEN REPLY #95413 /* ~Heresies have no place in Thay! I shall silence this cult's lies forever so all gods-fearing people can worship without fear.~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 116
  IF ~~ THEN REPLY #95414 /* ~Priests and scribes, Dennaton? Ridiculous. I'll try to end this before the crowd falls asleep.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 117
  IF ~  OR(2)
Global("ohb_301_item_good","global",0)
Global("ohb_301_item_great","global",0)
~ THEN REPLY #95415 /* ~Cults often possess relics of untold power. I wonder, do any of you possess some token I might use to thwart this twisted order?~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 118
  IF ~~ THEN REPLY #95416 /* ~I am a <PRO_MANWOMAN> of action! Let the battle begin!~ */ GOTO 119
  IF ~~ THEN REPLY #95417 /* ~I'm not surprised this detestable nation harbors such foul blasphemers. Watch me visit the gods' wrath on these heretics. As I kill them, I think of you.~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 119
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #95418 /* ~Said like a hero heaven-sent to conquer the foes of Thay! Raise your voices! Raise your fists! Cheer for <CHARNAME> as the battle begins!~ [OH95418] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 117 // from: 115.1
  SAY #95419 /* ~You'll require the aid of priests if you continue speaking to me in that way. Let the games begin!~ [OH95419] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 118 // from: 115.2
  SAY #95420 /* ~Aha! Will the good people of Thay leave this performer to face ancient magics without any aid? Come forward! Bestow a gift on this performer and watch the battle unfold!~ [OH95420] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 119 // from: 115.3 115.4
  SAY #95421 /* ~We'll need to work on your speaking skill, <CHARNAME>. But for now, let the games begin!~ [OH95421] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 120 // from:
  SAY #95422 /* ~Have you ever heard such malevolence? Thayans, let this performer hear your displeasure! Raise your voices against them! Let the games... Begin!~ [OH95422] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_301","GLOBAL",2)
DisplayStringHead("ohbsmnk1",95423)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 121 // from:
  SAY #95450 /* ~Greetings, honored guests! Recline in your seats and allow yourselves to be diverted as your hero, <CHARNAME>, fights for your honor!~ [OH95450] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 122 // from:
  SAY #95451 /* ~Greetings, honored guests! Recline in your seats and let this next performer take your troubled minds far from the rigors of your daily responsibilities.~ [OH95451] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_302","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 123 // from:
  SAY #95452 /* ~Greetings, honored guests! Recline in your seats and let the following spectacle take your troubled minds far from the rigors of your daily responsibilities. Let yourselves be diverted as your hated enemy, <CHARNAME>, fights for survival!~ [OH95452] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 121.0 122.0 123.0
  SAY #95453 /* ~I have brought many bizarre and powerful creatures here for your amusement. Great beasts and cunning fighters have graced these pits; powerful magics have released their fury within these walls.~ [OH95453] */
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #95454 /* ~But nothing has prepared you for this evening's spectacle. I bring you the shattering golem!~ [OH95454] */
  IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #95455 /* ~<CHARNAME>. Have you anything to say before we begin?~ [OH95455] */
  IF ~~ THEN REPLY #95456 /* ~I would gladly strike down a hundred golems in my patrons' honor.~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 127
  IF ~~ THEN REPLY #95457 /* ~"Shattering golem"? Are you joking?~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 128
  IF ~  OR(2)
Global("ohb_302_item_good","global",0)
Global("ohb_302_item_great","global",0)
~ THEN REPLY #95458 /* ~My mouth is parched! Had I some fine spirits to moisten my lips, I could promise a fine spectacle!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 129
  IF ~~ THEN REPLY #95459 /* ~I'll save my words for when we're finished.~ */ GOTO 130
  IF ~~ THEN REPLY #95460 /* ~A shattering golem? Only in Thay...~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 131
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #95461 /* ~I daresay you shall have your chance. Let the battle begin!~ [OH95461] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.1
  SAY #95462 /* ~Your mocking tone tempts me to make your next fight your last! Begin the battle.~ [OH95462] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.2
  SAY #95463 /* ~There are no finer spirits to be found anywhere else! Surely there is one among the crowd who can wet the lips of our mighty performer?~ [OH95463] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 126.3
  SAY #95464 /* ~Very well. Pass quietly into obscurity. Let the battle begin!~ [OH95464] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.4
  SAY #95465 /* ~The performer insults our artisans and wizards! This is an outrage! Men and women of Thay, let this scoundrel hear your displeasure. I shall send the villain to <PRO_HISHER> doom without delay. Let the battle begin!~ [OH95465] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_302","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 132 // from:
  SAY #95478 /* ~Your attention, please! Make your way to your seats and prepare to again bear witness to the might and devotion of your beloved champion, <CHARNAME>!~ [OH95478] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 133 // from:
  SAY #95479 /* ~Your attention, please! Make your way to your seats and prepare to bear witness to our next performer, <CHARNAME>!~ [OH95479] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_303","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 134 // from:
  SAY #95480 /* ~Your attention, please! Make your way to your seats and prepare to again bear witness to the depravity and wickedness of the most reviled enemy of Thay, <CHARNAME>!~ [OH95480] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 132.0 133.0 134.0
  SAY #95481 /* ~Conventional wisdom would have you believe death comes for us all. The next combatants defy conventional wisdom.~ [OH95481] */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #95482 /* ~She scoffed at death! I give you the lich Leah Redsun and her undead horrors!~ [OH95482] */
  IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #95483 /* ~But before we begin, have you any words for the audience, <CHARNAME>?~ [OH95483] */
  IF ~~ THEN REPLY #95484 /* ~Death in service to the Thayan people holds no horror for me. My life is yours!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 138
  IF ~~ THEN REPLY #95485 /* ~I shall slay this rotting hedge wizardess and reveal you for the fraud you are, Dennaton!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 139
  IF ~  OR(2)
Global("ohb_303_item_good","global",0)
Global("ohb_303_item_great","global",0)
~ THEN REPLY #95486 /* ~A lich is a powerful foe. Give me something, some item to help me fight it, and I'll end this undead horror for all time!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 140
  IF ~~ THEN REPLY #95487 /* ~None.~ */ GOTO 141
  IF ~~ THEN REPLY #95488 /* ~A lich. Finally, a real wizard in this nation of bumbling poseurs.~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 142
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #95489 /* ~Not even death itself shall sway the champion of Thay! Let the battle begin!~ [OH95489] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 139 // from: 137.1
  SAY #95490 /* ~YOU shall be the only thing rotting with talk like that. Begin!~ [OH95490] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 137.2
  SAY #95491 /* ~The performer speaks the truth! The lich is a powerful foe. I implore anyone with the means to help <CHARNAME> to do so now, before it's too late. Now, let the battle begin!~ [OH95491] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 137.3
  SAY #95492 /* ~I hope your sword is sharper than your wit. Let the battle begin!~ [OH95492] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 142 // from: 137.4
  SAY #95493 /* ~A nation of the greatest wizards in all recorded history are insulted by this vile gladiator! We shall hear no more of your despicable lies. Fight or die!~ [OH95493] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_303","GLOBAL",2)
DisplayStringHead("ohblic01",95494)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 143 // from:
  SAY #95520 /* ~Again, I appear before you as your humble servant and entertainer. And again, I am honored to present the great champion of Thay, <CHARNAME>!~ [OH95520] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 144 // from:
  SAY #95521 /* ~Again, I appear before you as your humble servant—I am honored to present the next great gladiator and entertainer, <CHARNAME>!~ [OH95521] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_304","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 145 // from:
  SAY #95522 /* ~Again, I appear before you, a humble servant and entertainer. And again, I find myself in the regrettable position of introducing the repulsive scourge of Thay, <CHARNAME>!~ [OH95522] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 143.0 144.0 145.0
  SAY #95523 /* ~Now I must warn you, if there are any cat lovers in the audience, they might wish to leave before this next bout. I have scoured the planes to find the pits' next contestants.~ [OH95523] */
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #95524 /* ~You have known the vicious rakshasa as nothing more than a bard's tale, invented to frighten children and entertain their parents. Today, you will see they are very real and very dangerous.~ [OH95524] */
  IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #95525 /* ~But before we begin, do you have anything to say to the audience, <CHARNAME>?~ [OH95525] */
  IF ~~ THEN REPLY #95526 /* ~Do not fear these monstrous creatures, good people of Thay. They shall fall before before me, your champion!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 149
  IF ~~ THEN REPLY #95527 /* ~Pathetic. I'll unmask your so-called rakshasas and reveal them as for the common street thugs they are.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 150
  IF ~  OR(2)
Global("ohb_304_item_good","global",0)
Global("ohb_304_item_great","global",0)
~ THEN REPLY #95528 /* ~People of Thay, I beseech you, give me the means to send cat hair throughout this arena.~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 151
  IF ~~ THEN REPLY #95529 /* ~Nothing springs to mind.~ */ GOTO 152
  IF ~~ THEN REPLY #95530 /* ~Just like Thayans to be frightened by cats.~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 153
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #95531 /* ~Even the most frightened members of the audience will rest easy knowing they have a mighty champion fighting for them. Now, let the games begin!~ [OH95531] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 150 // from: 148.1
  SAY #95532 /* ~I'm tempted to remove more than a mask from you—but for now, I'll settle for the rakshasas exposing your weakness to the audience. Fight!~ [OH95532] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 148.2
  SAY #95533 /* ~Imagine the excitement of this mighty performer vanquishing the horrid rakshasa with YOUR gift! Come, who could resist such an appeal? Now, let the games begin!~ [OH95533] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 148.3
  SAY #95534 /* ~Well, I suggest you bring SOMETHING to mind. The battle is beginning!~ [OH95534] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 153 // from: 148.4
  SAY #95535 /* ~Come, fellow Thayans, let us watch our bitter enemy face certain doom!~ [OH95535] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_304","GLOBAL",2)
DisplayStringHead("ohbrak01",95536)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 154 // from:
  SAY #95563 /* ~Take your seats, steel your nerves, steady your hands, good mistresses and masters of Thay. I give you your champion, <CHARNAME>!~ [OH95563] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 155 // from:
  SAY #95564 /* ~Take your seats, steel your nerves, steady your hands, good mistresses and masters of Thay. I give you... <CHARNAME>!~ [OH95564] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_305","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 156 // from:
  SAY #95565 /* ~Take your seats, steel your nerves, steady your hands, good mistresses and masters of Thay. I reluctantly present you your nemesis, the archenemy of Thay, <CHARNAME>!~ [OH95565] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 157
END

IF ~~ THEN BEGIN 157 // from: 154.0 155.0 156.0
  SAY #95566 /* ~Thayans are an educated and well-read people. Even so, I daresay few among you know of the strange creatures that will battle before you this <DAYNIGHTALL>.~ [OH95566] */
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158 // from: 157.0
  SAY #95567 /* ~From the depths of the Underdark, I have procured the bizarre and alien illithid for your amusement! Yes, the terrible mind flayers shall battle the performer before your very eyes!~ [OH95567] */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #95568 /* ~But before we begin, do you wish to speak, <CHARNAME>?~ [OH95568] */
  IF ~~ THEN REPLY #95569 /* ~My love for Thay will shield my mind from illithid trickery!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 160
  IF ~~ THEN REPLY #95570 /* ~Gluing squids onto some goblins won't fool anyone, Dennaton. You're a sham!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 161
  IF ~  OR(2)
Global("ohb_305_item_good","global",0)
Global("ohb_305_item_great","global",0)
~ THEN REPLY #95571 /* ~Good people of Thay, if I have found any favor in your hearts, please bestow on me some token to aid me in my struggles.~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 162
  IF ~~ THEN REPLY #95572 /* ~I've nothing to say.~ */ GOTO 163
  IF ~~ THEN REPLY #95573 /* ~Mind flayers feed on their victims' minds. My opponents would surely starve to death in the witless nation of Thay. I shall kill them out of mercy.~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 164
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #95574 /* ~Raise your voices, people! Let your cheers be shields against the beguiling attacks of the treacherous mind flayers. Now, commence the battle!~ [OH95574] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 161 // from: 159.1
  SAY #95575 /* ~Squids? Goblins? You shall know the folly of your words soon enough when the illithid devour your feeble mind! Now, let the battle commence!~ [OH95575] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 162 // from: 159.2
  SAY #95576 /* ~How can any right-minded person refuse such a request? Surely this performer has earned the favor of at least one among you! Let the battle commence!~ [OH95576] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.3
  SAY #95577 /* ~Have the mind flayers devoured your brain already? No matter. Let the battle commence!~ [OH95577] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 159.4
  SAY #95578 /* ~Only a fool could look at the marvelous people and cities of Thay and think us witless. Let this fool face the mind flayers' wrath as retribution. Begin!~ [OH95578] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_305","GLOBAL",2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 165 // from:
  SAY #94322 /* ~Come in, come in! Find a place and prepare for a spectacle you shall remember all your life! Raise your voices for the hero of Thay! <CHARNAME>!~ [OH94322] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 166 // from:
  SAY #94323 /* ~Come in, come in! Find a place and prepare for a spectacle you shall remember all your life! Raise your voices and welcome our next performer! <CHARNAME>!~ [OH94323] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_401","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 167 // from:
  SAY #94324 /* ~Come in, come in! Find a place and prepare for a spectacle you shall remember all your life! Raise your voices and curse the nemesis of Thay! <CHARNAME>!~ [OH94324] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 165.0 166.0 167.0
  SAY #94325 /* ~You have seen this performer battle monsters from the Underdark, creatures from other planes, beings from other worlds—ugly and disturbing things. But you'll see no monstrous faces today.~ [OH94325] */
  IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #94326 /* ~Today, you will see the angelic beauty of the celestial realms, fallen from grace and captured for your entertainment. Behold the fallen devas!~ [OH94326] */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.0
  SAY #94327 /* ~Have you any words for the audience before you face your fate, <CHARNAME>?~ [OH94327] */
  IF ~~ THEN REPLY #94328 /* ~These creatures are tainted with evil. I shall remove their stain from this great nation!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 171
  IF ~~ THEN REPLY #94329 /* ~Wenches in parakeet costumes! How much have you bilked these people for, Dennaton?~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 172
  IF ~  OR(2)
Global("ohb_401_item_good","global",0)
Global("ohb_401_item_great","global",0)
~ THEN REPLY #94330 /* ~I wonder, are there any here tonight who possess an item they would see tested against the might of the heavens? Give it to me and I'll shower you with feathers from devas' wings!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 173
  IF ~~ THEN REPLY #94331 /* ~I have no speech prepared.~ */ GOTO 174
  IF ~~ THEN REPLY #94332 /* ~Only Thayans would be so vile as to imprison celestial beings. A day of reckoning is coming, you rephrehensible thugs.~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 175
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #94333 /* ~Do you hear that, people of Thay? The fallen celestials' blemish shall be cleansed away by your champion! Let the battle begin!~ [OH94333] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 172 // from: 170.1
  SAY #94334 /* ~Go to the so-called "wenches," <CHARNAME>. After you've felt their blades, tell me if they are who I say.~ [OH94334] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 170.2
  SAY #94335 /* ~A rare opportunity! Test your gift against the heavens themselves! Make haste, though. The battle's about to begin!~ [OH94335] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 170.3
  SAY #94336 /* ~Do not have a speech prepared? You aren't addressing the Lords of Waterdeep... ah... I mean—let the battle begin!~ [OH94336] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 170.4
  SAY #94337 /* ~You call us vile? This will not stand. Let the battle begin!~ [OH94337] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_401","GLOBAL",2)
DisplayStringHead("OHBCEL01",94338)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 176 // from:
  SAY #94365 /* ~Your attention, please! I, Dennaton, have the distinct honor of bringing before you the hero of Thay! Lords and ladies, I give you... <CHARNAME>!~ [OH94365] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 177 // from:
  SAY #94366 /* ~Your attention, please! I, Dennaton, have the distinct honor of bringing before you the next performer to battle in the pits! <CHARNAME>!~ [OH94366] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_402","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 178 // from:
  SAY #94367 /* ~Your attention, please! I, Dennaton, have the dubious honor of introducing the treacherous enemy of Thay! <CHARNAME>!~ [OH94367] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 176.0 177.0 178.0
  SAY #94368 /* ~There is a place of darkness, a place time itself has forgotten. Deep within the shifting sands of the Anauroch Desert is an ancient and magnificent tower, its spires clawing at the heavens!~ [OH94368] */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #94369 /* ~Within the tower are two wizards rumored to be older than the desert they inhabit, preserved in the immortality of lichdom. Tonight, I present to you... the twin demiliches of Azgoloth!~ [OH94369] */
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #94370 /* ~<CHARNAME>? Have you any words of wisdom for your adoring fans?~ [OH94370] */
  IF ~~ THEN REPLY #94371 /* ~Two liches or two score, I will defeat them all for you, good people of Thay!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 182
  IF ~~ THEN REPLY #94372 /* ~More decrepit arcanists. Surely you people can find better ways to waste your money.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 183
  IF ~  OR(2)
Global("ohb_402_item_good","global",0)
Global("ohb_402_item_great","global",0)
~ THEN REPLY #94373 /* ~People of Thay, if any among you have a powerful weapon to bestow upon me, I promise I will send lich skulls sailing high into the crowd!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 184
  IF ~~ THEN REPLY #94374 /* ~Don't waste time talking.~ */ GOTO 185
  IF ~~ THEN REPLY #94375 /* ~Half-dead senile wizards? Aren't there enough in Thay already?~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 186
END

IF ~~ THEN BEGIN 182 // from: 181.0
  SAY #94376 /* ~Scores of liches! The good champion would face scores for you! Well, we'll start with two and see how <PRO_HESHE> fares. Let the battle begin!~ [OH94376] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 183 // from: 181.1
  SAY #94377 /* ~You'll find that these are quite certainly liches of the most powerful variety—right now!~ [OH94377] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 184 // from: 181.2
  SAY #94378 /* ~Imagine the excitement of having an authentic lich skull! What a souvenir! If you wish to see such a spectacle, then by all means, lend what aid you can to our intrepid performer. And now, let the battle begin!~ [OH94378] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 185 // from: 181.3
  SAY #94379 /* ~Fine. Get out there and FIGHT!~ [OH94379] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 186 // from: 181.4
  SAY #94380 /* ~I've never heard such vile accusations against the marvelous people of Thay! Let this scoundrel face <PRO_HISHER> doom at the twin liches' hands. Begin the battle!~ [OH94380] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_402","GLOBAL",2)
DisplayStringHead("OHBDLI01",94381)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 187 // from:
  SAY #94408 /* ~Do not be alarmed. The sound you hear is not thunder, the shaking of the ground no cataclysm. Things are well in hand. Please find your seats so that I may introduce your champion, the hero of Thay! <CHARNAME>!~ [OH94408] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 188 // from:
  SAY #94409 /* ~Do not be alarmed. The sound you hear is not thunder, the shaking of the ground no cataclysm. Things are well in hand. Please find your seats while I introduce your next entertainer... <CHARNAME>!~ [OH94409] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_403","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 189 // from:
  SAY #94410 /* ~Do not be alarmed. The sound you hear is not thunder, the shaking of the ground no cataclysm. Things are well in hand. Please find your seats while I introduce the wicked, the despised, the loathsome... <CHARNAME>!~ [OH94410] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 187.0 188.0 189.0
  SAY #94411 /* ~Feel the air crackle with energy! Listen to it rumble, as though a mighty tempest were bearing down upon us. Is some mighty storm upon us? No! It is our next combatants!~ [OH94411] */
  IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #94412 /* ~Wiser than the eldest scholar, more powerful than the greatest wizard, and stronger than the greatest warrior. I give you the great dragon Yllaxxia and her offspring, Orluss and Nyzzlar!~ [OH94412] */
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #94413 /* ~But before we begin—<CHARNAME>, do you have any final words for your adoring fans?~ [OH94413] */
  IF ~~ THEN REPLY #94414 /* ~Citizens of Thay, do not fear! My zeal for your good nation will help me vanquish these monsters!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_1")
~ GOTO 193
  IF ~~ THEN REPLY #94415 /* ~Dragons? They're wyrmlings, hardly older than I am.~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 194
  IF ~  OR(2)
Global("ohb_403_item_good","global",0)
Global("ohb_403_item_great","global",0)
~ THEN REPLY #94416 /* ~Help me now, O people of Thay! Bestow upon me a token of your favor that I might paint this arena's walls crimson with dragon blood!~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 195
  IF ~~ THEN REPLY #94417 /* ~A new set of trousers would be nice.~ */ GOTO 196
  IF ~~ THEN REPLY #94418 /* ~I see you fainting like sickly cattle on a hot summer day, Thayans. I slay these monsters to expose you for the weakling cowards you are!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_1")
~ GOTO 197
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY #94419 /* ~Your champion strides forth to face the ancient beasts. Sit back and watch the mightiest monsters in Faerûn battle before you!~ [OH94419] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 194 // from: 192.1
  SAY #94420 /* ~Enough of your insolence! Let the battle begin!~ [OH94420] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 195 // from: 192.2
  SAY #94421 /* ~Not one, but three dragons eviscerated and torn asunder by your very own gift to the performer! Who could resist such an opportunity? Bestow your token of appreciation quickly, and behold the spectacle of this battle! Begin!~ [OH94421] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 196 // from: 192.3
  SAY #94422 /* ~A new set of trousers? What are you...? No matter. Let the battle begin!~ [OH94422] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 197 // from: 192.4
  SAY #94423 /* ~You go too far, <CHARNAME>. I am Thayan as well—ah, I mean, yes! You see this vile performer's hatred of our wonderful nation? Now watch the mongrel cast to <PRO_HISHER> fate. Let the battle begin!~ [OH94423] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_403","GLOBAL",2)
DisplayStringHead("OHBDRAG1",94424)
Wait(2)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
GlobalGT("OHB_HERO","GLOBAL",18)
~ THEN BEGIN 198 // from:
  SAY #95589 /* ~Behold, my generous patrons and patronesses! Behold the most mighty and skilled gladiator of these pits!! Battle-hardened and fierce, yet noble and honorable, it's Thay's champion, <CHARNAME>!~ [OH95589] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
!GlobalGT("OHB_HERO","GLOBAL",18)
!GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 199 // from:
  SAY #95590 /* ~Behold, my generous patrons and patronesses! Behold the most battle-hardened and fierce gladiator the pits have yet produced: <CHARNAME>!~ [OH95590] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_404","GLOBAL",1)
GlobalLT("OHB_HERO","GLOBAL",2)
~ THEN BEGIN 200 // from:
  SAY #95591 /* ~Behold, my generous patrons and patronesses! Behold the pitiless, the vicious, the arrogant archnemesis of Thay, <CHARNAME>!~ [OH95591] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ GOTO 201
END

IF ~~ THEN BEGIN 201 // from: 198.0 199.0 200.0
  SAY #95592 /* ~You have seen them vanquish beasts from the Underdark, from the depths of the seas, from the reaches of other planes of existence. This performer has defeated wizards, liches, even dragons ancient as the world itself!~ [OH95592] */
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY #95593 /* ~You have seen all things, mortal and immortal, but there is one thing you have yet to experience... the power of the gods themselves!~ [OH95593] */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #95594 /* ~YES! People of Thay, I give you the offspring of Bhaal himself, with their faithful cultists, here to battle to the bitter death!~ [OH95594] */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #95596 /* ~You've had the opportunity to address the audience many times, performer. This may be your last. Have you anything to say?~ [OH95596] */
  IF ~~ THEN REPLY #95597 /* ~The Thayan peoples' devotion and love gives me the strength to overcome even those whose veins course with the blood of gods!~ */ DO ~SetGlobal("ohb_raise_hero_score","global",1)
PlaySound("BP2POS_5")
~ GOTO 205
  IF ~~ THEN REPLY #95598 /* ~Gods? These are men and women. I'll cut their flesh and shatter their bones, proving Dennaton's fraud!~ */ DO ~IncrementGlobal("OHB_ANTI_DENNATON","GLOBAL",1)
~ GOTO 206
  IF ~  OR(2)
Global("ohb_404_item_good","global",0)
Global("ohb_404_item_great","global",0)
~ THEN REPLY #95599 /* ~Am I to face the power of the gods themselves unaided? Have I not won favor enough to be granted some token of appreciation to bolster me in my darkest hour?~ */ DO ~SetGlobal("ohb_item_reward","global",1)
~ GOTO 207
  IF ~~ THEN REPLY #95600 /* ~I have no words left for the crowd.~ */ GOTO 208
  IF ~~ THEN REPLY #95601 /* ~The Bhaalspawn and their cultists will fall! And the people of Thay will join them soon after!~ */ DO ~SetGlobal("ohb_raise_villain_score","global",1)
PlaySound("BP2NEG_3")
~ GOTO 209
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #95602 /* ~This claim will be put to the ultimate test! Prepare yourself! The battle begins!~ [OH95602] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 206 // from: 204.1
  SAY #95603 /* ~I swear, even if you prevail here, you will suffer a slow and painful death by my hand. Now, fight and die!~ [OH95603] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 207 // from: 204.2
  SAY #95604 /* ~Surely not! People of Thay, show your generosity to this humble performer! Give <PRO_HIMHER> aid in this time of need! Now, let the battle begin!~ [OH95604] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 208 // from: 204.3
  SAY #95605 /* ~No more words for the crowd? Perhaps I have no coin for you... Begin the battle!~ [OH95605] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 209 // from: 204.4
  SAY #95606 /* ~Steady yourselves, my guests. Take your seats and do not be afraid. You will not be harmed. After this battle, <CHARNAME> will be... dealt with.~ [OH95606] */
  IF ~~ THEN DO ~AddJournalEntry(94819,INFO)
StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
SetGlobal("OHB_404","GLOBAL",2)
DisplayStringHead("OHBBCLT1",95607)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_101","GLOBAL",2)
~ THEN BEGIN 210 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_101","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN DO ~SetGlobal("OHB_101","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",101)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(11000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_102","GLOBAL",2)
~ THEN BEGIN 211 // from:
  SAY #96047 /* ~The champions of Baeloth's Pits have won!~ [OH96047] */
  IF ~~ THEN DO ~SetGlobal("OHB_102","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(750)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN DO ~SetGlobal("OHB_102","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",102)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(12000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_103","GLOBAL",2)
~ THEN BEGIN 212 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_103","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(1000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN DO ~SetGlobal("OHB_103","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",103)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(13000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_104","GLOBAL",2)
~ THEN BEGIN 213 // from:
  SAY #96047 /* ~The champions of Baeloth's Pits have won!~ [OH96047] */
  IF ~~ THEN DO ~SetGlobal("OHB_104","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(1250)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN DO ~SetGlobal("OHB_104","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",104)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(14000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_105","GLOBAL",2)
~ THEN BEGIN 214 // from:
  SAY #96048 /* ~A victory worthy of the epics!~ [OH96048] */
  IF ~~ THEN DO ~SetGlobal("OHB_105","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(1500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN DO ~SetGlobal("OHB_105","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",105)
SetGlobal("ohb_battle_xp_award","global",500000)
GiveGoldForce(15000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_201","GLOBAL",2)
~ THEN BEGIN 215 // from:
  SAY #96047 /* ~The champions of Baeloth's Pits have won!~ [OH96047] */
  IF ~~ THEN DO ~SetGlobal("OHB_201","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(2000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN DO ~SetGlobal("OHB_201","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",201)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(16000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_202","GLOBAL",2)
~ THEN BEGIN 216 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_202","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(2500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN DO ~SetGlobal("OHB_202","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",202)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(17000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_203","GLOBAL",2)
~ THEN BEGIN 217 // from:
  SAY #96047 /* ~The champions of Baeloth's Pits have won!~ [OH96047] */
  IF ~~ THEN DO ~SetGlobal("OHB_203","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(3000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN DO ~SetGlobal("OHB_203","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",203)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(18000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_204","GLOBAL",2)
~ THEN BEGIN 218 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_204","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(3500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN DO ~SetGlobal("OHB_204","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",204)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(19000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_205","GLOBAL",2)
~ THEN BEGIN 219 // from:
  SAY #96048 /* ~A victory worthy of the epics!~ [OH96048] */
  IF ~~ THEN DO ~SetGlobal("OHB_205","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(4000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN DO ~SetGlobal("OHB_205","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",205)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(20000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_301","GLOBAL",2)
~ THEN BEGIN 220 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_301","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(4500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN DO ~SetGlobal("OHB_301","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",301)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(21000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_302","GLOBAL",2)
~ THEN BEGIN 221 // from:
  SAY #96047 /* ~The champions of Baeloth's Pits have won!~ [OH96047] */
  IF ~~ THEN DO ~SetGlobal("OHB_302","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(5000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN DO ~SetGlobal("OHB_302","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",302)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(22000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_303","GLOBAL",2)
~ THEN BEGIN 222 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_303","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(5500)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN DO ~SetGlobal("OHB_303","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",303)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(23000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_304","GLOBAL",2)
~ THEN BEGIN 223 // from:
  SAY #96047 /* ~The champions of Baeloth's Pits have won!~ [OH96047] */
  IF ~~ THEN DO ~SetGlobal("OHB_304","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(6000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN DO ~SetGlobal("OHB_304","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",304)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(24000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_305","GLOBAL",2)
~ THEN BEGIN 224 // from:
  SAY #96048 /* ~A victory worthy of the epics!~ [OH96048] */
  IF ~~ THEN DO ~SetGlobal("OHB_305","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(7000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN DO ~SetGlobal("OHB_305","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",305)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(25000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_401","GLOBAL",2)
~ THEN BEGIN 225 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_401","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(8000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN DO ~SetGlobal("OHB_401","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",401)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(26000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_402","GLOBAL",2)
~ THEN BEGIN 226 // from:
  SAY #96047 /* ~The champions of Baeloth's Pits have won!~ [OH96047] */
  IF ~~ THEN DO ~SetGlobal("OHB_402","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(9000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN DO ~SetGlobal("OHB_402","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",402)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(27000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_403","GLOBAL",2)
~ THEN BEGIN 227 // from:
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~SetGlobal("OHB_403","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(10000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN DO ~SetGlobal("OHB_403","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",403)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(28000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_404","GLOBAL",2)
~ THEN BEGIN 228 // from:
  SAY #96048 /* ~A victory worthy of the epics!~ [OH96048] */
  IF ~~ THEN DO ~SetGlobal("OHB_404","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(11000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN DO ~SetGlobal("OHB_404","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",404)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(29000)
SetGlobal("ohb_cutscene_exit","global",1)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 229 // from:
  SAY #100555 /* ~You've really made a mess of things, <CHARNAME>. You could've had wealth, glory, immortality... Instead, you will die, your body dumped in an unmarked grave. And for what?~ [OH100555] */
  IF ~~ THEN REPLY #100576 /* ~Better to die free than live a slave.~ */ DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 232
  IF ~~ THEN REPLY #100577 /* ~I'm not dead yet, Dennaton.~ */ DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 230
  IF ~~ THEN REPLY #100578 /* ~Big words, Dennaton. And very nearly your last.~ */ DO ~SetGlobal("ohb_finale","global",7)
~ GOTO 231
END

IF ~~ THEN BEGIN 230 // from: 229.1
  SAY #100557 /* ~That will be rectified soon enough.~ [OH100557] */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 231 // from: 229.2
  SAY #100558 /* ~Have you learned nothing? This is MY arena. My word is law here!~ [OH100558] */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 232 // from: 229.0 230.0 231.0
  SAY #100559 /* ~Your fate remains the same as it always has been. You will die at MY command for the amusement of THIS crowd.~ [OH100559] */
  IF ~~ THEN REPLY #100579 /* ~Ah, yes, the crowd! You were always so eager for me to address my "adoring fans." May I do so now?~ */ GOTO 233
  IF ~~ THEN REPLY #100580 /* ~We'll see.~ */ GOTO 238
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #100560 /* ~Oh, by all means. Please, enlighten us!~ [OH100560] */
  IF ~  PartyHasItem("OHBBOOK6")
~ THEN REPLY #100581 /* ~Tell me, Dennaton, do the people here know you and Szass Tam conspire to eliminate a tharchion and elevate you in his place?~ */ GOTO 234
  IF ~~ THEN REPLY #100582 /* ~All of you should know this arena is through. You will witness the final battle to occur here. This time, the prize is freedom—not just for me, but for all those below. And my final opponent is Dennaton!~ */ GOTO 237
  IF ~~ THEN REPLY #100583 /* ~I hope none of you bought a lifetime membership to this arena. When I gut this pig, the pits will be out of business.~ */ GOTO 237
  IF ~~ THEN REPLY #100584 /* ~Listen to me, scum! I'm a generous <PRO_MANWOMAN>. I'll give you exactly as much time as it takes to kill Dennaton to flee. Anyone here after I'm finished will join him in the grave!~ */ GOTO 237
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #100561 /* ~Such pathetic lies will not save you, <CHARNAME>.~ [OH100561] */
  IF ~~ THEN REPLY #100585 /* ~Lies? It's all here in this journal.~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #100562 /* ~Where did you get that?! I mean—I've never seen that journal in my entire life! It's a forgery!~ [OH100562] */
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #100563 /* ~No, my adoring patrons, please! I would NEVER conspire against a tharchion! Do not believe the lies of a desperate <PRO_MANWOMAN>!~ [OH100563] */
  IF ~~ THEN REPLY #100586 /* ~When you're gone, Dennaton, I shall release this journal. I will destroy your body, your name, your reputation—everything that's ever mattered to you.~ */ GOTO 237
  IF ~~ THEN REPLY #100587 /* ~It is no forgery, Dennaton, but it IS the work of a fraud.~ */ GOTO 237
  IF ~~ THEN REPLY #100588 /* ~You know better than that, Dennaton, but I suppose it doesn't matter to you. Things like journals and reputations mean little to the dead.~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 233.1 233.2 233.3 236.0 236.1 236.2
  SAY #100564 /* ~A pretty speech, but words are of little consequence here.~ [OH100564] */
  IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 238 // from: 232.1 237.0
  SAY #100565 /* ~Tell me, how did you coordinate this little rebellion? Who helped you?~ [OH100565] */
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY #100589 /* ~Trying to stall, Dennaton? It won't work.~ */ DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY #100590 /* ~Brodle helped me.~ */ GOTO 239
  IF ~~ THEN REPLY #100591 /* ~I couldn't have done it without Tartle.~ */ GOTO 239
  IF ~~ THEN REPLY #100592 /* ~I acted alone.~ */ GOTO 239
  IF ~~ THEN REPLY #100593 /* ~You'll die never knowing.~ */ GOTO 239
END

IF ~~ THEN BEGIN 239 // from: 238.1 238.2 238.3 238.4
  SAY #100566 /* ~Very interesting. And what do you plan to do with your freedom once you win it?~ [OH100566] */
  IF ~  CheckStatGT(Player1,14,WIS)
~ THEN REPLY #100594 /* ~Trying to stall me won't save you, scum.~ */ DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY #100595 /* ~I will return to a life of adventure.~ */ GOTO 240
  IF ~~ THEN REPLY #100596 /* ~Settle down and build a family.~ */ GOTO 240
  IF ~~ THEN REPLY #100597 /* ~Find somewhere to ply my trade and build a career.~ */ GOTO 240
  IF ~~ THEN REPLY #100598 /* ~I'll dance on your grave for a start.~ */ GOTO 240
END

IF ~~ THEN BEGIN 240 // from: 239.1 239.2 239.3 239.4
  SAY #100567 /* ~Did you enjoy any of your matches here?~ [OH100567] */
  IF ~  CheckStatGT(Player1,12,WIS)
~ THEN REPLY #100599 /* ~Enough stalling, Dennaton. It's over.~ */ DO ~SetGlobal("OHB_DENNA_STALL","LOCALS",1)
~ GOTO 242
  IF ~~ THEN REPLY #100602 /* ~I enjoyed pitting myself against some of your tougher acts, like the liches or those little Bhaalspawns.~ */ GOTO 241
  IF ~~ THEN REPLY #100603 /* ~No sane <PRO_MANWOMAN> enjoys fighting for survival. Let's see how you like it.~ */ GOTO 241
  IF ~~ THEN REPLY #100604 /* ~I expect I'll enjoy this last one.~ */ GOTO 241
END

IF ~~ THEN BEGIN 241 // from: 240.1 240.2 240.3
  SAY #100568 /* ~I see. Very helpful. Now, what else would I like to know...?~ [OH100568] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut24")
~ EXTERN ~IMOEN2~ 0
END

IF ~~ THEN BEGIN 242 // from: 238.0 239.0 240.0
  SAY #100569 /* ~I'm not stalling. You fascinate me, truly.~ [OH100569] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcut24")
~ EXTERN ~IMOEN2~ 0
END

IF ~  Global("ohb_finale","global",7)
!Global("OHB_DENNA_STALL","LOCALS",1)
~ THEN BEGIN 243 // from:
  SAY #100570 /* ~FINALLY! It took you long enough!~ [OH100570] */
  IF ~~ THEN GOTO 245
END

IF ~  Global("ohb_finale","global",7)
Global("OHB_DENNA_STALL","LOCALS",1)
~ THEN BEGIN 244 // from:
  SAY #100571 /* ~FINALLY! It took you long enough! You were right, <CHARNAME>, I was stalling you.~ [OH100571] */
  IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245 // from: 243.0 244.0
  SAY #100572 /* ~Did you get the tarrasque, planetar? Is it here?~ [OH100572] */
  IF ~~ THEN EXTERN ~OHBWING~ 1
END

IF ~~ THEN BEGIN 246 // from:
  SAY #100574 /* ~We can handle our differences later, Winged. There's a much more immediate problem to deal with.~ [OH100574] */
  IF ~~ THEN EXTERN ~OHBWING~ 2
END

IF ~  Global("OHB_ENDGAME","GLOBAL",2)
Global("OHB_DENN_END","LOCALS",0)
AreaCheck("OH8100")
~ THEN BEGIN 247 // from:
  SAY #94276 /* ~We need to be away from here. Your Planar Hunters failed. Our arena's in disarray!~ [OH94276] */
  IF ~~ THEN DO ~SetGlobal("OHB_DENN_END","LOCALS",1)
~ EXTERN ~OHBSZASS~ 0
END

IF ~~ THEN BEGIN 248 // from:
  SAY #94278 /* ~You want my head on the floor beside the Winged's? We have plans. If I'm dead, how can I help you eliminate Aznar—~ [OH94278] */
  IF ~~ THEN EXTERN ~OHBSZASS~ 1
END

IF ~~ THEN BEGIN 249 // from:
  SAY #94280 /* ~But—~ [OH94280] */
  IF ~~ THEN EXTERN ~OHBSZASS~ 2
END

IF ~~ THEN BEGIN 250 // from:
  SAY #94282 /* ~Wait—~ [OH94282] */
  IF ~~ THEN EXTERN ~OHBSZASS~ 3
END

IF ~~ THEN BEGIN 251 // from:
  SAY #90527 /* ~He was right, Tartle! I don't have all day!~ [OH90527] */
  IF ~~ THEN EXTERN ~OHBTARTL~ 76
END

IF ~~ THEN BEGIN 252 // from:
  SAY #90529 /* ~Silence, fool!~ [OH90529] */
  IF ~~ THEN EXTERN ~OHBTARTL~ 77
END

IF ~~ THEN BEGIN 253 // from:
  SAY #90531 /* ~As Tartle said, I am Dennaton. I own the arena you are now a part of—a very special arena. This is no pit filled with poorly trained slaves stabbing each other for the amusement of the lowborn.~ [OH90531] */
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #90532 /* ~No, this arena, MY arena, is unique. There is nothing like it in all of Faerûn.~ [OH90532] */
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #90533 /* ~Each of you has been chosen because each of you is a legend. You are among the greatest warriors, assassins, and archmages the world has ever known.~ [OH90533] */
  IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256 // from: 255.0
  SAY #90534 /* ~Your fame will attract those elements of Thayan society that truly matter to my arena. The entertainment you provide will let me turn THEIR wealth into MY wealth.~ [OH90534] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 257 // from: 0.1 0.2
  SAY #90539 /* ~Well, if you absolutely refuse to fight, I'll have little choice but to kill you. But I'm sure you want this arena to succeed as much as I do. So I'll focus on the positive rather than the negative.~ [OH90539] */
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258 // from: 257.0
  SAY #90541 /* ~Anything you want you will receive. Any culinary treat you crave, any entertainment, no matter how obscure or depraved. Gold, silver, gems... Anything from the four corners of Faerûn I can bring here for you... provided you hold up your end of the bargain.~ [OH90541] */
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 1.0 258.0
  SAY #90543 /* ~For most fights, you'll be pitted against useless fodder. A few ogres, perhaps, or a group of Cormyrian criminals I "rescued" from the gallows.~ [OH90543] */
  IF ~~ THEN GOTO 260
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #90544 /* ~You'll easily win, but your job is to put on a show. Suck the audience in. Make your opponents' deaths as entertaining as possible! Play with them. Disembowel them in a new and inventive way that displays your expert swordplay and really shows your creativity. Have fun with it! If you enjoy the slaughter, the audience will too!~ [OH90544] */
  IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #90545 /* ~Now allow me to introduce you to each other.~ [OH90545] */
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #90546 /* ~First, hailing from the Ten Towns, we have the mighty warrior Voghiln "the Vast"!~ [OH90546] */
  IF ~~ THEN EXTERN ~OHBVOGHI~ 66
END

IF ~~ THEN BEGIN 263 // from:
  SAY #90550 /* ~Excellent! And over here, we have a man of the gods and FOR the people! A man for whom battle and honor are not just words, but a way of life. Yes, it's Timmoth "The Champion" Goodtree!~ [OH90550] */
  IF ~~ THEN EXTERN ~OHBTIMMO~ 70
END

IF ~~ THEN BEGIN 264 // from:
  SAY #90552 /* ~THAT'S the spirit, Timmoth. Play that "destroy the heathens" angle up a bit! The crowds will suck it in! Next up is a man of the cloth. A man whose love of Lathander burns bright as the emerging dawn, yet one who yearns to see the wretched cast into the darkness of the Abyss. I give you Brother Ellraish of the Sun Soul!~ [OH90552] */
  IF ~~ THEN EXTERN ~OHBELLRA~ 31
END

IF ~~ THEN BEGIN 265 // from:
  SAY #90554 /* ~We could all benefit from such—well, let's call it wisdom.~ [OH90554] */
  IF ~~ THEN EXTERN ~OHBELLRA~ 32
END

IF ~~ THEN BEGIN 266 // from:
  SAY #90556 /* ~Rrrright.~ [OH90556] */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY #90557 /* ~Next, we have a woman eager to be judge, jury... and EXECUTIONER! Equally happy protecting the weak and PUNISHING THE GUILTY! A woman whose name is so great, she needs no nickname. It's Mercy Whitedove!~ [OH90557] */
  IF ~~ THEN EXTERN ~OHBMERCY~ 44
END

IF ~~ THEN BEGIN 268 // from:
  SAY #90559 /* ~Think of yourselves as my guests, my dear, and of the arena as... an inn. An inn for people who fight and kill others for money and entertainment.~ [OH90559] */
  IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #90560 /* ~Next is a wizard of deceptive power. His aging body may seem past its prime, but his mind is sharp as any blade. I give you Dulf "The Ancient Threat" Ebonbeard!~ [OH90560] */
  IF ~~ THEN EXTERN ~OHBDULF~ 67
END

IF ~~ THEN BEGIN 270 // from: 3.1 4.0 5.0 6.0
  SAY #90572 /* ~Right, with that cleared up, we can turn to the show itself. As a great bard once said, "All the world's a stage, and all of us merely players! Each of us in our time will play many parts!"~ [OH90572] */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271 // from: 270.0
  SAY #90573 /* ~So now we decide which part each of you shall play. Our main star will be <CHARNAME>, who is already well known as a champion of the arena.~ [OH90573] */
  IF ~~ THEN EXTERN ~OHBFELDR~ 41
END

IF ~~ THEN BEGIN 272 // from:
  SAY #94237 /* ~Oh, by the Nine Hells, why do you interrupt me?! Have I ever not paid before? You'll get your money. Now—~ [OH94237] */
  IF ~~ THEN EXTERN ~OHBWING~ 4
END

IF ~~ THEN BEGIN 273 // from:
  SAY #94239 /* ~I can't get it right now! There's a match about to start. Immediately afterwards, I'll—~ [OH94239] */
  IF ~~ THEN EXTERN ~OHBWING~ 5
END

IF ~~ THEN BEGIN 274 // from:
  SAY #94241 /* ~Of course, you—~ [OH94241] */
  IF ~~ THEN DO ~SetGlobal("OHB_EVENT_105","MYAREA",1)
SetCutSceneLite(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 275 // from: 104.5
  SAY #103097 /* ~She calls us demons and devils! Let this impudent performer face the true demons and devils and fight for survival!~ [OH103097] */
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("OHB_START_BATTLE","GLOBAL",4)
Wait(2)
MoveViewPoint([1269.966],INSTANT)
DisplayStringHead("ohbdev01",95379)
SetGlobal("OHB_205","GLOBAL",2)
Wait(1)
UnhideGUI()
EndCutSceneMode()
~ EXIT
END
