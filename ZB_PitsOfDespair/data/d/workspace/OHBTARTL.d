// creator  : weidu (version 24900)
// argument : OHBTARTL.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBTARTL~

IF ~  False()
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY #92758 /* ~By the Nine Hells, some of these performers are getting a bit too big for themselves! I need you two to rough a couple of these gits up and really teach 'em a lesson! I'm thinking you can start with—~ [OH92758] */
  IF ~~ THEN EXTERN ~OHBARZOL~ 0
END

IF ~~ THEN BEGIN 1
  SAY #92760 /* ~Excuse me? You must not have heard what I said! I need you to—~ [OH92760] */
  IF ~~ THEN EXTERN ~OHBBERYL~ 0
END

IF ~~ THEN BEGIN 2
  SAY #92762 /* ~But—but you should HEAR what they've been saying about me! One of 'em just said I had the intellect of a knuckle-dragging ape!~ [OH92762] */
  IF ~~ THEN EXTERN ~OHBARZOL~ 1
END

IF ~~ THEN BEGIN 3
  SAY #92766 /* ~Now just a moment! You mean you're going to let these performers show me that kind of dis—~ [OH92766] */
  IF ~~ THEN EXTERN ~OHBBERYL~ 2
END

IF ~~ THEN BEGIN 4
  SAY #92769 /* ~But—but— Wait 'til Dennaton hears about this!~ [OH92769] */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_TALKED_TARTL","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 5
  SAY #88283 /* ~Ah, <CHARNAME>! I've been anxiously awaiting your debut in the arena. I know what the legends say, but does the reality measure up?~ [OH88283] */
  IF ~~ THEN REPLY #88284 /* ~Can reality ever measure up to a legend?~ */ DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",2)
~ GOTO 6
  IF ~~ THEN REPLY #88285 /* ~We shall see.~ */ DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",2)
~ GOTO 33
  IF ~~ THEN REPLY #88286 /* ~If anything, the legends downplay my prowess.~ */ DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",2)
~ GOTO 34
END

IF ~~ THEN BEGIN 6
  SAY #88287 /* ~Hmm... Perhaps not, but if anyone can do it, I'm sure it's you. Now are you ready to fight?~ [OH88287] */
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
~ THEN REPLY #88288 /* ~Certainly!~ */ GOTO 7
  IF ~~ THEN REPLY #88289 /* ~I would rather talk a bit.~ */ GOTO 8
  IF ~~ THEN REPLY #88290 /* ~I think I need more time to prepare.~ */ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY #88291 /* ~Fantastic! I'll let Dennaton know. He'll be thrilled! Prepare yourselves, and I'll be right back!~ [OH88291] */
  IF ~~ THEN DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_101","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #88292 /* ~I always have time for one of my flock. What can I do for you?~ [OH88292] */
  IF ~  !GlobalGT("tier","GLOBAL",2)
Global("ohb_tartle_subject_brodle","global",0)
~ THEN REPLY #88293 /* ~During the welcoming feast, I noticed tension between you and Brodle. What's that about?~ */ DO ~SetGlobal("ohb_tartle_subject_brodle","global",1)
~ GOTO 10
  IF ~  GlobalGT("OHB_LAST_BATTLE","GLOBAL",0)
Global("tier","GLOBAL",1)
~ THEN REPLY #88294 /* ~I'd like to discuss my arena persona.~ */ GOTO 13
  IF ~  OR(2)
