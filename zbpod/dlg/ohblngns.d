// creator  : weidu (version 24900)
// argument : OHBLNGNS.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBLNGNS~

IF ~  HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 0
  SAY ~You must be the new <PRO_GIRLBOY>. Has anyone spoken to you about the... particularities of their rooms?~
  IF ~~ THEN REPLY ~Tell me about Bannor's room.~ GOTO 2
  IF ~~ THEN REPLY ~Tell me about Pol Pyrrus's room.~ GOTO 3
  IF ~~ THEN REPLY ~Tell me about Thassk Kun's room.~ GOTO 4
  IF ~~ THEN REPLY ~Tell me about Dormamus's room.~ GOTO 5
  IF ~~ THEN REPLY ~Tell me about Joker's room.~ GOTO 7
  IF ~~ THEN REPLY ~Tell me about the Winged's room.~ GOTO 9
  IF ~~ THEN REPLY ~Tell me about Dennaton's room.~ GOTO 10
  IF ~~ THEN REPLY ~I know everything I need to. Thanks.~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~You must be the new <PRO_GIRLBOY>. Have you been briefed on your duties? Do you have any questions?~
  IF ~  !Global("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Bannor's room.~ GOTO 2
  IF ~  !Global("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Pol Pyrrus's room.~ GOTO 3
  IF ~  !Global("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Thassk Kun's room.~ GOTO 4
  IF ~  !Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~Tell me about Dormamus's room.~ GOTO 5
  IF ~  !Global("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Joker's room.~ GOTO 7
  IF ~  !Global("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about the Winged's room.~ GOTO 9
  IF ~  !Global("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Dennaton's room.~ GOTO 10
  IF ~~ THEN REPLY ~I'll be fine. Thank you.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~All Sir Bannor's furniture is sculpted from granite blocks in order to accommodate his formidable size. Do NOT climb them. Anything else you need to know you can learn from his personal servant.~
  IF ~  !Global("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What about Pol Pyrrus's Room?~ DO ~SetGlobal("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 3
  IF ~  !Global("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Is there anything I should know about Thassk Kun's Room?~ DO ~SetGlobal("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 4
  IF ~  !Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~Tell me about Dormamus's quarters.~ DO ~SetGlobal("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 5
  IF ~  !Global("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Is Joker's room as messy as I think it is?~ DO ~SetGlobal("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 7
  IF ~  !Global("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Have you been in the Winged's chambers?~ DO ~SetGlobal("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 9
  IF ~  !Global("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Dennaton's room.~ DO ~SetGlobal("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY ~That will be all. Thank you.~ DO ~SetGlobal("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~You can only enter Sir Pyrrus' room at his request—a special key's necessary to open the lock. Even unlocked, his door can only be opened with great exertion—it is solid iron. Once inside, you will notice His Lordship likes his quarters warm, though not to same degree as Sir Kun.~
  IF ~  !Global("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Interesting. Tell me about Bannor's room.~ DO ~SetGlobal("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 2
  IF ~  !Global("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Sir Kun likes his room hot, I take it?~ DO ~SetGlobal("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 4
  IF ~  !Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~What about Dormamus's room?~ DO ~SetGlobal("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 5
  IF ~  !Global("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Joker's quarters are a disaster area, aren't they? Admit it.~ DO ~SetGlobal("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 7
  IF ~  !Global("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Can you tell me anything about the Winged's chambers?~ DO ~SetGlobal("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 9
  IF ~  !Global("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What are Dennaton's quarters like?~ DO ~SetGlobal("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY ~That will be all. Thank you.~ DO ~SetGlobal("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Sir Pyrrus enjoys a certain amount of heat; Sir Kun likes things blazing hot. Don proper handwear when opening the door or you'll suffer severe burns. Don't be frightened by the fires inside; they pose no threat as long as you step carefully. The heat will... inconvenience you, however.~
  IF ~  !Global("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~I take it Bannor's quarters aren't so hot?~ DO ~SetGlobal("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 2
  IF ~  !Global("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Sir Pyrrus likes heat in his room?~ DO ~SetGlobal("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 3
  IF ~  !Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~Is there anything I should know about Dormamus's room?~ DO ~SetGlobal("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 5
  IF ~  !Global("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Has anyone been in Joker's room and survived?~ DO ~SetGlobal("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 7
  IF ~  !Global("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me what you know of the Winged's quarters.~ DO ~SetGlobal("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 9
  IF ~  !Global("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What are Dennaton's chambers like?~ DO ~SetGlobal("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY ~That will be all. Thank you.~ DO ~SetGlobal("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~His Lordship's attendants are as numerous as they are lightly clad, but they are there for his enjoyment and his alone. Do not fraternize with them if you value your life.~
  IF ~~ THEN DO ~SetGlobal("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Also, Sir Dormamus's door is magical; it is not opened with a key, but with a word. I gather it's supposed to be a secret, but everyone knows it's "swordfish."~
  IF ~  !Global("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What do you know about Bannor's room?~ GOTO 2
  IF ~  !Global("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Pol Pyrrus's quarters.~ GOTO 3
  IF ~  !Global("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Thassk Kun's room—anything interesting going on in there?~ GOTO 4
  IF ~  !Global("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Is Joker's room the deathtrap I picture it being?~ GOTO 7
  IF ~  !Global("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What of the Winged's chambers?~ GOTO 9
  IF ~  !Global("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Do you know what I'll find in Dennaton's quarters?~ GOTO 10
  IF ~~ THEN REPLY ~That will be all. Thank you.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Her room is a horrendous mess, most unladylike. Do not attempt to tidy it—it's full of... surprises. Unpleasant ones at best. At worst, lethal.~
  IF ~~ THEN DO ~SetGlobal("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Another bit of advice: If Lady Joker ever asks you to fetch something from her room, insist she explain the door's exact opening sequence. Trust me on this.~
  IF ~  !Global("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~I do. Tell me about Bannor's room.~ GOTO 2
  IF ~  !Global("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What of Pol Pyrrus's room?~ GOTO 3
  IF ~  !Global("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Are Thassk Kun's quarters so dangerous?~ GOTO 4
  IF ~  !Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~Can you tell me anything about Dormamus's residence?~ GOTO 5
  IF ~  !Global("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about the Winged's room.~ GOTO 9
  IF ~  !Global("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What might I find in Dennaton's chambers?~ GOTO 10
  IF ~~ THEN REPLY ~That will be all for now. Thank you.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~The Winged is unlike any of her followers, or anyone else for that matter. Her Ladyship is quite the mystery to us. There is little to say about her room. It is clean and far from being as elaborate as her followers' quarters.~
  IF ~  !Global("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Intriguing. Tell me about Bannor's room.~ DO ~SetGlobal("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 2
  IF ~  !Global("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What can you tell me about Pol Pyrrus's quarters?~ DO ~SetGlobal("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 3
  IF ~  !Global("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~How disappointingly dull. Are Thassk Kun's quarters more interesting?~ DO ~SetGlobal("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 4
  IF ~  !Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~Is there anything I need to know about Dormamus's room?~ DO ~SetGlobal("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 5
  IF ~  !Global("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Is Joker's room as messy as she tends to be?~ DO ~SetGlobal("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 7
  IF ~  !Global("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~What of Dennaton's room?~ DO ~SetGlobal("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY ~That will be all for now. Thank you.~ DO ~SetGlobal("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Our master's living quarters are richly decorated and as comfortable as any prince's. Only the most senior among us are permitted within. If you are allowed inside, handle everything with great care.~
  IF ~  !Global("OHB_BANNOR_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Bannor's room.~ DO ~SetGlobal("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 2
  IF ~  !Global("OHB_POL_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Pol Pyrrus's room.~ DO ~SetGlobal("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 3
  IF ~  !Global("OHB_THASSK_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Thassk Kun's room.~ DO ~SetGlobal("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 4
  IF ~  !Global("OHB_DORMAMUS_PASSWORD","GLOBAL",1)
~ THEN REPLY ~Tell me about Dormamus's room.~ DO ~SetGlobal("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 5
  IF ~  !Global("OHB_JOKER_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about Joker's room.~ DO ~SetGlobal("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 7
  IF ~  !Global("OHB_WINGED_ROOM_EXPLAINED","GLOBAL",1)
~ THEN REPLY ~Tell me about the Winged's room.~ DO ~SetGlobal("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY ~That will be all for now. Thank you.~ DO ~SetGlobal("OHB_DENNATON_ROOM_EXPLAINED","GLOBAL",1)
~ EXIT
END

IF ~  !HasItemEquiped("ohbnoshu",LastTalkedToBy)
~ THEN BEGIN 11
  SAY ~A performer up here? That's... unusual. Oh well. Please be discrete. You don't want to disturb Sir Dennaton or the Hunters.~
  IF ~~ THEN EXIT
END
