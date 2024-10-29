// creator  : weidu (version 24900)
// argument : OHBBELLO.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBBELLO~

IF ~  Global("OHB_TALKED_BELLOWGULP","GLOBAL",0)
~ THEN BEGIN 0
  SAY @28 /* Greetin's. *Achoo!* *sniff* How may I... W-wait a second. Do I know you? */
  IF ~~ THEN REPLY @29 /* Bellowgulp! It's me, <CHARNAME>! What are you doing here? */ DO ~SetGlobal("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY @30 /* I'm not really sure. Who are you? */ DO ~SetGlobal("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY @31 /* Great. The deranged gnome and his pet mushroom. What's your name again? Buttgoop? */ DO ~SetGlobal("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 1
  SAY @32 /* *Achoo!* Bellowgulp Bluefingers is my name, and this here is the Concocter. We were imprisoned with you in Baeloth's Pits. */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @33 /* We set up shop brewin' potions, just like always. *Achoo!* Potions to make ya stronger, quicker, and smarter. We even have potions to catch the eye of the ladies or the gentlemen! */
  IF ~~ THEN REPLY @34 /* Quite a sales pitch. I'll have a look. */ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @35 /* Maybe later, Bellowgulp. I need to be off. */ GOTO 4
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY @36 /* I need something to stabilize Dulf Ebonbeard's mind. */ GOTO 14
  IF ~~ THEN REPLY @37 /* May I ask you a few questions? */ GOTO 5
  IF ~~ THEN REPLY @38 /* I'll not buy potions made by an oversized toadstool. */ GOTO 22
END

IF ~~ THEN BEGIN 3
  SAY @39 /* Hah! Couldn't have said it better myself, Concocter, though I doubt even a troll would birth somethin' as rude as THIS performer. Now listen, you. You'd best be polite to us merchants or you'll never get the gear you'll need to survive. *Achoo!* */
  IF ~~ THEN REPLY @40 /* Sorry, Bellowgulp. I was trying to make a joke, but... Well, let's change the subject. */ GOTO 9
  IF ~~ THEN REPLY @41 /* I'm sorry. I'll leave you be. */ GOTO 4
  IF ~~ THEN REPLY @42 /* As if I'd need your impotent brews. */ GOTO 22
END

IF ~~ THEN BEGIN 4
  SAY @43 /* Come back if you need potions of any sort. *Achoo!* */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @44 /* I'm always happy to reminisce with an old friend such as yerself. *Achoo!* */
  IF ~~ THEN REPLY @45 /* What's with the sneezing? */ GOTO 6
  IF ~~ THEN REPLY @46 /* How'd you end up here? */ GOTO 24
  IF ~~ THEN REPLY @47 /* Why does the cook keep looking at the Concocter that way? */ GOTO 28
  IF ~~ THEN REPLY @48 /* May I see your wares? */ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @49 /* Never mind. I must be leaving. */ GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @50 /* Oh, that. Well, as you may remember from our meetin' in Baeloth's pit, the Concocter communicates by releasin' spores. It seems I've developed an allergy to *achoo!* them. *Achoo!* */
  IF ~~ THEN REPLY @51 /* That's... awkward. Let's speak of something else. */ GOTO 9
  IF ~~ THEN REPLY @52 /* Yeah, I'll just be going now. */ GOTO 4
  IF ~~ THEN REPLY @53 /* That's hilarious! You deserve it for having such a creepy friend. */ GOTO 22
END

IF ~~ THEN BEGIN 7
  SAY @54 /* When the spores reached my nose, I started sneezin' uncontrollably. I sneezed so hard I did a full backflip and landed face down on top of the Concocter. The hunters thought it was so funny they decided to keep us alive and bring us here. *Achoo!* */
  IF ~~ THEN REPLY @55 /* At least they let you live. I'd like to see your wares now, if I may. */ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @56 /* Better alive than dead, I suppose. I'll be going now. */ GOTO 4
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY @36 /* I need something to stabilize Dulf Ebonbeard's mind. */ GOTO 14
  IF ~~ THEN REPLY @57 /* Let's discuss something else. */ GOTO 9
  IF ~~ THEN REPLY @58 /* A cowardly myconid and an acrobatic svirfneblin? You two should be in a circus. */ GOTO 22
END

IF ~~ THEN BEGIN 8
  SAY @59 /* Anyway, the cook liked the stew so much he's been tryin' to convince Dennaton to let him cook the rest of the Concocter ever since. Wretched dwarf! *Achoo!* */
  IF ~~ THEN REPLY @60 /* Disgusting... Ah, well. Let's see your wares. */ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @61 /* At least he hasn't succeeded yet. I must be going now. */ GOTO 4
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY @36 /* I need something to stabilize Dulf Ebonbeard's mind. */ GOTO 14
  IF ~~ THEN REPLY @62 /* Perhaps we could discuss something else. ANYthing else. */ GOTO 9
  IF ~~ THEN REPLY @63 /* Myconid stew. Sounds like a treat. */ GOTO 22
END

IF ~  OR(2)
Global("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ THEN BEGIN 9
  SAY @64 /* How may I help ya? *Achoo!* */
  IF ~~ THEN REPLY @48 /* May I see your wares? */ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @65 /* May I ask you some questions? */ GOTO 10
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY @36 /* I need something to stabilize Dulf Ebonbeard's mind. */ GOTO 14
  IF ~  Global("OHB_COOK_MUSHROOM","GLOBAL",1)
~ THEN REPLY @66 /* I was wondering if I could have a piece of the Concocter for the cook's stew. */ GOTO 19
  IF ~  OR(2)
Global("OHB_COOK_POISON","GLOBAL",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY @67 /* Do you think the Concocter could make something... special for me? */ GOTO 11
  IF ~  Global("OHB_COOK_POISON","GLOBAL",1)
PartyHasItem("OHBPTN01")
~ THEN REPLY @68 /* I have a potion of barkskin. Could you make it into powdered funguswood? */ GOTO 17
  IF ~~ THEN REPLY @49 /* Never mind. I must be leaving. */ GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY @69 /* O' course! Ask away! */
  IF ~~ THEN REPLY @45 /* What's with the sneezing? */ GOTO 6
  IF ~~ THEN REPLY @46 /* How'd you end up here? */ GOTO 24
  IF ~~ THEN REPLY @47 /* Why does the cook keep looking at the Concocter that way? */ GOTO 28
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @70 /* Don't you think Dennaton should be compensating you for your services? */ GOTO 15
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY @70 /* Don't you think Dennaton should be compensating you for your services? */ GOTO 16
  IF ~~ THEN REPLY @49 /* Never mind. I must be leaving. */ GOTO 4
END

IF ~~ THEN BEGIN 11
  SAY @71 /* Perhaps. What would be the purpose of this "somethin' special"? */
  IF ~  Global("OHB_COOK_POISON","GLOBAL",1)
~ THEN REPLY @72 /* I need some powdered funguswood. */ EXTERN ~OHBCONCO~ 2
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_BELLO_POISON","GLOBAL",0)
~ THEN REPLY @73 /* I'm trying to poison Joker. */ EXTERN ~OHBCONCO~ 11
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY @36 /* I need something to stabilize Dulf Ebonbeard's mind. */ GOTO 14
  IF ~~ THEN REPLY @74 /* On second thought, I changed my mind. I must be going. */ GOTO 4
  IF ~~ THEN REPLY @75 /* Pretty nosy for a gnome. Forget it. You Underdark types make me nervous. */ GOTO 22
END

IF ~~ THEN BEGIN 12
  SAY @76 /* The Concocter says it'll be hard to get. It won't come cheap. It'll cost 750 gold pieces and require a potion of barkskin. *Achoo!* */
  IF ~~ THEN REPLY @77 /* I'll return when I have the potion and the gold. */ EXIT
  IF ~~ THEN REPLY @78 /* Potion of barkskin? Where can I find that? */ GOTO 13
  IF ~  PartyHasItem("OHBPTN01")
~ THEN REPLY @79 /* I have a potion of barkskin right here. */ GOTO 17
  IF ~~ THEN REPLY @80 /* The potion-maker needs a potion? That doesn't speak highly of your skills, does it? */ GOTO 22
END

IF ~~ THEN BEGIN 13
  SAY @81 /* I've seen some around. One of the other merchants, or maybe the priests, might have a bottle or two. */
  IF ~~ THEN DO ~SetGlobal("ohb_barkskin_potion","oh8100",1)
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @82 /* What you need is the salve of senile serenity. The Concocter can brew one for only 100 gold pieces. */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @83 /* Very well, here you go. */ DO ~TakePartyGold(100)
GiveItemCreate("OHBPTN02",LastTalkedToBy(Myself),1,0,0)
~ EXIT
  IF ~  !PartyGoldGT(99)
~ THEN REPLY @84 /* I don't have that much gold at the moment. I'll have to return later. */ GOTO 4
  IF ~~ THEN REPLY @74 /* On second thought, I changed my mind. I must be going. */ GOTO 4
  IF ~~ THEN REPLY @85 /* 100 gold pieces? YOU're senile if you think I'm spending that much on your stupid salve! */ GOTO 22
END

IF ~~ THEN BEGIN 15
  SAY @86 /* Maybe you're right. *Achoo!* We do provide the finest potions in all Faerûn. I'll take the matter up with him. */
  IF ~~ THEN DO ~AddJournalEntry(90953,QUEST_DONE)
EraseJournalEntry(90952)
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @87 /* Oh, I don't know. We're captives here, after all. I don't want to anger Dennaton. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @88 /* 750 gold pieces, please. */
  IF ~  PartyGoldGT(749)
~ THEN REPLY @89 /* Here you go. */ DO ~AddJournalEntry(90956,QUEST)
TakePartyGold(750)
TakePartyItem("OHBPTN01")
DestroyItem("OHBPTN01")
GiveItemCreate("OHBCOM01",LastTalkedToBy(Myself),0,0,0)
~ EXIT
  IF ~  !PartyGoldGT(749)
~ THEN REPLY @84 /* I don't have that much gold at the moment. I'll have to return later. */ GOTO 4
  IF ~~ THEN REPLY @90 /* If I told you it was to poison the cook, would you do it for free? */ EXTERN ~OHBCONCO~ 3
  IF ~~ THEN REPLY @91 /* You've been drinking too many of your own potions if you think I'm paying that much. */ GOTO 22
END

IF ~~ THEN BEGIN 18
  SAY @92 /* *Achoo!* The Concocter says it would be a pleasure. Keep your gold and get that crazy dwarf. Here you go. */
  IF ~~ THEN DO ~AddJournalEntry(90956,QUEST)
GiveItemCreate("OHBCOM01",LastTalkedToBy(Myself),0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @93 /* WHAT? The Concocter is not just a walkin' ingredient for the cook's stewpot! He's a close personal friend an' a master of potion-makin'! *Achoo!* */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY @94 /* Maybe if the cook had a little more, he'd stop trying to get ALL the Concocter. */ GOTO 30
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY @94 /* Maybe if the cook had a little more, he'd stop trying to get ALL the Concocter. */ GOTO 20
  IF ~  PartyGoldGT(999)
~ THEN REPLY @95 /* I'll give you 1,000 gold pieces... */ GOTO 32
  IF ~~ THEN REPLY @96 /* My apologies, Bellowgulp. Just a little joke. I'll be going now. */ GOTO 4
  IF ~~ THEN REPLY @97 /* C'mon, Bellowgulp, you can't tell me you've never wanted just a nibble. */ GOTO 22
END

IF ~~ THEN BEGIN 20
  SAY @98 /* Absolutely not. That dwarf is mad, and he's not getting even a piece of my good friend! *Achoo!* */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @99 /* Bellowgulp Bluefingers. There's no call to be rude. */
  IF ~~ THEN EXTERN ~OHBCONCO~ 4
END

IF ~~ THEN BEGIN 22
  SAY @100 /* Fine! Insult us! You'll come back, and when ya do, don't be surprised when the Concocter spits in your potions! */
  IF ~~ THEN EXTERN ~OHBCONCO~ 5
END

IF ~~ THEN BEGIN 23
  SAY @101 /* What do you mean, "myconids can't spit"? Fine. I'll spit in the potions myself, then. Now goodbye! *Achoo!* */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY @102 /* That's quite a tale! The Concocter and I were searchin' for gems and potion ingredients near the Underdark city of Blingdenstone. Suddenly, that winged thing's hunters surrounded us. Still makes me shudder. *Achoo!* */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @103 /* One of 'em, a wretched half-elf known as Joker, struck the Concocter on the back o' the stem and injured 'im. *Achoo!* I leapt to my friend's defense. My svirfneblin rage forced the hunters to take us alive. *Achoo!* */
  IF ~~ THEN DO ~AddJournalEntry(90952,QUEST)
~ EXTERN ~OHBCONCO~ 6
END

IF ~~ THEN BEGIN 26
  SAY @104 /* What do ya mean, "Tell them the real story?" That WAS the real story! *Achoo!* */
  IF ~~ THEN EXTERN ~OHBCONCO~ 7
END

IF ~~ THEN BEGIN 27
  SAY @105 /* Fine, maybe I embellished a little. You can hardly blame me. Our capture was far from dignified. When Joker injured the Concocter, he emitted a piteous spore-scream. */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 28
  SAY @106 /* That wretched dwarf! When Joker injured the Concocter, she kept the piece o' stem she cut off and gave it to the cook! *Achoo!* That lunatic made stew out of it and thought it tasted fantastic. */
  IF ~~ THEN EXTERN ~OHBCONCO~ 8
END

IF ~~ THEN BEGIN 29
  SAY @107 /* Yes, yes. I know you're very proud of how good you taste. Stop *Achoo!* interruptin'! */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 30
  SAY @108 /* Hmm... You make a good point. Perhaps it would keep that crazy dwarf away from my friend here. What do you think, Concocter? It will grow back in a few days anyway, will it not? */
  IF ~~ THEN EXTERN ~OHBCONCO~ 9
END

IF ~~ THEN BEGIN 31
  SAY @109 /* Very well. It is agreed. Now bend over, Concocter. This won't hurt a bit. Just a quick cut and THERE! Got it. Here you go. And tell that lunatic dwarf to stay away from the Concocter from now on. *Achoo!* */
  IF ~~ THEN DO ~AddJournalEntry(90957,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",2)
GiveItemCreate("OHBCOM02",LastTalkedToBy(Myself),0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY @110 /* Gems and jewels! I mean, that is a generous offer. What do you think, Concocter? We could buy a significant number of reagents with that. And you'd regenerate in a few days anyway, wouldn't you? */
  IF ~~ THEN EXTERN ~OHBCONCO~ 10
END

IF ~~ THEN BEGIN 33
  SAY @111 /* Very well. It is agreed. Bend over, Concocter—this won't hurt a bit. Just a quick cut and THERE! Got it. Here you go. Now tell that lunatic dwarf to keep away from us from now on. *Achoo!* */
  IF ~~ THEN DO ~AddJournalEntry(90957,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",2)
GiveItemCreate("OHBCOM02",LastTalkedToBy(Myself),0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @112 /* *Achoo!* The Concocter is happy to help. We've been working on a special poison for just such a purpose ever since that nasty half-elf attacked us. Very potent. I think it's around here somewhere... Here it is. */
  IF ~~ THEN DO ~SetGlobal("OHB_BELLO_POISON","GLOBAL",1)
GiveItemCreate("OHBPTN03",LastTalkedToBy,1,0,0)
AddJournalEntry(90954,QUEST)
~ EXIT
END
