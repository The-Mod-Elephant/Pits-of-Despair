BEGIN zbmes

IF ~IsGabber(Player1)~ THEN BEGIN zbmessenger
SAY ~It looks like I have a letter and a fancy box for you good <PRO_SIRMAAM>.~
= ~I accept gold or fancy boxes as a delivery fee.~
++ ~Thank you. Here is a gold piece, don't spend it all in one place.~ + zbmessenger1
++ ~Didn't Vytari pay you to bring me this parcel? This must be a Shadow Thief racket, fees for everything.~ + zbmessenger2
++ ~Get out of my sight. You were paid to deliver and you have.~ +  zbmessenger3
END

IF ~~ THEN BEGIN zbmessenger1
SAY ~Thank you good <PRO_SIRMAAM>, this'll feed my twelve sick children and dying grandmother just fine.~
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) 
GiveItemCreate("ZBrrrinC",Player1,1,0,0) 
TakePartyGold(1) 
Wait(1)
PlaySound("zbswig")
DisplayStringHead(Myself,@1800014)
Wait(5)
DestroySelf()
ClearAllActions() 
StartCutSceneMode()
StartCutScene("zbmescut")~ EXIT
END

IF ~~ THEN BEGIN zbmessenger1.5 /* the 5 gold variant */ 
SAY ~Thank you good <PRO_SIRMAAM>, this'll feed my twelve sick children and dying grandmother just fine.~
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) 
GiveItemCreate("ZBrrrinC",Player1,1,0,0) 
Wait(1)
PlaySound("zbswig")
DisplayStringHead(Myself,@1800014)
Wait(5)
DestroySelf()
ClearAllActions() 
StartCutSceneMode()
StartCutScene("zbmescut")~ EXIT
END

IF ~~ THEN BEGIN zbmessenger2
SAY ~Fast and reliable only gets you so far in this business, I'm sure such a dignified <PRO_LADYLORD> can spare a few coins for quality service.~
++ ~Fine. Here is 1 gold.~ + zbmessenger1
++ ~You're right, take 5 gold for your time.~ + zbmessenger1.5
++ ~Don't test me urchin. Your usefulness is over, leave.~ + zbmessenger3
END

IF ~~ THEN BEGIN zbmessenger3
SAY ~I suppose the high and mighty hero can't be bothered to spare a single pitiful coin.~
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) 
GiveItemCreate("ZBrrrinC",Player1,1,0,0) 
Wait(1)
PlaySound("zbswig")
DisplayStringHead(Myself,@1800014)
Wait(5)
DestroySelf()
ClearAllActions() 
StartCutSceneMode()
StartCutScene("zbmescut")~ EXIT
END
