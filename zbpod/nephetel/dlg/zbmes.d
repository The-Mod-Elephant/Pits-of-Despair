BEGIN zbmes

IF ~IsGabber(Player1)~ THEN BEGIN zbmessenger
SAY @0 /* It looks like I have a letter and a fancy box for you good <PRO_SIRMAAM>. */
= @1 /* I do accept gold or fancy boxes as a delivery fee. */
+ ~PartyGoldGT(0)~ + @2 /* Thank you. Here is a gold piece, don't spend it all in one place. */ + zbmessenger1
++ @3 /* Didn't Vytari pay you to bring me this parcel? This must be a Shadow Thief racket, fees for everything. */ + zbmessenger2
++ @4 /* Get out of my sight. You were paid to deliver and you have. */ +  zbmessenger3
END

IF ~~ THEN BEGIN zbmessenger1
SAY @5 /* Thank you, this'll feed my twelve sick children and dying grandmother just fine. */
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) 
GiveItemCreate("zbrrrind",Player1,1,0,0) 
TakePartyGold(1) ~ EXIT
END

IF ~~ THEN BEGIN zbmessenger1.5 /* the 5 gold variant */ 
SAY @5 /* Thank you, this'll feed my twelve sick children and dying grandmother just fine. */
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) 
GiveItemCreate("zbrrrind",Player1,1,0,0) 
TakePartyGold(5)~ EXIT
END

IF ~~ THEN BEGIN zbmessenger2
SAY @6 /* Fast and reliable only gets you so far in this business, I'm sure such a dignified <PRO_LADYLORD> can spare a few coins for quality service. */
+ ~PartyGoldGT(0)~ + @7 /* Fine. Here is 1 gold. */ + zbmessenger1
+ ~PartyGoldGT(4)~ + @8 /* You're right, take 5 gold for your time. */ + zbmessenger1.5
++ @9 /* Don't test me urchin. Your usefulness is over, leave. */ + zbmessenger3
END

IF ~~ THEN BEGIN zbmessenger3
SAY @10 /* I suppose the high and mighty hero can't be bothered to spare a single pitiful coin. */
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) 
GiveItemCreate("zbrrrind",Player1,1,0,0)~ EXIT
END
