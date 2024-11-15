BEGIN zbmes

IF ~IsGabber(Player1)~ THEN BEGIN zbmessenger
SAY ~Have a letter here for you. From some man named Vyantri.~
IF ~~ DO ~SetGlobal("ZBPodSummonsReceived","GLOBAL",4) AddJournalEntry(@800001,QUEST) GiveItemCreate("zbpdnote",Player1,1,0,0) RevealAreaOnMap("AR2000") DestroySelf()~ EXIT
END


