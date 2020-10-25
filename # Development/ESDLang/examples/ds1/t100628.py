# -*- coding: utf-8 -*-
def t100628_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1513) and GetDistanceToPlayer() <= 5:
            """ State 17 """
            Label('L0')
            # talk:38030700:Heavens, me...
            TalkToPlayer(38030700, -1, -1)
            DisplayOneLineHelp(-1)
            if GetDistanceToPlayer() >= 5:
                pass
            elif HasTalkEnded() == 1:
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000068) == 1 and GetEventStatus(1500)
              == 1):
            """ State 30 """
            Label('L1')
            DisplayOneLineHelp(-1)
            # talk:38030420:But be warned, gallantry entails great risks.
            TalkToPlayer(38030420, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L2')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 20 """
                    # talk:38030700:Heavens, me...
                    TalkToPlayer(38030700, -1, -1)
                    DisplayOneLineHelp(-1)
                    if GetDistanceToPlayer() >= 5:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        continue
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71000064)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:38030600:That's your game, is it?
                    TalkToPlayer(38030600, -1, -1)
                    SetEventState(71000064, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71000064, 1)
                        """ State 11 """
                        Label('L3')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif GetEventStatus(1512) == 1:
                    """ State 10 """
                    Label('L4')
                    ForceEndTalk(3)
                    Goto('L3')
                elif (not GetEventStatus(71000063) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000062) == 1):
                    """ State 27 """
                    # talk:38030530:Why, are you...!
                    TalkToPlayer(38030530, -1, -1)
                    SetEventState(71000063, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 28 """
                        SetEventState(71000063, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71000062) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000061) == 1):
                    """ State 25 """
                    # talk:38030520:Wha!
                    TalkToPlayer(38030520, -1, -1)
                    SetEventState(71000062, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 26 """
                        SetEventState(71000062, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71000061) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000060) == 1):
                    """ State 23 """
                    # talk:38030510:Whoa!
                    TalkToPlayer(38030510, -1, -1)
                    SetEventState(71000061, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 24 """
                        SetEventState(71000061, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71000060) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:38030500:Yeeg!
                    TalkToPlayer(38030500, -1, -1)
                    SetEventState(71000060, 1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71000060, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif GetEventStatus(71000063) == 1:
                    Goto('L4')
                else:
                    Goto('L4')
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
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11000591) and GetEventStatus(1500)
              == 1):
            """ State 22 """
            DisplayOneLineHelp(-1)
            # talk:38030400:Mmm...mmm...
            TalkToPlayer(38030400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71000068, 1)
                SetEventState(11000591, 1)
                if GetDistanceToPlayer() >= 15:
                    continue
                elif not IsMenuOpen(63):
                    Goto('L1')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000066) == 1 and GetEventStatus(1498)
              == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:38030300:What about you? Any ideas?
            TalkToPlayer(38030300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000065) == 1 and not GetEventStatus(71000066)
              and GetEventStatus(1498) == 1):
            """ State 18 """
            DisplayOneLineHelp(-1)
            # talk:38030200:Mmm...mmm...
            TalkToPlayer(38030200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71000066, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71000065) and GetEventStatus(1498) == 1 and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:38030000:Mmm...
            TalkToPlayer(38030000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71000065, 1)
                continue
            elif GetDistanceToPlayer() >= 15:
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
            Goto('L2')
        """ State 3 """
        Label('L5')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