Global("tier","GLOBAL",1)
GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 18
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",105)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 19
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 20
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 21
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 22
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 23
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 24
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 25
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 26
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 27
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 28
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 29
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 30
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 31
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 32
  IF ~~ THEN REPLY #88296 /* ~Nothing. You can do nothing. Excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 9
  SAY #88297 /* ~We're all anxious to see what you've got. Come back to see me when you're ready to give the arena a go.~ [OH88297] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY #88298 /* ~Ah, yes, my "dear cousin," Brodle. He's envious because of my high station and the fact that Dennaton really relies on me. It causes friction, but we're family. What can you do?~ [OH88298] */
  IF ~~ THEN REPLY #88299 /* ~It must be tough running this place. One less talented than you would never be able to pull it off.~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #88300 /* ~In Brodle's defense, he is dealing with an incompetent cousin with delusions of grandeur.~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 12
  IF ~~ THEN REPLY #88301 /* ~I know what you mean. Let's discuss something else.~ */ GOTO 45
  IF ~~ THEN REPLY #88302 /* ~I need to go now. Excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #88303 /* ~It's so nice that someone finally sees what I have to put up with!~ [OH88303] */
  IF ~~ THEN REPLY #88304 /* ~You bear a heavy burden. May we discuss something else?~ */ GOTO 45
  IF ~~ THEN REPLY #88305 /* ~My heart goes out to you. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 12
  SAY #88306 /* ~Watch your mouth, performer. You wouldn't want to find yourself with no food rations... or worse!~ */
  IF ~~ THEN REPLY #88307 /* ~My deepest apologies, Tartle. Can we discuss something else?~ */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ GOTO 45
  IF ~~ THEN REPLY #88308 /* ~You'd have to go some distance to make this place worse than it already is. Good <DAYNIGHTALL>.~ */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #88309 /* ~I've been wondering what role you might choose to play. Generally, we have heroes and villains, both equally necessary. Just as the people need performers they love, they also need those they love to hate!~ [OH88309] */
  IF ~~ THEN REPLY #88310 /* ~I was thinking of playing a hero. I'd like the audience on my side.~ */ GOTO 14
  IF ~~ THEN REPLY #88311 /* ~I'd play a villain best. I thrive on hatred.~ */ GOTO 15
  IF ~~ THEN REPLY #88312 /* ~I'll be neither. This charade is absurd.~ */ GOTO 16
  IF ~~ THEN REPLY #88313 /* ~Any chance I get to address the crowd, I'll use to insult Dennaton.~ */ GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY #88314 /* ~Oh, good choice! I think you'll play the role to perfection! A word of advice, though: Do nothing in moderation. The arena is large, and it is impossible to see subtlety from the back rows. Go big. Be grandiose. The audience will gulp it all down like Calimshite Swill!~ [OH88314] */
  IF ~~ THEN REPLY #88315 /* ~I'll keep that in mind. Can I ask you something?~ */ GOTO 45
  IF ~~ THEN REPLY #88316 /* ~Big. Grandiose. No moderation. Got it. Excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 15
  SAY #88317 /* ~Very good! I've noticed the villains have the most fun. A word of advice though: The best villains go over the top. Force the audience to hate you! Rub your evil in their faces. Insult them, even. Done correctly, the people will hunger for your demise like a fat man hungers for rhubarb pie!~ [OH88317] */
  IF ~~ THEN REPLY #88318 /* ~I'll bear it in mind, but there's something else I'd like to discuss.~ */ GOTO 45
  IF ~~ THEN REPLY #88319 /* ~Insult the audience? That won't be a problem. Excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 16
  SAY #88320 /* ~Well, that's boring! If I were you, I'd come up with a better plan than that! With that attitude, you won't get any of the best fights! And the best fights come with the best rewards!~ [OH88320] */
  IF ~~ THEN REPLY #88321 /* ~Something to think about, to be sure. But there's something else I'd like to discuss.~ */ GOTO 45
  IF ~~ THEN REPLY #88322 /* ~I like my plan just fine. Good <DAYNIGHTALL>.~ */ EXIT
END

IF ~~ THEN BEGIN 17
  SAY #88323 /* ~Oh. That would be unwise. Dennaton likes heroes and he loves villains, but he hates those that do not appreciate his benevolence. If you don't watch yourself, you'll be sleeping on a cot in the dungeon with nothing but moldy bread and rancid water... or is that rancid bread and moldy water? I'll have to ask Cook how he prepares the sludge.~ [OH88323] */
  IF ~~ THEN REPLY #88324 /* ~Few have accused me of wisdom. Can I ask you something else?~ */ GOTO 45
  IF ~~ THEN REPLY #88325 /* ~One prison is much the same as another. Good <DAYNIGHTALL>.~ */ EXIT
END

