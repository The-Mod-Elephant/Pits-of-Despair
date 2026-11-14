BEGIN ZBNEPH

/// Introduction ///
IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO","GLOBAL",0) ReputationLT(Player1,7)~ THEN BEGIN zbnepharenaintro1
  SAY @36 /* Look who it is! Your reputation precedes you—please, try to keep three paces back. I wouldn’t want to stain this lovely white with the blood on your hands. */
  IF ~~ THEN REPLY @12 /* Rumors travel fast here, it seems. And you are…? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* I suppose introductions are in order. */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,15)~ THEN BEGIN zbnepharenaintro2
  SAY @37 /* I’ve heard good things about you from the folk here. Being quick to make an impression is good, but take care that you don’t rub people the wrong way. This place is full of large personalities. */
  IF ~~ THEN REPLY @12 /* Rumors travel fast here, it seems. And you are…? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* I suppose introductions are in order. */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~Global("ZB_NEPH_BEGIN","GLOBAL",1) Global("ZB_NEPH_INTRO", "GLOBAL",0) ReputationGT(Player1,6) ReputationLT(Player1,17)~ THEN BEGIN zbnepharenaintro3
  SAY @11 /* Well, what do we have here? The mighty Bhaalspawn came to say hello. I hear that  you’re rather unique among your siblings—take care you don’t attract the wrong sort of attention. This place is full of large personalities. */
  IF ~~ THEN REPLY @12 /* Rumors travel fast here, it seems. And you are…? */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
  IF ~~ THEN REPLY @13 /* I suppose introductions are in order. */ DO ~SetGlobal("ZB_NEPH_INTRO","GLOBAL",1)~ GOTO zbneph1
END

IF ~~ BEGIN zbneph1
  SAY @14 /* My name is Nephetel. Perhaps you would allow me to give you a word of advice? */
  IF ~~ THEN REPLY @15 /* Of course my lady. */ GOTO zbneph2
  IF ~~ THEN REPLY @16 /* What do you have for me? */ GOTO zbneph2
  IF ~~ THEN REPLY @17 /* I’ve no need for advice from a stranger. I keep my own counsel. */ GOTO zbneph3
END

IF ~~ BEGIN zbneph2
  SAY @18 /* Before you whet your blade in the arena, you should consider fighting in the training matches. They’ll give you a…  taste for how things are done here. See Stirv in the kennel to get started. */
    =
  @19 /* …watch out for that crazy bastard. The man is a sadist. He performs all manner of experiments on his “puppies” with concoctions and cruel training. They manage to work together without ripping each other apart—Stirv will delight in setting them upon you instead. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",9) AddJournalEntry(@800009, QUEST) AddJournalEntry(@800015, QUEST)~ EXIT
END

IF ~~ BEGIN zbneph3
  SAY @20 /* Self sufficient, are we? You should heed my words nonetheless and seek out Stirv in the kennels for some practice before tackling your first real match. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",9)~ EXIT
END

// ----------------------------------------------------
// Pits
// ----------------------------------------------------

/* main arena hub */
IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",9)~ THEN BEGIN zbnepharenahub0
  SAY @22 /* So, is there anything I can do for you? */
  IF ~~ THEN REPLY @23 /* How is it that you came to this place? You don’t seem trapped here as the other fighters are. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharena1
  IF ~~ THEN REPLY @39 /* I only know your name, Could you tell me a bit about yourself? */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharena2
  IF ~~ THEN REPLY @24 /* Do you have any idea how to escape this place? */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharena3
  IF ~~ THEN REPLY @245 /* What can you tell me about the others here? */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharena4
  IF ~~ THEN REPLY @25 /* You sound familiar. There was a messenger who got me into this mess and your voice is suspiciously similar… */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ GOTO zbnepharena5
  IF ~~ THEN REPLY @27 /* I'll let you get back to whatever you were doing. */ DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ EXIT
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",10)~ THEN BEGIN zbnepharenahub
  SAY @33 /* Anything else I can clear up for you? */
  IF ~~ THEN REPLY @23 /* How is it that you came to this place? You don’t seem trapped here as the other fighters are. */ GOTO zbnepharena1
  IF ~~ THEN REPLY @39 /* I only know your name, Could you tell me a bit about yourself? */ GOTO zbnepharena2
  IF ~~ THEN REPLY @24 /* Do you have any idea how to escape this place? */ GOTO zbnepharena3
  IF ~~ THEN REPLY @245 /* What can you tell me about the others here? */ GOTO zbnepharena4
  IF ~~ THEN REPLY @25 /* You sound familiar. There was a messenger who got me into this mess and your voice is suspiciously similar… */ GOTO zbnepharena5
  IF ~~ THEN REPLY @27 /* I'll let you get back to whatever you were doing. */ EXIT
