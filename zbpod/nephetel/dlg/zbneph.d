BEGIN ZBNEPH

/// Introduction ///
IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO","GLOBAL",0) ReputationLT(Player1,7)~ THEN BEGIN zbnepharenaintro1
  SAY @36 /* Your reputation has preceded you. You certainly don't mind getting your hands dirty. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,15)~ THEN BEGIN zbnepharenaintro2
  SAY @37 /* People seem to know you as someone who they can count on when they are in need. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,6) ReputationLT(Player1,17)~ THEN BEGIN zbnepharenaintro3
  SAY @11 /* Well look here, a mighty Bhaalspawn. They say that you are one of a kind, more than your brothers and sisters in Murder. */
  IF ~~ THEN REPLY @12 /* Hello, who might you be? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* You've heard true, what is your name? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~~ BEGIN zbneph1
  SAY @14 /* My name is Nephetel. Perhaps you would allow me to give you a word of advice? */
  IF ~~ THEN REPLY @15 /* Of course my lady. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ GOTO zbneph2
  IF ~~ THEN REPLY @16 /* Whatcha got? */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ GOTO zbneph2
  IF ~~ THEN REPLY @17 /* I've no need for advice from a stranger. I keep my own counsel. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",2)~ GOTO zbneph3
END

IF ~~ BEGIN zbneph2
  SAY @18 /* Before you begin in the arena you should consider fighting in the training matches. They'll give you a …  taste for the real matches, see Stirv in the kennel to get started. */
    =
  @19 /* Watch out for that crazy bastard Stirv. He is a sadist. His 'puppies' love him and he performs all kinds of experiments on them using concoctions, mutations, and devilish training techniques. He has even been able to get them to fight as a team without ripping each other apart and he will delight in watching his pets eat you alive. */
  IF ~~ EXIT
END

IF ~~ BEGIN zbneph3
  SAY @20 /* Good, a tough response. You should still heed my words. Consider fighting in the training matches in the kennel. */
  IF ~~ EXIT
END

// ----------------------------------------------------
// Pits
// ----------------------------------------------------

/* main arena hub */
IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",1)~ THEN BEGIN zbnepharenahub01
  SAY @21 /* Known as the Hero of Baldur's Gate? Hmm, and as far as Dennaton is concerned the main attraction in his three ring circus. You don't look as savage as I expected, I can see why he was interested in you. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharenahub
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",2)~ THEN BEGIN zbnepharenahub02
  SAY @38 /* I thought the 'Hero' of Baldur's Gate didn't need my advice. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharenahub
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10) Global("ZB_NEPH_INTRO_QUESTION","GLOBAL",0)~ THEN BEGIN zbnepharenahub
  SAY @22 /* What can I do for you? */
  IF ~Global("ZB_NEPH_INTRO_ARENA_1","GLOBAL",0)~ THEN REPLY @23 /* How did you come to this place? */ DO ~SetGlobal("ZB_NEPH_INTRO_QUESTION","GLOBAL",1)~ GOTO zbnepharena1
  IF ~Global("ZB_NEPH_INTRO_ARENA_2","GLOBAL",0)~ THEN REPLY @39 /* I only know your name, Could you tell me a bit about yourself? */ /* I only know your name, tell me a bit about yourself? */ DO ~SetGlobal("ZB_NEPH_INTRO_QUESTION","GLOBAL",1)~ GOTO zbnepharena2
  IF ~Global("ZB_NEPH_INTRO_ARENA_3","GLOBAL",0)~ THEN REPLY @24 /* Do you have any ideas on how to escape this place? */ DO ~SetGlobal("ZB_NEPH_INTRO_QUESTION","GLOBAL",1)~ GOTO zbnepharena3
  IF ~Global("ZB_NEPH_INTRO_ARENA_4","GLOBAL",0)~ THEN REPLY @25 /* You look familiar. There was a messenger who got me into this mess and your voice sounds suspiciously similar. */ DO ~SetGlobal("ZB_NEPH_INTRO_QUESTION","GLOBAL",1)~ GOTO zbnepharena4
  IF ~~ THEN REPLY @27 /* I'll let you get back to whatever you were doing. */ EXIT
END