IF ~~ THEN BEGIN 18
  SAY #88326 /* ~Oh, it wouldn't be fair to the other combatants to say. The spontaneity is part of the fun, but I'm sure a <PRO_MANWOMAN> of your talents can adjust to any danger on the fly!~ [OH88326] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88327 /* ~If you won't tell me that, let's discuss something else.~ */ GOTO 45
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 19
  SAY #88329 /* ~I probably shouldn't say, but... well, it's a pack of vampires, so cover your neck and make sure you have some protection against their unholy touch.~ [OH88329] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 20
  SAY #88330 /* ~Well, since it's you, I'll spill the beans. It's a band of githyanki. Some of them are armed with those special swords of theirs, so beware. They'll hit hard!~ [OH88330] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 21
  SAY #88331 /* ~Fine, stop twisting my arm here! What we've got ready for you is a sahuagin sorcerer who's adept at summoning water weirds.~ [OH88331] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 22
  SAY #88332 /* ~Dennaton would disapprove of my saying, but hey, you're a star, so your next opponent is Mardii, a halfling conjurer who specializes in summoning elementals. Beware, though, he's also quite the—uhh—"charmer," so protect yourself from mind spells too!~ [OH88332] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 23
  SAY #88333 /* ~Well, I like you, and I hope you live, so I'll help you out. Watch out for this next fight. Dennaton's advertising it as the Blood War brought to the arena. We have demons. We have devils. They're as likely to kill each other as you, so maybe you should stay out of their way until one side wins... and then finish the winner off!~ [OH88333] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 24
  SAY #88334 /* ~I probably shouldn't say, but... we have a group of monks from a cult known as the Twofold Trust. There's some to-do around about their belief—something about believing two goddesses are one. Eh, I'm no theologian, but I know this group is fanatical, highly resistant to mind-altering attacks, and absolutely vicious!~ [OH88334] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 25
  SAY #88335 /* ~Well, since it's you, I'll spill the beans. It's a big golem... but watch out because this golem has a unique secret. When defeated, it will shatter into several smaller golems, and believe it or not, it's the smaller ones that are the mean little buggers!~ [OH88335] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 26
  SAY #88336 /* ~Fine, stop twisting my arm here! Dennaton actually had the Hunters travel down to the coast and drag a lich out of her crypt! Suffice it to say, she's a powerful spellcaster who can summon hoards of undead underlings. But her best trick—and this is the secret—is that she is very adept at hypnotizing her opponents and turning them against their former friends!~ [OH88336] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 27
  SAY #88337 /* ~Dennaton would disapprove my saying, but hey, you're a star. Your next opponent is a trio of rakshasas. They're brutally efficient with their blades, but if you can somehow get past their innate resistance to magic, your victory should be easy.~ [OH88337] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 28
  SAY #88338 /* ~This is a tough one! You'll be facing several mind flayers, who will be looking to feast on your brains, but the real threat is their leader, who is capable of unleashing an unbelievable psionic assault that has killed all their previous opponents! To survive, you'll need to cut through his defenders quickly and then kill him before he is able to prepare his attack. Good luck!~ [OH88338] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 29
  SAY #88339 /* ~I probably shouldn't say, but... we have some of the Winged's old comrades-in-arms who actually tried to collect a bounty on HER! Hah, they failed, and so now they're fodder for the arena! I've a feeling the Winged herself will be on hand to cheer you on against that pack of fallen devas.~ [OH88339] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 30
  SAY #88340 /* ~Look, I think you should be very worried here. Next up is Dogar and Kazon. That's not one, but two, demiliches—twins in both life and death—and whatever you've heard about demiliches, I can assure you it's all true. You'll need all manner of magical defenses, and even then, know that they can strip you bare at any time.~ [OH88340] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 31
  SAY #88341 /* ~You're now among Dennaton's top acts, so he's pitting you against his other top performers. Your next opponent is Yllaxxia, a red dragon, and her two children. That's THREE dragons. Suffice it to say, prepare yourself for flames EVERYWHERE!~ [OH88341] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 32
  SAY #88342 /* ~I understand much of the current talk on the Sword Coast revolves around your next opponents. We have two children of the dead god, Bhaal, Lord of Murder, who have been raised by a cult to master and control their powers. They can actually manifest themselves into quasi-avatars of Bhaal, which makes them highly resistant to almost everything. Good luck. You'll need it!~ [OH88342] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~~ THEN REPLY #88328 /* ~I should go prepare then. Please excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 33
  SAY #88343 /* ~Indeed, there's no time like the present. Are you ready to fight?~ [OH88343] */
  IF ~~ THEN REPLY #88344 /* ~Certainly!~ */ GOTO 7
  IF ~~ THEN REPLY #88345 /* ~I'd rather talk a bit.~ */ GOTO 8
  IF ~~ THEN REPLY #88346 /* ~I think I need more time to prepare.~ */ GOTO 9
END

IF ~~ THEN BEGIN 34
  SAY #88347 /* ~Ooh, I do so hope you are correct! Now, are you ready to fight?~ [OH88347] */
  IF ~~ THEN REPLY #88348 /* ~Certainly!~ */ GOTO 7
  IF ~~ THEN REPLY #88345 /* ~I'd rather talk a bit.~ */ GOTO 8
  IF ~~ THEN REPLY #88346 /* ~I think I need more time to prepare.~ */ GOTO 9
END

IF ~~ THEN BEGIN 35
  SAY #88349 /* ~An interesting story! When I first came here, Dennaton quickly saw that I was unsuitable for the arena. I would be far too powerful for the mere mortals that fight here, you see, so he gave me to Cook and told him to "make something out of me."~ [OH88349] */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #88350 /* ~But after a short while, Cook had to admit I was "too tough for the stew." He and Dennaton had an argument about what to do with me, and finally Dennaton said if that's the best Cook could muster, then he'd make me his boss! And here I am!~ [OH88350] */
  IF ~~ THEN REPLY #88351 /* ~I can see why Dennaton chose you. Every team needs strong leadership to succeed.~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 37
  IF ~~ THEN REPLY #88352 /* ~Dennaton put you in charge to irritate Cook because he couldn't figure out how to turn you into a raspberry Tartle? You realize you're a joke, right?~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 38
  IF ~~ THEN REPLY #88353 /* ~Interesting, but I'd rather discuss something else.~ */ GOTO 45
  IF ~~ THEN REPLY #88354 /* ~And here I go.~ */ EXIT
END