END

IF ~~ zbnepharena1
  SAY @29 /* The spider’s web is vaster than you realize. I’m just as trapped here as you are, despite what you think. */
  IF ~~ THEN REPLY @246 /* That’s not a particularly satisfying answer. */ GOTO zbnepharena1.1
  IF ~~ THEN REPLY @247 /* You obviously know more than you’re letting on, so don’t pretend like we’re equals in this situation. */ GOTO zbnepharena1.2
  IF ~~ THEN REPLY @248 /* Then I shall do all I can to see that we, along with the other captives, make it out safely. */ GOTO zbnepharena1.3
END

IF ~~ zbnepharena1.1
  SAY @249 /* No, I would imagine not. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena1.2
  SAY @250 /* I know enough to realize that whatever differences there may be between our situations at this moment, they amount to nothing in the eyes of those that rule here. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena1.3
  SAY @251 /* Bold words. We’ll see how well they hold up in the pits. If you’re lucky, your supposed prowess might just inspire a few of the captives here. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena2
  SAY @40 /* Hah! I’m just your average, helpful tiefling. Every gladiatorial arena needs one, you know. I’m merely here to fill a quota for our Thayan overlords, you see. */
  IF ~~ THEN REPLY @252 /* You HAVE been helpful, so thank you. */ GOTO zbnepharena2.1
  IF ~~ THEN REPLY @253 /* Your evasiveness is doing little to build my trust in you, Nephetel. */  GOTO zbnepharena2.2
  IF ~~ THEN REPLY @254 /* Fine, I didn’t need to know anyway. */ GOTO zbnepharenahub
END

IF ~~ zbnepharena2.1
  SAY @255 /* I’m always happy to satisfy my gods-given purpose. There’s only so much I can do, though. Your hide isn’t the only one I’m trying to look after. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena2.2
  SAY @256 /* And your insistence on pestering me is doing a lot to irritate me, so let’s call ourselves even, mm? */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena3
  SAY @30 /* Hm. Between you and I, a few of the other gladiators have a bone to pick with Dennaton—perhaps you’ve already noticed. You may have also noticed what happens to dissenters. Personally, I would like to stay on the, uh—well, maybe not the GOOD side of the Winged. I don’t think she has a good side. I’d prefer to remain in her blind spot. */
  =
  @257 /* Let’s speak of this again once you’ve learned the lay of the land and proven you can take a hit or two. It is unwise to discuss these things openly. */
  IF ~~ THEN REPLY @258 /* Very well. I’ll take your words into consideration. */ GOTO zbnepharenahub
  IF ~~ THEN REPLY @259 /* I’ll escape without your help, then. */ GOTO zbnepharena3.1
  IF ~~ THEN REPLY @260 /* Bah. Your cowardice will trap you here forever. */ GOTO zbnepharena3.2
END

