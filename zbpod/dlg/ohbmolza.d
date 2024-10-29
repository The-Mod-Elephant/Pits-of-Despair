// creator  : weidu (version 24900)
// argument : OHBMOLZA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBMOLZA~

IF ~  Global("OHB_TALKED_MOLZHAN","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY ~Ah! Greetings, greetings! What good fortune brings you to my humble shrine?~
  IF ~~ THEN REPLY ~It's good to see someone happy in this place.~ DO ~SetGlobal("OHB_TALKED_MOLZHAN","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY ~You've a bizarre view of what constitutes good fortune, friend.~ DO ~SetGlobal("OHB_TALKED_MOLZHAN","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY ~Tell me what you do here, halfling, or I'll cut you into a pair of quarterlings!~ DO ~SetGlobal("OHB_TALKED_MOLZHAN","LOCALS",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~Well, you know what they say. Fortune favors the bold. Well, the performers who live say that. The rest just sort of lie on the ground gasping for air until the monsters finish them off.~
  IF ~~ THEN REPLY ~You really aren't helping.~ GOTO 2
  IF ~~ THEN REPLY ~Fortune favors no one. It's one of fortune's greatest failings.~ GOTO 2
  IF ~~ THEN REPLY ~Are you trying to cheer me up? If so, try harder.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~Oh yes, oh my! I have forgotten myself, haven't I?~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~Math humor, nice. But I'd save that antagonism for the arena if I were you.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~I am Molzahn, priest of Tymora. I provide healing, temple services, and spiritual guidance to our performers. I also keep the ceremonial ale and TRY to keep the other priests from killing each other.~
  IF ~~ THEN REPLY ~Healing! Just the person I was looking for.~ GOTO 8
  IF ~~ THEN REPLY ~Can I see your temple services?~ GOTO 9
  IF ~~ THEN REPLY ~May I ask you a few questions?~ GOTO 30
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
END

IF ~~ THEN BEGIN 5
  SAY ~If it weren't for the guards, they'd have destroyed the entire shrine by now.~
  IF ~~ THEN REPLY ~Sounds like you don't care for them.~ GOTO 6
  IF ~~ THEN REPLY ~I'm sorry to hear it. Let's talk about something else.~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~You're a halfling? More like a halfwit. Are you done talking yet?~ GOTO 12
END

IF ~~ THEN BEGIN 6
  SAY ~Individually, Laris and Curell aren't so bad. But put them together and it's like throwing beet juice on an owlbear.~
  IF ~~ THEN REPLY ~Beet juice on an owlbear?~ GOTO 7
  IF ~~ THEN REPLY ~Can we talk about something else?~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~I'm leaving before I end up as crazy as you are!~ GOTO 13
END

IF ~~ THEN BEGIN 7
  SAY ~Trust me. It's not pretty.~
  IF ~~ THEN REPLY ~Understood. Let's talk of other things.~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~I'll take your word for it. Farewell.~ GOTO 12
END

IF ~~ THEN BEGIN 8
  SAY ~Anything for our bold performers!~
  IF ~~ THEN DO ~StartStore("ohbmolza",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Why, yes! Here is our inventory.~
  IF ~~ THEN DO ~StartStore("ohbmolza",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~The pit wears on even the most optimistic disposition. Tell me what is troubling you.~
  IF ~~ THEN REPLY ~I just recently escaped from a similar fighting arena. Now I'm back in slavery again.~ GOTO 25
  IF ~~ THEN REPLY ~I want to become the most profitable performer in the arena.~ GOTO 27
  IF ~~ THEN REPLY ~This captivity is driving me mad. I intend to escape at the earliest opportunity.~ GOTO 28
END

IF ~~ THEN BEGIN 11
  SAY ~I was captured. Most around here were. Such is life. Misfortune merely accentuates greater good fortune for those intrepid enough to take it.~
  IF ~~ THEN REPLY ~An encouraging attitude. Tell me more of your capture.~ GOTO 17
  IF ~~ THEN REPLY ~I would like to talk about something else.~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~Pfft. The pathetic excuse of a failed priest out of his goddess's favor.~ GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY ~I am certainly done talking to you.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~You don't have to be crazy to work here. But it... well, you know. Farewell.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~You know nothing of her ways. And if that's your attitude, you'll not learn them from me.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~Well. Whatever problem you have with my voice is at an end. Farewell.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~Then you'll hear no more words from me. Good <DAYNIGHTALL>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~It was that Joker. You know, the half-elf drunkard who can't get enough of her own voice?~
  IF ~~ THEN REPLY ~Not your favorite person, I take it?~ GOTO 18
  IF ~~ THEN REPLY ~Go on.~ GOTO 19
  IF ~~ THEN REPLY ~This is clearly a sore topic for you. Let's talk of something else.~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~You accuse another of liking their own voice. That's rich.~ GOTO 15
END

IF ~~ THEN BEGIN 18
  SAY ~Picked up on that, did you?~
  IF ~~ THEN DO ~AddJournalEntry(91264,QUEST)
~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~My adventuring company and I were hired to investigate turnip bandits plaguing the trade ways around Baldur's Gate.~
  IF ~~ THEN REPLY ~Go on.~ GOTO 21
  IF ~~ THEN REPLY ~Turnip bandits? That sounds serious.~ GOTO 20
  IF ~~ THEN REPLY ~I would like to talk about something else.~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~Enough! Cease your incessant yammering!~ GOTO 12
END

IF ~~ THEN BEGIN 20
  SAY ~Not every problem involves dragons or evil wizards trying to conquer all Faerûn.~
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~We were at an inn for the night when I noticed a half-elf so drunk she could barely stand. "Tymora smiles upon me," I thought. I challenged her to a game of bones and won a sizable amount of gold. She was none too pleased.~
  IF ~~ THEN REPLY ~I wouldn't think so. Go on.~ GOTO 22
  IF ~~ THEN REPLY ~This is clearly a touchy subject for you. Let's talk about something else.~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~By the gods, stop. I'm growing more stupid with every word.~ GOTO 16
END

IF ~~ THEN BEGIN 22
  SAY ~Next thing I knew, hands of iron lifted me from my chair, stuffed me in a sack, and beat me senseless. I awoke in a room behind this shrine. That pompous arse, Tartle, soon informed me I was the new resident priest of Tymora.~
  IF ~~ THEN REPLY ~What happened to the old one?~ GOTO 23
  IF ~~ THEN REPLY ~An entertaining yarn. May I see your other services now?~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~Are you finally finished?~ GOTO 12
END

IF ~~ THEN BEGIN 23
  SAY ~Depends on whom you ask. Either he fell into a wyvern cage and got eaten or he was pushed into a wyvern cage and got eaten.~
  IF ~~ THEN REPLY ~Huh... All right. Can I see the other temple services?~ GOTO 32
  IF ~~ THEN REPLY ~I thought Tymora was the goddess of luck.~ GOTO 24
  IF ~~ THEN REPLY ~And with that, I left.~ GOTO 33
END

IF ~~ THEN BEGIN 24
  SAY ~Bad luck and good luck are a matter of perspective. Just ask the wyvern.~
  IF ~~ THEN REPLY ~Huh... All right. Can I see the other temple services?~ GOTO 32
  IF ~~ THEN REPLY ~I'd rather not.~ GOTO 32
  IF ~~ THEN REPLY ~I must be going.~ GOTO 33
  IF ~~ THEN REPLY ~You're more ridiculous than a greased gnome on a steep incline!~ GOTO 12
END

IF ~~ THEN BEGIN 25
  SAY ~As day follows night, so good fortune follows ill. Look within yourself. See what it is you desire, then boldly stride forth and claim it. Do this and Tymora's grace will shine down upon you.~
  IF ~~ THEN REPLY ~I'll give it a shot. In the meantime, I have need of other services.~ GOTO 32
  IF ~~ THEN REPLY ~Thank you. I'll be going now.~ GOTO 33
  IF ~~ THEN REPLY ~Her grace doesn't exactly seem to be shining down on you...~ GOTO 12
END

IF ~~ THEN BEGIN 26
  SAY ~You are most welcome.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27
  SAY ~Good! Be brave! Take risks. Surprise your opponents with daring and audacity, and Tymora will smile upon you.~
  IF ~~ THEN REPLY ~I'll do that. May I see your other services?~ GOTO 32
  IF ~~ THEN REPLY ~Thank you. I'll be going now.~ GOTO 33
  IF ~~ THEN REPLY ~Tymora's favor doesn't seem to have done much for you.~ GOTO 12
END

IF ~~ THEN BEGIN 28
  SAY ~Lower your voice! We all want to escape—but we must move with care. You no doubt know the power of Dennaton's hunters.~
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~There'll be no escape while they're around. But if you are bold and your heart brave, Tymora will favor you.~
  IF ~~ THEN REPLY ~Wise words. What other services do you offer?~ GOTO 32
  IF ~~ THEN REPLY ~Thank you. I'll be going now.~ GOTO 33
  IF ~~ THEN REPLY ~Tymora's favor doesn't seem to have done much for you.~ GOTO 12
END

IF ~~ THEN BEGIN 30
  SAY ~Ask away!~
  IF ~~ THEN REPLY ~The last few days have been overwhelming. Can you help me make sense of it all?~ GOTO 10
  IF ~~ THEN REPLY ~What's a halfling priest of Tymora doing in a Thayan gladiator arena?~ GOTO 11
  IF ~~ THEN REPLY ~You mentioned the other two priests often fight. Isn't that a little unusual?~ DO ~AddJournalEntry(91263,INFO)
~ GOTO 5
  IF ~  PartyHasItem("OHBGLOV1")
~ THEN REPLY ~I found this gauntlet. Can you decipher the inscription?~ GOTO 31
  IF ~~ THEN REPLY ~Never mind, I was just leaving.~ GOTO 33
END

IF ~~ THEN BEGIN 31
  SAY ~Hmm... It's a beautiful piece. More artistic than functional... The writing's odd. Clearly Celestial. Such scripts can be interpreted only by those meant to read them. Which I'm apparently not.~
  IF ~~ THEN REPLY ~Hm. Well, thanks anyway. May I see your other services?~ GOTO 32
  IF ~~ THEN REPLY ~Thank you. I'll be going now.~ GOTO 33
END

IF ~  Global("OHB_TALKED_MOLZHAN","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 32
  SAY ~How may I be of service?~
  IF ~~ THEN REPLY ~I've wounds that require healing.~ GOTO 8
  IF ~~ THEN REPLY ~Can I see your temple services?~ GOTO 9
  IF ~~ THEN REPLY ~May I ask you a few questions?~ GOTO 30
  IF ~  !Global("OHB_GIVEN_ALE","LOCALS",0)
Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY ~I have heard that Tymora favors the bold. I have a bold plan that needs favoring.~ GOTO 34
  IF ~~ THEN REPLY ~Never mind, I was just leaving.~ GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~Tymora be with you!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY ~You certainly have my attention.~
  IF ~~ THEN REPLY ~The plan is a secret, but it requires ale.~ GOTO 36
  IF ~~ THEN REPLY ~I want to poison Joker. I'll need some ale to do it.~ GOTO 44
  IF ~~ THEN REPLY ~Forget it. If I tell you, the whole staff will know within the hour.~ GOTO 40
END

IF ~~ THEN BEGIN 35
  SAY ~I'll require a game of bones to determine if the Lady Tymora favors your plan. Win and the ale is yours.~
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY ~I'll require a game of bones to determine if the Lady Tymora favors your plan. Win and the ale is yours. Lose, and 1,000 gold pieces will earn you mine.~
  IF ~~ THEN REPLY ~Very well. Let's throw the bones!~ GOTO 37
  IF ~~ THEN REPLY ~I've changed my mind.~ GOTO 41
  IF ~~ THEN REPLY ~Forget it. If I tell you, the whole staff will know within the hour.~ GOTO 40
END

IF ~~ THEN BEGIN 37
  SAY ~Fortune seems to have favored my throw. Tymora does not approve of your plans—or perhaps she wishes they be made known to me, hmm?~
  IF ~~ THEN REPLY ~If I tell you my plan, you'll give me the ale?~ GOTO 38
  IF ~~ THEN REPLY ~No. The plan must remain a secret.~ GOTO 43
  IF ~~ THEN REPLY ~You cheating halfling! You've tampered with the bones.~ GOTO 39
END

IF ~~ THEN BEGIN 38
  SAY ~The odds are very favorable that I will.~
  IF ~~ THEN REPLY ~Very well. I am trying to weaken our captors by poisoning Joker, and the plan requires ale.~ GOTO 44
  IF ~~ THEN REPLY ~No. My plan must remain a secret.~ GOTO 43
  IF ~~ THEN REPLY ~Forget it. If I tell you, the whole staff will know within the hour.~ GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY ~And invite Tymora's ire? Never! Now I'll bid you good <DAYNIGHTALL>. Come back if you change your mind about telling me what you're up to.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40
  SAY ~I'll not stand here and listen to such slander! Come back if you change your mind about telling me what you're up to.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY ~Come back if you change it again.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY ~A pity. Come back when you do or are ready to tell me your plan.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43
  SAY ~As you wish. 1,000 gold pieces, please.~
  IF ~  PartyGoldGT(999)
~ THEN REPLY ~Here you go.~ DO ~TakePartyGold(1000)
SetGlobal("OHB_GIVEN_ALE","LOCALS",1)
AddJournalEntry(91265,QUEST)
GiveItemCreate("OHBPTN04",LastTalkedToBy,1,0,0)
~ EXIT
  IF ~  !PartyGoldGT(999)
~ THEN REPLY ~I don't have that kind of money.~ GOTO 42
  IF ~~ THEN REPLY ~On second thought, I've changed my mind.~ GOTO 41
  IF ~~ THEN REPLY ~Forget it. If I tell you, the whole staff will know within the hour.~ GOTO 12
END

IF ~~ THEN BEGIN 44
  SAY ~You would poison Joker? That's fantastic! Here, take the ale. May Tymora's blessing be upon you!~
  IF ~~ THEN DO ~SetGlobal("OHB_GIVEN_ALE","LOCALS",1)
AddJournalEntry(91265,QUEST)
GiveItemCreate("OHBPTN04",LastTalkedToBy,1,0,0)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_molzahn_line_gift","global",0)
~ THEN BEGIN 45
  SAY ~I have little aid to offer you, <CHARNAME>. Perhaps these gifts will provide some small blessing.~
  IF ~~ THEN DO ~SetGlobal("ohb_molzahn_line_gift","global",1)
GiveItemCreate("potn35",Player1,1,0,0)
GiveItemCreate("potn24",Player1,1,0,0)
~ GOTO 46
END

IF ~  Global("ohb_finale","global",6)
Global("ohb_molzahn_line_gift","global",1)
~ THEN BEGIN 46
  SAY ~Oy. I should lay off the ale!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47
  SAY ~I have little aid to offer you, <CHARNAME>. Perhaps these gifts will provide some small blessing.~
  IF ~~ THEN DO ~SetGlobal("ohb_molzahn_line_gift","global",1)
GiveItemCreate("potn35",Player1,1,0,0)
GiveItemCreate("potn24",Player1,1,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
~ THEN DO ~SetGlobal("ohb_molzahn_line_gift","global",1)
GiveItemCreate("potn35",Player1,1,0,0)
GiveItemCreate("potn24",Player1,1,0,0)
~ EXTERN ~OHBDULF~ 65
  IF ~  Global("ohb_cook_line_gift","global",0)
Detect("ohbmardu")
~ THEN DO ~SetGlobal("ohb_molzahn_line_gift","global",1)
GiveItemCreate("potn35",Player1,1,0,0)
GiveItemCreate("potn24",Player1,1,0,0)
~ EXTERN ~OHBMARDU~ 17
  IF ~  Global("ohb_laris_line_gift","global",0)
~ THEN DO ~SetGlobal("ohb_molzahn_line_gift","global",1)
GiveItemCreate("potn35",Player1,1,0,0)
GiveItemCreate("potn24",Player1,1,0,0)
~ EXTERN ~OHBLARIS~ 21
  IF ~  Global("ohb_curel_line_gift","global",0)
~ THEN DO ~SetGlobal("ohb_molzahn_line_gift","global",1)
GiveItemCreate("potn35",Player1,1,0,0)
GiveItemCreate("potn24",Player1,1,0,0)
~ EXTERN ~OHBCUREL~ 34
END

IF ~~ THEN BEGIN 48
  SAY ~Please! My colleagues! Sir Timmoth! We've been through this how many times now? You're all different sides of the same coin. Tymora blesses you all. Now let our guest speak. I believe <PRO_HESHE> addressed you, Sir Laris.~
  IF ~~ THEN EXTERN ~OHBLARIS~ 4
END

IF ~~ THEN BEGIN 49
  SAY ~Please! Colleagues! We've gone over this how many times now? You're all just different sides of the same coin. Tymora blesses you all. Now let our guest speak. I believe <PRO_HESHE> addressed you, Sir Laris.~
  IF ~~ THEN EXTERN ~OHBLARIS~ 4
END

IF ~~ THEN BEGIN 50
  SAY ~Gerrold's talking about the Planar Hunters.~
  IF ~~ THEN EXTERN ~OHBGERRO~ 4
END

IF ~~ THEN BEGIN 51
  SAY ~It's all right, Gerrold, Tymora loves you. Your unpredictability is beautiful in her eyes.~
  IF ~~ THEN EXTERN ~OHBGERRO~ 7
END

IF ~~ THEN BEGIN 52
  SAY ~Please! My colleagues! Sir Timmoth! We've been through this how many times now? You're all just different sides of the same coin. Tymora blesses you all. Now let our guest speak. I believe <PRO_HESHE> addressed you, Lady Curell.~
  IF ~~ THEN EXTERN ~OHBCUREL~ 10
END

IF ~~ THEN BEGIN 53
  SAY ~Please! My colleagues! We've gone through this how many times now? You're all just different sides of the same coin. Tymora blesses you all. Now let our guest speak. I believe <PRO_HESHE> addressed you, Lady Curell.~
  IF ~~ THEN EXTERN ~OHBCUREL~ 10
END

IF ~~ THEN BEGIN 54
  SAY ~Sir Timmoth, please. There is no call for such harsh words. You will make poor Lady Curell cry again.~
  IF ~~ THEN EXTERN ~OHBCUREL~ 12
END

IF ~~ THEN BEGIN 55
  SAY ~Sir Timmoth, please. There is no call for such harsh words. You will make poor Lady Curell cry again.~
  IF ~~ THEN EXTERN ~OHBCUREL~ 15
END

IF ~~ THEN BEGIN 56
  SAY ~Sir Timmoth, please. Your harsh words are uncalled for. You will make poor Lady Curell cry.~
  IF ~~ THEN EXTERN ~OHBCUREL~ 18
END

IF ~~ THEN BEGIN 57
  SAY ~Sir Timmoth, please. You will make poor Lady Curell cry again.~
  IF ~~ THEN EXTERN ~OHBCUREL~ 21
END

IF ~  GlobalGT("ohb_finale","global",1)
GlobalLT("ohb_finale","global",5)
~ THEN BEGIN 58
  SAY ~Greetings again, <CHARNAME>! Fortune favors the bold. Lady Luck smiles upon you this day!~
  IF ~~ THEN EXTERN ~OHBLARIS~ 24
END

IF ~~ THEN BEGIN 59
  SAY ~Oh, Tymora help me! Even with our oppressors on the run, you keep on with the "savage" bit?~
  IF ~~ THEN EXTERN ~OHBCUREL~ 36
END

IF ~~ THEN BEGIN 60
  SAY ~One more thing, <CHARNAME>. I've been saving a special draught for just the right occasion. These potions will restore both mind and spirit. Drink up! This is no time to be weary.~
  IF ~~ THEN EXTERN ~OHBCUREL~ 38
END
