/* Vanilla Companion Interjections
A file where anyone can add vanilla npc interjections they think are suitable in PoD
These lines have not been tra-ified due to not being proofread or approved yet */

/* intro dialogue upon being transported to OH8100, after speaking to Voghiln */
APPEND PLAYER1

IF ~Global("ZBPODINTRO","GLOBAL",1)~ THEN BEGIN ZBPODIntro
SAY @3688 /* Once more you find yourself in chains, a prisoner of fate's cruel design. Yet you escaped Irenicus' prison and emerged stronger for it. */
+ ~NumInPartyGT(1) Global("ZBBP2inBG2","GLOBAL",1)~ + @3689 /* Who is this Dennaton? Where are we? */ EXTERN Player1 ZBPoDIntro2
+ ~!NumInPartyGT(1) Global("ZBBP2inBG2","GLOBAL",1)~ + @3690 /* Who is this Dennaton? Where am I? */ DO ~SetGlobal("ZBPODINTRO","GLOBAL",2)~ EXIT
END

END // FOR TOP APPEND

CHAIN Player1 ZBPoDIntro2
@3691 /* Your companions stand beside you, their expressions betraying the same confusion and unease. */
DO ~SetGlobal("ZBPODINTRO","GLOBAL",2)~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3692 /* Where are we? I feel...strange. And I can't access my magic. Be careful, <CHARNAME>. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3693 /* An ill omen. Best we explore and gain our bearings. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3694 /* Nature cringes from this prison of steel and stone. Let us find our way out, or better yet, sunder this choking place. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3695 /* My spells! Something...restricts it. (Of all the blasted places it had to be an anti-magic zone.) No matter. Nothing can contain Edwin Odesseiron for long. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3696 /* Where do we find ourselves now, I wonder? Being thrown into the unknown on a whim - it almost reminds me of my beloved Sigil. Keys, portals, danger around every corner. */
== IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3697 /* Heh. Seems we're trapped once again. This is starting to feel a little personal now. Let's break out of here fast, alright? */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3698 /* We know nothing of this place. Or of this Dennaton. Be wary, <CHARNAME>, but press forward. We gain nothing by standing still. */
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3699 /* An intrepid gnome always makes the best of any situation. And this is a situation, to be sure! Potential customers around every corner. I'll start perfecting my sales pitch while we look around. There has to be someone in charge around here. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3700 /* I sense evil within this place, though also those that do not mean us harm. Let us speak to the inhabitants and discern friend from foe. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3701 /* What are we standing about for? Let's get to the killing! */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3702 /* Captured once again - as though the echoes of the Shadow Lord's capture do not still linger. Let us see about earning our freedom, <CHARNAME>. I have no wish to remain here for long. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3703 /* The people here are not free, <CHARNAME>. As heroes, we must break their chains. Boo will help. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3704 /* My magic doesn't respond, not like it normally would, I think we're in an anti-magic field. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3705 /* I know not where we are, <CHARNAME>, but I suggest we watch our steps. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3706 /* Oloth plynn dos! I do not care to be snatched up, and teleported elsewhere, <CHARNAME>. You best get us out of here fast. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3707 /* Tricked and then caged. Remind me to thank our captor with something sharp and precise. Ideally between their ribs. */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3708 /* Much danger may lurk in the darkness here. Unfortunately for our enemies I have darkvision and my strikes *never* miss. */
== HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN @3709 /* Locked away like common cattle... How quaint. Let them savor their little victory. At least until we carve our way out. */
== NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3710 /* Well...uh, my magic's not working. I mean, not all that strange, wild mage and all that, you know, really it does what it wants to. But I'm getting *nothing*. An anti-magic zone, maybe? */
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3711 /* The light of Selune will guide us even through this darkness. */
== WILSONJ IF ~InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN @3712 /* Shuffle, growl. */
END
++ @3713 /* We can help no one by standing here. */ EXIT
++ @3714 /* Nothing else for it but to explore. */ EXIT
++ @3715 /* They will regret caging me! */ EXIT