IF ~~ THEN BEGIN 37
  SAY #88356 /* ~Truly, and every strong leader needs a strong right-hand <PRO_MANWOMAN>. Keep it up, <CHARNAME>, and you might just find yourself rising to the top here! Well, not the VERY top!~ [OH88356] */
  IF ~~ THEN REPLY #88357 /* ~Thank you. Now, I'd also like to discuss something else.~ */ GOTO 45
  IF ~~ THEN REPLY #88354 /* ~And here I go.~ */ EXIT
END

IF ~~ THEN BEGIN 38
  SAY #88358 /* ~A joke? How funny will you find it when your cot's taken out of your cell and you're given nothing to eat, eh? Keep it up and we're going to find out!~ [OH88358] */
  IF ~~ THEN REPLY #88359 /* ~I've endured worse. Can I ask you something else?~ */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ GOTO 45
  IF ~~ THEN REPLY #88355 /* ~I look forward to it. Good <DAYNIGHTALL>.~ */ DO ~SetGlobal("ohb_tartle_rotten_food","global",1)
~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY #88360 /* ~A horrible woman leading a ragtag team! No respect for me, and no respect for Dennaton! She just keeps whining for more and more money when the truth is she's fortunate Dennaton doesn't just throw her in the arena. The whole thing just irritates me!~ [OH88360] */
  IF ~~ THEN REPLY #88361 /* ~The Winged realized you're an irrelevant twit? I underestimated her.~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 40
  IF ~~ THEN REPLY #88362 /* ~Outrageous! Anyone that doesn't respect you SHOULD be thrown into the arena!~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #88363 /* ~Interesting, but I'd rather discuss something else.~ */ GOTO 45
  IF ~~ THEN REPLY #88354 /* ~And here I go.~ */ EXIT
END

IF ~~ THEN BEGIN 40
  SAY #88364 /* ~Irrelevant, eh? Wait till I talk to Dennaton about halving your reward money for your future matches! You won't think I'm irrelevant then, will you?~ [OH88364] */
  IF ~~ THEN REPLY #88365 /* ~Of course not! Now can we discuss something else?~ */ GOTO 45
  IF ~~ THEN REPLY #88354 /* ~And here I go.~ */ EXIT
END

IF ~~ THEN BEGIN 41
  SAY #88366 /* ~I'm glad that you get it. You know, I like you! Stick with me, <CHARNAME>, and I'll see you go a long way!~ [OH88366] */
  IF ~~ THEN REPLY #88367 /* ~Thank you. Now, I'd also like to discuss something else.~ */ GOTO 45
  IF ~~ THEN REPLY #88355 /* ~I look forward to it. Good <DAYNIGHTALL>.~ */ EXIT
END

IF ~~ THEN BEGIN 42
  SAY #88368 /* ~Oh, it's a fantastic opportunity! Dennaton's well-connected. He's got a powerful backer—heh, around here they don't GET more powerful—so he's definitely on the short list for high office. And when Dennaton gets to the top, I'll be right there beside him!~ [OH88368] */
  IF ~~ THEN REPLY #88369 /* ~You know what they say: Behind every great Red Wizard is an even greater halfling!~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #88370 /* ~Why would Dennaton bring a fat, lazy, intellectual lightweight like you anywhere? You'd be an anchor around his neck!~ */ DO ~IncrementGlobal("OHB_TARTLE_BUTTERUP","GLOBAL",-1)
~ GOTO 44
  IF ~~ THEN REPLY #88371 /* ~Interesting. Can I ask you something else?~ */ GOTO 45
  IF ~~ THEN REPLY #88354 /* ~And here I go.~ */ EXIT
END

IF ~~ THEN BEGIN 43
  SAY #88372 /* ~Yes, they DO say that, don't they? You know, <CHARNAME>, it's always good to have someone with your wisdom around. I'll remember you when I get to the top. Don't you worry!~ [OH88372] */
  IF ~~ THEN REPLY #88373 /* ~I appreciate it. May I ask you something else?~ */ GOTO 45
  IF ~~ THEN REPLY #88355 /* ~I look forward to it. Good <DAYNIGHTALL>.~ */ EXIT
END

IF ~~ THEN BEGIN 44
  SAY #88374 /* ~Oh, ya think so, do you? First, explain why Dennaton has me running this place if I'm so lazy and stupid? Didn't think about that, did you, genius? And second... well, I forgot what I was going to say, but it would have been good!~ [OH88374] */
  IF ~~ THEN REPLY #88375 /* ~I'm sure it would have been. Now can we discuss something else?~ */ GOTO 45
  IF ~~ THEN REPLY #88376 /* ~Whatever. Look, I need to go. Excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 45
  SAY #88377 /* ~Of course! Anything for the Champion of Baeloth's Pits!~ [OH88377] */
  IF ~  !GlobalGT("tier","GLOBAL",2)
