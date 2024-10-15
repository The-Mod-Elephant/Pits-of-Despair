// creator  : weidu (version 24900)
// argument : OHBHUEGR.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBHUEGR~

IF ~  True()
~ THEN BEGIN 0
  SAY #92710 /* ~Hello! The name's Hue Greenleaf. I've got armor made by the finest smiths from Waterdeep to Kara-Tur! I've scoured all Faerûn for the very best, so buy with confidence! ~ */
  IF ~~ THEN REPLY #96011 /* ~Sounds good. Let me see what you've got.~ */ DO ~AddJournalEntry(96002,INFO)
ClearAllActions()
StartStore("ohbhuegr",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92712 /* ~How'd you get here?~ */ DO ~AddJournalEntry(96002,INFO)
~ GOTO 1
  IF ~~ THEN REPLY #96012 /* ~Perhaps I will, another time.~ */ DO ~AddJournalEntry(96002,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92713 /* ~The same way as you, I imagine. But Dennaton allows me to leave occasionally, so long as I use my contacts to your—and ultimately his—advantage. So what can I give you today?~ */
  IF ~~ THEN REPLY #96013 /* ~I'm not sure. Let me look at your selection.~ */ DO ~ClearAllActions()
StartStore("ohbhuegr",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #92714 /* ~His advantage?~ */ GOTO 2
  IF ~~ THEN REPLY #91944 /* ~Eh, perhaps another time.~ */ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92715 /* ~We're not to talk with the performers, and the guards are already eyeing me, but all right, here's how it is. Dennaton gets all our profit—everything above our procurement cost—and we get to live. You win prize money in the arena, you buy from us, he gets the money back. It's a great deal for him. Now, really, are you going to buy?~ */
  IF ~~ THEN REPLY #96014 /* ~Maybe. Let me see your selection.~ */ DO ~ClearAllActions()
StartStore("ohbhuegr",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #96015 /* ~Not right now. Another time, perhaps.~ */ EXIT
END