/* companion interjections during the welcoming feast
edwin should also react here, since we're in thay and the red wizards are involved, but i'll have glitter manage that. :3
NONE OF THIS IS PROOFREAD OR FULLY IC YET - heavy edits expected */
INTERJECT_COPY_TRANS OHBTARTL 75 ZBSFEASTJAHEIRA
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3716 /* For one so small of stature, his ego seems disproportionately sized. */
END

INTERJECT_COPY_TRANS OHBTIMMO 70 ZBSFEASTKELDORN
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3717 /* One cannot question his valour. His chances of success however... */
END

INTERJECT_COPY_TRANS OHBELLRA 31 ZBSFEASTRASAAD1
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3718 /* The light of Selûne will yet offer guidance. */
END

INTERJECT_COPY_TRANS OHBELLRA 32 ZBSFEASTRASAAD2
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3719 /* I did not expect to find one as enlightened within these dark halls. */
END

INTERJECT_COPY_TRANS OHBMERCY 44 ZBSFEASTDORN1
== DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3720 /* I should mention, <CHARNAME>, that this woman seeks my blood. Not that she has any hope of defeating me. */
END

INTERJECT_COPY_TRANS OHBHORT 49 ZBSFEASTDORN2
== DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3721 /* I could strike you both down in a single blow! */
END

/* mercy whitedove reacts to dorn il'khan's presence
NOT PROOFREAD / FULLY IC YET. Heavy edits expected.
possibly extend this so she refuses to join the pc in the arena if dorn is present in the party */
INTERJECT_COPY_TRANS OHBMERCY 3 ZBSMERCYDORN1
== OHBMERCY IF ~!Global("OHB_TALKED_MERCY","LOCALS",1) InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @3722 /* Given your choice of companion, I doubt we have anything to discuss. */
== DORNJ @3723 /* Does my presence infuriate you, Whitedove? You should be thankful that the arena prevents us from killing one another. You fight another day only through that mercy. */
== OHBMERCY @3724 /* I swear, blackguard, one day you shall answer for your actions! I will personally hunt you down and drag you to face retribution. */
== DORNJ @3725 /* Big words. Especially when you can't back them up. */
== OHBMERCY @3726 /* Is there aught else your companion wants? I've little time for idle chatter. */
END

/* random single interjections to dialogue */

INTERJECT_COPY_TRANS OHBMOLZA 19 ZBJAN1
== JANJ IF ~Global("ZBPODINTRO","GLOBAL",1) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3727 /* Turnip bandits. Truly the most despicable of all villians. Why, this reminds me of a story, my cousin, Dipsy, was robbed by a most unbecoming fellow who... */
END

/* the companions interject to stannel's ongoing lies - we're going alphabetically & only adding a few batches per fight. so they don't ALL fire at once */

INTERJECT_COPY_TRANS OHBSTANN 59 ZBSTANNELBATCH1
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3728 /* Why would he say such awful things? He's twisting everything we've done, everything we're going through, and turning it into something so ugly... so wrong. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3729 /* This affront to our honor will not stand. Such lies, when allowed to spread, often take on a life of their own. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3730 /* These tall tales are like leaves drifting upon the wind. They will scatter in time. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3731 /* You think to besmirch my reputation with such drivel? Your envy is as transparent as it is pitiable. */
END

INTERJECT_COPY_TRANS OHBSTANN 63 ZBSTANNELBATCH2
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3732 /* What dark muse inspires him to write such a tragedy, I wonder? */
== IMOEN2J IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN @3733 /* At least he's creative about his lies? Too bad, really, I wouldn't mind stories about Imoen the Magnificent bravely saving others. Just...not the opposite so much. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3734 /* Truth is stubborn and it will outlast his petty words. Pay him no heed. We have greater concerns to tend to. */
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @3735 /* Slander, eh? You'd think he'd try to be clever about it. I once knew a fellow who claimed I stole his golden pantaloons — turns out we don't even wear the same size,  and he didn't own any to begin with. */
END

