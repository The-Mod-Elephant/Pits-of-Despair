/* adding a few lines if the player ran through BPinBG1
   adding the connective tissue as it were
   only useful for EET installs */

/* player can indicate they know bellowgulp
extend_top bad, i know, but the chance of anyone else doing interjections here is near 0. i'm doing the thing. */
EXTEND_TOP OHBBELLO 9
   IF ~Global("BPINBG","GLOBAL",1) Global("ZBBELLOCROSSMOD","LOCALS",0)~ THEN REPLY @0 /* Bellowgulp! It's me, <CHARNAME>! What are you doing here? */ DO ~SetGlobal("ZBBELLOCROSSMOD","LOCALS",1)~
   EXTERN OHBBELLO 2
END

/* player can indicate they know najim */
EXTEND_BOTTOM OHBNAJIM 0
   IF ~Global("BPINBG","GLOBAL",1) Global("ZBNAJIMCROSSMOD","LOCALS",0)~ THEN REPLY @1 /* Najim, I haven't seen you since we escaped Baeloth's Pits. What are you doing here? */ DO ~SetGlobal("ZBNAJIMCROSSMOD","LOCALS",1)~
   EXTERN OHBNAJIM 1
END

// GLORIOUS BAELOTH CONTENT
// After Match 2 (this needs to go to dark0dave mod)
// CHAIN
// IF ~Global("ZBPOSTMATCH2CROSSMODBANTER1","GLOBAL",0)
//     Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)
//     InParty("ZDBAE")
//     InMyArea("ZDBAE")
//     !StateCheck("ZDBAE",CD_STATE_NOTVALID)
//     InParty("Viconia")
//     InMyArea("Viconia")
//     !StateCheck("Viconia",CD_STATE_NOTVALID)
//   ~ THEN ZDBAEJ ZBPOSTMATCH2_1
//    ~Tis truly a dank and depressed prison they have concocted. These debuts lack the poise and grace of my usual entertainment. How can we expect the crowd to wreath us in flowers after such dour performances?~
// DO ~SetGlobal("ZBPOSTMATCH2CROSSMODBANTER1","GLOBAL",1)~
//    == VICONIJ ~A reminder of your ridiculous craft? Where you expecting more from rivvil?~
//    == ZDBAEJ ~Well, given our present circumstances I can't say I am impressed.~
//    == VICONIJ ~Even for a male you are insane.~
//    == ZDBAEJ ~The gifted often are my dear.~
// EXIT