IF ~~ zbnepharena3.1
  SAY @261 /* Good luck with that. You’ll certainly need it if you want to stay alive. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena3.2
  SAY @262 /* And your callousness will get you killed. I am no coward, <CHARNAME>. I am simply a woman who understands the value of patience. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena4
  SAY @31 /* Was there anyone you had in mind? */
  IF ~~ THEN REPLY @263 /* The Planar Hunters. */ GOTO zbnepharena4.1
  IF ~~ THEN REPLY @264 /* Tartle and Brodle. */ GOTO zbnepharena4.2
  IF ~~ THEN REPLY @265 /* Dennaton. */ GOTO zbnepharena4.3
  IF ~~ THEN REPLY @266 /* Mercy Whitedove. */ GOTO zbnepharena4.4
  IF ~~ THEN REPLY @267 /* Timmoth Goodtree. */ GOTO zbnepharena4.5
  IF ~~ THEN REPLY @268 /* Dulf Ebonbeard. */ GOTO zbnepharena4.6
  IF ~~ THEN REPLY @269 /* Gezzthemin. */ GOTO zbnepharena4.7
  IF ~~ THEN REPLY @270 /* No one comes to mind. */ GOTO zbnepharenahub
END

IF ~~ zbnepharena4.1
  SAY @271 /* Ah, the perpetrators of your capture, no doubt. They’re a… lively bunch, but I haven’t interacted with them too closely myself, thankfully. I probably can’t tell you too much more than you already know, but I can try. */
  =
  @272 /* The Winged is the leader, and she’s a materialist angel. Go figure, right? I have no idea what she did to fall so far from Mount Celestia or wherever she comes from, and quite frankly I wouldn’t want to ask. */
  =
  @273 /* From what I know, they’re all spellcasters. Even that hulking golem they have walking around with them is supposed to be some kind of wizard extraordinaire. I don’t know how true that is, but the rumor has gone around. */
  IF ~~ GOTO zbnepharena4
END

IF ~~ zbnepharena4.2
  SAY @274 /* They’re slaves just as much as you and I. Tartle likes to think himself as Dennaton’s right-hand man, but in reality he’s just his quasi-competent relations manager so that the more “important” people don’t have to dirty their clothes talking to the performers themselves. His bodyguards hate him, from what I can tell. */
  =
  @275 /* Brodle’s hard to get a read on, but I don’t really see him all that much. He’s less self-important but a little depressing to talk to. One of the few decencies you can lend to other people in this horrific death-pit is at least being pleasant to interact with. */
  IF ~~ GOTO zbnepharena4
END

IF ~~ zbnepharena4.3
  SAY @276 /* The big Red Wizard himself. He’s… well, he’s proof of the kind of impatient, insufferable, malicious bastards that Thayan high society breeds */
  IF ~~ GOTO zbnepharena4.3.1
END

IF ~~ zbnepharena4.3.1
  SAY @277 /* As far as I know, he’s the ringleader here, though in Thay there’s always someone overseeing your every move, no matter how high up you are. */
  IF ~~ GOTO zbnepharena4
END

IF ~~ zbnepharena4.4
  SAY @278 /* She’s an intense one. Follower of Hoar, god of revenge and retribution, as she likes to remind everyone. I’m afraid that if we met on the outside she’d attempt to strike us both down without hesitation. With a name like hers, the irony is almost too much to bear. */
  =
  @279 /* I’ve seen her fight, though. No denying that she’s a powerful warrior. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena4.5
  SAY @280 /* Ugh, do you have to ask? I spoke to the man once—once! He wouldn’t shut up about all his great achievements, not to mention constantly referring to my “goat horns” and “demon tail” like he was trying to provoke me into a fight. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena4.6
  SAY @281 /* “The Ancient Threat”? He’s nice, which is more than I can say for a majority of the people in here. I’d love to speak with him in-depth on a few things, but unfortunately the old man’s mind strays like a Rothé without a herd.  */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena4.7
  SAY @282 /* Largely insufferable, but if you can match wits and barbs with him then he’s actually somewhat pleasant to speak with. Inside, he’s really just excited to have someone that shows interest in his areas of knowledge—which seems to be most things.  */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena5
  SAY @283 /* Surely any messenger serving this place would be either a witless servant or an unwilling agent. I know for a fact that the threat of death—and worse—hangs over even the most loyal of Dennaton’s cronies. */
  IF ~~ THEN REPLY @284 /* You’re full of non-answers, aren’t you? */ GOTO zbnepharena5.1
  IF ~~ THEN REPLY @285 /* So which are you? A witless servant or an unwilling agent? */ GOTO zbnepharena5.2
  IF ~~ THEN REPLY @286 /* I recognize a talented rogue when I see one. It makes sense that Dennaton would want to make the most of your abilities. */ GOTO zbnepharena5.3
  IF ~~ THEN REPLY @287 /* Just another reason to raze this place to the ground. */ GOTO zbnepharena5.4