INTERJECT_COPY_TRANS OHBSTANN 69 ZBSTANNELBATCH3
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3736 /* Such lies are a coward's weapon. Let him spin his tales, our actions will speak louder than his words. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3737 /* Let him yap on. Words are cheap. */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3738 /* While these insults do not reflect on my true character, I don't believe it honorable to strike someone simply for speaking their piece. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3739 /* What? Why would you tell such lies about us? Boo and I are heroes not villains! */
END

INTERJECT_COPY_TRANS OHBSTANN 71 ZBSTANNELBATCH4
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3740 /* Nobles would often partake in these games; spreading terrible rumours to cover their own shameful wrongdoings. The practice disgusts me. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3741 /* This is not the first time my name's been dragged through the mud. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3742 /* Pfeh! I will not lower myself to address this male's petty lies. Nothing he says holds any worth to me. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3743 /* Having such a reputation is not without its perks. Fear inspires as much as love. */
END

INTERJECT_COPY_TRANS OHBSTANN 75 ZBSTANNELBATCH5 /* the EE NPCs */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @3744 /* Still your tongue unless you have a death wish! I've had enough of your ceaseless prattling. */
// == HEXXATJ IF ~InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN ~[write suitable line here idek :/]~
== NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @3745 /* Oh, come on! You *know* that's not true. ...Maybe I'll turn you into a chicken and see how much you like being the butt of the joke. */
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @3746 /* Do not give credibility to these lies. He hopes to unsettle us. We must rise above his barbs. */
== WILSONJ IF ~InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN @3747 /* Hrrrmph. Snort! */
END

// Before Training matches
INTERJECT_COPY_TRANS OHBSTIRV 7 ZBTRAININGPRE1
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3748 /* Boo? What is it, Boo? Boo demands to know why we need to kill defenseless animals for fun? */
  == JAHEIRAJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ @3749 /* To pour out their black heart into the world, Minsc. Only scum find joy in it. This Stirv deserves no mercy when justice comes. */
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3750 /* Outrage! The butts of evil must be liberally kicked into playing nice with animals. */
  == JAHEIRAJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ @3751 /* Yes, none shall escape nature's wrath. */
END

INTERJECT_COPY_TRANS OHBSTIRV 7 ZBTRAININGPRE2
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3752 /* These twisted animals are an affront to Nature. Balance requires that we must purge them. */
  == NALIAJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3753 /* Can we save any of them? They will just keep fighting until they are all dead in the end. */
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3754 /* Calmly, dear Nalia, we shall not break as the branches of an oak in a summer storm. */
  == NALIAJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3755 /* I hope you are right. */
END

