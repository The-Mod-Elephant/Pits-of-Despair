BEGIN crossmod

/* adding a few lines if the player ran through BPinBG1 
   adding the connective tissue as it were 
   only useful for EET installs */ 

/* player can indicate they know bellowgulp */
EXTEND_TOP OHBBELLO 9 /* extend_top bad, i know, but the chance of anyone else doing interjections here is near 0. i'm doing the thing. */ 
+ ~Global("BPINBG","GLOBAL",1) Global("ZBBELLOCROSSMOD","LOCALS",0)~ + ~Bellowgulp! It's me, <CHARNAME>! What are you doing here?~ DO ~SetGlobal("ZBBELLOCROSSMOD","LOCALS",1)~
EXTERN OHBBELLO 2
END

/* player can indicate they know najim */
EXTEND_BOTTOM OHBNAJIM 0
+ ~Global("BPINBG","GLOBAL",1) Global("ZBNAJIMCROSSMOD","LOCALS",0)~ + ~Najim, I haven't seen you since we escaped Baeloth's Pits. What are you doing here?~ DO ~SetGlobal("ZBNAJIMCROSSMOD","LOCALS",1)~
EXTERN OHBNAJIM 1
END

