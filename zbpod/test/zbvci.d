/* extending Vyatri's dialogue so we can move the players to the new area 
might not need to append them all but i'm doing it as a failsafe. 
will need to adjust global numbers to account for having the letter etc - this is just to check if it works... */ 
EXTEND_BOTTOM TRINNK01 0
+ ~PartyHasItem("zbpdnote") Global("ZBPODSTART","GLOBAL",0)~ + ~I received your note. Has the djinni arrived yet?~ EXTERN TRINNK01 ZBPODMOVE
END

EXTEND_BOTTOM TRINNK01 1
+ ~PartyHasItem("zbpdnote") Global("ZBPODSTART","GLOBAL",0)~ + ~I received your note. Has the djinni arrived yet?~ EXTERN TRINNK01 ZBPODMOVE
END

EXTEND_BOTTOM TRINNK01 14
+ ~PartyHasItem("zbpdnote") Global("ZBPODSTART","GLOBAL",0)~ + ~I received your note. Has the djinni arrived yet?~ EXTERN TRINNK01 ZBPODMOVE
END

CHAIN TRINNK01 ZBPODMOVE
~I've seen no sign of him. Take a seat, why don't you? I'll bring you something to drink.~
= ~We even have a bard performing soon, it should make your wait that much easier.~
DO ~SetGlobal("ZBPODSTART","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("podstr")~
EXIT

/* Vanilla Companion Interjections 
A file where anyone can add vanilla npc interjections they think are suitable in PoD
These lines have not been tra-ified due to not being proofread or approved yet */ 

/* intro dialogue upon being transported to OH8100, after speaking to Voghiln */ 
APPEND PLAYER1

IF ~Global("ZBPODINTRO","GLOBAL",1)~ THEN BEGIN ZBPODIntro
SAY ~(You've been captured once again. But you broke free from your imprisonment once, surely this Dennaton can't prove a greater threat than Irenicus?)~
+ ~NumInPartyGT(1) Global("ZBBP2inBG2","GLOBAL",1)~ + ~Who is this Dennaton? Where are we?~ EXTERN Player1 ZBPoDIntro2
+ ~!NumInPartyGT(1) Global("ZBBP2inBG2","GLOBAL",1)~ + ~Who is this Dennaton? Where am I?~ DO ~SetGlobal("ZBPODINTRO","GLOBAL",2)~ EXIT
END

END // FOR TOP APPEND 

CHAIN Player1 ZBPoDIntro2 
~(Your companions seem every bit as confused as you are.)~ 
DO ~SetGlobal("ZBPODINTRO","GLOBAL",2)~
/* these dialogues aren't fully in character yet just quick placeholders to test */ 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN ~Where are we? I feel...strange. And I can't access my magic. Be careful, <CHARNAME>.~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN ~An ill omen. Best we explore and gain our bearings.~
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~Nature cringes from this prison of steel and stone. Let us find our way out, or better yet, sunder this choking place.~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~My spells! Something...restricts it. (Of all the blasted places it had to be an anti-magic zone.) No matter. Nothing can contain Edwin Odesseiron for long.~
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN ~Where do we find ourselves now, I wonder? Being thrown into the unknown on a whim - it almost reminds me of my beloved Sigil. Keys, portals, danger around every corner.~
/* imoen won't be present in the party during the first crossover */ 
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~We know nothing of this place. Or of this Dennaton. Be wary, <CHARNAME>, but press forward. We gain nothing by standing still.~
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN ~An intrepid gnome always makes the best of any situation. And this is a situation, to be sure! Potential customers around every corner. I'll start perfecting my sales pitch while we look around. There has to be someone in charge around here.~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~I sense evil within this place, though also those that do not mean us harm. Let us speak to the inhabitants and discern friend from foe.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~What are we standing about for? Let's get to the killing!~
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Captured once again - as though the echoes of the Shadow Lord's capture do not still linger. Let us see about earning our freedom, <CHARNAME>. I have no wish to remain here for long.~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~People here are not free, <CHARNAME>. As heroes, we must break their chains. Boo will help.~
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~My magic doesn't respond, not like it normally would, I think we're in an anti-magic field.~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~I know not where we are, <CHARNAME>, but I suggest we watch our steps.~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Oloth plynn dos! I do not care to be snatched up, and teleported elsewhere, <CHARNAME>. You best get us out of here fast.~
/* still need to add a line for yoshimo if this is pre spellhold */ 
/* the EE npcs */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN ~Much danger may lurk in the darkness here. Unfortunately for our enemies I have darkvision and my strikes *never* miss.~
/* hexxatt interject - i've never played with her so i have NO clue what she'd say here */ 
== NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN ~Well...uh, my magic's not working. I mean, not all that strange, wild mage and all that, you know, really it does what it wants to. But I'm getting *nothing*. An anti-magic zone, maybe?~
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN ~The light of Selune will guide us even through this darkness.~
== WILSONJ IF ~InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN ~*unsettled growl*~
END
++ ~We can help no one by standing here.~ EXIT
++ ~Nothing else for it but to explore.~ EXIT
++ ~They will regret caging me!~ EXIT

/* random single interjections to dialogue */ 

I_C_T OHBMOLZA 19 ZBJAN1
== JANJ IF ~Global("ZBPODINTRO","GLOBAL",1) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN ~Turnip bandits. Truly the most despicable of all villians. Why, this reminds me of a story, my cousin, Dipsy, was robbed by a most unbecoming fellow who...~
END