END

IF ~~ zbnepharena5.1
  SAY @288 /* Perhaps if you asked some productive questions, I could oblige you with productive answers. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena5.2
  SAY @289 /* Neither suit my tastes terribly well. I think I’ll remain a ‘helpful tiefling’, if you don’t mind. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena5.3
  SAY @290 /* Talented and *helpful*, but I doubt Dennaton could make the most of my presence even with a manual on how to do just that. Anyway, I’m not here to soak up compliments, to my great despair. */
  IF ~~ GOTO zbnepharenahub
END

IF ~~ zbnepharena5.4
  SAY @291 /* If you’re lucky, Dennaton will do that himself. Just try to avoid dying in the meantime. */
  IF ~~ GOTO zbnepharenahub
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11) Global("ZB_NEPH_ESCAPE_0","GLOBAL",1) Global("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",2)~ zbnephfight
  SAY @57 /* A most deserved victory. You continue to impress me, <CHARNAME>. Fighting side by side with you was enjoyable… and I know now that I can trust you to have my back. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",12)~ GOTO zbnephescape
END

IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",11) Global("ZB_NEPH_ESCAPE_0","GLOBAL",1) Global("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",0)~ zbnephnofight
  SAY @292 /* A grisly death to a deserving foe. Seeing those spiders, I’m almost glad I didn’t join you. One thing is abundantly clear, though—you can hold your own. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",12)~ GOTO zbnephescape
END

IF ~~ zbnephescape
  SAY @59 /* Don’t settle down just yet. I have something to discuss with you… away from prying eyes and ears. Meet me in the sleeping quarters, and don’t leave me waiting. */
  IF ~~ THEN DO ~
  StartCutSceneMode()
  StartCutScene("zbpodes0")~ EXIT
END

IF ~Global("ZB_NEPH_ESCAPE_0","GLOBAL",2)~ 17
  SAY @71 /*  You made it. Good. Now, we are both trapped here, yes? And I expect that you wish to escape this gods-forsaken pit just as much as I do, so I have a proposition for you. */
  IF ~~ THEN REPLY @72 /* Speak on, I am most interested in what you have to say. */ DO ~SetGlobal("ZB_NEPH_ESCAPE_0","GLOBAL",3)~ GOTO 18
  IF ~~ THEN REPLY @73 /* You have a means to escape? Tell me! */ DO ~SetGlobal("ZB_NEPH_ESCAPE_0","GLOBAL",3)~ GOTO 19
  IF ~~ THEN REPLY @74 /* I’m certainly trapped here. You, I’m not so sure about. */ DO ~SetGlobal("ZB_NEPH_ESCAPE_0","GLOBAL",3)~ GOTO 20
END

IF ~~ 18
  SAY @76 /* I’m sure you are, so keep quiet and listen carefully. */
  IF ~~ GOTO 21
END

IF ~~ 19
  SAY @77 /* This is a sensitive matter, and we must be careful that we are not overheard. */
  IF ~~ GOTO 21