IF ~~ zbnepharena1
  SAY @29 /* I got trapped in a spider's web and found myself here, just like you. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTRO_ARENA_1","GLOBAL",1)~ GOTO zbnepharenahub2
END

IF ~~ zbnepharena2
  SAY @40 /* Hah! I'm just your average, helpful tiefling. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTRO_ARENA_2","GLOBAL",1)~ GOTO zbnepharenahub2
END

IF ~~ zbnepharena3
  SAY @30 /* Between the two of us, you are not the only one with a bone to pick with Dennaton. It is unwise to discuss it now openly, yes? Get familiar with what we're dealing with and learn the lay of the land and we'll speak again soon. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTRO_ARENA_3","GLOBAL",1)~ GOTO zbnepharenahub2
END

IF ~~ zbnepharena4
  SAY @31 /* Being suspicious is fine. Deception and trickery is part of my profession. But, perhaps you should take more care with your words. Hmm?. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTRO_ARENA_4","GLOBAL",1)~ GOTO zbnepharenahub2
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)
    Global("ZB_NEPH_INTRO_QUESTION","GLOBAL",1)~ zbnepharenahub2
  SAY @33 /* Anything else I can clear up for you? */
  IF ~Global("ZB_NEPH_INTRO_ARENA_1","GLOBAL",0)~ THEN REPLY @23 /* How did you come to this place? */ GOTO zbnepharena1
  IF ~Global("ZB_NEPH_INTRO_ARENA_2","GLOBAL",0)~ THEN REPLY @39 /* I only know your name, Could you tell me a bit about yourself? */ /* I only know your name, tell me a bit about yourself? */ GOTO zbnepharena2
  IF ~Global("ZB_NEPH_INTRO_ARENA_3","GLOBAL",0)~ THEN REPLY @24 /* Do you have any ideas on how to escape this place? */ GOTO zbnepharena3
  IF ~Global("ZB_NEPH_INTRO_ARENA_4","GLOBAL",0)~ THEN REPLY @25 /* You look familiar. There was a messenger who got me into this mess and your voice sounds suspiciously similar. */ GOTO zbnepharena4
  IF ~~ THEN REPLY @27 /* I'll let you get back to whatever you were doing. */ EXIT
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11)~ 15
  SAY @57 /* Excellent! An appropriate death to our enemies. Let us speak of escape if you wish it. */
  IF ~~ THEN REPLY @58 /* I wish to discuss escaping the Pits of Despair. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",12)~ GOTO 16
END

IF ~~ 16
  SAY @59 /* An opportunity has come our way, and by Tymora, it is time to take advantage. Meet me in the sleeping quarters to discuss our plan. */
  IF ~~ DO ~FadeToColor([10.0],0)
    Wait(1)
    ActionOverride("zbneph",JumpToPoint([2480.1400]))
    Wait(1)
    FadeFromColor([20.0],0)
  ~ EXIT
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",12)~ 17
  SAY @71 /* <CHARNAME>, You are here to discuss our escape from this place, yes? First, I would know why it is so important to you that you escape? */
  IF ~~ THEN REPLY @72 /* I do not enjoy being captured and called a slave. Pretty simple, right? */ GOTO 18
  IF ~~ THEN REPLY @73 /* My foster sister Imoen has been captured and taken by the mage Irenicus. He thought he could hold me just as Dennaton thinks now. */ GOTO 19
  IF ~~ THEN REPLY @74 /* No one may restrain me for long and they will ALWAYS pay a price. */ GOTO 20
  IF ~~ THEN REPLY @75 /* I am the scion of Bhaal. I shall not be questioned. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ GOTO 21
END

IF ~~ 18
  SAY @76 /* Absolutely, we all find the shackles constraining. */
  IF ~~ GOTO 22
END

IF ~~ 19
  SAY @77 /* Then we must quickly escape so you can continue your search. */
  IF ~~ GOTO 22
END

IF ~~ 20
  SAY @78 /* Your rage is palpable. Very interesting. */
  IF ~~ GOTO 22
END

IF ~~ 21
  SAY @79 /* You are not worth my time. */
  IF ~~ EXIT
END

IF ~~ 22
  SAY @80 /* In any event, here is the plan. I have a magical charm that can release us and return to where your ring pulled you from, probably some tavern. Be warned, it will consume the ring itself. */
  IF ~~ THEN REPLY @81 /* If you had this all this time, why wouldn't you have given me this charm immediately? */ GOTO 23
  IF ~~ THEN REPLY @82 /* Why would you do this? Your motivations are suspect. */ GOTO 23
  IF ~~ THEN REPLY @83 /* It can't be that simple, or anyone would escape. */ GOTO 23
  IF ~~ THEN REPLY @84 /* I don't need your help. I will find my own path. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ GOTO 24
END

IF ~~ 23
  SAY @85 /* Let us just say that I didn't know if I could trust someone with the taint of Bhaal to walk away from butchery. Will you try? */
  IF ~~ THEN REPLY @86 /* Yes, of course. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",13)~ EXIT
  IF ~~ THEN REPLY @87 /* No, I'll stay here for the moment. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",13)~ EXIT
END

IF ~~ 24
  SAY @88 /* Fine then. You want to stay here and die, you''ll be buried within a tenday and no one will care. */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",13)~ 25
  SAY @89 /* Do you wish to leave this place or remain to continue fighting? */
  IF ~~ THEN REPLY @90 /* I am ready to try your charm. You had best be telling the truth. */ DO ~
    SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",14)
    SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",1)
    StartCutSceneMode()
    StartCutScene("zbpodes1")
  ~ EXIT
  IF ~~ THEN REPLY @91 /* Not right now. Maybe later. */ EXIT
END

// ----------------------------------------------------
// SoA Dialogue
// ----------------------------------------------------

