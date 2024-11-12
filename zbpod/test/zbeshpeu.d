BEGIN zbeshpeu

/* The player will encounter this line whenever they speak with Eshpel.  
This should be LAST in this d file, under any talks with conditions. 
D files read from top to bottom, 
if NONE of the above globals are true, then this one runs. */
IF ~IsGabber(Player1)~ THEN BEGIN zbpodeshpel
SAY ~Do you trust me? (Standard Esphel greeting line here.)~
/* We'll need to add a LONG list of area checks for areas we don't want charname to teleport away from. E.g. Brynnlaw, Spellholt, Gauntlet, etc. I'll add those later. For now, if you're in the arena, he can't teleport you there since you're already there */
/* Edited out, for now, because ideally we'd use the spells instead and not require the dialogue teleports */ 
// + ~Global("ZBPODTHAY","GLOBAL",0) !AreaCheck("OH8100")~ + ~I want you to teleport us back to the Thayan Arena.~ EXTERN zbeshpeu zbpodthayanarenateleport
// + ~Global("ZBPODTRADES","GLOBAL",0)  AreaCheck("OH8100")~ + ~I want you to teleport us back to Tradesmeet.~ EXTERN zbeshpeu zbpodtradesmeetteleport
++ ~Nothing else for now.~ EXIT
END

/* IF ~~ zbpodthayanarenateleport
SAY ~A whole new world! A new fantastic point of view! (Line he'd say to teleport them.)~ 
DO ~SetGlobal("ZBPODTHAY","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("podthay")~ EXIT
END


IF ~~ zbeshpeu zbpodtradesmeetteleport
SAY ~A whole new world! A new fantastic point of view! (Line he'd say to teleport them.)~ 
DO ~SetGlobal("ZBPODTRADES","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("podtrades")~ EXIT
END */ 