END

IF ~~ 20
  SAY @78 /* Your suspicion is doing you no favors. I want to get out of here, but it’s been difficult. */
  IF ~~ GOTO 21
END

IF ~Global("ZB_NEPH_ESCAPE_0","GLOBAL",3)~ 21
  SAY @79 /* During your recent battles, I’ve been buttering up one of the young Red Wizards that watches you fight. The fellow likes to dip a bit too heavily into his drink while watching, you see. Apparently he’s been using a magical charm to come and go from the pits as he pleases. */
  =
  @80 /* The very charm I now have in my pocket. */
  IF ~~ THEN REPLY @81 /* You, Nephetel, are brilliant. */ GOTO 22
  IF ~~ THEN REPLY @82 /* Then let us use it and leave this place forever! */ GOTO 23
  IF ~~ THEN REPLY @83 /* Alright, what’s the catch? */ GOTO 24
  IF ~~ THEN REPLY @84 /* Do you expect me to believe such a simple story? */ GOTO 25
END

IF ~~ 22
  SAY @293 /* I know, but I appreciate the reminder. Unfortunately, though, I led with the good news. */
  IF ~~ GOTO zbnephstudyring
END

IF ~~ 23
  SAY @294 /* Hold on just a moment. There’s more to the story, unfortunately. */
  IF ~~ GOTO zbnephstudyring
END

IF ~~ 24
  SAY @295 /* Aha, very astute. Seems too good to be true, doesn’t it? */
  IF ~~ GOTO zbnephstudyring
END

IF ~~ 25
  SAY @296 /* Trust me, it was anything but simple. Do you know how insufferable it was to actually pretend to LIKE a Red Wizard? I feel like I need to take a dozen showers just thinking about it. */
  IF ~~ GOTO zbnephstudyring
END

IF ~~ zbnephstudyring
  SAY @297 /* I’ve been studying the ring—I’m pretty handy with charms like these. It seems like it only has one use left. The bastard was probably behind on getting it recharged. It’s quite likely that using it to transport more than one person out of here will completely use it up. */
  IF ~~ GOTO zbnephtakechance
END

IF ~~ zbnephtakechance
  SAY @85 /* So, what will it be, <CHARNAME>? Willing to take a chance with me and get out of here? If we use it just so, it *should* take us to where you were captured. */
  IF ~~ THEN REPLY @298 /* I’ll take any chance I can get. Give it to me, and let’s go. */ GOTO zbnephgiveitto
  IF ~~ THEN REPLY @299 /* It ‘should’ take us back? That doesn’t inspire a lot of confidence. */ GOTO zbnephchoice
  IF ~~ THEN REPLY @87 /* Not just yet. There are a few things I want to take care of. */ GOTO zbnephpreparingtogo
END

IF ~~ zbnephgiveitto
  SAY @300 /* Give it to you? I’ll be the one using it, thank you very much. Don’t expect to have heard the last of Dennaton and his goons after this. They don’t tend to let up when something doesn’t go their way. Now, let’s get this show on the road! */
  IF ~!Global("ZB_First_Blood_Complete","GLOBAL",1)~ THEN GOTO zbnephescapecuttrigger1
  IF ~Global("ZB_First_Blood_Complete","GLOBAL",1)~ THEN GOTO zbnephescapecuttrigger2
END

IF ~~ zbnephchoice
  SAY @301 /* What other choice do you have? Stay here until Dennaton has decided that your entertainment value has expired? Or perhaps you’d rather die in the pits against some impossible foe. */
  IF ~~ GOTO zbnephtakechance
END