// Trademeet Inn
IF ~Global("ZB_NEPH_ESCAPE_1","GLOBAL",3)~ 26
  SAY @92 /* Here we are, for better or worse, released from the pits. I guess this is where we part ways? */
  IF ~~ THEN REPLY @93 /* Yes, we must go, we have business to attend to. */ GOTO ZBNEPHCOPPERCORONET
  IF ~Global("ZB_NEPH_WHERE_GO","GLOBAL",0)~ THEN REPLY @94 /* What about you Nephetel, where will you go? */ GOTO ZBNEPHWHEREGOEXPLAIN
  IF ~~ THEN REPLY @95 /* You have been very helpful, perhaps you could join us on our quest? */ GOTO ZBNEPHIWOULDBEHAPPY
  IF ~~ THEN REPLY @96 /* You are at the end of your usefulness, thief. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ GOTO ZBNEPHEXIT
END

IF ~Global("ZB_NEPH_WHERE_GO","GLOBAL",0)~ ZBNEPHWHEREGOEXPLAIN
  SAY @97 /* Before being lured into the intrigue of the pits, I was on a mission to find a particular tome of importance. I will continue to search for it. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_WHERE_GO","GLOBAL",1)~ GOTO 26
END

IF ~~ ZBNEPHCOPPERCORONET
  SAY @98 /* Very well, I myself have a mission I must attend to. If you ever need my assistance seek me out at the Copper Coronet in Athkatla. Safe travels. */
  IF ~~ DO ~
    ApplySpell(Myself,WIZARD_INVISIBILITY)
    Wait(1)
    MoveGlobal("AR0406","ZBNEPH",[1586.1800])~ EXIT
END

IF ~~ ZBNEPHIWOULDBEHAPPY
  SAY @99 /* I would be happy to, however I need to inform you that I have a mission to find a tome for my employer. If in our travels we come across it I must deliver it to him. */
  IF ~~ DO ~
  SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ ZBNEPHEXIT
  SAY @100 /* You seem intent to distance yourself. I know my way out. */
  IF ~~ DO ~
    ApplySpell(Myself,WIZARD_INVISIBILITY)
    Wait(1)
    MoveGlobal("AR0406","ZBNEPH",[1586.1800])~ EXIT
END

// Copper Cornet

IF ~AreaCheck("AR0406") GlobalLT("ZB_NEPHY_FRIEND","GLOBAL",0) Global("ZB_NEPH_COPPERCORENT","GLOBAL",1)~ THEN BEGIN OHHAIMARK
  SAY @101 /* Oh look who it is, the Bhaalspawn. Have you found what you are looking for, you nearsighted gibberling? */
  IF ~~ THEN REPLY @102 /* You know what Nephetel, I was a bit rude before. I apologize. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO ZBNEPHREDEMPTION
  IF ~~ THEN REPLY @103 /* No need to be rude. */ GOTO ZBNPEHNEVERFORGIVE
  IF ~~ THEN REPLY @104 /* You are the rude gibberling. */ GOTO ZBNPEHNEVERFORGIVE
END

IF ~~ ZBNEPHFORGIVE
  SAY @105 /* Good. Now do you want to talk about traveling together? */
  IF ~~ GOTO ZBNEPHREDEMPTION
END

IF ~~ ZBNPEHNEVERFORGIVE
  SAY @106 /* I'll decide what is rude, that is MY prerogative. */
  IF ~~ THEN REPLY @107 /* My apologies. I must have stepped in it now. I am sorry if I offended you. */ GOTO ZBNEPHREDEMPTION
  IF ~~ THEN REPLY @108 /* My oh my, what a bitch. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ GOTO ZBNEPHFUCKYOU
END

IF ~~ ZBNEPHFUCKYOU
  SAY @109 /* So be it, have it your way and I will have it mine. */
  IF ~~ DO ~
  ApplySpell(Myself,WIZARD_INVISIBILITY)
  Wait(1)
  EscapeArea()~ EXIT
END

IF ~~ ZBNEPHREDEMPTION
  SAY @110 /* Apology accepted. Now, what are you here for? Have you come to your senses and want to travel together? */
  IF ~~ THEN REPLY @111 /* Yes, I must admit I missed you. Will you join us on our quest? */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO ZBNEPHREALLYJOIN
  IF ~~ THEN REPLY @112 /* I wanted to see if you would join us now. We could use your help. */ GOTO ZBNEPHREALLYJOIN
  IF ~~ THEN REPLY @113 /* I need to go. Goodbye. */ EXIT
END

IF ~GlobalGT("ZB_NEPHY_FRIEND","GLOBAL",0) Global("ZB_NEPH_COPPERCORENT","GLOBAL",1)~ ZBNEPHFREIND
  SAY @114 /* Well hello there <CHARNAME>, you seem to be all in one piece, how can I help you? */
  IF ~~ THEN REPLY @111 /* Yes, I must admit I missed you. Will you join us on our quest? */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO ZBNEPHREALLYJOIN
  IF ~~ THEN REPLY @112 /* I wanted to see if you would join us now. We could use your help. */ GOTO ZBNEPHREALLYJOIN
  IF ~~ THEN REPLY @113 /* I need to go. Goodbye. */ EXIT
END

IF ~~ZBNEPHREALLYJOIN
  SAY @115 /*  Oh, I'll happily join your merry band. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) JoinParty()~ EXIT
END
