// creator  : weidu (version 24900)
// argument : OHBBELLO.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBBELLO~

IF ~  Global("OHB_TALKED_BELLOWGULP","GLOBAL",0)
~ THEN BEGIN 0
  SAY ~Greetin's. *Achoo!* *sniff* How may I... W-wait a second. Do I know you?~ [OH90864]
  IF ~~ THEN REPLY ~Bellowgulp! It's me, <CHARNAME>! What are you doing here?~ DO ~SetGlobal("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY ~I'm not really sure. Who are you?~ DO ~SetGlobal("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY ~Great. The deranged gnome and his pet mushroom. What's your name again? Buttgoop?~ DO ~SetGlobal("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 1
  SAY ~*Achoo!* Bellowgulp Bluefingers is my name, and this here is the Concocter. We were imprisoned with you in Baeloth's Pits.~ [OH90868]
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~We set up shop brewin' potions, just like always. *Achoo!* Potions to make ya stronger, quicker, and smarter. We even have potions to catch the eye of the ladies or the gentlemen!~ [OH90869]
  IF ~~ THEN REPLY ~Quite a sales pitch. I'll have a look.~ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Maybe later, Bellowgulp. I need to be off.~ GOTO 4
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY ~I need something to stabilize Dulf Ebonbeard's mind.~ GOTO 14
  IF ~~ THEN REPLY ~May I ask you a few questions?~ GOTO 5
  IF ~~ THEN REPLY ~I'll not buy potions made by an oversized toadstool.~ GOTO 22
END

IF ~~ THEN BEGIN 3
  SAY ~Hah! Couldn't have said it better myself, Concocter, though I doubt even a troll would birth somethin' as rude as THIS performer. Now listen, you. You'd best be polite to us merchants or you'll never get the gear you'll need to survive. *Achoo!*~ [OH90876]
  IF ~~ THEN REPLY ~Sorry, Bellowgulp. I was trying to make a joke, but... Well, let's change the subject.~ GOTO 9
  IF ~~ THEN REPLY ~I'm sorry. I'll leave you be.~ GOTO 4
  IF ~~ THEN REPLY ~As if I'd need your impotent brews.~ GOTO 22
END

IF ~~ THEN BEGIN 4
  SAY ~Come back if you need potions of any sort. *Achoo!*~ [OH90883]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~I'm always happy to reminisce with an old friend such as yerself. *Achoo!*~ [OH90884]
  IF ~~ THEN REPLY ~What's with the sneezing?~ GOTO 6
  IF ~~ THEN REPLY ~How'd you end up here?~ GOTO 24
  IF ~~ THEN REPLY ~Why does the cook keep looking at the Concocter that way?~ GOTO 28
  IF ~~ THEN REPLY ~May I see your wares?~ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY ~Oh, that. Well, as you may remember from our meetin' in Baeloth's pit, the Concocter communicates by releasin' spores. It seems I've developed an allergy to *achoo!* them. *Achoo!*~ [OH90890]
  IF ~~ THEN REPLY ~That's... awkward. Let's speak of something else.~ GOTO 9
  IF ~~ THEN REPLY ~Yeah, I'll just be going now.~ GOTO 4
  IF ~~ THEN REPLY ~That's hilarious! You deserve it for having such a creepy friend.~ GOTO 22
END

IF ~~ THEN BEGIN 7
  SAY ~When the spores reached my nose, I started sneezin' uncontrollably. I sneezed so hard I did a full backflip and landed face down on top of the Concocter. The hunters thought it was so funny they decided to keep us alive and bring us here. *Achoo!*~ [OH90898]
  IF ~~ THEN REPLY ~At least they let you live. I'd like to see your wares now, if I may.~ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Better alive than dead, I suppose. I'll be going now.~ GOTO 4
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY ~I need something to stabilize Dulf Ebonbeard's mind.~ GOTO 14
  IF ~~ THEN REPLY ~Let's discuss something else.~ GOTO 9
  IF ~~ THEN REPLY ~A cowardly myconid and an acrobatic svirfneblin? You two should be in a circus.~ GOTO 22
END

IF ~~ THEN BEGIN 8
  SAY ~Anyway, the cook liked the stew so much he's been tryin' to convince Dennaton to let him cook the rest of the Concocter ever since. Wretched dwarf! *Achoo!*~ [OH90905]
  IF ~~ THEN REPLY ~Disgusting... Ah, well. Let's see your wares.~ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~At least he hasn't succeeded yet. I must be going now.~ GOTO 4
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY ~I need something to stabilize Dulf Ebonbeard's mind.~ GOTO 14
  IF ~~ THEN REPLY ~Perhaps we could discuss something else. ANYthing else.~ GOTO 9
  IF ~~ THEN REPLY ~Myconid stew. Sounds like a treat.~ GOTO 22
END

IF ~  OR(2)
Global("OHB_TALKED_BELLOWGULP","GLOBAL",1)
~ THEN BEGIN 9
  SAY ~How may I help ya? *Achoo!*~ [OH92084]
  IF ~~ THEN REPLY ~May I see your wares?~ DO ~StartStore("ohbconco",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~May I ask you some questions?~ GOTO 10
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY ~I need something to stabilize Dulf Ebonbeard's mind.~ GOTO 14
  IF ~  Global("OHB_COOK_MUSHROOM","GLOBAL",1)
~ THEN REPLY ~I was wondering if I could have a piece of the Concocter for the cook's stew.~ GOTO 19
  IF ~  OR(2)
Global("OHB_COOK_POISON","GLOBAL",1)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY ~Do you think the Concocter could make something... special for me?~ GOTO 11
  IF ~  Global("OHB_COOK_POISON","GLOBAL",1)
PartyHasItem("OHBPTN01")
~ THEN REPLY ~I have a potion of barkskin. Could you make it into powdered funguswood?~ GOTO 17
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY ~O' course! Ask away!~ [OH90914]
  IF ~~ THEN REPLY ~What's with the sneezing?~ GOTO 6
  IF ~~ THEN REPLY ~How'd you end up here?~ GOTO 24
  IF ~~ THEN REPLY ~Why does the cook keep looking at the Concocter that way?~ GOTO 28
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY ~Don't you think Dennaton should be compensating you for your services?~ GOTO 15
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY ~Don't you think Dennaton should be compensating you for your services?~ GOTO 16
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
END

IF ~~ THEN BEGIN 11
  SAY ~Perhaps. What would be the purpose of this "somethin' special"?~ [OH90917]
  IF ~  Global("OHB_COOK_POISON","GLOBAL",1)
~ THEN REPLY ~I need some powdered funguswood.~ EXTERN ~OHBCONCO~ 2
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
Global("OHB_BELLO_POISON","GLOBAL",0)
~ THEN REPLY ~I'm trying to poison Joker.~ EXTERN ~OHBCONCO~ 11
  IF ~  Global("ohb_know_dulf_needs_salve","global",1)
~ THEN REPLY ~I need something to stabilize Dulf Ebonbeard's mind.~ GOTO 14
  IF ~~ THEN REPLY ~On second thought, I changed my mind. I must be going.~ GOTO 4
  IF ~~ THEN REPLY ~Pretty nosy for a gnome. Forget it. You Underdark types make me nervous.~ GOTO 22
END

IF ~~ THEN BEGIN 12
  SAY ~The Concocter says it'll be hard to get. It won't come cheap. It'll cost 750 gold pieces and require a potion of barkskin. *Achoo!*~ [OH90923]
  IF ~~ THEN REPLY ~I'll return when I have the potion and the gold.~ EXIT
  IF ~~ THEN REPLY ~Potion of barkskin? Where can I find that?~ GOTO 13
  IF ~  PartyHasItem("OHBPTN01")
~ THEN REPLY ~I have a potion of barkskin right here.~ GOTO 17
  IF ~~ THEN REPLY ~The potion-maker needs a potion? That doesn't speak highly of your skills, does it?~ GOTO 22
END

IF ~~ THEN BEGIN 13
  SAY ~I've seen some around. One of the other merchants, or maybe the priests, might have a bottle or two.~ [OH90928]
  IF ~~ THEN DO ~SetGlobal("ohb_barkskin_potion","oh8100",1)
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~What you need is the salve of senile serenity. The Concocter can brew one for only 100 gold pieces.~ [OH90929]
  IF ~  PartyGoldGT(99)
~ THEN REPLY ~Very well, here you go.~ DO ~TakePartyGold(100)
GiveItemCreate("OHBPTN02",LastTalkedToBy(Myself),1,0,0)
~ EXIT
  IF ~  !PartyGoldGT(99)
~ THEN REPLY ~I don't have that much gold at the moment. I'll have to return later.~ GOTO 4
  IF ~~ THEN REPLY ~On second thought, I changed my mind. I must be going.~ GOTO 4
  IF ~~ THEN REPLY ~100 gold pieces? YOU're senile if you think I'm spending that much on your stupid salve!~ GOTO 22
END

IF ~~ THEN BEGIN 15
  SAY ~Maybe you're right. *Achoo!* We do provide the finest potions in all Faerûn. I'll take the matter up with him.~ [OH90934]
  IF ~~ THEN DO ~AddJournalEntry(90953,QUEST_DONE)
EraseJournalEntry(90952)
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~Oh, I don't know. We're captives here, after all. I don't want to anger Dennaton.~ [OH90935]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~750 gold pieces, please.~ [OH90936]
  IF ~  PartyGoldGT(749)
~ THEN REPLY ~Here you go.~ DO ~AddJournalEntry(90956,QUEST)
TakePartyGold(750)
TakePartyItem("OHBPTN01")
DestroyItem("OHBPTN01")
GiveItemCreate("OHBCOM01",LastTalkedToBy(Myself),0,0,0)
~ EXIT
  IF ~  !PartyGoldGT(749)
~ THEN REPLY ~I don't have that much gold at the moment. I'll have to return later.~ GOTO 4
  IF ~~ THEN REPLY ~If I told you it was to poison the cook, would you do it for free?~ EXTERN ~OHBCONCO~ 3
  IF ~~ THEN REPLY ~You've been drinking too many of your own potions if you think I'm paying that much.~ GOTO 22
END

IF ~~ THEN BEGIN 18
  SAY ~*Achoo!* The Concocter says it would be a pleasure. Keep your gold and get that crazy dwarf. Here you go.~ [OH90940]
  IF ~~ THEN DO ~AddJournalEntry(90956,QUEST)
GiveItemCreate("OHBCOM01",LastTalkedToBy(Myself),0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY ~WHAT? The Concocter is not just a walkin' ingredient for the cook's stewpot! He's a close personal friend an' a master of potion-makin'! *Achoo!*~ [OH90941]
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY ~Maybe if the cook had a little more, he'd stop trying to get ALL the Concocter.~ GOTO 30
  IF ~  !CheckStatGT(Player1,15,CHR)
~ THEN REPLY ~Maybe if the cook had a little more, he'd stop trying to get ALL the Concocter.~ GOTO 20
  IF ~  PartyGoldGT(999)
~ THEN REPLY ~I'll give you 1,000 gold pieces...~ GOTO 32
  IF ~~ THEN REPLY ~My apologies, Bellowgulp. Just a little joke. I'll be going now.~ GOTO 4
  IF ~~ THEN REPLY ~C'mon, Bellowgulp, you can't tell me you've never wanted just a nibble.~ GOTO 22
END

IF ~~ THEN BEGIN 20
  SAY ~Absolutely not. That dwarf is mad, and he's not getting even a piece of my good friend! *Achoo!*~ [OH90946]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY ~Bellowgulp Bluefingers. There's no call to be rude.~ [OH90874]
  IF ~~ THEN EXTERN ~OHBCONCO~ 4
END

IF ~~ THEN BEGIN 22
  SAY ~Fine! Insult us! You'll come back, and when ya do, don't be surprised when the Concocter spits in your potions!~ [OH90880]
  IF ~~ THEN EXTERN ~OHBCONCO~ 5
END

IF ~~ THEN BEGIN 23
  SAY ~What do you mean, "myconids can't spit"? Fine. I'll spit in the potions myself, then. Now goodbye! *Achoo!*~ [OH91958]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
  SAY ~That's quite a tale! The Concocter and I were searchin' for gems and potion ingredients near the Underdark city of Blingdenstone. Suddenly, that winged thing's hunters surrounded us. Still makes me shudder. *Achoo!*~ [OH90894]
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~One of 'em, a wretched half-elf known as Joker, struck the Concocter on the back o' the stem and injured 'im. *Achoo!* I leapt to my friend's defense. My svirfneblin rage forced the hunters to take us alive. *Achoo!*~ [OH90895]
  IF ~~ THEN DO ~AddJournalEntry(90952,QUEST)
~ EXTERN ~OHBCONCO~ 6
END

IF ~~ THEN BEGIN 26
  SAY ~What do ya mean, "Tell them the real story?" That WAS the real story! *Achoo!*~ [OH90896]
  IF ~~ THEN EXTERN ~OHBCONCO~ 7
END

IF ~~ THEN BEGIN 27
  SAY ~Fine, maybe I embellished a little. You can hardly blame me. Our capture was far from dignified. When Joker injured the Concocter, he emitted a piteous spore-scream.~ [OH90897]
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 28
  SAY ~That wretched dwarf! When Joker injured the Concocter, she kept the piece o' stem she cut off and gave it to the cook! *Achoo!* That lunatic made stew out of it and thought it tasted fantastic.~ [OH90903]
  IF ~~ THEN EXTERN ~OHBCONCO~ 8
END

IF ~~ THEN BEGIN 29
  SAY ~Yes, yes. I know you're very proud of how good you taste. Stop *Achoo!* interruptin'!~ [OH90904]
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 30
  SAY ~Hmm... You make a good point. Perhaps it would keep that crazy dwarf away from my friend here. What do you think, Concocter? It will grow back in a few days anyway, will it not?~ [OH90947]
  IF ~~ THEN EXTERN ~OHBCONCO~ 9
END

IF ~~ THEN BEGIN 31
  SAY ~Very well. It is agreed. Now bend over, Concocter. This won't hurt a bit. Just a quick cut and THERE! Got it. Here you go. And tell that lunatic dwarf to stay away from the Concocter from now on. *Achoo!*~ [OH90948]
  IF ~~ THEN DO ~AddJournalEntry(90957,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",2)
GiveItemCreate("OHBCOM02",LastTalkedToBy(Myself),0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 32
  SAY ~Gems and jewels! I mean, that is a generous offer. What do you think, Concocter? We could buy a significant number of reagents with that. And you'd regenerate in a few days anyway, wouldn't you?~ [OH90949]
  IF ~~ THEN EXTERN ~OHBCONCO~ 10
END

IF ~~ THEN BEGIN 33
  SAY ~Very well. It is agreed. Bend over, Concocter—this won't hurt a bit. Just a quick cut and THERE! Got it. Here you go. Now tell that lunatic dwarf to keep away from us from now on. *Achoo!*~ [OH90950]
  IF ~~ THEN DO ~AddJournalEntry(90957,QUEST)
SetGlobal("OHB_COOK_MUSHROOM","GLOBAL",2)
GiveItemCreate("OHBCOM02",LastTalkedToBy(Myself),0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY ~*Achoo!* The Concocter is happy to help. We've been working on a special poison for just such a purpose ever since that nasty half-elf attacked us. Very potent. I think it's around here somewhere... Here it is.~ [OH90951]
  IF ~~ THEN DO ~SetGlobal("OHB_BELLO_POISON","GLOBAL",1)
GiveItemCreate("OHBPTN03",LastTalkedToBy,1,0,0)
AddJournalEntry(90954,QUEST)
~ EXIT
END