// After Match 1
CHAIN
IF ~Global("ZBPOSTMATCH1VANILABANTER1","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_1","GLOBAL",3)
    InParty("RASAAD")
    InMyArea("RASAAD")
    !StateCheck("RASAAD",CD_STATE_NOTVALID)
    InParty("Jaheira")
    InMyArea("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
  ~ THEN RASAADJ ZBPOSTMATCH1_1
  @3760 /* We are as water in the river flowing to the ocean. Contained by the hands of earth and channeled but inevitable is our freedom. In our journey we cut through the very earth our own path, no matter how it may try to contain us. */
DO ~SetGlobal("ZBPOSTMATCH1VANILABANTER1","GLOBAL",1)~
  == JAHEIRAJ @3761 /* I wonder if you can lecture a gladiator into submission. */
  == RASAADJ @3762 /* If any were to know, it would be you Jaheria. */
  == JAHEIRAJ @3763 /* Hmph. */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH1VANILABANTER2","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_1","GLOBAL",3)
    InParty("Dorn")
    InMyArea("Dorn")
    !StateCheck("Dorn",CD_STATE_NOTVALID)
    InParty("Korgan")
    InMyArea("Korgan")
    !StateCheck("Korgan",CD_STATE_NOTVALID)
  ~ THEN DORNJ ZBPOSTMATCH1_2
  @3764 /* Bah, no self respecting orc warband would allow themselves to be taken alive. Grummsh would flay their skin from their weakling bones. */
DO ~SetGlobal("ZBPOSTMATCH1VANILABANTER2","GLOBAL",1)~
  == KORGANJ @3765 /* Ye don't have the stones fer that, half-breed. */
  == DORNJ @3766 /* If you've the guts, Korgan, perhaps this pit will one day host us against each other and I'll shatter YOUR bones! */
  == KORGANJ @3767 /* Anytime, cragmuncher. */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH1VANILABANTER3","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_1","GLOBAL",3)
    InParty("Mazzy")
    InMyArea("Mazzy")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    InParty("Haerdalis")
    InMyArea("Haerdalis")
    !StateCheck("Haerdalis",CD_STATE_NOTVALID)
  ~ THEN DORNJ ZBPOSTMATCH2_1
  @3768 /* T'was a performance most dizzying! I must confess I feel the beating heart of the arena where the audience's lust for spectacle burns bright. */
DO ~SetGlobal("ZBPOSTMATCH1VANILABANTER3","GLOBAL",1)~
  == MAZZYJ @3769 /* Planesman, it should cause you regret to be in the machinations of the foul wizards, not delight. */
  == HAERDAJ @3770 /* Come now. Do you not feel the pulsing thread of life in this moment? We must capture it's singularity and savor the marrow before it decays before our eyes. */
  == MAZZYJ @3771 /* A true hero can see this evil for what it is. The virtuous are dishonored in seeking pleasure for killing. */
  == HAERDAJ @3772 /* I shall leave virtue and honor to you, Tiny Hawk, for who is more deserving? */
EXIT

// After Match 2
CHAIN
IF ~Global("ZBPOSTMATCH2VANILABANTER1","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)
    InParty("Jan")
    InMyArea("Jan")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    InParty("Viconia")
    InMyArea("Viconia")
    !StateCheck("Viconia",CD_STATE_NOTVALID)
  ~ THEN VICONIJ ZBPOSTMATCH2_1
  @3773 /* Twisted experiments, ferocious deadly creatures salivating…you must smell like you wear meat hanging around your neck. Everything is fine, abbil. */
DO ~SetGlobal("ZBPOSTMATCH2VANILABANTER1","GLOBAL",1)~
  == JANJ @3774 /* Don't forget the evil weasels. */
  == VICONIJ @3775 /* What are you blathering about again, you stunted slave? */
  == JANJ @3776 /* The evil weasels. Great Aunt Petunia always said it was the drow who turned them evil. I had heard they used cursed spider's legs and blood to make them vicious and hungry for fingers to bite. Not my fingers, you evil weasels! */
  == VICONIJ @3777 /* You truly live in your own tiny world. */
  == JANJ @3778 /* Did my ears deceive me or is that a short joke? Uncle Scratchy would be proud to see you have adapted to the surface so well. */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH2VANILABANTER2","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)
    InParty("Neera")
    InMyArea("Neera")
    !StateCheck("Neera",CD_STATE_NOTVALID)
    InParty("Yoshimo")
    InMyArea("Yoshimo")
    !StateCheck("Yoshimo",CD_STATE_NOTVALID)
  ~ THEN YOSHJ ZBPOSTMATCH2_2
  @3779 /* Oh, to be a fly on the guildmaster's wall. Even in Thay assassins know of THE Yoshimo and to fear him! */
DO ~SetGlobal("ZBPOSTMATCH2VANILABANTER2","GLOBAL",1)~
  == NEERAJ @3780 /* THE Yoshimo? Is that your brother? Ooo, I know, it's your sister, right? */
  == YOSHJ @3781 /* Come, child, even my family loves my exploits and they will dazzle your already swimming mind! Let's start with the robbery of the Vault of Vapors, oh yes, that one I … */
  == NEERAJ @3782 /* *yawn* */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH2VANILABANTER3","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)
    InParty("Anomen")
    InMyArea("Anomen")
    !StateCheck("Anomen",CD_STATE_NOTVALID)
    InParty("Jaheira")
    InMyArea("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
  ~ THEN ANOMENJ ZBPOSTMATCH2_3
  @3783 /* Pah, these beasts are no challenge for a servant of Helm. They are mindless chattel—it is to their masters that justice must be delivered. */
DO ~SetGlobal("ZBPOSTMATCH2VANILABANTER3","GLOBAL",1)~
  == JAHEIRAJ @3784 /* Perhaps, Anomen, but there is no shame in cleaning up deserving rabble. Not every battle must test your body and spirit. */
  == ANOMENJ @3785 /* You don't suggest that we settle for clearing the way so that others may achieve greatness in our stead, do you? We are more than capable of dealing with the fools at the head of this charade. */
  == JAHEIRAJ @3786 /* These things come only with patience, oh pious one. For now, we bide our time until the moment to strike arrives. */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH2VANILABANTER4","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)
    InParty("Jan")
    InMyArea("Jan")
    !StateCheck("Jan",CD_STATE_NOTVALID)
    InParty("Nalia")
    InMyArea("Nalia")
    !StateCheck("Nalia",CD_STATE_NOTVALID)
  ~ THEN NALIAJ ZBPOSTMATCH2_4
  @3787 /* My uncle once had minotaurs in a maze. They frightened me as a child. */