IF ~~ zbnephpreparingtogo
  SAY @302 /* As you wish. I will be here preparing to go, so when you’re ready… you know where to find me. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",13)~ EXIT
END


IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",13)~ zbnpehreadytogo
  SAY @89 /* Ready to go? Or perhaps you’re enjoying the slaughter of the pits too much for your own good. */
  IF ~!Global("ZB_First_Blood_Complete","GLOBAL",1) ~ THEN REPLY @90 /* I am ready to try your charm. You had best be telling the truth. */ GOTO zbnephescapecuttrigger1
  IF ~Global("ZB_First_Blood_Complete","GLOBAL",1) ~ THEN REPLY @90 /* I am ready to try your charm. You had best be telling the truth. */ GOTO zbnephescapecuttrigger2
  IF ~~ THEN REPLY @91 /* Not right now. Maybe later. */ EXIT
END

/* close first blood quest if it wasn't completed */
IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",13)~ zbnephescapecuttrigger1
  SAY @303 /* Just so you know, they will likely be able to track you magically. You’ll not have heard the last of Dennaton, but it gives you time on your side. */
  IF ~~ THEN DO ~
    SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",14)
	SetGlobal("ZB_NEPH_ESCAPE_0","GLOBAL",4)
    SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",1)
	AddJournalEntry(@800011, QUEST_DONE)
    StartCutSceneMode()
    StartCutScene("zbpodes1")
  ~ EXIT
END

/* first blood was completed, no journal entry changes required, normal block */
IF ~Global("ZB_NEPH_INTRO_RESPONSE","GLOBAL",13)~ zbnephescapecuttrigger2
  SAY @303 /* Just so you know, they will likely be able to track you magically. You’ll not have heard the last of Dennaton, but it gives you time on your side. */
  IF ~~ THEN DO ~
    SetGlobal("ZB_NEPH_INTRO_RESPONSE","GLOBAL",14)
	SetGlobal("ZB_NEPH_ESCAPE_0","GLOBAL",4)
    SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",1)
    StartCutSceneMode()
    StartCutScene("zbpodes1")
  ~ EXIT
END

// ----------------------------------------------------
// SoA Dialogue
// ----------------------------------------------------

// Copper Coronet
IF ~Global("ZB_NEPH_ESCAPE_1","GLOBAL",3)~ 26
  SAY @92 /* Here we are, for better or worse, released from the pits. Uh… where is here, exactly? */
  IF ~~ THEN REPLY @93 /* We’re in Trademeet, east of Athkatla. */ /* We’re in Trademeet, east of Athkatla. */ GOTO ZBNEPHCLOSERTOCITY
  IF ~~ THEN REPLY @94 /* Figure it out. I have to go. */ /* Figure it out. I have to go. */ GOTO ZBNEPHHOLDONFORAMOMENT
  IF ~~ THEN REPLY @95 /* I don’t care. You are at the end of your usefulness, thief. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ GOTO ZBNEPHCOPPERCORONET
END

IF ~~ ZBNEPHCLOSERTOCITY
  SAY @96 /* You couldn’t have been captured somewhere a bit closer to the city? No matter. */
  IF ~~ GOTO ZBNEPHWHEREGOEXPLAIN
END

IF ~~ ZBNEPHHOLDONFORAMOMENT
  SAY @97 /* Right. Yes, okay. Just… just hold on a moment, will you? */
  IF ~~ GOTO ZBNEPHWHEREGOEXPLAIN
END

IF ~~ ZBNEPHCOPPERCORONET
  SAY @98 /* I see that you’re intent to distance yourself. Well, no matter. I will make my way to the city and attend to my own business. Should you decide to lighten up a bit, maybe you’ll run into me in a tavern. */
  IF ~~ DO ~
    SetGlobal("ZB_NEPH_MOVE_COPPER","GLOBAL",1)
    SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",4)
    ClearAllActions()
    StartCutSceneMode()
    StartCutScene("zbnephm")
    ~ EXIT
END

