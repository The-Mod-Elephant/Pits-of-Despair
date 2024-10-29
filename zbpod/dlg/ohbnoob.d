// creator  : weidu (version 24900)
// argument : OHBNOOB.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBNOOB~

IF ~  Global("OHB_NOOBER","GLOBAL",4)
~ THEN BEGIN 0
  SAY ~Heya! Wanna play a game?~
  IF ~~ THEN REPLY ~Yes!~ GOTO 3
  IF ~~ THEN REPLY ~Yes.~ GOTO 3
  IF ~~ THEN REPLY ~Yes?~ GOTO 3
  IF ~~ THEN REPLY ~No.~ GOTO 1
  IF ~~ THEN REPLY ~No. Gods, no.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~How about now?~
  IF ~~ THEN REPLY ~All right.~ GOTO 3
  IF ~~ THEN REPLY ~No.~ GOTO 1
  IF ~~ THEN REPLY ~No. No, no, no. Noooo...~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~How about now?~
  IF ~~ THEN REPLY ~Yes. Fine. Let's play a game.~ GOTO 0
  IF ~~ THEN REPLY ~Please. No.~ GOTO 1
  IF ~~ THEN REPLY ~NO!~ GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY ~How about now? Still wanna play a game?~
  IF ~~ THEN REPLY ~Yes!~ GOTO 4
  IF ~~ THEN REPLY ~I said yes.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~How about now?~
  IF ~~ THEN REPLY ~Still yes.~ GOTO 5
  IF ~~ THEN REPLY ~Can you hear me? I said yes.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~How about now?~
  IF ~~ THEN REPLY ~Yes, yes, I get it. Move on.~ GOTO 6
  IF ~~ THEN REPLY ~I'm going to kill you if you don't move forward.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Great! We're gonna play a really fun game. But you gotta do some roleplaying! What do you wanna play as: a fighter, a wizard, or a thief?~
  IF ~~ THEN REPLY ~I shall take on the role of a fighter.~ GOTO 7
  IF ~~ THEN REPLY ~A wizard sounds like fun.~ GOTO 8
  IF ~~ THEN REPLY ~I enjoy sneaking around. Let me try being a thief.~ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY ~A fighter's a fine choice for your first game. I'm gonna be the dungeon master, which means I create the story and situations and then you get to play through them! I'll even roll your dice for you. Ready to play? Good, let's go.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY ~Ah, a fan of magic. Wizard it is, then. I'm gonna be the dungeon master, which means I create the story and situations and then you get to play through them! I'll even roll your dice for you. Ready to play? Good, let's go.~
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 9
  SAY ~Okay, thief it is! I'm gonna be the dungeon master, which means I create the story and situations and then you get to play through them! I'll even roll your dice for you. Ready to play? Good, let's go.~
  IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 10
  SAY ~Ooh, a fighter! You like to act tough, do you? I thought I wanted to be a fighter once, but then my mother reminded me I have trouble chopping wood for the winter... and the wood's sitting still! Better I stick to telling stories, I think.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~Anyway, let me just get my Tome of Adventure here... right, got it. Let's get started.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~You are a fighting <PRO_MANWOMAN>, a mercenary who makes <PRO_HISHER> living with <PRO_HISHER> sword, and a good living it has been. A paragon of youth, strength, and vitality, you are an impressive sight in your brightly polished armor. So it is no surprise that when you enter the town of Berenford, the children look at you in awe, even as their parents run to shield them from an unknown, yet powerful new presence.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~It is a day like any other, and you had briefly considered scrounging around Berenford for work, but something in these people's attitudes stops you in your tracks. All is not right here. It is not unusual for people to be scared of the unknown, but this group seems a bit TOO scared. As the adults shuffle their children indoors, you are left facing what might loosely be termed a town square. Looking around, you notice several nondescript buildings, a temple of Lathander, and a blacksmith.~
  IF ~  !Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Enter the Temple of Lathander.~ GOTO 14
  IF ~  !Global("OHBN_SENESCHAL","LOCALS",1)
~ THEN REPLY ~Enter the blacksmith's.~ GOTO 20
END

IF ~~ THEN BEGIN 14
  SAY ~The Temple of Lathander is adorned in rich yellow, orange, and red tapestries arranged on the walls such that they mimic the hues and patterns of a rising sun. You at first think the temple to be empty before a small woman meekly pokes her head out of one of the side vestibules. "Sorry," she says timidly, "but I'm afraid the temple is closed. Please try back later."~
  IF ~~ THEN REPLY ~Ask her why the temple is closed.~ GOTO 15
  IF ~  !Global("OHBN_SENESCHAL","LOCALS",1)
~ THEN REPLY ~Leave the temple and enter the blacksmith's.~ GOTO 20
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 15
  SAY ~"The priest, Morninglord Aldaron, is not here at the moment, and I am but a lowly acolyte. I have neither the training nor enough of the Morninglord's favor to provide adequate temple services on my own."~
  IF ~~ THEN REPLY ~Inquire as to when Aldaron will return.~ GOTO 16
  IF ~  !Global("OHBN_SENESCHAL","LOCALS",1)
