BEGIN zbmes

IF ~IsGabber(Player1)~ THEN BEGIN zbmessenger
SAY ~It looks like I have a letter and a fancy box for you good <PRO_SIRMAAM>.~
= ~I accept gold or fancy boxes as a delivery fee.~
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) AddJournalEntry(@800001,QUEST) GiveItemCreate("zbpdnote",Player1,1,0,0) RevealAreaOnMap("AR2000") DestroySelf()~ EXIT
END