Global("ohb_tartle_subject_brodle","global",0)
~ THEN REPLY #88378 /* ~During the welcoming feast, I noticed some tension between you and Brodle. What was that about?~ */ DO ~SetGlobal("ohb_tartle_subject_brodle","global",1)
~ GOTO 10
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
Global("ohb_tartle_subject_tartle","global",0)
~ THEN REPLY #88379 /* ~How'd you get to be in charge around here?~ */ DO ~SetGlobal("ohb_tartle_subject_tartle","global",1)
~ GOTO 35
  IF ~  GlobalGT("tier","GLOBAL",2)
Global("ohb_tartle_subject_winged","global",0)
~ THEN REPLY #88380 /* ~What can you tell me about the Winged and her crew?~ */ DO ~SetGlobal("ohb_tartle_subject_winged","global",1)
~ GOTO 39
  IF ~  GlobalGT("tier","GLOBAL",3)
Global("ohb_tartle_subject_dennaton","global",0)
~ THEN REPLY #88381 /* ~How do you like working for Dennaton?~ */ DO ~SetGlobal("ohb_tartle_subject_dennaton","global",1)
~ GOTO 42
  IF ~  Global("tier","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",0)
Global("ohb_tartle_subject_arena_act","global",0)
~ THEN REPLY #88382 /* ~I'd like to discuss my act in the arena.~ */ DO ~SetGlobal("ohb_tartle_subject_arena_act","global",1)
~ GOTO 13
  IF ~  OR(2)
Global("tier","GLOBAL",1)
GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 18
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",105)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 19
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 20
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 21
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 22
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 23
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 24
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 25
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 26
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 27
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 28
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 29
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 30
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 31
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
!GlobalLT("OHB_TARTLE_BUTTERUP","GLOBAL",2)
~ THEN REPLY #88295 /* ~Who or what do I fight next?~ */ GOTO 32
  IF ~~ THEN REPLY #88296 /* ~Nothing. You can do nothing. Excuse me.~ */ EXIT
END

IF ~  Global("OHB_TALKED_TARTL","LOCALS",2)
Global("ohb_finale","global",0)
~ THEN BEGIN 46
  SAY #88385 /* ~Hello again, <CHARNAME>. The arena awaits!~ [OH88385] */
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
!Global("OHB_LAST_BATTLE","GLOBAL",0)
~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 47
  IF ~  !StateCheck(Player1,STATE_REALLY_DEAD)
Global("OHB_LAST_BATTLE","GLOBAL",0)
~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 7
  IF ~~ THEN REPLY #88387 /* ~Before we get to that, may I ask you some questions?~ */ GOTO 45
  IF ~  Global("OHB_DEBUG","GLOBAL",2)
~ THEN REPLY #88388 /* ~Debug Mode On~ */ DO ~SetGlobal("OHB_DEBUG","GLOBAL",1)
~ GOTO 53
  IF ~  Global("OHB_DEBUG","GLOBAL",1)
~ THEN REPLY #88389 /* ~Debug Mode Off~ */ DO ~SetGlobal("OHB_DEBUG","GLOBAL",2)
~ GOTO 54
  IF ~~ THEN REPLY #88390 /* ~Let it. I've other things to do.~ */ EXIT
END

IF ~~ THEN BEGIN 47
  SAY #88391 /* ~Will you be fighting our latest offering, or will you attempt to fight one of your previous battles again?~ [OH88391] */
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",0)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_101","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_102","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_103","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_104","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_105","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",105)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_201","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_202","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_203","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_204","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_205","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",205)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_301","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_302","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_303","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_304","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_305","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",305)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_401","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_402","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_403","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN REPLY #88392 /* ~I'd like to fight my next battle.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_404","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
SetGlobal("OHB_INTERVIEW","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",0)
~ THEN REPLY #88393 /* ~Let me fight a previous battle again.~ */ GOTO 48
  IF ~~ THEN REPLY #88394 /* ~Actually, never mind—I shall return.~ */ EXIT
END

IF ~~ THEN BEGIN 48
  SAY #88395 /* ~Very well. From which tier will you select your battle?~ [OH88395] */
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",100)
~ THEN REPLY #88396 /* ~The first tier.~ */ GOTO 49
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",200)
~ THEN REPLY #88397 /* ~The second.~ */ GOTO 50
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",300)
~ THEN REPLY #88398 /* ~Let me try something from the third tier.~ */ GOTO 51
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",400)
~ THEN REPLY #88399 /* ~Number four, I think.~ */ GOTO 52
END

IF ~~ THEN BEGIN 49
  SAY #88400 /* ~Looking for an easy battle? So be it! Which battle will you fight again?~ [OH88400] */
  IF ~~ THEN REPLY #88401 /* ~Battle 1: A Farewell to Orcs~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_101","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",101)
~ THEN REPLY #88402 /* ~Battle 2: Of Minotaurs and Men.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_102","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",102)
~ THEN REPLY #88403 /* ~Battle 3: March of the Scales.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_103","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",103)
~ THEN REPLY #88404 /* ~Battle 4: Hulking Confusion.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_104","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",104)
~ THEN REPLY #88405 /* ~Battle 5: Call of the Underdark.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_105","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #88406 /* ~Never mind. I'll come back later.~ */ EXIT
END