~ THEN REPLY ~Leave the temple and enter the blacksmith's.~ GOTO 20
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 16
  SAY ~"He does not approve his schedule with me," she answers curtly as she turns away. Yet something stops her, and she turns back, eyes your glistening armor and the heavy sword sheathed on your belt, and begins again. "I apologize, but the truth is the Morninglord has been gone too long now. He is almost certainly dead."~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~"He left almost three tendays ago to journey to Mount Redigar, but he should have returned long ago. It is at most a three-day journey there and another three back. You can even see the mountain from the town square."~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~"Mount Redigar is the home of Fernault, a warlord that recently moved into the area and began terrorizing the people. Aldaron was certain he could talk sense into the tyrant—confident that Lathander would protect him if the worst came—but he has not returned!"~
  IF ~~ THEN DO ~SetGlobal("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~"My mentor—my friend—has been slain by that monster, and now I don't see how the people here will ever be free of him! Please, <PRO_SIRMAAM>, you look to be a great warrior. Rid our town of this tyrant if you can! Oh, I'm sorry, but my emotions overwhelm me. I cannot speak any more of it!" She runs off, leaving you alone in the temple.~
  IF ~  !Global("OHBN_SENESCHAL","LOCALS",1)
~ THEN REPLY ~Leave the temple and enter the blacksmith's.~ GOTO 20
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 20
  SAY ~The blacksmith's shop is a small wooden building with a low roof and a crowded and drafty interior. The wall is lined with examples of his handiwork: swords, spears, and shields, but everything is covered in soot. The smith looks up warily from his anvil as you enter and beckons you forward. "What d'ya want?" he asks gruffly.~
  IF ~~ THEN REPLY ~Ask if he has anything rare for sale.~ GOTO 21
  IF ~  !Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the blacksmith's and enter the temple.~ GOTO 14
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 21
  SAY ~He shakes his head. "I have nothing for sale. Not anymore!"~
  IF ~~ THEN REPLY ~Ask why a merchant would have no items for sale.~ GOTO 22
  IF ~  !Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the blacksmith's and enter the temple.~ GOTO 14
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 22
  SAY ~"Because we no longer have any currency! All we used to have went to our new lord, Fernault. 'Taxes,' he called it, but it's more like 'theft' if you ask me! Because he simply takes everything we get, gold has become worthless here, and so I don't want any you may have. The only way I work now is for an exchange of services, and I doubt you'd have anything I want. Although..."~
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY ~Suddenly, there is a commotion at the door, and before you can object, the smith hurries you behind a nearby pile of crates and motions you to be silent. Almost before he can turn back around, a large man bursts into his shop. "Smith!" he bellows. "Your shipment is late. Where are the weapons Fernault has ordered?"~
  IF ~~ THEN DO ~SetGlobal("OHBN_SENESCHAL","LOCALS",1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~"I—I—I need time," the smith stammers in reply. "That many weapons cannot be made in a tenday, particularly when it is so difficult to come by supplies, a situation brought about by your master, I might add!"~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~The large man steps forward and backhands the smith, sending him to the ground. "Watch your tongue, cur! First, Lord Fernault is not just MY master, but OUR master! Second, he will not be blamed for your incompetence! You have two days to finish the order. If you do not have the weapons by then, your daughter will pay the price!"~
  IF ~~ THEN REPLY ~Stay in hiding.~ GOTO 26
  IF ~~ THEN REPLY ~Smite the man from behind with your sword.~ GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY ~The smith nods his understanding, and the large man barrels his way out the door. When he is gone, the smith motions you forward and out the door. "You've got to go," he says nervously. "I have far too much work to do."~
  IF ~~ THEN REPLY ~Ask him about Lord Fernault.~ GOTO 28
  IF ~  !Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the blacksmith's and enter the temple.~ GOTO 14
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 27
  SAY ~With a mighty swing, you split the man's skull, felling him in one blow. As his body slumps to the floor, the smith looks at you in a disbelief which soon turns to panic. "You've really done it now," he cries. "Lord Fernault's seneschal killed in my shop! Quick, help me get the body into the furnace before anyone finds it!"~
  IF ~~ THEN REPLY ~Ask him about Lord Fernault.~ GOTO 28
  IF ~  !Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the blacksmith's and enter the temple.~ GOTO 14
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 28
  SAY ~"No one's ever seen him," the man whispers, "but he and his soldiers came here several tendays ago and immediately set about robbing the people blind. Anything of value—gold, jewels, iron, even food and, as you just saw, weapons—they simply seize without payment."~
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~"His fortress lies somewhere in Mount Redigar to the north. That's where they took my daughter several days ago as a means of 'persuading' me to continue working for free. Why do you ask? You aren't really thinking of getting rid of him, are you? Because if you are, I beg you to keep an eye out for Peldea, my daughter. Rescue her if you can!"~
  IF ~~ THEN REPLY ~Agree to rescue his daughter.~ GOTO 30
  IF ~~ THEN REPLY ~Tell him that you cannot guarantee you will be able to rescue his daughter.~ GOTO 33
  IF ~~ THEN REPLY ~Tell him that you have no intention of going to Lord Fernault's fortress.~ GOTO 34
END

IF ~~ THEN BEGIN 30
  SAY ~"Oh, thank you!" he replies with a wide smile. "Since you have promised to return to me the only thing in this world I care about, I shall give you this!" He pulls up a loose plank from the floor, reaches his hand into the hole, and brings forth a rough cloth, which he quickly unwraps to reveal a perfectly smooth blue blade.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~As your hand grasps the sword's hilt, a series of orange runes pulse along the crossguard, hinting at the power within the blade. "It's called Caelfor, and it was passed to me by my father, a master smith known far and wide as the best these parts have ever known. I reckon there are few better swords in the world than this. May it always strike true for you, and if you could lodge it in Lord Fernault's brain, I would celebrate your name forever."~
  IF ~~ THEN DO ~SetGlobal("OHBN_BLADE","LOCALS",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~"But we have spoken too long already. I really do need to get back to work, so I wish you luck in your travels. Farewell."~
  IF ~  !Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the blacksmith's and enter the temple.~ GOTO 14
  IF ~  Global("OHBN_KNOWS_FERNAULT","LOCALS",1)
~ THEN REPLY ~Leave the town and head to Mount Redigar.~ GOTO 35
END

IF ~~ THEN BEGIN 33
  SAY ~"Ah," he replies, obviously disappointed. "I shouldn't have gotten my hopes up. Suffice it to say, I will be happy for anything you can do."~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 34
  SAY ~"Ah," he replies, obviously disappointed. "I shouldn't have gotten my hopes up. If you do change your mind, the people around here would be mightily relieved if you could end his tyranny."~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 35
  SAY ~As you turn to the north, heading out of town, a short, balding man approaches you meekly, hat in hand. "Excuse me, <PRO_SIRMAAM>," he begins, "but you look as though you are made of the stuff of heroes. Would you free our town from the clutches of Lord Fernault and his soldiers?"~
  IF ~~ THEN REPLY ~Indicate that you will.~ GOTO 36
  IF ~~ THEN REPLY ~Say that you will for the right price.~ GOTO 37
  IF ~~ THEN REPLY ~Say that you are too busy at the moment.~ GOTO 38
END

IF ~~ THEN BEGIN 36
  SAY ~"Oh, thank you, THANK YOU!" He shakes your hand furiously. "We do not have anything to pay you with right now, for Fernault's greed is so great that he has stripped our land bare of anything of value. However, anyone that can storm his fortress and kill him will undoubtedly find his vaults filled to overflowing with gold. Now good luck to you, and fare thee well!"~
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 37
  SAY ~"We do not have anything to pay you with right now," he answers, "for Fernault's greed is so great that he has stripped our land bare of anything of value. However, anyone that can storm his fortress and kill him will undoubtedly find his vaults filled to overflowing with gold. But if that is not enough, then so be it. Fare thee well!"~
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 38
  SAY ~"That is a shame," he answers, "for Fernault's greed is so great that he has stripped our land bare of anything of value. Therefore, anyone that can storm his fortress and kill him will undoubtedly find his vaults filled to overflowing with gold. But if you are too busy, then so be it. Fare thee well!"~
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY ~"The soldiers were fighting amongst themselves, so they agreed to split up. One group took our wagon and horses and headed west. Another took my mother and brother and headed east." You look on the ground and, sure enough, there are tracks leading both east and west. The soldiers made no attempt to conceal their movement, so both paths would be easy enough to follow.~
  IF ~~ THEN REPLY ~Head west in pursuit of the wagon and horses.~ GOTO 40
  IF ~~ THEN REPLY ~Head east in pursuit of the girl's mother and brother.~ GOTO 57
  IF ~~ THEN REPLY ~Forget the entire mess and continue north towards Mount Redigar.~ DO ~SetGlobal("OHBN_HEARTLESS","LOCALS",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 40
  SAY ~The path west winds around several low hills and into a lightly forested area. The sun filters down through the canopy, and the birds chirp merrily in the cool breeze. Overall, it is a not unpleasant journey.~
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY #1007699 /* <Invalid Strref 1007699> */
  IF ~~ THEN REPLY ~Attack the orcs.~ GOTO 42
  IF ~~ THEN REPLY ~Settle down to wait for a better opportunity.~ GOTO 55
  IF ~~ THEN REPLY ~Leave the scene and continue north to Mount Redigar.~ GOTO 69
END

IF ~~ THEN BEGIN 42
  SAY ~You draw your blade and charge into the camp while the confused orcs drop their mugs and stumble for their weapons. Not giving them any chance to recover, you bring your sword down with a mighty blow, nearly cleaving the first orc in two, and then turn to face the second. The monster raises its axe and growls at you as it lumbers forward.~
  IF ~~ THEN GOTO 44
  IF ~  OR(2)
RandomNum(6,1)
Global("OHBN_BLADE","LOCALS",1)
~ THEN GOTO 43
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY ~You deftly sidestep the awkward swing and bring your own sword up in a backward arc directly into the orc's back. The blade cleaves through the monster's thin leather armor, and it grunts loudly as it falls over into the dust. It twitches a couple times on the ground but quickly stills in the blood-soaked mud.~
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 44
  SAY ~You deftly sidestep the awkward swing and bring your own sword up in a backward arc directly towards the orc's back, but you are surprised when the beast, anticipating your move, dives forward into the dirt, causing your own sword to swing harmlessly through the air.~
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY ~Before you can adjust, the orc swipes your legs out from under you, and your blade flies from your grip as you plunge headlong into the dirt. As you roll over, desperately trying to regain your footing, the orc lands on your chest, a dagger now plunging towards your throat. Within seconds, the world goes black.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 46
  SAY ~The sudden sound of soft chanting on the breeze makes the hair on the back of your neck stand on end. Turning around, you notice another orc you had not seen before, this one wearing the robes of a tribal shaman, standing by the wagon waving his hands.~
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Charge him and attack.~ GOTO 49
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Charge him and attack.~ GOTO 47
  IF ~~ THEN REPLY ~Throw your sword at him.~ GOTO 50
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Run for cover.~ GOTO 52
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run for cover.~ GOTO 51
END

IF ~~ THEN BEGIN 47
  SAY ~You quickly cover the ground between the two of you, but not before the shaman finishes his enchantment. You notice a shimmering in the air around his hands that quickly enlarges to encompass you. For a moment, you feel extremely tired, and you find yourself thinking of simply curling up on the ground and going to sleep, but you manage to shake off the effects of the enchantment.~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY ~With a mighty roar, you raise your sword and bring it down upon the upraised arm of the shaman. Skin and bone give way as you slice clean through the frail body. The orc crumples to the ground and moves no more.~
  IF ~~ THEN DO ~IncrementGlobal("OHBN_XP","LOCALS",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 49
  SAY ~You quickly cover the ground between the two of you, but not before the shaman finishes his enchantment. You notice a shimmering in the air around his hands that quickly enlarges to encompass you. Suddenly, you feel extremely tired, and you find yourself thinking how wonderful a nap would feel. Without a care in the world, you curl up into a ball and fade off into a dream from which you never wake.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 50
  SAY ~With a shout, you hurl your sword through the air. The weapon arcs wildly and clatters noisily into the wagon, but it is enough to disrupt the shaman's concentration. His spell fizzles with a sharp explosion, and he staggers back, hands already digging into his pouches for another set of reagents. Acting quickly, you give him a swift punch to his jaw that sends him reeling. You regain your sword as he begins weaving another spell.~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 51
  SAY ~You quickly dodge behind the wagon, but not before the shaman finishes his enchantment. You notice a shimmering in the air around his hands that quickly enlarges to encompass you. For a moment, you feel extremely tired, and you find yourself thinking of simply curling up on the ground and going to sleep, but you manage to shake off the effects of the enchantment. Realizing his spell has failed, you charge around the wagon and straight for him.~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 52
  SAY ~You quickly dodge behind the wagon, but not before the shaman finishes his enchantment. You notice a shimmering in the air around his hands that quickly enlarges to encompass you. Suddenly, you feel extremely tired, and you find yourself thinking how wonderful a nap would feel. Without a care in the world, you curl up into a ball and fade off into a dream from which you never wake.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 53
  SAY ~Searching the wagon reveals little of use to you. The cargo consists mostly of the drained ale kegs, bolts of cloth, beads, and other baubles for making clothes, but one helmet draws your attention. Though it is made of metal and appears well crafted and sturdy, it is very light—too light for normal metal. A set of soft purple runes etched into the crown confirms that the helmet is enchanted in some way.~
  IF ~~ THEN REPLY ~Put the helmet on.~ DO ~SetGlobal("OHBN_HELMET","LOCALS",1)
~ GOTO 54
  IF ~~ THEN REPLY ~Discard the helmet and continue on to Mount Redigar.~ GOTO 69
END

IF ~~ THEN BEGIN 54
  SAY ~The helm fits easily onto your head—so easily, in fact, that you swear it must have been forged just for you—but you experience no obvious magical effect. Shrugging, you proceed onwards towards Mount Redigar.~
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 55
  SAY ~You settle down to observe the camp. Hours go by until night at last settles over the scene. Although the two orcs occasionally gaze out into the fields to the south—thereby hinting at the existence of others out foraging for food or supplies—no one else returns to the camp. At last, the ale gets the best of the two, and they settle down by the fire, the sounds of snoring soon filling the air.~
  IF ~~ THEN REPLY ~Sneak up on the orcs and kill them.~ GOTO 56
  IF ~~ THEN REPLY ~Leave the scene and continue north to Mount Redigar.~ GOTO 69
END

IF ~~ THEN BEGIN 56
  SAY ~You sneak up quietly and plunge your sword into the first orc's gut. The beast squeals under the blow but otherwise is unable to react before its life bleeds out. The second orc sits up with a shout, but you bring your blade up in a savage arc directly into its jaw. It too slumps over in a pool of its own blood. The entire fight is finished before it has begun.~
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 57
  SAY ~The path east winds around several low hills and into a lightly forested area. The sun filters down through the canopy, and the birds chirp merrily in the cool breeze. Overall, it is a not unpleasant journey.~
  IF ~~ THEN GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY ~As the light fades, you come to a break in the trees that harbors a small camp. Within, a single large humanoid figure absently pokes a stick into a fire pit while two frightened humans—a woman and a young boy—sit opposite, wide-eyed with fear.~
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY ~The large humanoid shifts position so that you can clearly see its face, and your initial suspicion is confirmed. It is an ogre, the smallest and weakest of the giant-kin, but nevertheless much larger and stronger than a human. Looking around, you see no other guards for the two prisoners. The ogre sighs and continues poking his stick into the fire disinterestedly.~
  IF ~~ THEN REPLY ~Sneak up behind the ogre and attack him.~ GOTO 60
  IF ~~ THEN REPLY ~Wait for a better opportunity.~ GOTO 66
  IF ~~ THEN REPLY ~Leave the captives to their fate and continue to Mount Redigar.~ GOTO 69
END

IF ~~ THEN BEGIN 60
  SAY ~You tiptoe silently up behind the ogre, but a misstep causes a twig to break loudly under your feet. The ogre snaps to attention and turns quickly around. It snarls at the sight of you and picks up the bone of a large unknown animal lying nearby. Swinging its bone club with a roar, it lumbers towards you.~
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Stand and fight the ogre.~ GOTO 65
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Stand and fight the ogre.~ GOTO 61
  IF ~~ THEN REPLY ~Flee and continue to Mount Redigar.~ GOTO 69
END

IF ~~ THEN BEGIN 61
  SAY ~The ogre swings its makeshift club wildly at you as you deftly feint to the right and then dodge left. Your move puts the behemoth off balance, and you seize the opportunity to swing your sword into its unprotected right flank. You feel the crack of ribs as your sword bites deep into its side, and the ogre emits a howl of pain and rage.~
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY ~The path east winds around several low hills and into a lightly forested area. The sun filters down through the canopy, and the birds chirp merrily in the cool breeze. Overall, it is a not unpleasant journey.~
  IF ~~ THEN DO ~IncrementGlobal("OHBN_XP","LOCALS",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63
  SAY ~You quickly untie the two prisoners and usher them into the woods, but the female prisoner resists and instead approaches the ogre's burnt body. She rifles through the beast's pouches and pulls forth a small, nondescript silver ring, which she then hands to you. "My husband is dead and so will no longer need this," she says sadly, "but the service you have done me today deserves a reward. When you wear this ring, you will become completely invisible to everyone else."~
  IF ~~ THEN DO ~SetGlobal("OHBN_RING","LOCALS",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64
  SAY ~You escort the two former prisoners back to the site of the attack and the young girl still hiding in the grass. The small group again mourns their dead but thanks you for reuniting those that are left. The three depart on foot towards Berenford to the south, and you are left to continue traveling north towards Mount Redigar.~
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 65
  SAY ~The ogre swings its makeshift club as you feint to the right and then attempt to dodge back left, but the cagey beast deftly reverses its swing to catch you right in the gut. You stagger backwards as the air knocked out of you, but the ogre closes quickly, its bone club already raised for another blow. You raise your sword desperately to parry, but the next swing forces you to the ground and knocks the blade from your hand. You look up in time to see the third blow raining down. It is the last sight you ever see.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 66
  SAY ~You hunch down into the tall grass to observe the ogre and wait for a better opportunity. Every so often, the beast stops poking the fire long enough to look around—thereby hinting at the existence of others out foraging for food or supplies—but none ever return. At last, long after night has settled over the camp, the ogre slumps down and closes its eyes. A few minutes later, you hear the unmistakable sound of snoring.~
  IF ~~ THEN REPLY ~Sneak up on the beast and kill it.~ GOTO 67
  IF ~~ THEN REPLY ~Sneak around to the prisoners and free them.~ GOTO 68
  IF ~~ THEN REPLY ~Leave the captives to their fate and continue to Mount Redigar.~ GOTO 69
END

IF ~~ THEN BEGIN 67
  SAY ~You tiptoe silently up to the ogre, but a misstep causes a twig to snap loudly under your feet. The monster's eyes fly open as it jumps to attention and turns around. It snarls at the sight of you, leaps up with surprising agility, and picks up the bone of a large unknown animal lying nearby. Swinging its bone club with a roar, it lumbers towards you.~
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Stand and fight the ogre.~ GOTO 65
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Stand and fight the ogre.~ GOTO 61
  IF ~~ THEN REPLY ~Flee and continue to Mount Redigar.~ GOTO 69
END

IF ~~ THEN BEGIN 68
  SAY ~Silently, you make your way to the two prisoners on the opposite side of the fire. They awaken as you approach, but you motion for them to be quiet as you slice through their bonds with your sword. Within moments, they are free.~
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 69
  SAY ~The path north is uneventful, and a quick encampment allows you to get a few hours' rest before continuing north in the early morning. Before long, you come upon a single traveler going in the opposite direction. He leans heavily on a walking stick, and his gray beard blends perfectly into his flowing robes. "Excuse me, <PRO_SIRMAAM>," he beckons to you, "You look to be a warrior of some skill. Would you, by chance, be traveling to see Lord Fernault at Mount Redigar?"~
  IF ~~ THEN REPLY ~Tell him you are going to rid the region of Lord Fernault.~ GOTO 70
  IF ~~ THEN REPLY ~Tell him you are going to try to join Lord Fernault's army.~ GOTO 71
  IF ~~ THEN REPLY ~Deny that you are going to Mount Redigar.~ GOTO 71
  IF ~~ THEN REPLY ~Ignore him and continue north to Mount Redigar.~ GOTO 74
END

IF ~~ THEN BEGIN 70
  SAY ~"Ah, I was right. You look just the type, and so I have a gift for you." From his pack, he takes a ragged gray cloak that looks to have been singed in a fire and hands it to you.~
  IF ~~ THEN REPLY ~Thank him and put the cloak on.~ GOTO 72
  IF ~~ THEN REPLY ~Ask him why you would want an old cloak.~ GOTO 73
  IF ~~ THEN REPLY ~Refuse the gift.~ GOTO 71
END

IF ~~ THEN BEGIN 71
  SAY ~"Ah, it seems I was wrong about you," he shrugs. "Sorry to bother you then." He whistles a light tune as he continues south, and you are left alone on the road north.~
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 72
  SAY ~The cloak is light, but amazingly sturdy given its decrepit appearance. You feel a slight warmth as you pull it around you, but it is otherwise unremarkable. The man smiles at you. "Keep that cloak with you when you meet Lord Fernault. You will need it," he says as he continues south. All other questions are met only with a shake of his head as he fades into the distance. You turn back to the road north.~
  IF ~~ THEN DO ~SetGlobal("OHBN_CLOAK","LOCALS",1)
~ GOTO 74
END

IF ~~ THEN BEGIN 73
  SAY ~"This cloak is certainly old," he begins, "but age is not always a reason to discard something. I know well that great power often comes with great age. I can guarantee you that Lord Fernault thinks the same way."~
  IF ~~ THEN REPLY ~Thank him and put the cloak on.~ GOTO 72
  IF ~~ THEN REPLY ~Refuse the gift.~ GOTO 71
END

IF ~~ THEN BEGIN 74
  SAY ~You travel north another day and spend another fitful night beneath the stars before at last reaching Redigar in the morning. The lonely mountain dominates the sky, and you can see a curl of smoke issuing forth from the summit. It doesn't take long for you to locate a cave entrance that is remarkably unguarded. You venture within.~
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
  SAY ~The torchlit passage slopes downwards for some way before evening out, and a breeze—warm, dry, and stifling—washes over you and causes the torchlight to dance playfully on the walls. From far away, you hear a strange, guttural barking in a tongue you do not understand, but you soon realize that it is, in fact, singing. The voice is rough, deep, and completely inhuman.~
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
  SAY ~The singing grows louder as you approach a doorway. Peeking around the edge, you see a crude kitchen with scattered tables holding a plethora of haphazard spices, foodstuffs, and cooking implements. A large fire pit dominates the center of the room, over which hangs a heavy boiling cauldron supported by an iron rod set between two massive oaken beams. A troll, humming a tuneless melody, uses a human femur to stir the contents.~
  IF ~~ THEN GOTO 77
END

IF ~~ THEN BEGIN 77
  SAY ~The passage leads onward past the doorway and further into the mountain. You also see a second passage out of the kitchen directly across from your position, although the troll lies between you and it.~
  IF ~~ THEN REPLY ~Continue further along the same passage.~ GOTO 99
  IF ~~ THEN REPLY ~Attack the troll.~ GOTO 78
  IF ~~ THEN REPLY ~Try to sneak past the troll to the second passage.~ GOTO 97
  IF ~  Global("OHBN_HEARTLESS","LOCALS",1)
~ THEN REPLY ~Try to sneak past the troll to the second passage.~ GOTO 94
  IF ~  !Global("OHBN_HEARTLESS","LOCALS",1)
~ THEN REPLY ~Put on your ring of invisibility and walk past the troll to the second passage.~ GOTO 98
END

IF ~~ THEN BEGIN 78
  SAY ~You are upon the troll in a flash. Surprised, the monster turns and raises its arm in defense as your blade cleaves cleanly through the limb and bites deep into its chest. It staggers backward, howling terribly, and steadies itself against one of the great oaken beams.~
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79
  SAY ~You move to continue the assault when you feel something grab your ankle. Looking down, you notice the arm you severed appears to have a life of its own, as it grabs at your feet and tries to trip you. You look up to see the troll smiling macabrely at you. As you watch, a new arm sprouts from the stump, and the massive wound you carved into its chest closes and heals. Within moments, the monster is whole again.~
  IF ~~ THEN REPLY ~Continue the attack with your sword.~ GOTO 80
  IF ~~ THEN REPLY ~Try to shake the severed arm off your foot.~ GOTO 83
  IF ~~ THEN REPLY ~Run away.~ GOTO 93
END

IF ~~ THEN BEGIN 80
  SAY ~The severed arm impedes you, but you fight through your reduced mobility, again bringing your sword down through an upstretched arm. This time, however, you press your advantage by reversing your swing and bringing your blade back up and clean through the creature's neck. Its head falls off its shoulders and rolls to a stop a few yards away as the body slumps to the ground.~
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
  SAY #199845 /* <Invalid Strref 199845> */
  IF ~~ THEN REPLY ~Hack the troll's head off with your sword again.~ GOTO 82
  IF ~~ THEN REPLY ~Try to shake the severed arm off your foot.~ GOTO 83
  IF ~~ THEN REPLY ~Tell him that you cannot guarantee you will be able to rescue his daughter.~ GOTO 93
END

IF ~~ THEN BEGIN 82
  SAY ~You raise your sword again for another strike, but before you can bring the blade down, the troll reaches up with its taloned hand, grabs you by the neck, and lifts you clean off the ground. You frantically stab at it as it hisses at you malevolently and slowly crushes your windpipe. Within moments, the world goes black as you fade into oblivion.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 83
  SAY ~You use your sword as a lever to pry the fingers from around your ankles and then shake your foot furiously to kick the severed arm away. The limb bounces on the floor a couple times before landing in the cooking fire with a loud pop. Suddenly, the troll emits the first true howl of pain you've heard from it, and the arm twitches in the flame for a brief time before finally shriveling to a black crisp and dissolving to ash.~
  IF ~~ THEN REPLY ~Continue to attack the troll with your sword.~ GOTO 82
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Try to push the whole beast into the fire pit.~ GOTO 86
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Try to push the whole beast into the fire pit.~ GOTO 84
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Grab a torch from a wall sconce and use the makeshift club to attack the troll.~ GOTO 89
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Grab a torch from a wall sconce and use the makeshift club to attack the troll.~ GOTO 87
  IF ~~ THEN REPLY ~Flee Mount Redigar and abandon the quest.~ GOTO 91
END

IF ~~ THEN BEGIN 84
  SAY ~You charge into the massive troll with your shoulder, attempting to muscle it into the fire. The beast instantly realizes your intent and grabs you by the waist with its muscular arm, attempting to lift you whole off the ground. You deftly wriggle out of its grasp, dive low, and grab its leg. Desperately, it claws at your back, but your mail performs its job perfectly, and you use your superior position to force the monster off balance and back into the cooking pit.~
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
  SAY ~The troll emits a howl that chills you to the bone, and its thrashing sends sparks and embers flying across the room. But its fate is sealed. Within seconds, the once-massive troll is little more than a pile of ash. You take a moment to collect both your bearings and your dropped gear and then proceed out the door opposite from where you entered.~
  IF ~~ THEN DO ~IncrementGlobal("OHBN_XP","LOCALS",1)
~ GOTO 116
END

IF ~~ THEN BEGIN 86
  SAY ~You charge into the massive troll with your shoulder, attempting to muscle it into the pit. The beast instantly realizes your intent and grabs you by the waist with its muscular arm, attempting to lift you whole off the ground. You try to wriggle out of its grasp, but it proves surprisingly nimble. It picks you up and hurls you to the floor, knocking the wind out of you. Quickly, it closes the gap, its taloned hands clawing at your neck. It is the last sight you see in life.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 87
  SAY ~Seeing the flaming club in your hand, the troll loses courage and begins to slowly give way, its arms raised in front of its face in defense. You lunge forward, thrusting the torch like a sword under the defending limbs to score a direct hit on the beast's chest. It howls in pain and, realizing it has nowhere to run, finally moves to the attack, but you bring the club up in a backhanded swing and connect with its jaw.~
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
  SAY ~You decisively press your advantage, and the troll again cedes ground, only this time it trips on one of the many piles of debris and plunges to the floor. You move quickly on the beast, hitting it repeatedly with the flame as it howls in pain and tries to crawl away. Within moments, it is still, and you use the torch to light the entire body on fire. Soon, the once-massive troll is little more than a pile of ash. You take a moment to collect both your bearings and your dropped gear and then proceed out the door opposite from where you entered.~
  IF ~~ THEN DO ~IncrementGlobal("OHBN_XP","LOCALS",1)
~ GOTO 116
END

IF ~~ THEN BEGIN 89
  SAY ~Seeing the flaming club in your hand, the troll loses courage and begins to slowly give way, its arms raised in front of its face in defense. You lunge forward, thrusting the club like a sword under the defending limbs to score a direct hit on the beast's chest. It howls in pain and, realizing it now has nothing to lose, finally moves to the attack. You bring the club up in a backhanded swing towards its face, but it catches the end of the flaming club in one of its massive hands.~
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90
  SAY ~You feel the bone in the hand give way and smell the putrid scent of burning flesh, but you have no way of blocking the troll's other massive talon that connects cleanly with your jaw. The club flies from your hand as you stagger backwards, dazed. The monster loses no time in closing the gap, and its claws quickly close around your throat. Within moments, you have lost consciousness, never to wake again.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 91
  SAY ~Really? You run away? What kind of adventure is that, you coward? Time to reconsider.~
  IF ~~ THEN REPLY ~Continue to attack the troll with your sword.~ GOTO 78
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Try to push the whole beast into the fire pit.~ GOTO 86
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Try to push the whole beast into the fire pit.~ GOTO 84
  IF ~  !RandomNum(6,1)
~ THEN REPLY ~Grab a torch from a wall sconce and use the makeshift club to attack the troll.~ GOTO 89
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Grab a torch from a wall sconce and use the makeshift club to attack the troll.~ GOTO 87
END

IF ~~ THEN BEGIN 92
  SAY ~Fine then! Since that makes our game no fun, I think I'll exercise my dungeon master's prerogative and just say that as you're running away, a rabid goat jumps out of the woods and gores you to death. Now you're dead, so hah!~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 93
  SAY ~You turn to flee, but trip over the limb still attached to your ankle. You scramble to get back up, but the troll loses no time in closing the gap, and its claws quickly close around your throat. Within moments, you have lost consciousness, never to wake again.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 94
  SAY ~You wait for the troll to turn its back to you and then use the gloom of the firelit chamber to sneak to the other side. Yet when you are only halfway across, the troll raises its nose, sniffs the air, and then turns in delight. "You have returned!" it cackles. "Did you bring anything for the stew?"~
  IF ~~ THEN REPLY ~Attack the troll.~ GOTO 78
  IF ~~ THEN REPLY ~Answer that you did not.~ GOTO 95
  IF ~~ THEN REPLY ~Give it a portion of your rations.~ GOTO 96
END

IF ~~ THEN BEGIN 95
  SAY ~It looks at you with a mixture of disappointment and irritation. "You know how much I like different creatures for the stew! Is it too much to ask that when you go on patrol, you at least bring me a little something too? I can't believe how incompetent you lot are! Now begone, and be glad Lord Fernault has forbidden me to put his guards in my stew!"~
  IF ~~ THEN REPLY ~Attack the troll.~ GOTO 78
  IF ~~ THEN REPLY ~Move on to the passage opposite the one you entered.~ GOTO 116
END

IF ~~ THEN BEGIN 96
  SAY ~It gives something surprisingly close to a squeal of delight. "Oh, thank you! You know how much I like different creatures for the stew! I'm envious that you guards get to go on patrol, but at least you're good enough to bring me a little something when you do!" It plops the food into the stew and begins again humming its tuneless melody.~
  IF ~~ THEN REPLY ~Attack the troll.~ GOTO 78
  IF ~~ THEN REPLY ~Move on to the passage opposite the one you entered.~ GOTO 116
END

IF ~~ THEN BEGIN 97
  SAY ~You wait for the troll to turn its back to you and then use the gloom of the firelit chamber to sneak to the other side. Yet when you are only halfway across, the troll raises its nose, sniffs the air, and then turns in delight. "I thought I smelled dessert!" it cackles. Realizing your gambit has failed and you are now too exposed to turn back, you are forced to attack.~
  IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 98
  SAY ~You slip the ring on and quietly make your way through the chamber. When you are only halfway across, the troll raises its nose, sniffs the air, and then turns in delight. "I thought I smelled dessert!" it cackles, before its face turns to one of confusion. "Huh? Where are you?" it asks quizzically. It creeps past you to the tables behind you and begins searching through potential hiding spots. You realize you have the opportunity to escape, and you hurriedly move through the kitchen to the passage opposite.~
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 99
  SAY ~The passage descends a bit further, and before long you hear the sound of rough laughter. You slowly approach a doorway at the end of the hallway to see several human guards playing cards and drinking profusely. They joke raucously as they throw bits of meat or slugs of ale at each other and generally act like drunken degenerates. You see another exit further into the mountain directly across the room from you.~
  IF ~~ THEN REPLY ~Return back up the passage to the troll.~ GOTO 100
  IF ~~ THEN REPLY ~Attack the guards.~ GOTO 101
  IF ~  !Global("OHBN_HEARTLESS","LOCALS",1)
~ THEN REPLY ~Enter the room authoritatively and bluff your way past the guards.~ GOTO 112
  IF ~  Global("OHBN_HEARTLESS","LOCALS",1)
~ THEN REPLY ~Enter the room authoritatively and bluff your way past the guards.~ GOTO 110
  IF ~  Global("OHBN_RING","LOCALS",1)
~ THEN REPLY ~Put on your ring of invisibility and sneak past the guards.~ GOTO 114
END

IF ~~ THEN BEGIN 100
  SAY ~You turn and head back up the tunnel to your previous location. Soon, the sound of guttural singing has once more replaced that of raucous laughter.~
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 101
  SAY ~You draw your sword and pounce on the first guard with a single motion, cleaving deep into his chest and felling him before he can react. A second guard growls ferally at you and brings her mace around savagely. You easily parry her drunken swing, thrust your sword up under her ribcage, and then shove her gasping body backwards in a collapsing heap.~
  IF ~~ THEN GOTO 82
  IF ~  RandomNum(6,1)
~ THEN GOTO 102
END

IF ~~ THEN BEGIN 102
  SAY ~The third and fourth guards are upon you before she hits the ground, but you deftly position your body so that one has no room to get a full swing even as you parry the attack of the other and counter with a fierce blow to the neck. As he drops, you pivot, bringing your sword around in a powerful arc that sweeps through the feeble attempt to parry and cleaves deep into the fourth guard's side. He too stumbles backwards in a heap.~
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 103
  SAY ~The third and fourth guards are upon you before she hits the ground, but you deftly position your body so that one has no room to get a full swing even as you parry the attack of the other and counter with a fierce blow to the neck. As he drops, you pivot, bringing your sword around in a powerful arc...~
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
  SAY ~That sounds like more trouble than it's worth. I don't think that I'm interested.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 105
  SAY ~With the guards defeated, you take a moment to catch your breath when a large figure steps out of the deep shadows of the torchlit room. The golden trim on his armor marks him as a soldier of some rank. "Congratulations," the gravelly baritone chides, "you managed to dispatch four drunkards." He slides his massive sword from its sheath and grips the handle easily in both hands. "Let's see if you can defeat a sober warrior, eh?"~
  IF ~~ THEN REPLY ~Attack the new warrior.~ GOTO 106
  IF ~~ THEN REPLY ~Flee Mount Redigar and abandon the quest.~ GOTO 115
END

IF ~~ THEN BEGIN 106
  SAY ~The man leaps at you, bringing his large blade around in a surprisingly tight arc. You parry the blow, but the force sends you staggering back, your hands ringing with the power of the collision. Yet you have no time to recover, for the man bears down again on you with a series of three rapid swings that you barely manage to avoid. You give ground and kick one of the overturned chairs into his path, a desperate gambit that gives you a scant amount of breathing room.~
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
  SAY ~Your opponent brings his sword down violently on the chair, smashing it easily to splinters, and disdainfully kicks the debris away. With surprisingly quick reflexes for a man wearing such heavy armor, he charges you, closing the distance in less than a second.~
  IF ~~ THEN GOTO 88
  IF ~  RandomNum(6,1)
~ THEN GOTO 87
END

IF ~~ THEN BEGIN 108
  SAY ~Reflexively, you move to step back, but then instead dive forward, sweeping his feet from under him. The man falls in stunned disbelief at your unorthodox tactic, his sword clattering on the cave floor. In a flash, you regain your feet and swing your blade backhanded directly into his face guard, splitting his helmet and then his skull. He collapses with a thud. You give a brief look around the room at the now five corpses and proceed into the tunnel opposite the one you entered.~
  IF ~~ THEN DO ~IncrementGlobal("OHBN_XP","LOCALS",1)
~ GOTO 116
END

IF ~~ THEN BEGIN 109
  SAY ~Reflexively, you move to step back, desperately parrying the next rapid succession of blows. You marvel at the speed of the man's blade, given the size of his sword and the weight of his mail, and you know your chances to seize victory will be few. You step forward, hoping to come well within the killing arc of his sword and sweep your own blade upwards in a powerful arc of your own...~
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 110
  SAY ~As you step confidently into the room, the guards struggle to stand up, each giving a drunken approximation of either a bow or a salute. "Itsh about time you gotsh here!" one says. "How long doesh a patrol take?"~
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
  SAY ~A second chimes in, "Yeah, you know ol' Lord Funrault—hehe, I mean Fernault—wantsh hish gold, and he wantsh it when he wantsh it! Sho you besht getsh goin', and I hopesh you gotsh a lot out of all thosh peasants! Hehe!"~
  IF ~~ THEN REPLY ~Attack the guards.~ GOTO 101
  IF ~~ THEN REPLY ~Move on to the passage opposite the one you entered.~ GOTO 116
END

IF ~~ THEN BEGIN 112
  SAY ~As you step confidently into the room, the guards struggle to stand up, each giving a drunken approximation of either a bow or a salute. "Itsh about time you gotsh here!" one says. "How long doesh a patrol take?"~
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113
  SAY ~A second chimes in, "Yeah, you know ol' Lord Fernault wantsh hish gold, and he wantsh it when he wantsh it! Sho you besht getsh goin'— Hey, wait a minute. Didn't the patrol get back an hour ago?" The group nods, and the drunkard points at you. "Then who'sh <PRO_HESHE>?" The soldiers quickly draw their weapons, and you are forced to fight.~
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 114
  SAY ~You slip the ring on, step boldly into the room, and head to the opposite exit. The guards are so engrossed in their cards and food fight that they don't even hear your footsteps. Soon, you have put the group behind you and are heading further into the mountain.~
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 115
  SAY ~Really? You run away? What kind of adventure is that, you coward? Time to reconsider.~
  IF ~~ THEN REPLY ~Attack the new warrior.~ GOTO 106
  IF ~~ THEN REPLY ~Nope. I'm done. I'm going to run away.~ GOTO 92
END

IF ~~ THEN BEGIN 116
  SAY ~A short distance later, the passage widens into a room roughly thirty feet square with a recess in the far wall that is covered by heavy iron bars surrounding a crude, locked oaken door. At first, you see only darkness when you peer into the gloom behind the bars, but then the shadows shift and two figures emerge: a middle-aged man with piercing blue eyes and a wild, unkempt beard and a pretty young girl in her teens.~
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
  SAY ~The man eyes you warily. "You don't look familiar," he states hesitantly. "Are you with our captors?"~
  IF ~~ THEN REPLY ~Answer that you are not.~ GOTO 118
  IF ~~ THEN REPLY ~Answer that you are.~ GOTO 122
  IF ~~ THEN REPLY ~Ask who they are.~ GOTO 118
END

IF ~~ THEN BEGIN 118
  SAY ~He sighs, "I am Aldaron and this is Peldea, both of the village of Berenford. Peldea is a hostage kept here to ensure her father, a blacksmith, works adequately to supply Lord Fernault's troops with weapons. I came here some days ago hoping to talk the lord into leaving the region, and if he would not see reason, I was prepared to kill him. I am a priest of Lathander, you see, and I thought the Morninglord would protect me, but I was not prepared for what I found here."~
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
  SAY ~"I convinced the guards to let me meet Lord Fernault. They laughed, but in the end, they agreed. But when I was led into his chamber, I saw very little of Fernault. It was a huge cavern, and he spoke from the shadows. I pleaded with him to leave, but he gave my request no regard. After a few minutes, he tired of the conversation, and that's when he made his move."~
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120
  SAY ~"The shadow itself surrounded me. I could barely take it in before I was knocked unconscious. The next thing I knew, I awoke in this cell, and I've been a prisoner ever since. I never got a good look at Lord Fernault, but this I know. He is most definitely not human, nor is he an elf or dwarf or anything else you might expect."~
  IF ~~ THEN GOTO 121
END

IF ~~ THEN BEGIN 121
  SAY ~"Now, I would beg you to free us, but the key is in Fernault's chamber, and I fear you will have no better luck than I did. However, if you can recover the keys and free me, I shall help you do battle with Lord Fernault if you so choose." You bid the pair farewell and continue on further into the mountain.~
  IF ~~ THEN GOTO 123
END

IF ~~ THEN BEGIN 122
  SAY ~"A shame." The man shrugs as both prisoners return to the gloom of the cell.~
  IF ~~ THEN REPLY ~Admit that you lied and really aren't with their captors.~ GOTO 118
  IF ~~ THEN REPLY ~Continue on deeper into the mountain.~ GOTO 123
END

IF ~~ THEN BEGIN 123
  SAY ~The passage into the mountain now takes a deep plunge, and the air becomes stifling as the little breeze that once existed stills. After some time, the tunnel gives way to a large cavern dotted by torches that fail to completely illuminate the gloom. A crude throne sits upon a stone dais hewn into the far end, and the cavern is littered with large piles of coins and jewels.~
  IF ~~ THEN REPLY ~Enter the cavern cautiously.~ GOTO 124
  IF ~~ THEN REPLY ~Enter the cavern boldly.~ GOTO 125
  IF ~  Global("OHBN_RING","LOCALS",1)
~ THEN REPLY ~Put on your ring of invisibility and sneak into the cavern.~ GOTO 126
END

IF ~~ THEN BEGIN 124
  SAY ~You slip into the chamber, keeping your back to the wall, and carefully edge your way around the cavern. The air is now so hot that sweat pours down your face, and you hear nothing except the popping of the flickering torches. Suddenly, a voice rings out in the gloom.~
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 125
  SAY ~You stride confidently into the chamber, coolly surveying the cavern for any signs of movement. The air is now so hot that sweat pours down your face, and you hear nothing except the popping of the flickering torches. Suddenly, a voice rings out in the gloom.~
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 126
  SAY ~You slip on your ring of invisibility and enter the chamber, coolly surveying the cavern for any signs of movement. The air is now so hot that sweat pours down your face, and you hear nothing except the popping of the flickering torches. Suddenly, a voice rings out. "Do you really think such petty magics will fool me? Your attempt at deception would be laughable were it not so insulting!"~
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
  SAY ~"I see you, puny one," slithers the mellifluous tenor. The voice echoes around the cavern, but you are unable to see any living being through the gloom. "I am curious as to why you have entered the domain of Fernault the Ravager. That you have done so proves you are either very brave... or very stupid."~
  IF ~~ THEN REPLY ~Ask that Fernault leave the people here in peace.~ GOTO 128
  IF ~~ THEN REPLY ~Demand that Fernault leave the people here in peace.~ GOTO 129
  IF ~~ THEN REPLY ~Ask that Fernault free his two prisoners.~ GOTO 128
  IF ~~ THEN REPLY ~Demand that Fernault free his two prisoners.~ GOTO 129
  IF ~~ THEN REPLY ~State that you are a treasure hunter and are here for the gold and jewels.~ GOTO 130
END

IF ~~ THEN BEGIN 128
  SAY ~The voice laughs hollowly. "And what possible reason would I have to do that when everything here is proceeding exactly as I desire it?"~
  IF ~~ THEN REPLY ~The voice sneers, "You are in no position to make demands of me, maggot! It is MY word that is law here, not yours!"~ GOTO 131
  IF ~~ THEN REPLY ~The voice sneers, "You are in no position to make demands of me, maggot! It is MY word that is law here, not yours!"~ GOTO 132
END

IF ~~ THEN BEGIN 129
  SAY ~The voice sneers, "You are in no position to make demands of me, maggot! It is MY word that is law here, not yours!"~
  IF ~~ THEN REPLY ~Threaten the voice with death if it does not give in to your demands.~ GOTO 131
  IF ~~ THEN REPLY ~Offer gold if the voice will give in to your demands.~ GOTO 132
END

IF ~~ THEN BEGIN 130
  SAY ~The voice sneers, "Then the explanation is that you are stupid and not brave. To make such an admission shows that you value your life very little."~
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 131
  SAY ~"Death? YOU think to cause MY death? So very foolish. But at least you are right in sensing that this conversation is bound to lead nowhere but violence."~
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 132
  SAY ~"I smell gold as easily as you insignificant worms smell a roast on a flame, and you do not have enough gold to buy any favor from me, no matter how insignificant. And even if you did, I would simply kill you and take it. Now I have lost interest in you, but I will allow you to go in peace if you leave at once."~
  IF ~~ THEN REPLY ~Threaten the voice with death if it does not give in to your demands.~ GOTO 131
  IF ~~ THEN REPLY ~Leave Mount Redigar and abandon the quest.~ GOTO 133
END

IF ~~ THEN BEGIN 133
  SAY ~Really? You abandon the quest? What kind of adventure is that, you coward? Time to reconsider.~
  IF ~~ THEN REPLY ~Threaten the voice with death if it does not give in to your demands.~ GOTO 131
END

IF ~~ THEN BEGIN 134
  SAY ~The very shadows begin to shift and coalesce into a frightening figure—tall, muscular, and bulky—that stands up, filling the cavern. Two expansive wings explode outwards and a pair of massive paws bearing a bevy of two-foot-long talons scrape down upon the floor a few feet in front of you. The entire figure is coated in thick scales, a seemingly impenetrable armor dark maroon in color.~
  IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135
  SAY ~Two yellow orbs fly open above you and are soon joined by hissing fangs and smoking nostrils. "You wanted Fernault the Ravager?" the beast asks in the same lilting tenor that seems strangely light considering its girth. "Well, now you've got Fernault the Ravager!"~
  IF ~~ THEN GOTO 138
  IF ~  RandomNum(6,1)
~ THEN GOTO 137
  IF ~  Global("OHBN_HELMET","LOCALS",1)
~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
  SAY ~The sight of the massive dragon is overwhelming, and you feel the slightest hint of fear in the pit of your stomach, but you are soon awash in a calm that seems almost supernatural. That you can look such a beast in the face with no emotion is curious, but you have little time to think on it further as you draw your sword and face it.~
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 137
  SAY ~The sight of the massive dragon is overwhelming, and fear begins to well up in you uncontrollably. You turn to flee, but the moment you sever your gaze from the creature, the fear dissipates to a controllable level. You have little time to think on it further as you draw your sword and turn to face the creature.~
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 138
  SAY ~The sight of the massive dragon is overwhelming, and fear wells up in you uncontrollably. You flee from the chamber, all thoughts other than escape of no concern. You vaguely hear the dragon laughing and jeering you as you flee, but any consideration of pride is far from your mind.~
  IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139
  SAY ~After an indeterminate time, a sense of calm overcomes you, and you look around to find yourself in the prison room where you met the middle-aged man and the young girl. The man sees your confusion. "Dragon fear," he states matter-of-factly. "Nothing you can do, but I was able to calm you through the divine powers Lathander grants me. You should now be able to face Fernault without any further fear... at least of the supernatural variety."~
  IF ~~ THEN REPLY ~Return to the cavern.~ GOTO 140
  IF ~~ THEN REPLY ~Leave Mount Redigar and abandon the quest.~ GOTO 141
END

IF ~~ THEN BEGIN 140
  SAY ~You thank the priest and return to the cavern. The dragon immediately spies you and eyes you curiously, one eye cocked. "How is it that you return so soon? Ah," it sniggers, "the Lathanderite. I knew I should have killed him, but by restoring your courage, at least he has granted me the pleasure of rending you apart!"~
  IF ~~ THEN GOTO 142
END

IF ~~ THEN BEGIN 141
  SAY ~Really? You abandon the quest? What kind of adventure is that, you coward? Time to reconsider.~
  IF ~~ THEN REPLY ~Return to the cavern and face the dragon.~ GOTO 140
  IF ~~ THEN REPLY ~Nope. I'm done. I'm going to run away.~ GOTO 92
END

IF ~~ THEN BEGIN 142
  SAY ~The fanged jaws open and begin to inhale air in such volume that you fear you might be sucked up into them. Looking deep into the beast's throat, you see the air intake is acting as a bellows within the creature's gut. The great furnace within is even now building a large flame that erupts into the creature's throat, and you realize with dread that the air that is getting sucked in must also eventually be blown out. You dive back into the narrow passage, hoping the walls will protect you from the inferno about to be unleashed.~
  IF ~~ THEN GOTO 145
  IF ~  RandomNum(6,1)
~ THEN GOTO 144
  IF ~  Global("OHBN_CLOAK","LOCALS",1)
~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143
  SAY ~The flames envelop you completely, and you know you must be burned alive, yet you remain amazingly unaffected. In fact, you view the flames around you curiously—almost academically—as they curl around you, hungrily licking your hands, face, and body while doing absolutely no harm to you. Eventually, the flames relent, and you turn around in the soot-blackened tunnel.~
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 144
  SAY ~You slam yourself to the ground and roll into a depression that shields you as the flames roar by overhead. The oxygen is burned away, starving your lungs and suffocating you as you feel the hair on your neck and head singeing. You gasp for air and endure the overwhelming burning on your back for what seems like an eternity, but eventually the flames relent, and you roll over gasping in the soot-blackened tunnel.~
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 145
  SAY ~You slam yourself to the ground hoping to find any cover that might shield you from the flames, but it is too late. The oxygen is burned away, starving your lungs and suffocating you as your body is engulfed in the searing heat. It doesn't take long for you to lose consciousness, never to awaken again.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 146
  SAY ~You see a large reptilian eye peering up the tunnel at you. "Ahh..." the dragon exclaims as the eye widens in understanding. "The cloak you wear is enchanted with flame resistance. Very clever, mortal, but my talons and fangs are still more than enough. Come back out here and face me!"~
  IF ~~ THEN REPLY ~Return to the cavern and face the dragon.~ GOTO 149
  IF ~~ THEN REPLY ~Leave Mount Redigar and abandon the quest.~ GOTO 148
END

IF ~~ THEN BEGIN 147
  SAY ~You see a large reptilian eye peering up the tunnel at you. "Incredible that you survived that, mortal," the dragon exclaims as the eye widens in amazement, "but my talons and fangs are still more than enough. Come back out here and face me!"~
  IF ~~ THEN REPLY ~Return to the cavern and face the dragon.~ GOTO 149
  IF ~~ THEN REPLY ~Leave Mount Redigar and abandon the quest.~ GOTO 148
END

IF ~~ THEN BEGIN 148
  SAY ~Really? You abandon the quest? What kind of adventure is that, you coward? Time to reconsider.~
  IF ~~ THEN REPLY ~Return to the cavern and face the dragon.~ GOTO 149
  IF ~~ THEN REPLY ~Nope. I'm done. I'm going to run away.~ GOTO 92
END

IF ~~ THEN BEGIN 149
  SAY ~You return to the cavern, sword in hand, to find the dragon eying you with what might be described—remotely—as respect. "No fear, no flames," it mutters. "Looks like we'll have to do this the old-fashioned way!" Without any further warning, it swipes a massive talon towards you!~
  IF ~~ THEN GOTO 156
  IF ~  !Global("OHBN_XP","LOCALS",0)
~ THEN DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 151
  IF ~  RandomNum(6,1)
~ THEN GOTO 150
END

IF ~~ THEN BEGIN 150
  SAY ~You dodge the massive paw with an acrobatic roll and come up, sword swinging. You connect, severing one of the dragon's talons. The beast howls in rage and pushes upwards, wings outstretched into the gloom, but a telltale thud followed by collapsing rock reveals that the monster's mobility is severely restricted in what for it is a small space.~
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 151
  SAY ~The claws slam into you, knocking you forcefully to the ground, but you are able to position your body such that the subsequent rolling launches you back on your feet, sword still in hand. The beast howls in triumph and swipes at you again.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Try to dodge and parry the claws again.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Try to dodge and parry the claws again.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 151
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Try to dodge and parry the claws again.~ GOTO 150
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 153
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 152
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 155
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 154
END

IF ~~ THEN BEGIN 152
  SAY ~You step back into the hallway as the claw scratches and pushes its way into the opening, grasping for you. You swing your sword at the paw and connect, severing one of the dragon's talons. The beast howls in rage as it withdraws its battered hand and pushes upwards, wings outstretched into the gloom, but a telltale thud followed by collapsing rock reveals that the monster's mobility is severely restricted in what for it is a small space. Frustrated, it lunges at the opening again, ripping away the earth with its claws until you are once more exposed.~
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 153
  SAY ~You attempt to withdraw into the hallway, but the monster is too quick. It grabs you and flings you easily to the ground like a rag doll. Your instincts kick in, and you are able to regain your feet quickly, sword still in hand. The beast howls in triumph and swipes at you again.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Try to dodge and parry the claws again.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Try to dodge and parry the claws again.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 151
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Try to dodge and parry the claws again.~ GOTO 150
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 153
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 152
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 155
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 154
END

IF ~~ THEN BEGIN 154
  SAY ~You gain the first few steps just as the monster rounds on you. You dodge the massive paw with an acrobatic roll and come up, sword swinging. You connect, severing one of the dragon's talons. The beast howls in rage and pushes upwards, wings outstretched into the gloom, but a telltale thud followed by collapsing rock reveals that the monster's mobility is severely restricted in what for it is a small space.~
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 155
  SAY ~You sprint for the dais, but the monster is too quick. It grabs you and flings you easily to the ground like a rag doll. Your instincts kick in, and you are able to regain your feet quickly, sword still in hand. The beast howls in triumph and swipes at you again.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Try to dodge and parry the claws again.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Try to dodge and parry the claws again.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 151
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Try to dodge and parry the claws again.~ GOTO 150
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 153
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 152
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 156
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 155
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 154
END

IF ~~ THEN BEGIN 156
  SAY ~The claws slam into you, and you fly into the cavern wall with a thud. Bones crunch audibly and pain washes over every inch of you. You struggle to move again, but your battered body no longer responds properly. The beast howls in triumph and lunges at you again. Unable to move, you are quickly overwhelmed. The world fades to black, the sight of gnashing fangs the last you see.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 157
  SAY ~Frustrated by his inability to maneuver, Fernault launches at you, this time with fangs bared!~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 160
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 159
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 162
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 161
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 164
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 163
END

IF ~~ THEN BEGIN 158
  SAY ~Frustrated by his inability to maneuver, Fernault launches at you, this time with fangs bared!~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 166
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 165
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Retreat further up the dais.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Retreat further up the dais.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 168
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Retreat further up the dais.~ GOTO 167
END

IF ~~ THEN BEGIN 159
  SAY ~As the fangs reach for you, you drop to the floor, roll under the jaw, and thrust upwards with your sword, piercing through the scales and burying your blade to the hilt. Fernault howls and rears backwards, pulling you up to a standing position as you wrench the blade free from its bleeding jaw. The dragon emits a mighty roar that again shakes debris loose from the ceiling.~
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 160
  SAY ~As the maw hungrily reaches for you, you swing your sword head-on, parrying the razor-sharp fang, but the force of the dragon's lunge pushes you backwards against the cavern wall, knocking the breath from your body. You gasp for air as the creature howls in glee. Sensing your imminent demise, it again lunges at you, fangs bared.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 160
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 159
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 162
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 161
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 164
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 163
END

IF ~~ THEN BEGIN 161
  SAY ~You retreat further into the hallway as the fangs reach for you, the muzzle shoveling away ever greater portions of the tunnel. You drop to the floor, roll under the jaw, and thrust upwards with your sword, piercing through the scales and burying your blade to the hilt. Fernault howls and rears backwards, pulling you clean out of the hallway and back up to a standing position, allowing you to wrench the blade free from its bleeding jaw. The dragon emits a mighty roar that again shakes debris loose from the ceiling.~
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 162
  SAY ~As the maw hungrily reaches for you, you give ground and slip into the tunnel again as the razor-sharp fangs slice harmlessly in front of you. The dragon snorts, knocking you to the ground and then again ruthlessly claws away yet more of the hallway until you are once more exposed. You regain your feet as the creature howls in glee. Sensing your imminent demise, it again lunges at you, fangs bared.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 160
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Then you don't have this kind of clothing. Get back to me when your fortunes change.~ GOTO 159
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 162
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 161
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Hey there, friend. How're you doing?~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 164
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 163
END

IF ~~ THEN BEGIN 163
  SAY ~You climb the first several steps by the time Fernault has properly rounded on you. As his maw again comes in for the kill, you drop to the floor and allow yourself to slide back down the steps until you are positioned under the jaw. You thrust upwards with your sword, piercing through the scales and burying your blade to the hilt. Fernault howls and rears backwards, pulling you up to a standing position as you wrench the blade free from its bleeding jaw. The dragon emits a mighty roar that again shakes debris loose from the ceiling.~
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 164
  SAY ~You make a run for the dais but are too slow. The dragon cuts you off, and you desperately parry the razor-sharp fang that pass inches from your face, but the force of the dragon's lunge pushes you backwards against the cavern wall, knocking the breath from your body. You gasp for air as the creature howls in glee. Sensing your imminent demise, it again lunges at you, fangs bared.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 160
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 159
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Take cover in the hallway.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 162
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Take cover in the hallway.~ GOTO 161
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 164
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Run towards the stone dais to gain some height.~ GOTO 163
END

IF ~~ THEN BEGIN 165
  SAY ~As the fangs reach for you, you drop to the floor and allow yourself to slide down the steps until you are positioned under the jaw. You thrust upwards with your sword, piercing through the scales and burying your blade to the hilt. Fernault howls and rears backwards, pulling you up to a standing position as you wrench the blade free from its bleeding jaw. The dragon emits a mighty roar that again shakes debris loose from the ceiling.~
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 166
  SAY ~As the maw hungrily reaches for you, you swing your sword head-on, parrying the razor-sharp fang, but the force of the dragon's lunge pushes you backwards into the stone steps, knocking the breath from your body. You gasp for air as the creature howls in glee. Sensing your imminent demise, it again lunges at you, fangs bared.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 166
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 165
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Retreat further up the dais.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Retreat further up the dais.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 168
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Retreat further up the dais.~ GOTO 167
END

IF ~~ THEN BEGIN 167
  SAY ~You climb almost to the top by the time Fernault has closed the gap between you. As his maw again comes in for the kill, you drop to the floor and allow yourself to slide back down the steps until you are positioned under the jaw. You thrust upwards with your sword, piercing through the scales and burying your blade to the hilt. Fernault howls and rears backwards, pulling you up to a standing position as you wrench the blade free from its bleeding jaw. The dragon emits a mighty roar that again shakes debris loose from the ceiling.~
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 168
  SAY ~You give ground, trying to gain still more height, but are too slow. The dragon cuts you off, and you desperately parry the razor-sharp fang that pass inches from your face, but the force of the dragon's lunge pushes you backwards into the stone steps, knocking the breath from your body. You gasp for air as the creature howls in glee. Sensing your imminent demise, it again lunges at you, fangs bared.~
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 166
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Meet its fangs with your sword head-on.~ GOTO 165
  IF ~  !RandomNum(6,1)
Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Retreat further up the dais.~ GOTO 169
  IF ~  !RandomNum(6,1)
!Global("OHBN_XP","LOCALS",0)
~ THEN REPLY ~Retreat further up the dais.~ DO ~IncrementGlobal("OHBN_XP","LOCALS",-1)
~ GOTO 168
  IF ~  RandomNum(6,1)
~ THEN REPLY ~Retreat further up the dais.~ GOTO 167
END

IF ~~ THEN BEGIN 169
  SAY ~You try to roll backwards acrobatically, but you are too slow. The creature's maw closes over you. Bones crunch audibly and pain washes over your body. Unable to move, you quickly succumb to death. The world fades to black, the sight of gnashing fangs the last you see.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 170
  SAY ~The creature roars at you, blood trickling from its jaw. "Perhaps you are not so weak as I once imagined," it concedes warily, "but you are still little more than a worm compared to my draconic majesty! It is now time to end this!" Fernault again lunges, this time bringing both of his claws and his mouth to bear.~
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171
  SAY ~You realize you cannot dodge or parry all three attacks at once, but you DO see an opportunity. With Fernault intently staring at you and his face lunging in for the kill, you see as in slow-motion his eyes are opened wide and growing ever larger in your view. A well-placed strike would pierce his brain and kill him. With no other options, you hurl your sword haft over blade like a giant knife right at the creature's eye...~
  IF ~~ THEN GOTO 179
  IF ~  !Global("OHBN_XP","GLOBAL",0)
~ THEN DO ~IncrementGlobal("OHBN_XP","GLOBAL",-1)
~ GOTO 173
  IF ~  RandomNum(6,1)
~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172
  SAY ~...Your blade sails true! Fernault rears back, roaring furiously as he claws at his empty eye socket. He thrashes around the room, careening wildly into the walls and roof, sending an ever larger cascade of rocks from above. You realize that it is only a matter of time before Mount Redigar collapses in on itself, and you flee back down the hallway you came from.~
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 173
  SAY ~...Fernault diverts one of his massive paws to swipe the blade from the air, sending it clattering harmlessly against the wall. "What a useless gesture!" he grunts dismissively as you roll under his other paw and retrieve your weapon. The dragon again rounds on you, coming in for the kill, but it seems the gods have given you another chance at victory. You again hurl your sword haft over blade towards the dragon's eye...~
  IF ~~ THEN GOTO 179
  IF ~  !Global("OHBN_XP","GLOBAL",0)
~ THEN DO ~IncrementGlobal("OHBN_XP","GLOBAL",-1)
~ GOTO 173
  IF ~  RandomNum(6,1)
~ THEN GOTO 172
END

IF ~~ THEN BEGIN 174
  SAY ~As you pass the prison cells, you see that the collapsing mountain has bent the bars such that the door has torn open. The man is ushering the young girl onwards, and the three of you flee up the ramp towards the sunlight beyond, the corridor collapsing perilously close to your heels as you run. At last, you burst into the open air amidst a cloud of dust and the deafening roar of a rockslide.~
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175
  SAY ~You keep running until you are well away from the mountain. At last, you turn to see only a pile of rubble where once Mount Redigar stood. You know that Fernault is dead, for not even a dragon can survive a mountain collapsing on top of it, and without Fernault, his forces will scatter to the four winds.~
  IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176
  SAY ~You are a hero upon your return to Berenford, and you are forever known as the slayer of Fernault the Ravager. The people love you and elect you mayor and high defender, both posts you are sure you could keep for life, if you so desire.~
  IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177
  SAY ~The villagers send multiple expeditions to the ruined mountain, and over time they collect a large amount of coins and jewels, much of which they willingly give to you. They even find your sword, still buried to the hilt in the dragon's decaying skull, and the weapon's fame lives on long after even you have turned to dust.~
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178
  SAY ~And so our story comes to an end. You have everything you could want: fame, wealth, and power. What you do with them is a story for another time.~
  IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 179
  SAY ~...Your aim proves faulty as the sword sails cleanly over the dragon's head and clatters noisily in the darkness beyond. But it matters not for you anymore, as the dragon's claws forcefully knock you to the ground. Helpless to move, the sight of gnashing fangs is the last one you see in this life.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 180
  SAY ~Ooh, a wizard! I always wanted to be a wizard too, even got hold of a magic wand once, but I had to give it back after I turned the local priest's head into a rabbit. Not a rabbit head, mind you, a whole rabbit. Going to the temple was never quite the same after that.~
  IF ~~ THEN GOTO 181
END

IF ~~ THEN BEGIN 181
  SAY ~Anyway, let me just get my Tome of Adventure here... okay, got it. Let's get started.~
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182
  SAY ~It is a dark and stormy newt, and you have just... wait. Night. It was a dark and stormy night. Sorry about that. Spilled some tea on the page there. Let's start again.~
  IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183
  SAY ~It is a dark and stormy night, and you have just arrived at the place you are to meet your mentor. The Wagon's End is a tavern bright and warm, a beacon of refuge in the unseasonably cold gale that has borne down upon the small country village. You make your way through the deep mud of the road and pound heavily on the barred door.~
  IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184
  SAY ~A small window cut in the door slides open and a critical eye examines you face. After a moment, the window slides shut and the door is opened. A hunched man pulls you in quickly and then closes and bars the door just as rapidly.~
  IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185
  SAY ~He addresses you. "What in the name of all the Hells has possessed you to walk the roads of Marynford at this late hour? Do you care nothing for your life? Well, you are safe indoors now, and I recommend you stay that way until the next day's dawning."~
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186
  SAY ~After his scolding, the man shuffles back behind the bar and disappears through a door, muttering to himself about "the young people of today." You look around the room and are disturbed and surprised to note that your mentor is nowhere to be seen. There is one patron eating at the bar.~
  IF ~~ THEN REPLY ~Talk to the patron at the bar.~ GOTO 188
  IF ~~ THEN REPLY ~Follow the old man through the door behind the bar.~ GOTO 191
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 187
  SAY ~As you reenter the tavern, the barman affixes you with a cold, one-eyed stare. "Well, ye in or out?" ~
  IF ~~ THEN REPLY ~Talk to the patron at the bar.~ GOTO 188
  IF ~~ THEN REPLY ~Follow the old man through the door behind the bar.~ GOTO 191
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 188
  SAY ~As you sit down, the patron fixes his one good eye upon you, the other an opaque milky orb. "Bad place for travelin' at night. Ain't ye never heard of the curse? Ain't ye never heard of the tales? 'Tis only a fool's luck that ye even made it to the Wagon's End. By all rights, ye should be dead or worse."~
  IF ~~ THEN REPLY ~Ask the man why the village is so dangerous at night.~ GOTO 189
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ GOTO 190
  IF ~~ THEN REPLY ~Follow the old man through the door behind the bar.~ GOTO 191
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 189
  SAY ~The man looks incredulously at you. "Ye daft, are ye? Ain't ye never heard of the curse? 'Tis the curse what makes travelin' the roads so treacherous. 'Tis the curse what makes good folk bar their doors and keep lamps lit all the night long." The man turns back to his dinner and says no more to you.~
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ GOTO 190
  IF ~~ THEN REPLY ~Follow the old man through the door behind the bar.~ GOTO 191
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 190
  SAY ~"Mentor, eh? Is he wearin' a cloak like yourself? He is, is he? Can't say I've seen him. Been here most of the day shelterin' from the gale, and I ain't seen nobody."~
  IF ~~ THEN REPLY ~Ask the man why the village is so dangerous at night.~ GOTO 189
  IF ~~ THEN REPLY ~Follow the old man through the door behind the bar.~ GOTO 191
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 191
  SAY ~As you pass through the door behind the old man, a loose floorboard creaks beneath your weight. The old man starts, upsetting a plate of potatoes and knocking several on the floor. He turns to you with a look of terror that turns to relief followed by indignation upon recognizing you.~
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
  SAY ~"By the Hells, I thought it had come for me! What's the matter with you, sneaking up behind good folk at this hour of night? Nearly gave me my death's fright, you did. Thought the terror had come for me, sure as my pap's grave." The man bends to clean up the potatoes, muttering to himself.~
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ GOTO 193
  IF ~~ THEN REPLY ~Ask the man what he means by "the terror."~ GOTO 194
  IF ~~ THEN REPLY ~Talk to the patron at the bar.~ GOTO 188
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 193
  SAY ~"Haven't seen anyone but yourself and One-Eye Joe all day. You must have seen Joe eating at the bar as you came back here. Come to think of it, I did hear Essie Dawlins talking about a stranger in town dressed in a cloak. Maybe that's the feller you're looking for."~
  IF ~~ THEN REPLY ~Ask the man what he means by "the terror."~ GOTO 194
  IF ~~ THEN REPLY ~Talk to the patron at the bar.~ GOTO 188
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 194
  SAY ~"Never heard of the Terror of Marynford? You really are new here, ain't ye? I'll not say much, as it's a bad omen to speak of such things after sundown, but I will tell ye that this town and the surrounding countryside carry a dark curse. Good folk don't venture outside at night, and those who do disappear." The man returns to cleaning the potatoes.~
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ GOTO 193
  IF ~~ THEN REPLY ~Talk to the patron at the bar.~ GOTO 188
  IF ~~ THEN REPLY ~Go outside and look for your mentor around the back of the inn.~ GOTO 195
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 195
  SAY ~The wind clutches at your cloak and the rain blurs your vision as you step back outside. You make your way slowly in the darkness toward the back of the inn, stumbling over the rotting remains of ruined oaken kegs as you proceed.~
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196
  SAY ~You find nothing of note in the back of the inn aside from a mutt, cowering in an overturned crate with a hole cut in one side. You turn to reenter the tavern when something catches your eye. In the distance, you see a shadow silhouetted by the intermittent flashes of lightning.~
  IF ~~ THEN REPLY ~Return to the interior of the tavern.~ GOTO 187
  IF ~~ THEN REPLY ~Follow the shadow.~ GOTO 197
  IF ~~ THEN REPLY ~Stay where you are and watch.~ GOTO 198
END

IF ~~ THEN BEGIN 197
  SAY ~You move quickly in the direction of the shadow and are able to catch several more fleeting glimpses of it before losing sight of it entirely. You realize that in your haste you have become lost, and it is half an hour before you find the inn again.~
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 198
  SAY ~You squint into the darkness for half an hour but catch no sight of the fleeting shadow again. Finally, shivering and soaked, you make your way back to the inn. As you approach the front porch, the air grows frigid around you and you hear footsteps approaching.~
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199
  SAY ~"Get indoors, ye fool! Now!" The old man grabs you and pulls you indoors, barring the door behind you. Seconds after the door is barred, there is a horrible shriek and a beating on the door. The bar is solid and the door holds, and soon the beating and shrieking stop. The old man disappears through a door behind the bar.~
  IF ~~ THEN REPLY ~Talk to the patron at the bar.~ GOTO 188
  IF ~~ THEN REPLY ~Follow the old man through the door behind the bar.~ GOTO 191
  IF ~~ THEN REPLY ~Request a room for the evening and go to sleep.~ GOTO 200
END

IF ~~ THEN BEGIN 200
  SAY ~The old man hands you a rusted key and directs you to the stairs on the left side of the bar. You ascend, and the aged wood creaks in protest at your weight. The room is small, but the bed is soft and warm and you are soon asleep, though your dreams are plagued by a nameless horror.~
  IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201
  SAY ~You awake the next day to sunlight filtering through the grimy glass of your bedroom window. Dressing quickly, you descend the creaking stairs to find the common room of the inn deserted. You leave the key on the bar and exit through the main door.~
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202
  SAY ~The road to town is muddy and damp from the previous night's downpour, and your boots are heavy and soaked when you arrive in the square of the small town of Marynford.~
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203
  SAY ~The oaken doors are heavy and solemn as they silently swing closed behind you. An aging man clad in simple robes looks up from the altar to Lathander in the front of the temple. He smiles warmly as he sees you. "Hello, traveler, how may I be of service?"~
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ GOTO 204
  IF ~~ THEN REPLY ~Ask the man why the tavern owner bars his door at night.~ GOTO 205
  IF ~~ THEN REPLY ~Leave the temple.~ GOTO 217
END

IF ~~ THEN BEGIN 204
  SAY ~"You say you are looking for a man clad in robes like yourself? I do believe I noticed someone fitting that description just yesterday. He was speaking to Essie Dawlins at her fruit stand in the town square. You might ask her about him."~
  IF ~~ THEN REPLY ~Ask the man why the tavern owner bars his door at night.~ GOTO 205
  IF ~~ THEN REPLY ~Leave the temple.~ GOTO 217
END

IF ~~ THEN BEGIN 205
  SAY ~The priest's face becomes grave. "It is good you have asked me, if you are not already aware. There is a curse upon Marynford and the surrounding lands. It has been so for years and years. Sadly, the curse originated within these very walls."~
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206
  SAY ~"My predecessor, a gifted and ambitious priest by the name of Brehan, desired to revive faith in Lathander among the people of Marynford. He preached, devoted his life to service, and offered assistance to all who were in need. Despite these measures, the devotion of the town remained tepid."~
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207
  SAY ~"Brehan became convinced that a display of power was needed to reveal the glory of Lathander to the villagers, so he undertook an expedition into a nearby ruin to rebuke and destroy a ghost that was rumored to reside there."~
  IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208
  SAY ~"He found and destroyed the ghost, but as the ghost faded from existence, it cursed him to eternal undeath. Brehan fell ill and soon became ghostly pale himself and increasingly terrified of the light of day."~
  IF ~~ THEN GOTO 209
END

IF ~~ THEN BEGIN 209
  SAY ~"One morning, I entered the infirmary and found Brehan's attendant dead on the floor with two puncture wounds on her neck. The door to the temple was battered down, and a set of tracks led in the direction of the ancient ruins. Since then, those who venture out at night sometimes do not return."~
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210
  SAY ~Here. Take this talisman of Lathander. It may protect you if you run afoul of the beast.~
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ DO ~SetGlobal("OHBN_SYMBOL","LOCALS",1)
~ GOTO 204
  IF ~~ THEN REPLY ~Leave the temple.~ DO ~SetGlobal("OHBN_SYMBOL","LOCALS",1)
~ GOTO 217
END

IF ~~ THEN BEGIN 211
  SAY ~The woman is young and pretty, and she smiles as you approach. "Two robed travelers in as many days. What a coincidence."~
  IF ~~ THEN REPLY ~Ask the woman if she has seen your mentor.~ GOTO 212
  IF ~~ THEN REPLY ~Ask the woman why the tavern owner bars his doors at night.~ GOTO 213
  IF ~~ THEN REPLY ~Leave the woman.~ GOTO 217
END

IF ~~ THEN BEGIN 212
  SAY ~"Yes, I have. Wearing a cloak similar to your own. He was buying food for a journey he was taking to the ruins south of town. Oh, I tried to warn him away, but he was resolute. I hope nothing has befallen him."~
  IF ~~ THEN REPLY ~Ask the woman why the tavern owner bars his doors at night.~ GOTO 213
  IF ~~ THEN REPLY ~Leave the woman.~ GOTO 217
END

IF ~~ THEN BEGIN 213
  SAY ~The woman turns pale and clutches the wooden table before her to steady herself. "We... we do not speak of such things. If you must know the answer to your question, ask the priest. He is in the temple. I... I can say no more about it. But take this garlic. It is said that the terror fears garlic."~
  IF ~~ THEN REPLY ~Ask the woman if she has seen your mentor.~ DO ~SetGlobal("OHBN_GARLIC","LOCALS",1)
~ GOTO 212
  IF ~~ THEN REPLY ~Leave the woman.~ GOTO 217
END

IF ~~ THEN BEGIN 214
  SAY ~"Howdy. I'm Bugs, and this here is Finney. We reckoned you were new around here 'cause we've never seen you before and we know just 'bout everyone in town. What brings you to these parts?"~
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ GOTO 215
  IF ~~ THEN REPLY ~Ask the man why the tavern owner bars his door at night.~ GOTO 216
  IF ~~ THEN REPLY ~Leave the men.~ GOTO 217
END

IF ~~ THEN BEGIN 215
  SAY ~"Hmm... A feller wearin' a robe like yours? Hey, Finney, didn't you say you saw a feller like that talking to Essie Dawlins a few days back? Yeah. Go talk to Essie by her fruit stand. She may know somethin'."~
  IF ~~ THEN REPLY ~Ask the man why the tavern owner bars his door at night.~ GOTO 216
  IF ~~ THEN REPLY ~Leave the men.~ GOTO 217
END

IF ~~ THEN BEGIN 216
  SAY ~"Hush now, <PRO_SIRMAAM>. We don't none of us talk about that out of doors. If you got questions 'bout that, best be asking the priest in the temple." He points to the temple of Lathander on the north side of the square.~
  IF ~~ THEN REPLY ~Ask the man if he has seen your mentor.~ GOTO 215
END

IF ~~ THEN BEGIN 217
  SAY ~You see a temple of Lathander on the north side of the square, a woman selling fruit to the east, and two young men talking under a tall oak in the center of the square. To the south, a road leads out of town and you think you see what appears to be a ruined tower in the distance.~
  IF ~~ THEN REPLY ~Enter the temple.~ GOTO 203
  IF ~~ THEN REPLY ~Talk to the woman selling fruit.~ GOTO 211
  IF ~~ THEN REPLY ~Talk to the two men.~ GOTO 214
  IF ~  Global("OHBN_BANDIT","LOCALS",1)
~ THEN REPLY ~Follow the road to the south.~ DO ~SetGlobal("OHBN_BANDIT","LOCALS",1)
~ GOTO 218
  IF ~  !Global("OHBN_BANDIT","LOCALS",1)
~ THEN REPLY ~Follow the road to the south.~ GOTO 229
END

IF ~~ THEN BEGIN 218
  SAY ~The south road appears little used, and the grass grows high on either side. You are lost in thought, pondering the fate of your mentor, when a figure leaps from hiding. The man is scarred heavily and points his sword at you. "Your money or your life, fool!"~
  IF ~~ THEN REPLY ~Cast Magic Missile at the man.~ GOTO 219
  IF ~~ THEN REPLY ~Cast Sleep on the man.~ GOTO 221
  IF ~~ THEN REPLY ~Cast Charm Person on the man.~ GOTO 222
  IF ~~ THEN REPLY ~Try to flee.~ GOTO 224
END

IF ~~ THEN BEGIN 219
  SAY ~Arcane power surges through you as you utter the final words of the incantation. The bandit's eyes widen as missiles of magical energy tear through his leather armor and throw him back on the road. He lies very, very still.~
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220
  SAY ~You search the man's corpse and find a few gold pieces. In his breast pocket where the magic missiles struck him, there appears to have been a letter. You try to read it, but much of it was destroyed by your magic. All you can make out is: "...talisman... Lathander..."~
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 221
  SAY ~As your spell envelops the man, his features soften and he slumps to the road in a limp heap. You search him quickly and find a letter in his breast pocket. One section is of particular interest. It reads: "...procure a talisman of Lathander to protect yourself from the undead creature..."~
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 222
  SAY ~You utter the last line of the incantation, and the man suddenly looks at his sword and chuckles. "Heh. What do I need this for, friend? Now, how may I be of service? Oh I know. I'll warn you of the danger in these parts."~
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223
  SAY ~"The villagers have somehow awakened an undead fiend, but there is a way to weaken it and drive it away. Simply acquire a talisman of Lathander, and it will not try to attack you. I am on my way to try to procure one this very day. Now, I must be off. Good luck!"~
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 224
  SAY ~You turn and begin to run, but you are no match for the bandit's speed. He overtakes you, and you feel a burning pain in your back, then nothing at all as the ground rushes up to receive your dying body.~
  IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 225
  SAY ~Oh, too bad. Looks like you have been slain. Better luck next time.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 226
  SAY ~The bandit defeated, you stand on the lonely road. To the south lies the ancient ruin, and to the north lies the small town square.~
  IF ~~ THEN REPLY ~Return to the town square.~ GOTO 218
  IF ~~ THEN REPLY ~Proceed south toward the ruin.~ GOTO 229
END

IF ~~ THEN BEGIN 227
  SAY ~The magical projectiles streak unerringly toward their target and stop the charging skeleton in its tracks. Chunks of bone sail high into the air as it is obliterated.~
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 228
  SAY ~Your spell leaves your fingers and settles over the undead creature, but it appears to be unaffected. The simple life force within the animated bones is immune to the enchantment. You struggle to begin another spell, but the undead monster is upon you and the ground rushes up to receive your lifeless body.~
  IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 229
  SAY ~Eventually, you find yourself staring at crumbling stone walls and a decrepit tower, all that remain of a once-mighty fortress. As soon as you enter the ruined courtyard, a shriek erupts and a skeletal figure charges you!~
  IF ~~ THEN REPLY ~Cast Magic Missile at the skeleton.~ GOTO 227
  IF ~~ THEN REPLY ~Cast Sleep at the skeleton.~ GOTO 228
  IF ~~ THEN REPLY ~Cast Charm person at the skeleton.~ GOTO 228
END

IF ~~ THEN BEGIN 230
  SAY ~The courtyard has a ruined shed to the north which seems to have been visited recently. There is a ruined building to the south which appears undisturbed. There is also a dark doorway to the east which appears to have seen recent activity. Beside the door, you notice a shred of fabric the same color as your mentor's cloak.~
  IF ~  !Global("OHBN_MUMMY","LOCALS",1)
~ THEN REPLY ~Enter the ruined shed to the north.~ DO ~SetGlobal("OHBN_MUMMY","LOCALS",1)
~ GOTO 231
  IF ~  !Global("OHBN_HOLYWATER","LOCALS",1)
~ THEN REPLY ~Enter the undisturbed building to the south.~ DO ~SetGlobal("OHBN_HOLYWATER","LOCALS",1)
~ GOTO 235
  IF ~~ THEN REPLY ~~ [AMB_M30] GOTO 237
END

IF ~~ THEN BEGIN 231
  SAY ~The rotten timber of the shed door gives way to your hand, and the decrepit wood falls to the ground before you, revealing a ghastly, dusty figure wrapped in strips of cloth, shambling forward from the darkness.~
  IF ~~ THEN REPLY ~Cast Magic Missile at the mummy.~ GOTO 232
  IF ~~ THEN REPLY ~Cast Burning Hands at the mummy.~ GOTO 233
  IF ~~ THEN REPLY ~Cast Sleep at the mummy.~ GOTO 234
  IF ~~ THEN REPLY ~Cast Charm Person at the mummy.~ GOTO 234
END

IF ~~ THEN BEGIN 232
  SAY ~The missiles strike the shambling figure and tear great holes in its chest. The creature stumbles to one knee, then slowly regains its footing, allowing you time to begin another spell.~
  IF ~~ THEN REPLY ~Cast Burning Hands at the mummy.~ GOTO 233
  IF ~~ THEN REPLY ~Cast Sleep at the mummy.~ GOTO 234
  IF ~~ THEN REPLY ~Cast Charm Person at the mummy.~ GOTO 234
END

IF ~~ THEN BEGIN 233
  SAY ~Flames arc forward from your outstretched hands, and the shambling figure is engulfed in an inferno of bright flames. It falls to the ground and thrashes as it is reduced to ashes. Glancing about the shed reveals nothing of value.~
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 234
  SAY ~Your spell leaves your fingers and settles over the undead creature, but it appears to be unaffected. The simple life force within the dusty wraps is immune to the enchantment. You struggle to begin another spell, but the undead monster is upon you and the ground rushes up to receive your lifeless body.~
  IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 235
  SAY ~The grass grows high and thick around the undisturbed building, and there are even some delicate flowers here that grow nowhere else in the bleak ruins. The door is untouched by decay and swings in easily at your touch.~
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236
  SAY ~On the ground before you lies a set of silver armor flanked by a heavy mace and an intricately engraved shield. You note the symbol of Lathander on the breastplate of the armor. On the belt of the armor is a flask of water which glows with a faint holy light. You take the holy water for future use.~
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 237
  SAY ~You step through the dark threshold, and the air chills around you. A piercing shriek echoes in your head as torches on the walls of the ancient crypt flare with an unearthly blue fire. You fall to one knee as you look up and see a pale figure with large fangs. A vampire.~
  IF ~~ THEN REPLY ~Cast Magic Missile at the vampire.~ GOTO 238
  IF ~~ THEN REPLY ~Cast Burning Hands at the vampire.~ GOTO 239
  IF ~~ THEN REPLY ~Cast Sleep at the vampire.~ GOTO 240
  IF ~~ THEN REPLY ~Cast Charm Person at the vampire.~ GOTO 240
  IF ~  Global("OHBN_SYMBOL","LOCALS",1)
~ THEN REPLY ~Brandish the symbol of Lathander.~ GOTO 241
  IF ~  Global("OHBN_GARLIC","LOCALS",1)
~ THEN REPLY ~Smash your clove of garlic and throw it at the vampire.~ GOTO 242
  IF ~  Global("OHBN_HOLYWATER","LOCALS",1)
~ THEN REPLY ~Throw the flask of holy water at the vampire.~ GOTO 243
END

IF ~~ THEN BEGIN 238
  SAY ~The magical projectiles strike the vampire in the chest, but to your amazement and dismay leave only minor scorches on the skin of the undead monster. The creature winces slightly but continues to advance. You have time to prepare another spell.~
  IF ~~ THEN REPLY ~Cast Burning Hands at the vampire.~ GOTO 239
  IF ~~ THEN REPLY ~Cast Sleep at the vampire.~ GOTO 240
  IF ~~ THEN REPLY ~Cast Charm Person at the vampire.~ GOTO 240
  IF ~  Global("OHBN_SYMBOL","LOCALS",1)
~ THEN REPLY ~Brandish the symbol of Lathander.~ GOTO 241
  IF ~  Global("OHBN_GARLIC","LOCALS",1)
~ THEN REPLY ~Smash your clove of garlic and throw it at the vampire.~ GOTO 242
  IF ~  Global("OHBN_HOLYWATER","LOCALS",1)
~ THEN REPLY ~Throw the flask of holy water at the vampire.~ GOTO 243
END

IF ~~ THEN BEGIN 239
  SAY ~The flames that arc forth from your hand singe the beast's skin and cause it to shield its eyes, but it is otherwise unharmed. The vampire advances slowly, giving you time to prepare another spell.~
  IF ~~ THEN REPLY ~Cast Magic Missile at the vampire.~ GOTO 238
  IF ~~ THEN REPLY ~Cast Sleep at the vampire.~ GOTO 240
  IF ~~ THEN REPLY ~Cast Charm Person at the vampire.~ GOTO 240
  IF ~  Global("OHBN_SYMBOL","LOCALS",1)
~ THEN REPLY ~Brandish the symbol of Lathander.~ GOTO 241
  IF ~  Global("OHBN_GARLIC","LOCALS",1)
~ THEN REPLY ~Smash your clove of garlic and throw it at the vampire.~ GOTO 242
  IF ~  Global("OHBN_HOLYWATER","LOCALS",1)
~ THEN REPLY ~Throw the flask of holy water at the vampire.~ GOTO 243
END

IF ~~ THEN BEGIN 240
  SAY ~Your spell leaves your fingers and settles over the vampire. It smiles mockingly as it shrugs off your enchantment. You struggle to begin another spell, but the undead monster is upon you and the ground rushes up to receive your lifeless body.~
  IF ~~ THEN GOTO 241
END

IF ~~ THEN BEGIN 241
  SAY ~As you hold up the talisman of Lathander, the crypt flares in a bright holy light. The vampire begins to smoke and stumbles back against the far wall quivering and covering its eyes.~
  IF ~~ THEN REPLY ~Cast Magic Missile at the vampire.~ GOTO 244
  IF ~~ THEN REPLY ~Cast Burning Hands at the vampire.~ GOTO 245
  IF ~  Global("OHBN_GARLIC","LOCALS",1)
~ THEN REPLY ~Smash your clove of garlic and throw it at the vampire.~ GOTO 246
  IF ~  Global("OHBN_HOLYWATER","LOCALS",1)
~ THEN REPLY ~Throw the flask of holy water at the vampire.~ GOTO 247
END

IF ~~ THEN BEGIN 242
  SAY ~As the cloves of garlic strike the vampire, it shudders... with laughter. "You would use garlic against me? You've been deceived by an old wives' tale, you fool!"~
  IF ~~ THEN REPLY ~Cast Magic Missile at the vampire.~ GOTO 244
  IF ~~ THEN REPLY ~Cast Burning Hands at the vampire.~ GOTO 245
  IF ~  Global("OHBN_SYMBOL","LOCALS",1)
~ THEN REPLY ~Brandish the symbol of Lathander.~ GOTO 248
  IF ~  Global("OHBN_HOLYWATER","LOCALS",1)
~ THEN REPLY ~Throw the flask of holy water at the vampire.~ GOTO 247
END

IF ~~ THEN BEGIN 243
  SAY ~The flask shatters on the stone floor of the crypt, dousing the vampire in holy water. Its flesh begins to smoke and char, and it stumbles against the far wall of the crypt, cowering and shaking.~
  IF ~~ THEN REPLY ~Cast Magic Missile at the vampire.~ GOTO 244
  IF ~~ THEN REPLY ~Cast Burning Hands at the vampire.~ GOTO 245
  IF ~  Global("OHBN_SYMBOL","LOCALS",1)
~ THEN REPLY ~Brandish the symbol of Lathander.~ GOTO 248
  IF ~  Global("OHBN_GARLIC","LOCALS",1)
~ THEN REPLY ~Smash your clove of garlic and throw it at the vampire.~ GOTO 247
END

IF ~~ THEN BEGIN 244
  SAY ~The missiles streak toward the weakened vampire and plow through its flesh, leaving an empty husk in their wake. The vampire slumps to the floor and dissolves into a cloud of gaseous mist which flees the room.~
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 245
  SAY ~The gouts of flame strike the weakened vampire and soon set it ablaze. It shrivels and thrashes, then falls to the floor and slowly dissipates into a cloud of gaseous mist which flees the room.~
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 246
  SAY ~The garlic strikes the weakened vampire—but does not affect it. "Fool!" it hisses. "You've been taken in by that old wives' tale?"~
  IF ~~ THEN REPLY ~Cast Magic Missile at the vampire.~ GOTO 244
  IF ~~ THEN REPLY ~Cast Burning Hands at the vampire.~ GOTO 245
  IF ~  Global("OHBN_SYMBOL","LOCALS",1)
~ THEN REPLY ~Brandish the symbol of Lathander.~ GOTO 248
  IF ~  Global("OHBN_HOLYWATER","LOCALS",1)
~ THEN REPLY ~Throw the flask of holy water at the vampire.~ GOTO 247
END

IF ~~ THEN BEGIN 247
  SAY ~The holy water splashes the weakened vampire, and its flesh curls and chars as blue flames consume it. The vampire collapses on the floor and slowly dissipates into a cloud of gaseous mist which flees the room.~
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 248
  SAY ~The holy symbol flares with searing light. Beams of energy pierce the weakened vampire, and its flesh curls and chars as blue flames consume it. The vampire collapses on the floor and slowly dissipates into a cloud of gaseous mist which flees the room.~
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249
  SAY ~You rush across the crypt to the next door and find your mentor slumped on the floor. Fearing the worst, you check his neck, and he stirs weakly. You realize he is still alive. Beside him is a wooden coffin, and you notice a tendril of gaseous mist escaping into it.~
  IF ~~ THEN REPLY ~Take your master and flee the crypt.~ GOTO 250
  IF ~~ THEN REPLY ~Cast Burning Hands at the casket.~ GOTO 252
END

IF ~~ THEN BEGIN 250
  SAY ~You hoist your master over your shoulder and begin the arduous trek back to town. You emerge from the crypt and find that night is fast approaching. You walk as quickly as you can, but with your heavy burden, you are unable to reach the safety of town before nightfall.~
  IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 251
  SAY ~You become aware of a presence behind you moments before you are struck heavily on your back. You fall to the ground and roll onto your back just as the vampire fastens its fangs to your neck and the world fades to blackness.~
  IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 252
  SAY ~The wood of the coffin bursts into flame and a shrieking sound reverberates through the crypt as it disintegrates. The shrieking sound subsides, and the crypt is left quiet and lifeless. You shoulder the burden of your mentor and begin the long journey back to town.~
  IF ~~ THEN GOTO 253
END

IF ~~ THEN BEGIN 253
  SAY ~You arrive in town late at night and find all the doors in town barred. You shout and pound on the doors of the temple of Lathander until a small window above is opened. The priest instantly recognizes you and lets you in.~
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
  SAY ~"By the gods! How have you survived out of doors so late? And your friend! He is in need of aid. I shall take him to the infirmary as you tell me your tale."~
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255
  SAY ~Over the next few days, your mentor regains his health, and the townspeople no longer see the terror stalking at night. They give you what gifts their modest incomes allow and herald you as a hero. When your mentor recovers, you continue your journey together to Waterdeep to pursue your arcane studies there.~
  IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256
  SAY ~Wow! That was pretty good. You did it. I guess there isn't any challenge that you cannot overcome. That's a fun game.~
  IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 257
  SAY ~Ooh, a thief! That's fun. You know, I once stole something. Yep. It's true. There was a pie pan by the bedroom window of a villager back in Nashkel, and it was completely full. I stole it and took a bite. Turns out it was actually a bed pan. Never really had a taste for pie after that.~
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
  SAY ~Yeah, so let me just get my Tome of Adventure and we can begin the game. Okay, here it is. Let's start!~
  IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
  SAY ~You are a professional thief, and a rather talented one at that. You have spent most of your career performing jobs for various trade guilds, mercenary groups, and the occasional noble here and there.~
  IF ~~ THEN GOTO 260
END

IF ~~ THEN BEGIN 260
  SAY ~Your last job went well, but the noble who hired you cheated you on your payment. In an attempt to recoup your losses, you broke into his personal offices, searching for his safe.~
  IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261
  SAY ~Instead, you found a stash of documents which indicated the location of a powerful magical ring owned by a rich merchant in the nearby town of Galenwood. The papers explained that the ring was able to amplify the wearer's natural talents of sneaking and innate dexterity. Apparently, the noble had intentions of stealing the ring for himself.~
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262
  SAY ~To your astonishment, the documents also hinted that the ring had the ability to turn its wearer invisible as well. The location of the house, and even the location of the safe room in which the ring is kept, were indicated in the documents. You took them and proceeded to the town of Galenwood immediately.~
  IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263
  SAY ~The road to Galenwood is heavily wooded, with thick underbrush on either side. Thick tree branches extend across the road just above head level and form a canopy which shields the road from direct sunlight.~
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264
  SAY ~As you reflect on the beauty of the scene, you hear movement and voices behind you. The voices are distant, but your sharp ears are able to pick up a few words, "...will be rewarded for getting the documents back... thief won't get far..." Looking back, you see nothing and realize you have not been seen yet. You have a few minutes to act.~
  IF ~~ THEN REPLY ~Stand in the road and await your pursuers.~ GOTO 265
  IF ~~ THEN REPLY ~Set a trap beneath the leaves on the road.~ GOTO 271
  IF ~~ THEN REPLY ~Climb into the branches directly above the road.~ GOTO 276
END

IF ~~ THEN BEGIN 265
  SAY ~In a few minutes, you see two men walk into view. They are clad in chain mail and carry swords and shields. You recognize them as the guards of the noble who cheated you. They stop in surprise at seeing you. Recognition crosses their faces. One shouts, "It's <PRO_HIMHER>!" and they charge at you.~
  IF ~~ THEN REPLY ~Stand your ground.~ GOTO 266
  IF ~~ THEN REPLY ~Climb into the branches directly above the road.~ GOTO 267
  IF ~~ THEN REPLY ~Set a trap beneath the leaves on the road.~ GOTO 268
  IF ~~ THEN REPLY ~Slip into the underbrush on the side of the road.~ GOTO 269
END

IF ~~ THEN BEGIN 266
  SAY ~The guards reach you in a matter of seconds. You parry the thrust of the first guard with your short sword, but the second guard dazes you with a shield block to the face. You stumble backwards and feel a searing pain in your chest. Then the world around you goes black.~
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 267
  SAY ~You leap onto the trunk of a nearby tree and almost make it out of reach, but the guards are too swift. One of them fastens an iron grip around your ankle, and you fall heavily to the ground. The last thing you see is a sword descending toward your exposed throat.~
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 268
  SAY ~Your hands work feverishly but you are still crouched over your trap, setting tools, when the guards reach you. You look up, and the last thing you see is a sword descending toward your exposed neck.~
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 269
  SAY ~You roll fluidly into the underbrush on the side of the road and creep noiselessly forward with practiced stealth. The guards follow you, hacking away at the plant life with their swords.~
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270
  SAY ~You easily double back and creep up from behind, slipping your short sword through a seam in the trailing guard's armor. Before the other can react, you leap forward and cut his throat, letting him fall silently to the ground. You quickly conceal the bodies and return to the path.~
  IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 271
  SAY ~You work quickly and methodically, setting up a simple yet effective poison dart trap. You just finish concealing the pressure plate when two men walk into view. They are clad in chain mail and carry swords and shields.~
  IF ~~ THEN GOTO 272
END

IF ~~ THEN BEGIN 272
  SAY ~You recognize them as the guards of the noble who cheated you. They stop in surprise at seeing you. Recognition crosses their faces. One shouts, "It's <PRO_HIMHER>!" and they charge at you.~
  IF ~~ THEN GOTO 273
END

IF ~~ THEN BEGIN 273
  SAY ~You retreat several steps and watch in satisfaction as the first of the guards runs right into your trap. Poison darts spring from the brush on either side of the road, piercing the first guard multiple times. He gasps and falls quivering to the ground as the poison takes effect.~
  IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 274
  SAY ~The second guard is hit once in the flank. He stumbles, and his pace slows, but he continues his attack. Your poison has sapped much of his strength, and you easily parry his attacks and counterattack with successful strikes of your own.~
  IF ~~ THEN GOTO 275
END

IF ~~ THEN BEGIN 275
  SAY ~In a matter of minutes, the second guard lies dead at your feet, his life's blood staining the road. You quickly conceal the bodies and all signs of the struggle as best you can.~
  IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 276
  SAY ~You easily make your way into the branches and wait silently. In a few minutes, you see two men walk into view. They are clad in chain mail and carry swords and shields. You recognize them as the guards of the noble who cheated you. They are boasting of their recent exploits with a local barmaid and do not notice you.~
  IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277
  SAY ~You wait until they pass, then drop noiselessly behind them, quickly sliding your blade into a weak spot in one of the guard's armor. His lung punctured, he drops noiselessly to the ground.~
  IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278
  SAY ~A second later, the second guard notices that his companion is missing and turns, but he is too slow. You lunge at him and bury your short sword in his exposed neck before he can ready his guard. You quickly conceal the bodies and all signs of the struggle as best you can.~
  IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 279
  SAY ~Oh, too bad! Looks like you lost. Well, it was a fun game anyway. Next time, try to be a little more sneaky.~
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 280
  SAY ~Having dealt with the guards, you continue your journey to Galenwood, treading a little more carefully and keeping an ear to the wind and an eye on your back. After a few uneventful hours of travel, you arrive at the gates of the small town and make your way discreetly to the town square.~
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281
  SAY ~You stand in the bustling town square of Galenwood. To the north is a large house which matches the description of the merchant's house in the documents. To the south is a temple of Helm. To the east is a tavern, and beside the tavern is an alley. A man dressed in fine blue clothes can be seen going from the merchant's house to the alley and back, periodically.~
  IF ~~ THEN REPLY ~Enter the temple of Helm.~ GOTO 282
  IF ~~ THEN REPLY ~Enter the tavern.~ GOTO 288
  IF ~~ THEN REPLY ~Follow the finely dressed man to the alley.~ GOTO 295
  IF ~~ THEN REPLY ~Approach the merchant's house.~ GOTO 298
END

IF ~~ THEN BEGIN 282
  SAY ~The interior of the temple is dappled in subtle shades of blue and amber as the sunlight filters in through the ornate stained glass windows of the temple. To your left, several people are praying fervently. At the altar, an acolyte appears to be tending to temple duties.~
  IF ~~ THEN REPLY ~Move closer and listen to the prayers.~ GOTO 283
  IF ~~ THEN REPLY ~Approach the acolyte.~ GOTO 285
  IF ~~ THEN REPLY ~Return outside.~ GOTO 281
END

IF ~~ THEN BEGIN 283
  SAY ~You look up and make a show of admiring the intricate carvings on the ceiling as you slowly wander within hearing of the people's prayers. You make out a few words.~
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284
  SAY ~"...And I pray that you will forgive him for his sins. He is just a simple guard and very handsome. It isn't any fault of his own that the rich merchant's wife fell in love with him and gave him the locket with their names inscribed upon it..." You make note of the information for future use.~
  IF ~~ THEN REPLY ~Approach the acolyte.~ DO ~SetGlobal("OHBN_AFFAIR","LOCALS",1)
~ GOTO 285
  IF ~~ THEN REPLY ~Return outside.~ DO ~SetGlobal("OHBN_AFFAIR","LOCALS",1)
~ GOTO 281
END

IF ~~ THEN BEGIN 285
  SAY ~The young acolyte appears startled as you approach. Your sharp and well-trained eyes see his hands quickly draw back from the temple's offering box. The acolyte follows your gaze, and the expression of horror and surprise on his face tells you he is at your mercy.~
  IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286
  SAY ~He begins to speak as his shock subsides. "I... I know things. I know people. I can tell you anything, just... just don't tell the priest! Oh, don't tell Father McNeil!"~
  IF ~~ THEN GOTO 287
END

IF ~~ THEN BEGIN 287
  SAY ~"The manor house... well... it's owned by Phineas Undergood. He's rich. The richest man in a hundred leagues and more. His steward, Alder Lathel, carries the key to his most prized possession. Alder is always dressed in blue and can be found most days running errands to the tavern."~
  IF ~~ THEN REPLY ~Move closer and listen to the prayers.~ DO ~SetGlobal("OHBN_KEY","LOCALS",1)
~ GOTO 283
  IF ~~ THEN REPLY ~Return outside.~ DO ~SetGlobal("OHBN_KEY","LOCALS",1)
~ GOTO 281
END

IF ~~ THEN BEGIN 288
  SAY ~Elegant appointments brighten the interior of this tavern. Several attractive young barmaids are busy serving ale and food to patrons in the crowded common room. In one corner, you see a man in chain mail armor emblazoned with a symbol that you noticed on the large house on the north side of the square.~
  IF ~~ THEN REPLY ~Offer to buy a drink for one of the barmaids.~ GOTO 289
  IF ~~ THEN REPLY ~Buy a drink for the man in chain mail armor.~ GOTO 292
  IF ~~ THEN REPLY ~Return outside.~ GOTO 281
END

IF ~~ THEN BEGIN 289
  SAY ~The young girl smiles an enchantingly pretty smile, then speaks with the most hideous voice you have ever heard in your entire life. "Don't mind if I do, love. Me bum's burnin' from all this standin'. Makes me arse twitch, ya know?"~
  IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 290
  SAY ~The girl sits heavily and downs the entire mug in one swallow, then belches loudly. "Aye, that's good ale. Heh, reminds me of that time when summat else bought me an ale. That guard outside the manor house, ya know? He bought me one to keep me quiet."~
  IF ~~ THEN GOTO 291
END

IF ~~ THEN BEGIN 291
  SAY ~"Ya see, I was sittin' in the outhouse and heard that good-lookin' guard talkin' to the lady of the manor. Looked out the peephole I did, and saw her give him this locket, had their names engraved on it. When he found out I knew, he bought me drinks to get me fuddled. Didn't work though. Remembered the whole thing."~
  IF ~~ THEN REPLY ~Buy a drink for the man in chain mail armor.~ DO ~SetGlobal("OHBN_AFFAIR","LOCALS",1)
~ GOTO 292
  IF ~~ THEN REPLY ~Return outside.~ DO ~SetGlobal("OHBN_AFFAIR","LOCALS",1)
~ GOTO 281
END

IF ~~ THEN BEGIN 292
  SAY ~The man looks up at you angrily until he sees the flagon of ale in your hand. "Aye, now you're speaking my language. Cheers, mate." He takes the ale and starts drinking. Four flagons later, he starts talking. "Gave my whole life to that heartless wretch, working in his house, guarding his possessions."~
  IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 293
  SAY ~"Then one day, he up and fires me just to save a few gold coins. I was the one who designed the trap to guard his most prized possession, that damned ring of his. Put it right above the chandelier where nobody'd think to look. Can't believe he fired me."~
  IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294
  SAY ~"Got half a mind to steal the ring myself. Since I know about the trap in the chandelier, I only need to get past the guard at the front door and then get the key to the lock and the ring will be mine." The man sways a second after speaking, then falls snoring to the table, spilling the rest of the ale.~
  IF ~~ THEN REPLY ~Offer to buy a drink for one of the barmaids.~ GOTO 289
  IF ~~ THEN REPLY ~Return outside.~ GOTO 281
END

IF ~~ THEN BEGIN 295
  SAY ~You wait until the man has his back turned and then slip in the alley behind him. He goes to the back of the tavern and bends over a box, fumbling with the contents. You have a chance to act while his attention is distracted.~
  IF ~  Global("OHBN_KEY","LOCALS",1)
~ THEN REPLY ~Attempt to pick his pockets.~ DO ~SetGlobal("OHBN_KEY","LOCALS",2)
~ GOTO 296
  IF ~  !Global("OHBN_KEY","LOCALS",1)
~ THEN REPLY ~Attempt to pick his pockets.~ GOTO 297
  IF ~~ THEN REPLY ~Return to the town square.~ GOTO 281
END

IF ~~ THEN BEGIN 296
  SAY ~Your trained hands quickly locate the key in the man's pocket and remove it undetected. You complete the job almost without breaking stride and return to the town square before you attract any attention.~
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 297
  SAY ~You easily slip your hands in the distracted man's various pockets, but are unable to notice anything of value before you must move back to the town square to avoid attracting attention. Perhaps if you knew what you were looking for, you could try again later.~
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 298
  SAY ~You approach the richly decorated house and are promptly halted by a tall and handsome guard at the front door. "Halt. What business do you have with the Undergood Estate?" You realize that if you manage to enter the house, you will not be able to leave and then reenter. You have only one chance once inside.~
  IF ~~ THEN REPLY ~Claim to be a safe inspector sent for by the master of the house.~ GOTO 299
  IF ~~ THEN REPLY ~Attempt to overpower the guard.~ GOTO 300
  IF ~  Global("OHBN_AFFAIR","LOCALS",1)
~ THEN REPLY ~Blackmail the guard with the information about his affair with his master's wife.~ GOTO 301
  IF ~~ THEN REPLY ~Return to the town square.~ GOTO 281
END

IF ~~ THEN BEGIN 299
  SAY ~The guard narrows his eyes for a moment, then enters the house without a word, locking the door behind him. He returns a few moments later with a hard look on his face. "The master's clerk of business knows of no such appointment. Now move along before you find yourself in the stocks."~
  IF ~~ THEN REPLY ~Attempt to overpower the guard.~ GOTO 300
  IF ~  Global("OHBN_AFFAIR","LOCALS",1)
~ THEN REPLY ~Blackmail the guard with the information about his affair with his master's wife.~ GOTO 301
  IF ~~ THEN REPLY ~Return to the town square.~ GOTO 281
END

IF ~~ THEN BEGIN 300
  SAY ~You lunge for the guard's throat, but he is ready. His trained muscles quickly overpower you, and you feel a burning pain at your throat as the guard's dagger is drawn quickly across it. The ground rushes up to meet you as the world goes black.~
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 301
  SAY ~The large man's rugged face pales, and his eyes grow wide. His right hand instinctively clutches at something just below the collar of his tunic. His eyes darting left and right, he silently moves aside, allowing you to pass.~
  IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302
  SAY ~You find yourself in the grand entrance of the elegant mansion. Referring to your papers, you find the hallway that leads to the mansion's safe room. It is a long corridor with a painting on the left side, a chandelier hanging from the ceiling, a rug on the floor, and a statue on the right side.~
  IF ~~ THEN REPLY ~Proceed to the door of the safe room.~ GOTO 303
  IF ~~ THEN REPLY ~Check the painting for a trap.~ GOTO 304
  IF ~~ THEN REPLY ~Check the chandelier for a trap.~ GOTO 306
  IF ~~ THEN REPLY ~Check the rug for a trap.~ GOTO 307
  IF ~~ THEN REPLY ~Check the statue for a trap.~ GOTO 308
END

IF ~~ THEN BEGIN 303
  SAY ~You stride boldly toward your goal at the end of the corridor. Halfway there, you hear a barely audible twang and feel a sting at the back of your neck.~
  IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 304
  SAY ~You carefully examine the painting, but find no traces of tripwires, pressure plates, or other conventional triggers. As you step back to think about your next move, you hear a barely audible twang and feel a sting at the back of your neck.~
  IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 305
  SAY ~Reaching back, you find a dart protruding from you skin and you realize to your horror that you have triggered a trap. Your vision blurs from the poison dart, and soon your knees buckle. You never feel yourself hit the floor.~
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 306
  SAY ~As you look closely at the chandelier, you see a small network of tiny filaments extending from the ornamental arms of the light fixture to the floor. Where they attach to the chandelier, there are small levers, almost too small to detect.~
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 307
  SAY ~You carefully examine the rug, but find no traces of tripwires, pressure plates, or other conventional triggers. As you step back to think about your next move, you hear a barely audible twang and feel a sting at the back of your neck.~
  IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 308
  SAY ~You carefully examine the statue, but find no traces of tripwires, pressure plates, or other conventional triggers. As you step back to think about your next move, you hear a barely audible twang and feel a sting at the back of your neck.~
  IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 309
  SAY ~You carefully avoid the filaments hanging from the chandelier and make your way to the safe room door. It appears to be a normal door with a simple lock below the doorknob.~
  IF ~~ THEN REPLY ~Try to pick the lock.~ GOTO 310
  IF ~  Global("OHBN_KEY","LOCALS",2)
~ THEN REPLY ~Place the stolen key in the lock and turn it.~ GOTO 313
END

IF ~~ THEN BEGIN 310
  SAY ~You produce your lockpicking tools and begin to work on the lock. The tumblers turn easily beneath your expert fingers, and soon the lock clicks. You stand up triumphantly. Then you hear another click, then a twang. Something strikes the back of your neck.~
  IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 311
  SAY ~Looking back over your shoulder, you see no one in the corridor. You take a few steps back, then throw your full weight against the door. It gives slightly, then holds solid. Throughout the house, bells sound, and the house fills with the sound of running feet.~
  IF ~~ THEN GOTO 312
END

IF ~~ THEN BEGIN 312
  SAY ~The corridor fills with guards carrying crossbows, and seconds later the air is full of humming quarrels. The quarrels find their mark, and you drop to your knees. The world fades to blackness.~
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 313
  SAY ~The lock opens silently, and as you open the door, you find that it is comprised of two inches of solid iron. The hinges make no sound whatsoever as you close the door behind you. You turn and survey the room.~
  IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 314
  SAY ~To your surprise, you see a window overlooking the busy town square. Despite the window, the room seems surprisingly dark, and this strikes you as odd. There is a table with a small stand which holds a simple gold ring. You quickly take the ring and plan your escape.~
  IF ~~ THEN REPLY ~Attempt to leave through the strangely dark window.~ GOTO 315
  IF ~~ THEN REPLY ~Slip the ring on your finger and exit the way you entered.~ GOTO 317
END

IF ~~ THEN BEGIN 315
  SAY ~You attempt to open the window, but your hands pass through and push against a metallic plate behind it. As bells sound throughout the house, you realize too late that the window was an illusion.~
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316
  SAY ~Guards fling the door open and train their crossbows on you. The air hums as their bolts streak toward their target. The quarrels find their mark, and you drop to your knees. The world fades to blackness.~
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 317
  SAY ~You slip the ring on your finger, and the world around you shimmers briefly as the magic cloaks you in invisibility. You exit through the safe room door, taking care to lock it behind you. You return to the grand entry and patiently wait for the door to the square to open.~
  IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 318
  SAY ~After what seems like an eternity, an elegant middle-aged woman passes through the door with a lingering gaze on the tall guard. You take the opportunity to pass unseen into the square and shortly thereafter out of the city.~
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319
  SAY ~You travel swiftly for three days until you are certain that you have not been pursued. Only then do you take off the ring and spend the night in a small, nearly deserted tavern. After a surprisingly good dinner, you retire to your room and fall asleep, dreaming of the riches which are sure to be yours.~
  IF ~~ THEN GOTO 320
END

IF ~~ THEN BEGIN 320
  SAY ~You did it! Well done. Wasn't sure you would make it there toward the end, but you did! Well, that certainly was fun.~
  IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 321
  SAY ~Oh well, you died, but this has been known to happen in this game. Despite this, was it a fun game?~
  IF ~~ THEN REPLY ~Yes, I enjoyed it very much.~ DO ~SetGlobal("OHBN_XP","LOCALS",0)
SetGlobal("OHBN_KNOWS_FERNAULT","LOCALS",0)
SetGlobal("OHBN_SENESCHAL","LOCALS",0)
SetGlobal("OHBN_HEARTLESS","LOCALS",0)
SetGlobal("OHBN_BLADE","LOCALS",0)
SetGlobal("OHBN_HELMET","LOCALS",0)
SetGlobal("OHBN_CLOAK","LOCALS",0)
SetGlobal("OHBN_RING","LOCALS",0)
SetGlobal("OHBN_BANDIT","LOCALS",0)
SetGlobal("OHBN_SYMBOL","LOCALS",0)
SetGlobal("OHBN_HOLYWATER","LOCALS",0)
SetGlobal("OHBN_GARLIC","LOCALS",0)
SetGlobal("OHBN_KEY","LOCALS",0)
SetGlobal("OHBN_AFFAIR","LOCALS",0)
SetGlobal("OHB_NOOBER","GLOBAL",5)
~ GOTO 323
  IF ~~ THEN REPLY ~Well, it was a game.~ DO ~SetGlobal("OHBN_XP","LOCALS",0)
SetGlobal("OHBN_KNOWS_FERNAULT","LOCALS",0)
SetGlobal("OHBN_SENESCHAL","LOCALS",0)
SetGlobal("OHBN_HEARTLESS","LOCALS",0)
SetGlobal("OHBN_BLADE","LOCALS",0)
SetGlobal("OHBN_HELMET","LOCALS",0)
SetGlobal("OHBN_CLOAK","LOCALS",0)
SetGlobal("OHBN_RING","LOCALS",0)
SetGlobal("OHBN_BANDIT","LOCALS",0)
SetGlobal("OHBN_SYMBOL","LOCALS",0)
SetGlobal("OHBN_HOLYWATER","LOCALS",0)
SetGlobal("OHBN_GARLIC","LOCALS",0)
SetGlobal("OHBN_KEY","LOCALS",0)
SetGlobal("OHBN_AFFAIR","LOCALS",0)
SetGlobal("OHB_NOOBER","GLOBAL",5)
~ GOTO 324
  IF ~~ THEN REPLY ~It wasn't very good, no.~ DO ~SetGlobal("OHBN_XP","LOCALS",0)
SetGlobal("OHBN_KNOWS_FERNAULT","LOCALS",0)
SetGlobal("OHBN_SENESCHAL","LOCALS",0)
SetGlobal("OHBN_HEARTLESS","LOCALS",0)
SetGlobal("OHBN_BLADE","LOCALS",0)
SetGlobal("OHBN_HELMET","LOCALS",0)
SetGlobal("OHBN_CLOAK","LOCALS",0)
SetGlobal("OHBN_RING","LOCALS",0)
SetGlobal("OHBN_BANDIT","LOCALS",0)
SetGlobal("OHBN_SYMBOL","LOCALS",0)
SetGlobal("OHBN_HOLYWATER","LOCALS",0)
SetGlobal("OHBN_GARLIC","LOCALS",0)
SetGlobal("OHBN_KEY","LOCALS",0)
SetGlobal("OHBN_AFFAIR","LOCALS",0)
SetGlobal("OHB_NOOBER","GLOBAL",5)
~ GOTO 325
END

IF ~~ THEN BEGIN 322
  SAY ~So what did you think? Was it a fun game?~
  IF ~~ THEN REPLY ~Yes, I enjoyed it very much.~ DO ~SetGlobal("OHBN_XP","LOCALS",0)
SetGlobal("OHBN_KNOWS_FERNAULT","LOCALS",0)
SetGlobal("OHBN_SENESCHAL","LOCALS",0)
SetGlobal("OHBN_HEARTLESS","LOCALS",0)
SetGlobal("OHBN_BLADE","LOCALS",0)
SetGlobal("OHBN_HELMET","LOCALS",0)
SetGlobal("OHBN_CLOAK","LOCALS",0)
SetGlobal("OHBN_RING","LOCALS",0)
SetGlobal("OHBN_BANDIT","LOCALS",0)
SetGlobal("OHBN_SYMBOL","LOCALS",0)
SetGlobal("OHBN_HOLYWATER","LOCALS",0)
SetGlobal("OHBN_GARLIC","LOCALS",0)
SetGlobal("OHBN_KEY","LOCALS",0)
SetGlobal("OHBN_AFFAIR","LOCALS",0)
SetGlobal("OHB_NOOBER","GLOBAL",5)
~ GOTO 323
  IF ~~ THEN REPLY ~Well, it was a game.~ DO ~SetGlobal("OHBN_XP","LOCALS",0)
SetGlobal("OHBN_KNOWS_FERNAULT","LOCALS",0)
SetGlobal("OHBN_SENESCHAL","LOCALS",0)
SetGlobal("OHBN_HEARTLESS","LOCALS",0)
SetGlobal("OHBN_BLADE","LOCALS",0)
SetGlobal("OHBN_HELMET","LOCALS",0)
SetGlobal("OHBN_CLOAK","LOCALS",0)
SetGlobal("OHBN_RING","LOCALS",0)
SetGlobal("OHBN_BANDIT","LOCALS",0)
SetGlobal("OHBN_SYMBOL","LOCALS",0)
SetGlobal("OHBN_HOLYWATER","LOCALS",0)
SetGlobal("OHBN_GARLIC","LOCALS",0)
SetGlobal("OHBN_KEY","LOCALS",0)
SetGlobal("OHBN_AFFAIR","LOCALS",0)
SetGlobal("OHB_NOOBER","GLOBAL",5)
~ GOTO 324
  IF ~~ THEN REPLY ~It wasn't very good, no.~ DO ~SetGlobal("OHBN_XP","LOCALS",0)
SetGlobal("OHBN_KNOWS_FERNAULT","LOCALS",0)
SetGlobal("OHBN_SENESCHAL","LOCALS",0)
SetGlobal("OHBN_HEARTLESS","LOCALS",0)
SetGlobal("OHBN_BLADE","LOCALS",0)
SetGlobal("OHBN_HELMET","LOCALS",0)
SetGlobal("OHBN_CLOAK","LOCALS",0)
SetGlobal("OHBN_RING","LOCALS",0)
SetGlobal("OHBN_BANDIT","LOCALS",0)
SetGlobal("OHBN_SYMBOL","LOCALS",0)
SetGlobal("OHBN_HOLYWATER","LOCALS",0)
SetGlobal("OHBN_GARLIC","LOCALS",0)
SetGlobal("OHBN_KEY","LOCALS",0)
SetGlobal("OHBN_AFFAIR","LOCALS",0)
SetGlobal("OHB_NOOBER","GLOBAL",5)
~ GOTO 325
END

IF ~~ THEN BEGIN 323
  SAY ~I'm glad to hear it. Would you, by chance, like to play again or perhaps choose another class?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~No, I would rather quit.~ GOTO 326
END

IF ~~ THEN BEGIN 324
  SAY ~Yes, it is definitely a game. Would you, by chance, like to play again or perhaps choose another class?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~No, I would rather quit.~ GOTO 326
END

IF ~~ THEN BEGIN 325
  SAY ~I'm sorry to hear that. Perhaps trying another class would improve your experience. Would you like to try?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~No, I would rather quit.~ GOTO 326
END

IF ~~ THEN BEGIN 326
  SAY ~Quit? I can't believe you'd really choose to quit such a fun game. Are you sure?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~Yes, I am sure.~ GOTO 328
END

IF ~~ THEN BEGIN 327
  SAY ~Excellent! Which class would you like: a fighter, a wizard, or a thief?~
  IF ~~ THEN REPLY ~I shall take on the role of a fighter.~ GOTO 10
  IF ~~ THEN REPLY ~A wizard sounds like it would be fun.~ GOTO 180
  IF ~~ THEN REPLY ~I've always enjoyed sneaking around. Let me try being a thief.~ GOTO 257
  IF ~~ THEN REPLY ~Eh, I would rather quit after all.~ GOTO 326
END

IF ~~ THEN BEGIN 328
  SAY ~How about now?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~Yes, even now.~ GOTO 329
END

IF ~~ THEN BEGIN 329
  SAY ~What about now?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~Oh, not this again!~ GOTO 330
END

IF ~~ THEN BEGIN 330
  SAY ~How about now?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~This is dumb.~ GOTO 331
END

IF ~~ THEN BEGIN 331
  SAY ~What about now?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~Yes, it is STILL dumb.~ GOTO 332
END

IF ~~ THEN BEGIN 332
  SAY ~How about now?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~Can we please stop this?~ GOTO 333
  IF ~~ THEN REPLY ~I want to kill you so badly. I'm just... it's amazing, really.~ GOTO 333
END

IF ~~ THEN BEGIN 333
  SAY ~Return outside.~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~Really, just stop.~ GOTO 334
  IF ~~ THEN REPLY ~You have no idea how much I loathe you.~ GOTO 334
END

IF ~~ THEN BEGIN 334
  SAY ~What about now?~
  IF ~~ THEN REPLY ~Okay, perhaps I will try another class.~ GOTO 327
  IF ~~ THEN REPLY ~You are the most reprehensible creature in the entire world.~ GOTO 335
END

IF ~~ THEN BEGIN 335
  SAY ~It appears my time is up, my friend. Goodbye, <CHARNAME>! It has been quite the adventure this past while. Perhaps we shall see each other again some day.~
  IF ~~ THEN EXIT
END
