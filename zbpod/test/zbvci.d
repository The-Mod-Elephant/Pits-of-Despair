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
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN ~There is nothing natural about this place. Cages of steel and prisons of stone. Let us seek our way back to nature.~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN ~My magic! Something...restricts it. (Of all the blasted places it had to be an anti-magic zone.) No matter. Nothing can contain Edwin Odesseiron for long.~
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN ~Where do we find ourselves now, I wonder? Being thrown into the unknown on a whim - it almost reminds me of my beloved Sigil. Keys, portals, danger around every corner.~
/* imoen won't be present in the party during the first crossover, otherwise add a line for her */ 
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~We know nothing of this place. Or of this Dennaton. Be wary, <CHARNAME>, but press forward. We gain nothing by standing still.~
== JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN ~An intrepid gnome always makes the best of any situation. I have inventions aplenty and potential customers around every corner. I'll start perfecting my sales pitch while we look around. There has to be someone in charge around here.~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~I sense evil within this place but there exist potential allies as well. Let's speak to the inhabitants and ascertain who belongs to which group.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN ~What are we standing around for? Let's get to the killing!~
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN ~Captured once again - as though the echoes of the Shadow Lord's capture do not still linger. Let's see about earning our freedom, <CHARNAME>. I've no wish to remain here for long.~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN ~I do not like these people who would capture others. Boo agrees. We must free them, <CHARNAME>, as true heroes would!~
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~My magic doesn't respond, not like it normally would, I think we're in an anti-magic field.~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN ~I know not where we are, <CHARNAME>, but I suggest we watch our steps.~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN ~Oloth plynn dos! I do not care to be snatched up, and teleported elsewhere, <CHARNAME>. You best get us out of here fast.~
/* unlikely yoshimo will be present as this is post spellhold */ 
/* the EE npcs */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN ~Much danger may lurk in the darkness here. Unfortunately for our enemies I have darkvision and my strikes *never* miss.~
/* hexxatt interject - i've never played with her so i have NO clue what she'd say here */ 
== NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN ~Well...my magic's not working. Which isn't all that unusual, not as a wild mage, because it really does whatever it wants to. But it's not responding *at all*. Might be we're trapped in an an anti-magic zone.~
== RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN ~The light of Selune will guide us even through this darkness.~
== WILSONJ IF ~InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN ~*unsettled growl*~
END
++ ~Nothing else for it but to explore.~ EXIT
++ ~They will regret caging me!~ EXIT
/* add more tone options here i'm just being lazy */  

/* random singe interjections to dialogue */ 

I_C_T OHBMOLZA 19 ZBJAN1
== JANJ IF ~Global("ZBPODINTRO","GLOBAL",1) InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN ~Turnip bandits. Truly the most despicable of all villians. Why, this reminds me of a story, my cousin, Dipsy, was robbed by a most unbecoming fellow who...~
END