IF ~~ THEN BEGIN 50
  SAY #88407 /* ~Didn't get beaten badly enough the first time, I see.~ [OH88407] */
  IF ~~ THEN REPLY #88408 /* ~Battle 6: Interview with Vampires.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_201","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",201)
~ THEN REPLY #88409 /* ~Battle 7: Gith is Madness.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_202","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",202)
~ THEN REPLY #88410 /* ~Battle 8: Sahuagin's Garden.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_203","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",203)
~ THEN REPLY #88411 /* ~Battle 9: Master of the Elements.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_204","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",204)
~ THEN REPLY #88412 /* ~Battle 10: The Demons & Devils You Know...~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_205","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #101144 /* ~Badly enough I'd rather not go through it a second time. I'll come back later.~ */ EXIT
END

IF ~~ THEN BEGIN 51
  SAY #88413 /* ~Well, aren't you a tough one? What's it gonna be?~ [OH88413] */
  IF ~~ THEN REPLY #88414 /* ~Battle 11: The Twofold Faith.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_301","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",301)
~ THEN REPLY #88415 /* ~Battle 12: Clay Division.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_302","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",302)
~ THEN REPLY #88416 /* ~Battle 13: Undead... and Lurching It.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_303","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",303)
~ THEN REPLY #88417 /* ~Battle 14: Tiger Crush.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_304","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",304)
~ THEN REPLY #88418 /* ~Battle 15: Mind the Flayers.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_305","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #101145 /* ~Something other than fighting for my life. I'll return later.~ */ EXIT
END

IF ~~ THEN BEGIN 52
  SAY #88419 /* ~So it's a challenge you want!~ [OH88419] */
  IF ~~ THEN REPLY #88420 /* ~Battle 16: Dawn of the Devas.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_401","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",401)
~ THEN REPLY #88421 /* ~Battle 17: The Twin Demiliches of Azgoloth.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_402","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",402)
~ THEN REPLY #88422 /* ~Battle 18: Breathe Fire, and Enter.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_403","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  OR(2)
Global("OHB_DEBUG","GLOBAL",1)
GlobalGT("OHB_LAST_BATTLE","GLOBAL",403)
~ THEN REPLY #88423 /* ~Battle 19: Small Bhaal.~ */ DO ~SetCutSceneLite(TRUE)
SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_404","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #101146 /* ~Now that I think about it, no. I'll come back later.~ */ EXIT
END

IF ~~ THEN BEGIN 53
  SAY #88424 /* ~Debug mode is now on.~ [OH88424] */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 54
  SAY #88425 /* ~Debug mode has been turned off.~ [OH88425] */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 55
  SAY #92752 /* ~Watch your back, <CHARNAME>! You have obviously done well in the arena, but your little stunts before the fights have quickly put you on Dennaton's bad side. That's a dangerous place to be!~ [OH92752] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 7
  IF ~~ THEN REPLY #88387 /* ~Before we get to that, may I ask you some questions?~ */ GOTO 45
  IF ~~ THEN REPLY #92074 /* ~Not much more dangerous than the place I'm in already, I think. Now leave me, I would ready myself for the next combat.~ */ EXIT
END

IF ~~ THEN BEGIN 56
  SAY #92753 /* ~Ah, <CHARNAME>, the audience loves you, and so do I! What can I do for one of the arena's greatest champions?~ [OH92753] */
  IF ~~ THEN REPLY #88386 /* ~I'm ready for my next fight.~ */ GOTO 7
  IF ~~ THEN REPLY #101129 /* ~Would you answer some questions for me?~ */ GOTO 45
  IF ~~ THEN REPLY #101130 /* ~Give <PRO_HIMHER> a little time to prepare. Excuse me.~ */ EXIT
END

IF ~~ THEN BEGIN 57
  SAY #92754 /* ~You have done a fantastic job thus far. Our polling shows that you already have a small but rabidly devoted fanbase. Keep it up, and I'm sure you'll become one of the most beloved performers ever. Now, what may I do for you?~ [OH92754] */
  IF ~~ THEN REPLY #101131 /* ~Give me another fight.~ */ GOTO 7
  IF ~~ THEN REPLY #88387 /* ~Before we get to that, may I ask you some questions?~ */ GOTO 45
  IF ~~ THEN REPLY #101132 /* ~Leave me alone for a bit. I need to prepare myself.~ */ EXIT
END

IF ~~ THEN BEGIN 58
  SAY #92755 /* ~If it isn't the most vile, disgusting villain we've ever had here... I LOVE IT! Just keep it up! We have more advance bookings than we've ever had, and most of them from spectators desperate to be there the day you finally die. Now, what can I do for you?~ [OH92755] */
  IF ~~ THEN REPLY #101133 /* ~Give me something to kill.~ */ GOTO 7
  IF ~~ THEN REPLY #88387 /* ~Before we get to that, may I ask you some questions?~ */ GOTO 45
  IF ~~ THEN REPLY #101134 /* ~You can bugger off and let me prepare for my next fight.~ */ EXIT