IF ~~ ZBNEPHWHEREGOEXPLAIN
  SAY @344 /* I have my own mission here in Amn. It’s why I chose you to travel with me… not that I don’t appreciate your company. I’ve been employed to find an item of some importance, and it’s about time I continue searching for it. The pits were a rather irritating distraction */
  IF ~~ THEN REPLY @345 /* Would you join me? Perhaps I can assist you on your mission if you help me with mine. */ GOTO ZBNEPHIWOULDBEGLADTO
  IF ~Global("ZB_NEPH_WHODOYOUWORKFOR","GLOBAL",0)~ THEN REPLY @346 /* Who is your employer? */ DO ~SetGlobal("ZB_NEPH_WHODOYOUWORKFOR","GLOBAL",1)~ GOTO ZBNEPHICANTTELLYOUTHAT
  IF ~~ THEN REPLY @347 /* Well, good luck with that. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ GOTO ZBNEPHEXIT
END

IF ~~ ZBNEPHEXIT
  SAY @100 /* Right, thanks. I suppose I’ll make my way to Athkatla. Perhaps I’ll see you there at some point. */
  IF ~~ DO ~
    SetGlobal("ZB_NEPH_MOVE_COPPER","GLOBAL",1)
    SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",4)
    ClearAllActions()
    StartCutSceneMode()
    StartCutScene("zbnephm")
    ~ EXIT
END

IF ~~ ZBNEPHICANTTELLYOUTHAT
  SAY @348 /* Unfortunately, I can’t divulge that information. Magical business, you see. Some folks value their privacy far too much. */
  IF ~~ GOTO ZBNEPHWHEREGOEXPLAIN
END

IF ~~ ZBNEPHIWOULDBEGLADTO
  SAY @99 /* I’d be glad to. In fact, I was hoping that you would say that. Unfortunately there is little that I can say on my search for now, but I will let you know when that changes.
 */ /* I’d be glad to. In fact, I was hoping that you would say that. Unfortunately there is little that I can say on my search for now, but I will let you know when that changes. */
    =
  @349 /* What about you? What is your purpose here in Amn? */
  IF ~~ THEN REPLY @350 /* I need to rescue my friend Imoen. She has been captured and imprisoned somewhere by the Cowled Wizards, and I am intent on finding her. */ GOTO ZBNEPHCOWLEDWIZARDS
  IF ~~ THEN REPLY @351 /* Revenge on the mad wizard who brought me here. His name is Irenicus, and I’ll stop at nothing to hunt him down. */ GOTO ZBNEPHILLBEBYYOURSIDE
  IF ~~ THEN REPLY @352 /* Never mind that. Let’s just go. */ GOTO ZBNEPHONTOTHEROAD
END

IF ~~ ZBNEPHCOWLEDWIZARDS
  SAY @353 /* Well, let’s go give the Cowled Wizards the same treatment we just gave Dennaton and get your friend out of wherever they have her holed up. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",4) SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) MakeGlobal() JoinParty()~ EXIT
END

IF ~~ ZBNEPHILLBEBYYOURSIDE
  SAY @354 /* I’m all too familiar with the type. Well, I’ll be by your side for as long as you’ll have me, I give you that. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",4) SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1) MakeGlobal() JoinParty()~ EXIT
END

IF ~~ ZBNEPHONTOTHEROAD
  SAY @355 /* As you say. On to the road, then? */
  IF ~~ DO ~SetGlobal("ZB_NEPH_ESCAPE_1","GLOBAL",4) SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) MakeGlobal() JoinParty()~ EXIT
END

// Copper Cornet

IF ~AreaCheck("AR0406") GlobalLT("ZB_NEPHY_FRIEND","GLOBAL",0) Global("ZB_NEPH_COPPERCORENT","GLOBAL",1)~ THEN BEGIN OHHAIMARK
  SAY @101 /* Oh look who it is, the Bhaalspawn. Have you found what you are looking for, you nearsighted gibberling? */
  IF ~~ THEN REPLY @102 /* I apologize for my rudeness before, Nephetel. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO ZBNEPHREDEMPTION
  IF ~~ THEN REPLY @103 /* No need to be rude, I’m just passing by. */ GOTO ZBNPEHNEVERFORGIVE
  IF ~~ THEN REPLY @104 /* Excuse me? You’re the rude gibberling. */ GOTO ZBNPEHNEVERFORGIVE