DO ~SetGlobal("ZBPOSTMATCH2VANILABANTER4","GLOBAL",1)~
  == JANJ @3788 /* Don't be afraid, Nalia dear. It hasn't come up, but my great uncle Suladead was an expert maze builder. The rats he put through them couldn't tell their heads from their tails. It was quite a sight to see them stacked on top of one another getting over the walls to find the cheese. */
  == NALIAJ@3789 /*  You were going somewhere with that? */
  == JANJ @3790 /* Oh yes, quite right! The best way to escape a maze is to follow your nose, just like a little rat. */
  == NALIAJ @3791 /* Thanks… I think. */
EXIT


// After Match 3
CHAIN
IF ~Global("ZBPOSTMATCH3VANILABANTER1","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_3","GLOBAL",3)
    InParty("Hexxat")
    InMyArea("Hexxat")
    !StateCheck("Hexxat",CD_STATE_NOTVALID)
    InParty("Nalia")
    InMyArea("Nalia")
    !StateCheck("Nalia",CD_STATE_NOTVALID)
  ~ THEN HEXXATJ ZBPOSTMATCH3_1
  @3792 /* The smell of reptile blood. Disgusting. */
DO ~SetGlobal("ZBPOSTMATCH3VANILABANTER1","GLOBAL",1)~
  == NALIAJ @3793 /* I didn't realize you had such a discerning taste, Hexxat. Speaking of which, how do you know which blood will taste good and which will taste bad? */
  == HEXXATJ @3794 /* By the smell usually, my dear. If it's from a lizard, it's repugnant. */
  == NALIAJ @3795 /* Okay, but what does it actually smell like? Actually, never mind. I've decided I don't want to know. */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH3VANILABANTER2","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_3","GLOBAL",3)
    InParty("Mazzy")
    InMyArea("Mazzy")
    !StateCheck("Mazzy",CD_STATE_NOTVALID)
    InParty("Valygar")
    InMyArea("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
  ~ THEN MAZZYJ ZBPOSTMATCH3_2
  @3796 /* The nation of Thay is a vile blight upon Faerun. An evil magic empire that festers and rots like a wound. */
DO ~SetGlobal("ZBPOSTMATCH3VANILABANTER2","GLOBAL",1)~
  == VALYGARJ @3797 /* Such blighted magic be damned. */
  == MAZZYJ @3798 /* Of course, brave Valygar. We shall destroy such evil through Arvoreen's will. Delivering justice with blade and virtue. Onward, my friend! */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH3VANILABANTER3","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_3","GLOBAL",3)
    InParty("Keldorn")
    InMyArea("Keldorn")
    !StateCheck("Keldorn",CD_STATE_NOTVALID)
    InParty("Jaheira")
    InMyArea("Jaheira")
    !StateCheck("Jaheira",CD_STATE_NOTVALID)
  ~ THEN JAHEIRAJ ZBPOSTMATCH3_3
  @3799 /* It gives me no pleasure to have defeated this tribe. Their nature has been twisted to fit the designs of Red Wizards. */
DO ~SetGlobal("ZBPOSTMATCH3VANILABANTER3","GLOBAL",1)~
  == KELDORJ @3800 /* They are savages that worship primitive gods that care not a whit for them. They most assuredly deserve the justice we bring. */
  == JAHEIRAJ @3801 /* Have you no compassion left in those old bones, 'Sir' Keldorn? */
  == KELDORJ @3802 /* Victory requires we discard the frailties of compassion against evil. Even Harpers know this truth. */
EXIT

// After Match 4
CHAIN
IF ~Global("ZBPOSTMATCH4VANILABANTER1","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_4","GLOBAL",3)
    InParty("Neera")
    InMyArea("Neera")
    !StateCheck("Neera",CD_STATE_NOTVALID)
    InParty("Anomen")
    InMyArea("Anomen")
    !StateCheck("Anomen",CD_STATE_NOTVALID)
  ~ THEN NEERAJ ZBPOSTMATCH4_1
  @3803 /* You know, one time I actually turned INTO an umber hulk! It was amazing. You could see everywhere with all those eyes and dig! Dig, dig, dig. It felt like eating chocolate. So satisfying. Oh, now I'm hungry. */
DO ~SetGlobal("ZBPOSTMATCH4VANILABANTER1","GLOBAL",1)~
  == ANOMENJ @3804 /* When are you not? */
  == NEERAJ @3805 /* An umber hulk? All the time. See? *waves* */
  == ANOMENJ @3806 /* The chaos never leaves you, by Helm. You were born umber in your soul. */
  == NEERAJ @3807 /* Someone's hungry and I'm not sharing any of my snacks. */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH4VANILABANTER2","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_4","GLOBAL",3)
    InParty("Keldorn")
    InMyArea("Keldorn")
    !StateCheck("Keldorn",CD_STATE_NOTVALID)
    InParty("Valygar")
    InMyArea("Valygar")
    !StateCheck("Valygar",CD_STATE_NOTVALID)
  ~ THEN KELDORJ ZBPOSTMATCH4_2
  @3808 /* Torm has witnessed us triumph on our righteous path to victory. Thay is a loathsome den where evil festers and such creatures must be rooted out whenever the opportunity arises. */
DO ~SetGlobal("ZBPOSTMATCH4VANILABANTER2","GLOBAL",1)~
  == VALYGARJ @3809 /* It will do little good—the entirety of Thay should be considered if one wishes to rid evil from our world. */
  == KELDORJ @3810 /* Be that as it may, Valygar, we can only do what our bodies will allow us. Should the chance arise, still would I hesitate. While evil may lurk in every shadow, there is much that is sacred and worth defending—even in this place. */
  == VALYGARJ @3811 /* I'll believe what my eyes show me. So far, I'm not impressed. */
EXIT

CHAIN
IF ~Global("ZBPOSTMATCH4VANILABANTER3","GLOBAL",0)
    Global("ZB_NEPH_POST_INTERJECT_4","GLOBAL",3)
    InParty("Edwin")
    InMyArea("Edwin")
    !StateCheck("Edwin",CD_STATE_NOTVALID)
    InParty("VICONIA")
    InMyArea("VICONIA")
    !StateCheck("VICONIA",CD_STATE_NOTVALID)
  ~ THEN EDWINJ ZBPOSTMATCH4_3
  @3812 /* Mindless abominations easily defeated by my peerless magical prowess. (Saving this bumbling party, no doubt.) */
DO ~SetGlobal("ZBPOSTMATCH4VANILABANTER3","GLOBAL",1)~
  == VICONIJ @3813 /* Are you preening, Edwin? Only the stupidest of males preen as you do. */
  == EDWINJ @3814 /* In my experience, only women trade barbs like you. (Yes, that should do it.) */
  == VICONIJ @3815 /* Do not complain of my tongue wizard, it will lash you to ribbons. */
  == EDWINJ @3816 /* (I think I would enjoy that… ) */
EXIT
