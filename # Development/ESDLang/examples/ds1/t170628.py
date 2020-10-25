# -*- coding: utf-8 -*-
def t170628_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1513) and GetDistanceToPlayer() <= 5:
            """ State 17 """
            Label('L0')
            # talk:38020700:Heavens, me...
            TalkToPlayer(38020700, -1, -1)
            DisplayOneLineHelp(-1)
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700027) == 1 and GetEventStatus(1496)
              == 1):
            """ State 30 """
            DisplayOneLineHelp(-1)
            # talk:38020400:Ahh, hello, there.
            TalkToPlayer(38020400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 20 """
                    # talk:38020700:Heavens, me...
                    TalkToPlayer(38020700, -1, -1)
                    DisplayOneLineHelp(-1)
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L5')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71700024)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:38020600:That's your game, is it?
                    TalkToPlayer(38020600, -1, -1)
                    SetEventState(71700024, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71700024, 1)
                        """ State 11 """
                        Label('L2')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif GetEventStatus(1512) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                    Goto('L2')
                elif (not GetEventStatus(71700023) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71700022) == 1):
                    """ State 27 """
                    # talk:38020530:Why, are you...!
                    TalkToPlayer(38020530, -1, -1)
                    SetEventState(71700023, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 28 """
                        SetEventState(71700023, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71700022) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71700021) == 1):
                    """ State 25 """
                    # talk:38020520:Wha!
                    TalkToPlayer(38020520, -1, -1)
                    SetEventState(71700022, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 26 """
                        SetEventState(71700022, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71700021) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71700020) == 1):
                    """ State 23 """
                    # talk:38020510:Whoa!
                    TalkToPlayer(38020510, -1, -1)
                    SetEventState(71700021, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 24 """
                        SetEventState(71700021, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71700020) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:38020500:Yeeg!
                    TalkToPlayer(38020500, -1, -1)
                    SetEventState(71700020, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71700020, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif GetEventStatus(71700023) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
                """ State 21 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert GetDistanceToPlayer() <= 5
                Goto('L0')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700026) == 1 and GetEventStatus(1496)
              == 1 and not GetEventStatus(71700027)):
            """ State 22 """
            Label('L4')
            DisplayOneLineHelp(-1)
            # talk:38020320:I didn't expect you to show up.
            TalkToPlayer(38020320, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71700027, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11700591) and GetEventStatus(1496)
              == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:38020300:Ahh! There you are! Bless you!
            TalkToPlayer(38020300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71700026, 1)
                SetEventState(11700591, 1)
                if GetDistanceToPlayer() >= 5:
                    continue
                elif not IsMenuOpen(63):
                    Goto('L4')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700025) == 1 and GetEventStatus(1495)
              == 1):
            """ State 18 """
            DisplayOneLineHelp(-1)
            # talk:38020100:I require a key to exit.
            TalkToPlayer(38020100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71700025) and GetEventStatus(1495) == 1 and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:38020000:Mmm...mmm...
            TalkToPlayer(38020000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71700025, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 15):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1512) and not GetEventStatus(1513)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1513):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L5')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

