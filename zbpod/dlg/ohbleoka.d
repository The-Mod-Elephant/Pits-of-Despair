// creator  : weidu (version 24900)
// argument : OHBLEOKA.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBLEOKA~

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY @1734 /* So you're Brodle's friend, eh? The name's Leokas. What's this about? */
  IF ~  Global("OHB_LEOKAS_SECRECY","LOCALS",0)
~ THEN REPLY @1735 /* This requires secrecy. */ DO ~SetGlobal("OHB_LEOKAS_SECRECY","LOCALS",1)
SetGlobal("OHB_TALKED_LEOKAS","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @1736 /* Do you command the entire guard around here? */ DO ~SetGlobal("OHB_TALKED_LEOKAS","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY @1737 /* What would it take for you to support a rebellion against Dennaton? */ DO ~SetGlobal("OHB_TALKED_LEOKAS","LOCALS",1)
~ GOTO 3
  IF ~~ THEN REPLY @1738 /* Maybe this isn't such a good idea after all. I need to go. */ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1739 /* I'm not a fool, mate. I know the game. This meeting never took place... for now. Whether that remains true or not depends on what you have to say. */
  IF ~~ THEN REPLY @1736 /* Do you command the entire guard around here? */ GOTO 2
  IF ~~ THEN REPLY @1737 /* What would it take for you to support a rebellion against Dennaton? */ GOTO 3
  IF ~~ THEN REPLY @1738 /* Maybe this isn't such a good idea after all. I need to go. */ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1740 /* No. The guards come from several mercenary corps Dennaton's hired. Each protects certain areas or take certain shifts. I command one such group. */
  IF ~  Global("OHB_LEOKAS_SECRECY","LOCALS",0)
~ THEN REPLY @1735 /* This requires secrecy. */ DO ~SetGlobal("OHB_LEOKAS_SECRECY","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @1737 /* What would it take for you to support a rebellion against Dennaton? */ GOTO 3
  IF ~~ THEN REPLY @1738 /* Maybe this isn't such a good idea after all. I need to go. */ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1741 /* Figured it'd be something along those lines from the way Brodle was talking. Let's cut to the chase. First, I'll need 100 gold pieces to guarantee I remain silent about this meeting. */
  IF ~~ THEN REPLY @1742 /* You already agreed this meeting was secret. Why must I pay you now? */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY @1743 /* If I pay you now, what's to keep you from demanding another 100 gold in exchange for continued silence in the future? */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1744 /* Please, this is not the way for us to get off to a good start. If we are to work together, there must be trust. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 6
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1744 /* Please, this is not the way for us to get off to a good start. If we are to work together, there must be trust. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY @1745 /* How about if I don't pay you 100 gold and instead agree not to kill you? */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 8
  IF ~  !CheckStatGT(Player1,14,STR)
~ THEN REPLY @1745 /* How about if I don't pay you 100 gold and instead agree not to kill you? */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY @1746 /* Fine. Here's your 100 gold. */ DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY @1747 /* I don't have 100 gold pieces on me. */ DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY @1748 /* Forget it. */ DO ~AddJournalEntry(94035,QUEST)
~ GOTO 12
END

IF ~~ THEN BEGIN 4
  SAY @1749 /* Because I say so. 100 gold pieces and my mouth stays shut. */
  IF ~  Global("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",0)
~ THEN REPLY @1750 /* What's to keep you from demanding more in the future? */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1751 /* This isn't the way to get us off to a good start. If we are to work together, there must be trust. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 6
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1751 /* This isn't the way to get us off to a good start. If we are to work together, there must be trust. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY @1752 /* We're both reasonable people. I'm sure we can come to some agreement. How does this sound: I don't pay you 100 gold and instead agree not to kill you? */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 8
  IF ~  !CheckStatGT(Player1,14,STR)
~ THEN REPLY @1752 /* We're both reasonable people. I'm sure we can come to some agreement. How does this sound: I don't pay you 100 gold and instead agree not to kill you? */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY @1746 /* Fine. Here's your 100 gold. */ DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY @1747 /* I don't have 100 gold pieces on me. */ DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY @1748 /* Forget it. */ DO ~AddJournalEntry(94035,QUEST)
~ GOTO 12
END

IF ~~ THEN BEGIN 5
  SAY @1753 /* Absolutely nothing. In fact, I'll remember that in case I lose big at cards tonight. Now pay up. */
  IF ~~ THEN REPLY @1754 /* But you already agreed this meeting was secret. Why should I bribe you just to stay quiet? */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1755 /* Please, this is not the way to get off to a good start. If we are to work together, there must be trust. */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 6
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY @1755 /* Please, this is not the way to get off to a good start. If we are to work together, there must be trust. */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY @1752 /* We're both reasonable people. I'm sure we can come to some agreement. How does this sound: I don't pay you 100 gold and instead agree not to kill you? */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 8
  IF ~  !CheckStatGT(Player1,14,STR)
~ THEN REPLY @1752 /* We're both reasonable people. I'm sure we can come to some agreement. How does this sound: I don't pay you 100 gold and instead agree not to kill you? */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY @1746 /* Fine. Here's your 100 gold. */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY @1747 /* I don't have 100 gold pieces on me. */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY @1748 /* Forget it. */ DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
AddJournalEntry(94035,QUEST)
~ GOTO 12
END

IF ~~ THEN BEGIN 6
  SAY @1756 /* All right, then. I'll forgo the cash... but my soldiers are another matter entirely. They're mercenaries. Money is the only thing they find persuasive. To guarantee their loyalty, you'll need to pay us more than Dennaton. 20,000 gold should cover it. */
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY @1757 /* I'm leading a rebellion on these slaves' behalf. Surely you can waive such an exorbitant fee. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 13
  IF ~  !CheckStatGT(Player1,17,CHR)
~ THEN REPLY @1757 /* I'm leading a rebellion on these slaves' behalf. Surely you can waive such an exorbitant fee. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 14
  IF ~  CheckStatGT(Player1,17,STR)
~ THEN REPLY @1758 /* You've seen my prowess in the arena. You know I am an instrument of death. If I were you and your soldiers, I'd want to stay on my good side. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 15
  IF ~  !CheckStatGT(Player1,17,STR)
~ THEN REPLY @1758 /* You've seen my prowess in the arena. You know I am an instrument of death. If I were you and your soldiers, I'd want to stay on my good side. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 16
  IF ~  PartyGoldGT(19999)
~ THEN REPLY @1759 /* Here is your 20,000 gold, then. */ DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1760 /* I'll need time to raise that kind of coin. */ DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 19
END

IF ~~ THEN BEGIN 7
  SAY @1762 /* So much whining! Look, this IS about trust. If you can't pay me a paltry 100 gold, how can I "trust" you can get the coin required to buy my soldiers' loyalty? */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @1746 /* Fine. Here's your 100 gold. */ DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY @1763 /* I don't have that much money. */ DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY @1748 /* Forget it. */ DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 8
  SAY @1764 /* Easy there. I was only kidding. Forget the 100 gold. But my soldiers—they're another matter. Money's the only thing they'll find remotely persuasive. You'll need to pay more than Dennaton. 20,000 gold at least. */
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY @1757 /* I'm leading a rebellion on these slaves' behalf. Surely you can waive such an exorbitant fee. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 13
  IF ~  !CheckStatGT(Player1,17,CHR)
~ THEN REPLY @1757 /* I'm leading a rebellion on these slaves' behalf. Surely you can waive such an exorbitant fee. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 14
  IF ~  CheckStatGT(Player1,17,STR)
~ THEN REPLY @1758 /* You've seen my prowess in the arena. You know I am an instrument of death. If I were you and your soldiers, I'd want to stay on my good side. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 15
  IF ~  !CheckStatGT(Player1,17,STR)
~ THEN REPLY @1758 /* You've seen my prowess in the arena. You know I am an instrument of death. If I were you and your soldiers, I'd want to stay on my good side. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 16
  IF ~  PartyGoldGT(19999)
~ THEN REPLY @1759 /* Here is your 20,000 gold, then. */ DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1760 /* I'll need time to raise that kind of coin. */ DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 19
END

IF ~~ THEN BEGIN 9
  SAY @1765 /* Kill me and you'll be swarmed by so many guards your rebellion will be over before it begins. And my silence will now cost you 200 gold. */
  IF ~  PartyGoldGT(199)
~ THEN REPLY @1766 /* Fine. Here's your 200 gold. */ DO ~TakePartyGold(200)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(199)
~ THEN REPLY @1767 /* I don't have 200 gold pieces on me. */ DO ~AddJournalEntry(94036,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY @1748 /* Forget it. */ DO ~AddJournalEntry(94036,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @1768 /* Excellent! Now we can discuss business. Here's the bottom line: My soldiers are mercenaries. To guarantee their loyalty, you'll need to pay more than Dennaton. 20,000 gold should get the job done. */
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY @1757 /* I'm leading a rebellion on these slaves' behalf. Surely you can waive such an exorbitant fee. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 13
  IF ~  !CheckStatGT(Player1,17,CHR)
~ THEN REPLY @1757 /* I'm leading a rebellion on these slaves' behalf. Surely you can waive such an exorbitant fee. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 14
  IF ~  CheckStatGT(Player1,17,STR)
~ THEN REPLY @1758 /* You've seen my prowess in the arena. You know I am an instrument of death. If I were you and your soldiers, I'd want to stay on my good side. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 15
  IF ~  !CheckStatGT(Player1,17,STR)
~ THEN REPLY @1758 /* You've seen my prowess in the arena. You know I am an instrument of death. If I were you and your soldiers, I'd want to stay on my good side. */ DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 16
  IF ~  PartyGoldGT(19999)
~ THEN REPLY @1759 /* Here is your 20,000 gold, then. */ DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1760 /* I'll need time to raise that kind of coin. */ DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 19
END

IF ~~ THEN BEGIN 11
  SAY @1769 /* Then you've got a problem, friend. Go sell some equipment to the merchants or win some more prize money in the arena and bring me my fee. I'll be around awhile, but be quick. I'd hate to have to go to Dennaton with what I know. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1770 /* That's a shame. I'm sure Dennaton will pay handsomely for the knowledge you're plotting to rebel. Think on it a bit. If you come to your senses, I'll be around... for a time. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1771 /* By the Nine Hells, you sure are a silver-tongued devil. Look, my soldiers have to eat. I can cut the cost to match Dennaton's—15,000 gold pieces. Anything less and my people would string me up! */
  IF ~  PartyGoldGT(14999)
~ THEN REPLY @1772 /* Here is your 15,000 gold, then. */ DO ~TakePartyGold(15000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1760 /* I'll need time to raise that kind of coin. */ DO ~AddJournalEntry(94038,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY @1773 /* Forget it. I'll not pay, not that much. */ DO ~AddJournalEntry(94038,QUEST)
~ GOTO 20
END

IF ~~ THEN BEGIN 14
  SAY @1774 /* Perhaps I could, but I won't. I've more sympathy for my soldiers than I do these slaves. We all have our lots in life. My followers' lot is to fight for pay. 20,000 gold buys our loyalty. */
  IF ~  PartyGoldGT(19999)
~ THEN REPLY @1759 /* Here is your 20,000 gold, then. */ DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1760 /* I'll need time to raise that kind of coin. */ DO ~AddJournalEntry(94037,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ DO ~AddJournalEntry(94037,QUEST)
~ GOTO 19
END

IF ~~ THEN BEGIN 15
  SAY @1775 /* You do have a certain air about you—an aura of leadership that will doubtless rally the other slaves behind you. But I can't simply forgo the fee. My soldiers need to eat. I'll cut it—you just have to match Dennaton's pay. 15,000 gold pieces. */
  IF ~  PartyGoldGT(14999)
~ THEN REPLY @1772 /* Here is your 15,000 gold, then. */ DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(15000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1760 /* I'll need time to raise that kind of coin. */ DO ~AddJournalEntry(94038,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ DO ~AddJournalEntry(94038,QUEST)
~ GOTO 20
END

IF ~~ THEN BEGIN 16
  SAY @1776 /* Sorry. Your record in the arena means little compared to the number of guards Dennaton has on hand. I'm willing to swing the odds in your favor, for 20,000 gold. No less. */
  IF ~  PartyGoldGT(19999)
~ THEN REPLY @1759 /* Here is your 20,000 gold, then. */ DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1760 /* I'll need time to raise that kind of coin. */ DO ~AddJournalEntry(94037,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ DO ~AddJournalEntry(94037,QUEST)
~ GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY @1777 /* A pleasure doing business with you. I'll go explain the new deal to my people—this coin will make the switch easier to swallow. We'll go about our business as normal for now, but when the uprising begins, we'll be there. Farewell. */
  IF ~~ THEN DO ~EscapeAreaDestroy(3)
~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @1778 /* Certainly. I'll be around. Come find me when you have the money. But know my soldiers won't fight for you if you don't deliver payment before the rebellion begins. Good luck. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @1779 /* That's a shame. I'll be around in case you change your mind. If you don't deliver the payment, however, I guarantee my soldiers won't fight for you when the rebellion begins. Good luck. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @1780 /* That's a shame, and after I cut you such a good deal. Well, I'll be around if you change your mind. The price is back to 20,000 gold, and no argument from you will get it lower. If you don't deliver the payment, I guarantee that my soldiers won't fight for you when the uprising begins. Good luck. */
  IF ~~ THEN DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 21
  SAY @1781 /* You're back, are you? Thought better of our meeting, or do you still plan to waste my time? */
  IF ~~ THEN REPLY @1782 /* I just really need to be sure that you will keep this meeting a secret. */ GOTO 1
  IF ~~ THEN REPLY @1783 /* That depends. Do you command the entire guard around here? */ GOTO 2
  IF ~~ THEN REPLY @1737 /* What would it take for you to support a rebellion against Dennaton? */ GOTO 3
  IF ~~ THEN REPLY @1784 /* I wouldn't want to waste your time. Farewell.  */ EXIT
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 22
  SAY @1785 /* You're back. And you have my money? */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @1786 /* Yes, here are your 100 gold pieces. */ DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY @1787 /* No, I still need more time. */ GOTO 11
  IF ~~ THEN REPLY @1788 /* No chance. */ GOTO 12
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",2)
Global("ohb_finale","global",0)
~ THEN BEGIN 23
  SAY @1789 /* You're back. Excellent! You've brought my 200 gold? */
  IF ~  PartyGoldGT(199)
~ THEN REPLY @1790 /* I've got your gold. */ DO ~TakePartyGold(200)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY @1787 /* No, I still need more time. */ GOTO 11
  IF ~~ THEN REPLY @1788 /* No chance. */ GOTO 12
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",3)
Global("ohb_finale","global",0)
~ THEN BEGIN 24
  SAY @1791 /* Ah, the one I've been waiting for! Have you the 20,000 gold pieces that will win the loyalty of my guards? */
  IF ~  PartyGoldGT(19999)
~ THEN REPLY @1792 /* Yes, here is your 20,000 gold payment. */ DO ~TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1793 /* No, I still need more time to raise that kind of coin. */ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ GOTO 19
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",4)
Global("ohb_finale","global",0)
~ THEN BEGIN 25
  SAY @1794 /* Ah, the one I've been waiting for! Have you brought the 15,000 gold that will win the hearts and more importantly, the blades of my guards? */
  IF ~  PartyGoldGT(14999)
~ THEN REPLY @1795 /* I have. */ DO ~TakePartyGold(15000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY @1793 /* No, I still need more time to raise that kind of coin. */ GOTO 18
  IF ~~ THEN REPLY @1761 /* Forget it. I shall not pay that amount. */ GOTO 19
END

IF ~  Global("ohb_finale","global",3)
~ THEN BEGIN 26
  SAY @1796 /* That's right, finish them off! */
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
Global("ohb_finale","global",2)
~ THEN BEGIN 27
  SAY @1797 /* Well met, <CHARNAME>. When I heard the rebellion was underway, I secured the barracks here. We're ready to take the fight to Dennaton! */
  IF ~~ THEN REPLY @1798 /* Excellent. Where is he? */ DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ GOTO 28
  IF ~~ THEN REPLY @1799 /* We need to kill the guards in the other room first. */ DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ GOTO 29
  IF ~~ THEN REPLY @1800 /* Thanks for your help, but you didn't really expect me to let you live, did you? Die, fools! */ DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ GOTO 31
  IF ~~ THEN REPLY @1801 /* Let's go, then! Follow me! */ DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY @1802 /* Still lording over the arena, I imagine. I doubt he heard the alarm signaling your rebellion over the crowd. We can probably catch him by surprise. */
  IF ~~ THEN REPLY @1799 /* We need to kill the guards in the other room first. */ GOTO 29
  IF ~~ THEN REPLY @1803 /* Thanks for your help. Now die, fools! */ GOTO 31
  IF ~~ THEN REPLY @1801 /* Let's go, then! Follow me! */ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @1804 /* The captain thinks he can contain you here until reinforcements arrive. He's wrong. There are actually two ways into that room. */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @1805 /* You can sweep through the kitchen to hit him from behind, but you'll have to deal with Stirv's beasts along the way. Alternatively, there's a lever in the corner over there that'll pop the door across the hall and allow a frontal assault, but beware: The captain'll be prepared for attacks from that direction. */
  IF ~~ THEN REPLY @1806 /* Where's Dennaton? */ GOTO 28
  IF ~~ THEN REPLY @1807 /* Thanks for your help. You can die now. */ GOTO 31
  IF ~~ THEN REPLY @1808 /* Follow me! */ EXIT
END

IF ~~ THEN BEGIN 31
  SAY @1809 /* Treacherous swine! To the death, then! */
  IF ~~ THEN DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",99)
Enemy()
Shout(151)
~ EXIT
END

IF ~  Global("ohb_finale","global",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN BEGIN 32
  SAY @1810 /* This is the moment we've been waiting for. Kill them all! */
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",2)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 33
  SAY @1811 /* Good luck facing Dennaton, <CHARNAME>! */
  IF ~~ THEN EXIT
END