END

IF ~~ THEN BEGIN 59
  SAY #92756 /* ~Well, <CHARNAME>, I must say we've had more despised villains than you before, but you are well on your way to surpassing them! Just keep doing what you're doing, and I'm sure you'll get there. Now, what can I do for you?~ [OH92756] */
  IF ~~ THEN REPLY #101135 /* ~Feed me another opponent.~ */ GOTO 7
  IF ~~ THEN REPLY #101136 /* ~I've some questions for you.~ */ GOTO 45
  IF ~~ THEN REPLY #101137 /* ~Leave me to prepare. Go. Quickly.~ */ EXIT
END

IF ~~ THEN BEGIN 60
  SAY #92757 /* ~<CHARNAME>, your prowess in the arena is unquestionable, but you really need to work more on your act. I don't know where to slot you right now. Are you a hero? Are you a villain? It's making it hard to sell you. Anyway, what do you need?~ [OH92757] */
  IF ~~ THEN REPLY #101138 /* ~Another fight.~ */ GOTO 7
  IF ~~ THEN REPLY #101139 /* ~Answers to some questions.~ */ GOTO 45
  IF ~~ THEN REPLY #101140 /* ~Time to prepare myself. Excuse me.~ */ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 61
  SAY #100509 /* ~You've had a nice run, <CHARNAME>, but this is as far as you go. I'll not let you destroy what Dennaton and I have worked so hard to achieve.~ [OH100509] */
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100529 /* ~Don't be a fool, Tartle. You and Dennaton are no team. He does not—and never will—consider you an equal.~ */ GOTO 62
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100529 /* ~Don't be a fool, Tartle. You and Dennaton are no team. He does not—and never will—consider you an equal.~ */ EXTERN ~OHBSYMM~ 30
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100530 /* ~Join me, Tartle. This is your only real chance for freedom.~ */ GOTO 63
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100530 /* ~Join me, Tartle. This is your only real chance for freedom.~ */ EXTERN ~OHBSYMM~ 31
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100531 /* ~Glad I found you, Tartle. I was beginning to worry you'd get away before I could kill you.~ */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100531 /* ~Glad I found you, Tartle. I was beginning to worry you'd get away before I could kill you.~ */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 62
  SAY #100513 /* ~You have me wrong, <CHARNAME>. I neither need nor want "equality." It is respect that motivates me, and as Dennaton's right-hand halfling, I shall have it, even if it is only a reflection off him.~ [OH100513] */
  IF ~~ THEN REPLY #100532 /* ~Dennaton's career—and quite possibly his life—are over. Why go down with him?~ */ GOTO 64
  IF ~  Global("ohb_promise_spare_tartle","global",1)
~ THEN REPLY #100533 /* ~Brodle made me promise not to harm you. I'll keep my word if you don't interfere.~ */ GOTO 66
  IF ~~ THEN REPLY #100534 /* ~You will get no respect if you're dead. Out of my way!~ */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100535 /* ~No more talking, Tartle. Time to die.~ */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100535 /* ~No more talking, Tartle. Time to die.~ */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 63
  SAY #100514 /* ~You have me wrong, <CHARNAME>. I neither need nor want "freedom." It is respect that motivates me, and as Dennaton's right-hand halfling, I shall have it, even if it is only a reflection of him.~ [OH100514] */
  IF ~~ THEN REPLY #100536 /* ~Dennaton's career, and quite possibly his life, are over. Why hitch your wagon to that?~ */ GOTO 64
  IF ~  Global("ohb_promise_spare_tartle","global",1)
~ THEN REPLY #100537 /* ~Brodle made me promise not to harm you. Stay out of my way and I'll keep my word.~ */ GOTO 66
  IF ~~ THEN REPLY #100538 /* ~You'll get no respect if you're dead. Get out of my way!~ */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100539 /* ~All you'll have is a bloody death!~ */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100539 /* ~All you'll have is a bloody death!~ */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 64
  SAY #100515 /* ~Because there are no other options for me. I cannot go back to my life as it was before here! The others laughing at me... Brodle lording it all over me. I won't do it, I tell you, I WON'T!~ [OH100515] */
  IF ~  Global("ohb_promise_spare_tartle","global",1)
