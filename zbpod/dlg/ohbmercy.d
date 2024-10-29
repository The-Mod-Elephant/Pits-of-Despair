// creator  : weidu (version 24900)
// argument : OHBMERCY.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBMERCY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY ~There are two doors into that room. Which would be the easiest to take?~ [OH92942]
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY ~The guards expect a frontal assault. I'm sure they've prepared for such.~ [OH92943]
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 45 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY ~I haven't time for idle talk.~ [OH92664]
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
END

IF WEIGHT #4 /* Triggers after states #: 45 even though they appear after this state */
~  Global("OHB_TALKED_MERCY","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY ~State your business and be off. I've matters to attend to.~ [OH91896]
  IF ~~ THEN REPLY ~I was hoping to ask you some questions.~ DO ~SetGlobal("OHB_TALKED_MERCY","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY ~I'd not keep you from your business. Farewell.~ GOTO 4
  IF ~~ THEN REPLY ~As if your pitiful affairs mean anything to me. Off with you.~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~May you find justice... or retribution, as the case may be.~ [OH91900]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~You've a sharp tongue. Be careful. It might get you into trouble some day.~ [OH91901]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~I shall give you some time. Prove yourself worthy of it.~ [OH91902]
  IF ~  Global("OHB_ASKED_MERCY_WHO","GLOBAL",0)
~ THEN REPLY ~Who are you?~ GOTO 7
  IF ~  Global("OHB_ASKED_MERCY_HOW","GLOBAL",0)
~ THEN REPLY ~How did you come to this place?~ GOTO 15
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Would you be interested in helping me escape this place?~ GOTO 17
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Would you be interested in helping me escape this place?~ GOTO 23
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY ~I am the most just and merciful Whitedove, Doombringer of Hoar. You may call me Mercy.~ [OH91905]
  IF ~~ THEN REPLY ~Doombringer of Hoar? Tell me of this.~ DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 8
  IF ~~ THEN REPLY ~Tell me what things might warrant your attention.~ DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 13
  IF ~~ THEN REPLY ~Very well, I shall leave.~ DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 4
  IF ~~ THEN REPLY ~Narcissistic AND deluded. A pitiable combination. ~ DO ~SetGlobal("OHB_ASKED_MERCY_WHO","GLOBAL",1)
AddJournalEntry(92700,QUEST)
~ GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY ~Violence repays violence. Evil repays evil. Good repays good. These are the tenets of Hoar, who brings justice and retribution to each according to their actions.~ [OH91910]
  IF ~~ THEN REPLY ~Well said. True justice must be done.~ GOTO 9
  IF ~~ THEN REPLY ~Allowances must be made for the context of one's actions.~ GOTO 10
  IF ~  CheckStatGT(Player1,15,WIS)
~ THEN REPLY ~I see. Tell me the just punishment for a man who kills his neighbor's son.~ GOTO 11
  IF ~~ THEN REPLY ~I'd like to discuss something else. Anything else, really.~ GOTO 18
  IF ~~ THEN REPLY ~I must be leaving.~ GOTO 4
  IF ~~ THEN REPLY ~Juvenile delusions, wholly divorced from any semblance of reality.~ GOTO 5
END

IF ~~ THEN BEGIN 9
  SAY ~Swift and reciprocal reward and retribution is the foundation of civilized society. Perhaps we'll discuss Hoar's wisdom in greater depth another time. For now, I must attend to other matters.~ [OH91917]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY ~Allowances? Excuses set forth to falsely acquit the condemned. Allowances exploit, pervert, and impede the course of justice. If you cannot see this, we've nothing more to discuss.~ [OH91918]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 11
  SAY ~His neighbor must kill the murderer's son. Such is the swift and equitable vengeance of Hoar.~ [OH91919]
  IF ~~ THEN REPLY ~Killing the innocent son of the guilty man isn't a greater injustice?~ GOTO 12
  IF ~~ THEN REPLY ~I see. Let us speak of other things.~ GOTO 18
  IF ~~ THEN REPLY ~I must be leaving.~ GOTO 4
  IF ~~ THEN REPLY ~Your ideals' simplicity is exceeded only by their stupidity.~ GOTO 5
END

IF ~~ THEN BEGIN 12
  SAY ~You speak in hypotheticals. I deal in reality. Show me this murderer, and I'll show you justice.~ [OH91923]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 13
  SAY ~I am set apart to wander Faerûn. I seek those justice has overlooked, whether they be an impoverished farmer uncompensated for a wrong or a wealthy merchant who has escaped his just sentence through cunning designs.~ [OH91924]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~As a Doombringer, I mete out justice in those places where lords and landowners have grown lax in their duty. I bring order to the rugged, careless roads where vagrants and ruffians know not the censure of the magistrate.~ [OH91925]
  IF ~~ THEN REPLY ~May we speak of something else?~ GOTO 18
  IF ~~ THEN REPLY ~An unenviable task, but I guess someone's got to do it. Thank you for your time.~ GOTO 4
  IF ~~ THEN REPLY ~Doombringer? Yawnbringer would be more accurate.~ GOTO 5
END

IF ~~ THEN BEGIN 15
  SAY ~After listening to some of the others talking, I think we all came here in much the same way. The winged one's hunters ambushed me. I had just enough time to draw my weapons before I was overwhelmed.~ [OH91929]
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~Mark my words, those bounty hunters shall feel retribution in turn. Hoar is not unmindful of my fate here.~ [OH91930]
  IF ~~ THEN REPLY ~Yeah, that's pretty much how I came to be here too. Let's talk of other things.~ DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 18
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Tell me more.~ DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 30
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Tell me more.~ DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY ~Thank you for the story. I must be going.~ DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY ~From the look of things, Hoar couldn't care less about your fate.~ DO ~SetGlobal("OHB_ASKED_MERCY_HOW","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 17
  SAY ~Ask me again after we've fought together in the arena. It is in combat that your worth will be determined.~ [OH91935]
  IF ~~ THEN REPLY ~Very well. Let's discuss something else, then.~ GOTO 18
  IF ~~ THEN REPLY ~Will you assist me in my next arena battle, then?~ GOTO 19
  IF ~~ THEN REPLY ~That's fair. I'll talk to you later, then.~ GOTO 4
  IF ~~ THEN REPLY ~You'll have no doubt as to my worth when this is done.~ GOTO 5
END

IF WEIGHT #5 /* Triggers after states #: 45 even though they appear after this state */
~  Global("OHB_TALKED_MERCY","LOCALS",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 18
  SAY ~I haven't time for idle talk.~ [OH92664]
  IF ~  !Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY ~Will you assist me in my next arena fight?~ GOTO 19
  IF ~~ THEN REPLY ~Can you tell me more about yourself?~ GOTO 20
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Are you willing to help me escape?~ GOTO 17
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Are you willing to help me escape?~ GOTO 23
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
END

IF ~~ THEN BEGIN 19
  SAY ~My skills do not come free. I will assist you for no less than 1,500 gold pieces.~ [OH92668]
  IF ~  PartyGoldGT(1499)
~ THEN REPLY ~Done. Here is your gold.~ DO ~TakePartyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_MERCY_HIRED","GLOBAL",1)
~ EXIT
  IF ~  !PartyGoldGT(1499)
~ THEN REPLY ~And I will return when I've got that much.~ GOTO 4
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
  IF ~~ THEN REPLY ~Which skills are those? Your narcissism, your self-righteousness, or your ability to bore to death all within earshot?~ GOTO 5
END

IF ~~ THEN BEGIN 20
  SAY ~What would you know?~ [OH92672]
  IF ~  Global("OHB_ASKED_MERCY_WHO","GLOBAL",0)
~ THEN REPLY ~Who are you?~ GOTO 7
  IF ~  Global("OHB_ASKED_MERCY_HOW","GLOBAL",0)
~ THEN REPLY ~How did you come to this place?~ GOTO 15
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~I'd like to know more about your capture.~ GOTO 30
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~I'd like to know more about your capture.~ GOTO 21
  IF ~  Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Tell me more about your past.~ GOTO 26
  IF ~  !Global("OHB_MERCY_ARENA","GLOBAL",1)
~ THEN REPLY ~Tell me more about your past.~ GOTO 22
  IF ~~ THEN REPLY ~Never mind. I must be leaving.~ GOTO 4
END

IF ~~ THEN BEGIN 21
  SAY ~It is not my custom to share such information with strangers. Perhaps after I have seen your courage in battle, I'll be more willing to divulge my secrets. Perhaps. ~ [OH92675]
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY ~Combat reveals many things about an individual. I would see more of you before I tell you more of myself.~ [OH92676]
  IF ~~ THEN REPLY ~As you wish. Let's discuss something else, then.~ DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 18
  IF ~~ THEN REPLY ~Will you assist me in my next arena battle, then?~ DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 19
  IF ~~ THEN REPLY ~That's fair. I'll talk to you later, then.~ DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 4
  IF ~~ THEN REPLY ~Never mind. The story would just put me to sleep anyway. I must be going.~ DO ~AddJournalEntry(92701,QUEST_DONE)
EraseJournalEntry(92699)
EraseJournalEntry(92700)
~ GOTO 5
END

IF ~~ THEN BEGIN 23
  SAY ~You've proven yourself in combat and earned my trust. You've doubtless noticed that I spend many of my leisure hours observing the guards. I have heard their discussions and know their habits. ~ [OH92679]
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~They have no particular loyalty to Dennaton and are mediocre warriors at best. ~ [OH92680]
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~I have observed their sparring matches. They lack the skill necessary to defeat the performers' combined might. If we can weaken the winged one's bounty hunters, we may stand a chance.~ [OH92681]
  IF ~~ THEN REPLY ~Good to know. May we discuss something else?~ DO ~AddJournalEntry(92699,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY ~Many thanks. I must go now.~ DO ~AddJournalEntry(92699,QUEST)
~ GOTO 4
  IF ~~ THEN REPLY ~I guess having no friends gives you plenty of spare time to observe such things.~ DO ~AddJournalEntry(92699,QUEST)
~ GOTO 5
END

IF ~~ THEN BEGIN 26
  SAY ~I do not share this tale lightly. You fought by my side and proved yourself worthy of it. Consider it a high honor. Many who fought and died in my company knew nothing of my history.~ [OH92684]
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~My father was a Rider of Nesmé, honorable and well respected by all who knew him. He was a hero of many crusades against the monsters of the Evermoors and the Lurkwood.~ [OH92685]
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY ~For his valor, he was given command of a company of riders. The former commander, the son of a wealthy merchant, was displeased. He implicated my father in a deed of high treason and got him hanged.~ [OH92686]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~Though I was little more than a girl, I hunted the man and killed him. Since then, I have sought to right other injustices rampant in the world.~ [OH92687]
  IF ~~ THEN REPLY ~I am honored you shared your story with me. I would like to ask you something else.~ GOTO 18
  IF ~~ THEN REPLY ~A moving story. I must be going now.~ GOTO 4
  IF ~~ THEN REPLY ~Wha... Oh? Are you finally done? By the gods, you're dull.~ GOTO 5
END

IF ~~ THEN BEGIN 30
  SAY ~The winged one and her lackeys aside, none who live have heard the tale. You've earned it through the skill and valor you displayed at my side when we fought in the pit.~ [OH92691]
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~I received a mission. No, it was more than that—it was a divine compulsion from Hoar. I was to travel to Mulhorand and investigate the priests of Anhur. Knowing Hoar's hatred toward the depraved Anhur and his followers, I hastened toward my destination.~ [OH92692]
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~On the trade road north of Skuld, I came across a scene of destruction and despair. A woman sat in the road, cradling a lifeless child to her bosom. Nearby, a man and young boy lay dead.~ [OH92693]
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~The woman could tell me little between her wails of despair. They'd been attacked by bandits who rode to the east. I soon discovered their trail. It was dusk when an ill wind blew from my back. I knew something was amiss.~ [OH92694]
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY ~The winged one and her henchmen had slain the travelers and left them there, knowing I was to pass. It was a perfect plan—but they left me alive. I shall avenge the travelers and myself. They shall know justice.~ [OH92695]
  IF ~~ THEN REPLY ~Thank you for honoring me with the tale. May we speak of something else?~ GOTO 18
  IF ~~ THEN REPLY ~I am honored; however, now I must take my leave.~ GOTO 4
  IF ~~ THEN REPLY ~What a colossal failure! I wouldn't expect Hoar to come calling with any future missions.~ GOTO 5
END

IF ~~ THEN BEGIN 35
  SAY ~How many more are there? A few in the arena, but most of us are here.~ [OH92871]
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 57
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 38
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 54
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 37
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 32
END

IF ~~ THEN BEGIN 36
  SAY ~Are you a coward or a fool, <CHARNAME>? You're clearly one or the other.~ [OH92885]
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 58
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 33
END

IF ~~ THEN BEGIN 37
  SAY ~Tartle must pay for his crimes. There can be no compromise on this.~ [OH92302]
  IF ~~ THEN EXTERN ~OHBBRODL~ 63
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 34
END

IF ~~ THEN BEGIN 38
  SAY ~Tartle must pay for his crimes. Justice demands it.~ [OH100502]
  IF ~~ THEN EXTERN ~OHBBRODL~ 69
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 60
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 35
END

IF ~~ THEN BEGIN 39
  SAY ~Today we avenge the injustices done against us! Victory or death!~ [OH92921]
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 58
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 41
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 61
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 42
END

IF WEIGHT #6 /* Triggers after states #: 45 even though they appear after this state */
~  Global("ohb_finale","global",1)
~ THEN BEGIN 40
  SAY ~Today we avenge the injustices done against us! Victory or death!~ [OH92921]
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 45 even though they appear after this state */
~  Global("ohb_finale","global",6)
~ THEN BEGIN 41
  SAY ~Though you face Dennaton alone, you fight for us all. See justice done.~ [OH92981]
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY ~Our oppressors have faced justice at your hand. I salute you.~ [OH100621]
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
!Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
  IF ~  InMyArea("ohbtimmo")
!Dead("ohbtimmo")
~ THEN EXTERN ~OHBTIMMO~ 61
  IF ~  InMyArea("ohbgerro")
!Dead("ohbgerro")
~ THEN EXTERN ~OHBGERRO~ 40
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 39
END

IF ~~ THEN BEGIN 43
  SAY ~Welcoming feast?~ [OH90493]
  IF ~~ THEN EXTERN ~OHBMESSE~ 3
END

IF ~~ THEN BEGIN 44
  SAY ~By what rights do you imprison us?~ [OH90558]
  IF ~~ THEN EXTERN ~OHBDENNA~ 268
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 45
  SAY ~How many more are there? A few in the arena, but most of us are here.~ [OH92871]
  IF ~~ THEN EXIT
END