END

IF ~~ ZBNEPHFORGIVE
  SAY @105 /* I’ll consider it a step in the right direction. Now, was there something you wanted? */
  IF ~~ GOTO ZBNEPHREDEMPTION
END

IF ~~ ZBNPEHNEVERFORGIVE
  SAY @106 /* I’ll decide what rude is, that is MY prerogative. */
  IF ~~ THEN REPLY @107 /* It seems that I’ve stepped in it now. I am sorry if I offended you. */ GOTO ZBNEPHREDEMPTION
  IF ~~ THEN REPLY @108 /* Whatever. I’m leaving. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",-1)~ EXIT
END

IF ~~ ZBNEPHREDEMPTION
  SAY @110 /* Apology accepted. Is there something you wanted? Perhaps you’re looking for my company in your group. */
  IF ~~ THEN REPLY @111 /* Yes, Nephetel. I’d like you to join us on our quest. */ /* Indeed, that’s why I’m here. Please, join the party, Nephetel. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO ZBNEPHREMINDYOULATERMISSION
  IF ~~ THEN REPLY @113 /* Nope, just stopping by to say hello, and now I’ve said it. Goodbye. */ EXIT
END

IF ~AreaCheck("AR0406") GlobalGT("ZB_NEPHY_FRIEND","GLOBAL",-1) Global("ZB_NEPH_COPPERCORENT","GLOBAL",1)~ ZBNEPHFREIND
  SAY @114 /* Well, hello there. I’m genuinely pleased to see you still in one piece. Are you looking for my company in your group? */
  IF ~~ THEN REPLY @111 /* Yes, Nephetel. I’d like you to join us on our quest. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO ZBNEPHREMINDYOULATERMISSION
  IF ~~ THEN REPLY @113 /* Nope, just stopping by to say hello, and now I’ve said it. Goodbye. */ EXIT
END

IF ~~ ZBNEPHREMINDYOULATERMISSION
  SAY @364 /* Good! I don’t doubt that you’ll make interesting company. I’ll remind you—I have my own mission here in Amn. I’ll let you know when I have a lead. */
  IF ~~ THEN REPLY @365 /* Very well. My own mission is focused on finding my friend Imoen, who was taken by the Cowled Wizards here in Athkatla. */ GOTO ZBNEPHJOKECAPTUREJOIN
  IF ~~ THEN REPLY @366 /* Alright, then. So long as you help me track down the mad mage I’m hunting. Irenicus is his name, and I owe him a great debt of pain. */ GOTO ZBNEPHKILLTHEWIZARDJOIN
  IF ~~ THEN REPLY @367 /* Great, let’s go. */ GOTO ZBNEPHLEADEROFFEWWORDSJOIN
END

IF ~~ ZBNEPHJOKECAPTUREJOIN
  SAY @115 /* You and yours seem to get captured often, huh? Well, I guess I’m not one to talk. Shall we get moving, then? */
  IF ~~ DO ~SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) MakeGlobal() JoinParty()~ EXIT
END

IF ~~ ZBNEPHKILLTHEWIZARDJOIN
  SAY @368 /* I’ll be sure to help deliver it, then. I’ve spent long enough around wizards to not have any qualms with sticking a knife in one deserving it. Let’s go. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) MakeGlobal() JoinParty()~ EXIT
END

IF ~~ ZBNEPHLEADEROFFEWWORDSJOIN
  SAY @369 /* After you, *leader*. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_JOINS","GLOBAL",1) MakeGlobal() JoinParty()~ EXIT
END

// GOTO ZBNEPHJ from here on out
