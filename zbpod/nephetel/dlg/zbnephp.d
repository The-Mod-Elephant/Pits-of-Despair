BEGIN ZBNEPHP

// Kickout Dialogue
IF ~~ ZBNEPHKICKOUT
  SAY @116 /* You wish to part ways? */
  IF ~~ THEN REPLY @117 /* Yes, Nephetel. We cannot continue together right now. Please meet us back at the Copper Coronet if you wish to join forces once again. */ DO ~
    SetGlobal("ZB_NEPH_LEFT","GLOBAL",1)
    LeaveParty()
    ApplySpell(Myself,WIZARD_INVISIBILITY)
    Wait(1)
    ActionOverride("zbneph",ReallyForceSpell(Myself,DRYAD_TELEPORT))
    SmallWait(25)
    SetGlobal("ZB_NEPH_MOVE_COPPER","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @118 /* I don't know what I was thinking, of course I want you to stay. */ DO ~JoinParty()~ EXIT
END

// Rejoin
IF ~Global("ZB_NEPH_LEFT","GLOBAL",1)~ ZBNEPHREJOIN
  SAY @119 /*  So the prodigal bhaalspawn returns. I assume you have changed your mind and wish to continue our journey together? */
  IF ~~ THEN REPLY @120 /* Yes, please join us. */ DO ~SetGlobal("ZB_NEPH_LEFT","GLOBAL",0)~ GOTO ZBNEPHJOIND
  IF ~~ THEN REPLY @121 /* Not right now. We will contact you if we have a need for you. */ EXIT
END

// Join
IF ~Global("ZB_NEPH_JOINS","GLOBAL",0)~ ZBNEPHJOIND
  SAY @122 /* I'm glad you regained your senses, lead the way. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_JOINS","GLOBAL",1)~ EXIT
END