~ THEN REPLY #100540 /* ~You have Brodle wrong, Tartle. He cares about you. He made me promise not to harm you. I'll keep that promise if you don't interfere.~ */ GOTO 67
  IF ~~ THEN REPLY #100541 /* ~Your choice is simple. Get out of my way or die!~ */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100542 /* ~If you won't go back to your old life, I'll give you a new death!~ */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100542 /* ~If you won't go back to your old life, I'll give you a new death!~ */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 65
  SAY #100516 /* ~Be that as it may, I have no other choice. I cannot go back to my life as it was before here! The others laughing at me… I won't do it. I can't, can I?~ [OH100516] */
  IF ~~ THEN REPLY #100543 /* ~I've no time for this. Will you stand aside or not?~ */ GOTO 68
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100544 /* ~If you can't live, then you will certainly die!~ */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100544 /* ~If you can't live, then you will certainly die!~ */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 66
  SAY #100517 /* ~Brodle did that? Really? I… I had no idea he had it in him. Perhaps I misjudged him… No, it is too late for any of that! Any future I have is now with Dennaton. He is the one I must follow.~ [OH100517] */
  IF ~~ THEN REPLY #100545 /* ~Dennaton is doomed, Tartle. This whole arena and everyone associated with it will be wiped out, an embarrassment to be forgotten.~ */ GOTO 65
  IF ~~ THEN REPLY #100546 /* ~Look, you have a simple choice. Get out of my way or die!~ */ GOTO 69
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100547 /* ~Follow him to your death!~ */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100547 /* ~Follow him to your death!~ */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 67
  SAY #100518 /* ~Brodle did that? Really? I… I had no idea he had it in him. Perhaps I misjudged him…~ [OH100518] */
  IF ~~ THEN REPLY #100548 /* ~There's no time for this. Will you stand aside or not?~ */ GOTO 68
  IF ~  OR(2)
!InMyArea("ohbsymm")
Dead("ohbsymm")
~ THEN REPLY #100549 /* ~Take your folly to your grave!~ */ GOTO 70
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN REPLY #100549 /* ~Take your folly to your grave!~ */ EXTERN ~OHBSYMM~ 32
END

IF ~~ THEN BEGIN 68
  SAY #100519 /* ~I don't know what to do. I just don't know! I… I… Oh, this arena is through, I see that now. You are determined to destroy it, and my only chance lies in getting out of your way. Very well. You shall get no further resistance from me.~ [OH100519] */
  IF ~~ THEN EXTERN ~OHBBERYL~ 7
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN EXTERN ~OHBSYMM~ 33
END

IF ~~ THEN BEGIN 69
  SAY #100520 /* ~I don't know what to do. I just don't know! I… I… Oh, this arena is through, I see that now. But if it must end, then I'll die with it!~ [OH100520] */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
~ EXIT
  IF ~  InMyArea("ohbsymm")
!Dead("ohbsymm")
~ THEN DO ~SetGlobal("OHB_TARTLE_FIGHTS","GLOBAL",1)
~ EXTERN ~OHBSYMM~ 34
END

IF ~~ THEN BEGIN 70
  SAY #100521 /* ~Yes, there's no point in further delaying the inevitable. I shall revel in your death, <CHARNAME>.~ [OH100521] */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
ActionOverride("ohbsymm",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 71
  SAY #100527 /* ~Haximus, where are you—? Fine then! Run away if you must! I shall fight on alone if need be! Come then, <CHARNAME>, and defend yourself!~ [OH100527] */
  IF ~~ THEN DO ~SetGlobal("ohb_finale_arena","oh8300",2)
ActionOverride("ohbarzol",Enemy())
ActionOverride("ohbberyl",Enemy())
Enemy()
ActionOverride("ohbsymm",EscapeArea())
~ EXIT
END

IF ~  Global("OHB_TALKED_TARTL","LOCALS",0)
~ THEN BEGIN 72
  SAY #90522 /* ~Come in! Come in and take your seats. This is a wonderful day for you all—the beginning of a new life as a hero fit for the epics... or a villain, perhaps, equally fit for the bards to sing of. The choice is yours.~ [OH90522] */
  IF ~~ THEN DO ~SetGlobal("OHB_TALKED_TARTL","LOCALS",1)
~ GOTO 73
END

IF ~~ THEN BEGIN 73
  SAY #90523 /* ~But I get ahead of myself. Introductions are in order. I am Quartermaster Tartle, your new best friend and advocate as you embark upon your path to fame, fortune, and, yes, even immortality!~ [OH90523] */
  IF ~~ THEN EXTERN ~OHBBRODL~ 93
END

IF ~~ THEN BEGIN 74
  SAY #90525 /* ~Brodle? Did you say something? No? Heh... Keep it that way!~ [OH90525] */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY #90526 /* ~So... where was I? Oh, yes... I am Quartermaster Tartle, friend to the famous, mentor to the mighty, grand vizier of all...~ [OH90526] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 251
END

IF ~~ THEN BEGIN 76
  SAY #90528 /* ~Oh, yes... of course, sir. E-e-everyone, this is Dennaton, Master of the Arena. His wealth is unending, his largesse unmatched, his—~ [OH90528] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 252
END

IF ~~ THEN BEGIN 77
  SAY #90530 /* ~O-o-of course, sir. A-as you wish, sir. Right away, sir.~ [OH90530] */
  IF ~~ THEN EXTERN ~OHBDENNA~ 253
END
