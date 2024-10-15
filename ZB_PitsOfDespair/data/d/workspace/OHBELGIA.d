// creator  : weidu (version 24900)
// argument : OHBELGIA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBELGIA~

IF ~  Global("ohb_elgiad_talk","global",0)
~ THEN BEGIN 0
  SAY #100784 /* ~You have done well, besting Dennaton, but that's no reason to stop the entertainment. I, Elgiad, have scoured the planes far and wide. I offer challenges far greater than Dennaton ever did, rare and ferocious creatures and gladiators of unmatched martial and arcane prowess. Join me!~ [OH100784] */
  IF ~~ THEN REPLY #92288 /* ~Very well, I am ready for another match.~ */ DO ~SetGlobal("ohb_elgiad_talk","global",1)
~ GOTO 1
  IF ~~ THEN REPLY #100788 /* ~Not right now. I still need time to prepare.~ */ DO ~SetGlobal("ohb_elgiad_talk","global",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY #100785 /* ~Excellent! Step this way! The competition awaits!~ [OH100785] */
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",505)
~ THEN DO ~SetGlobal("OHB_NOOBER","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",504)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_505","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",503)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_504","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",502)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_503","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",501)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_502","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",3)
~ EXIT
  IF ~  Global("OHB_LAST_BATTLE","GLOBAL",404)
~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",1)
SetGlobal("OHB_501","GLOBAL",1)
SetGlobal("OHB_ARENA","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY #100786 /* ~Come back when you're ready. I cannot wait to see you face my special challenges!~ [OH100786] */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_501","GLOBAL",1)
~ THEN BEGIN 3
  SAY #100789 /* ~For your first challenge, I give you some familiar faces. You might once have counted these six as allies, but you must have known they'd as soon slit your throat as save your hide! Now's their chance! To arms!~ [OH100789] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_502","GLOBAL",1)
~ THEN BEGIN 4
  SAY #100790 /* ~You may have expected those last miscreants to turn on you for a couple of coppers, but you would doubtless have trusted these next six to your dying breath. Surprise! Friend is turned to foe! Combatants, to arms!~ [OH100790] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_503","GLOBAL",1)
~ THEN BEGIN 5
  SAY #100791 /* ~She's a bloodsucking lady of the night with a penchant for graveyards. He's an insane once-elven wizard with a healthy lust for revenge. What do these siblings have in common other than a creepy obsession with you? NOTHING! You've fought them both before. Now face them again, but this time TOGETHER! Combatants! To arms!~ [OH100791] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_504","GLOBAL",1)
~ THEN BEGIN 6
  SAY #100792 /* ~You have bested the two exiles and their minions! Well played, but I have someone even tougher than they, one strong enough to challenge even the gods themselves. This lady took delusion to a whole new level. I'm sure you've already guessed who she is, so let's bring her out and get this party started!~ [OH100792] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_START_BATTLE","GLOBAL",2)
Global("OHB_505","GLOBAL",1)
~ THEN BEGIN 7
  SAY #100793 /* ~Amazing! Astounding! A—eh, I'll leave the alliteration to Baeloth. The previous challenger thought herself a god—the next one actually is! Or, rather, was. That's right, here's your chance to take on the Lord of Murder himself: Bhaal! To arms!~ [OH100793] */
  IF ~~ THEN DO ~SetGlobal("OHB_START_BATTLE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_NOOBER","GLOBAL",3)
~ THEN BEGIN 8
  SAY #100794 /* ~Well done! You have faced all manner of creature—heroic mortals, reprehensible villains, fiends, even a god—and defeated them all. It's tempting to simply declare you victorious, but there's still one challenger so vile, so reprehensible, and so feared that ALL who encounter him flee in screaming irritation!~ [OH100794] */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY #100795 /* ~I will not lie, he causes even me to recoil in horror. But to be the best, you must beat the worst. And so I give you... your final challenge!~ [OH100795] */
  IF ~~ THEN DO ~SetGlobal("OHB_NOOBER","GLOBAL",4)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_501","GLOBAL",2)
~ THEN BEGIN 10
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_501","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(11000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",501)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_501","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",501)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(30000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_502","GLOBAL",2)
~ THEN BEGIN 11
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_502","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(12000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",502)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_502","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",502)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(31000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_503","GLOBAL",2)
~ THEN BEGIN 12
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_503","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(13000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",503)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_503","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",503)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(32000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_504","GLOBAL",2)
~ THEN BEGIN 13
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_504","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(14000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",504)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_504","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",504)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(33000)
~ EXIT
END

IF ~  Global("OHB_BATTLE_COMPLETE","GLOBAL",2)
Global("OHB_505","GLOBAL",2)
~ THEN BEGIN 14
  SAY #96046 /* ~My performers are victorious! ~ [OH96046] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_505","GLOBAL",-1)
SetGlobal("ohb_battle_xp_award","global",5000)
GiveGoldForce(15000)
~ EXIT
  IF ~  GlobalLT("OHB_LAST_BATTLE","GLOBAL",505)
~ THEN DO ~StartCutSceneMode()
StartCutScene("ohbcutx2")
SetGlobal("OHB_505","GLOBAL",-1)
SetGlobal("OHB_LAST_BATTLE","GLOBAL",505)
SetGlobal("ohb_battle_xp_award","global",250000)
GiveGoldForce(34000)
~ EXIT
END

IF ~  Global("ohb_elgiad_talk","global",1)
~ THEN BEGIN 15
  SAY #100787 /* ~Welcome back, friend. Are you ready to test your skill in the arena against MY menagerie?~ [OH100787] */
  IF ~~ THEN REPLY #92288 /* ~Very well, I am ready for another match.~ */ GOTO 1
  IF ~~ THEN REPLY #100788 /* ~Not right now. I still need time to prepare.~ */ GOTO 2
END
