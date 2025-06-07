// creator  : weidu (version 24900)
// argument : OHBBRANS.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBBRANS~

IF ~  Global("OHB_GCENTRY","OH8100",1)
~ THEN BEGIN 0
  SAY @125 /* What do you want, slave? */
  IF ~~ THEN REPLY @126 /* Are you Branson? */ GOTO 1
  IF ~~ THEN REPLY @127 /* Sorry, I didn't mean to disturb you. */ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @128 /* So what if I am? */
  IF ~~ THEN REPLY @129 /* Your captain asked me to kill you. */ GOTO 2
  IF ~~ THEN REPLY @130 /* Your captain thinks you talk too much. */ GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @131 /* Yeah. Sure he did. */
  IF ~~ THEN REPLY @132 /* He told me Dennaton's your uncle. */ GOTO 3
  IF ~~ THEN REPLY @133 /* No, honestly. He sent me to kill you. */ GOTO 4
  IF ~~ THEN REPLY @134 /* You're just too cocky for your own good. I think I'll do it after all. */ GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @135 /* What? Nobody knows that... except the captain. I see. */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @136 /* Well, I suppose I could kill you first, but that's a temporary solution. The captain isn't the sort to give up. And I can't go to my uncle; he made it clear he wouldn't look after me down here. Crap. What should I do? */
  IF ~~ THEN REPLY @137 /* Run. I'll tell him you're dead and that I took care of the body. */ GOTO 5
  IF ~~ THEN REPLY @138 /* Give me 2,000 gold pieces. I'll let you go and convince the captain you're dead. */ GOTO 6
  IF ~~ THEN REPLY @139 /* I'll make this as quick as possible. */ GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @140 /* You're a good <PRO_MANWOMAN>. Here, take this. It's our family ring. My uncle has one just like it. Tell the captain you got it off my body. He'll believe it. */
  IF ~~ THEN DO ~AddJournalEntry(101250,QUEST)
SetGlobal("OHB_GCENTRY","OH8100",3)
GiveItem("ohbring2",LastTalkedToBy)
Polymorph(FIGHTER_MALE_HUMAN)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @141 /* I don't keep that sort of gold on me, but here's the key to my footlocker. You'll find enough gold in there and maybe a bit more. Take it all. I'm getting out of here. Oh, take this too. It's our family ring. Dennaton has one just like it. Tell the captain you got it off my body. He'll believe it. */
  IF ~~ THEN DO ~AddJournalEntry(101250,QUEST)
SetGlobal("OHB_GCENTRY","OH8100",3)
GiveItem("ohbkey05",LastTalkedToBy)
GiveItem("ohbring2",LastTalkedToBy)
Polymorph(FIGHTER_MALE_HUMAN)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @142 /* It's a fight you want, eh? Let's go, then. You'll find I give as good as I get! */
  IF ~~ THEN DO ~Polymorph(FIGHTER_MALE_HUMAN)
Enemy()
~ EXIT
END
