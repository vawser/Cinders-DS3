# -*- coding: utf-8 -*-
def t151600_1():
    """ State 0,6 """
    while True:
        DebugEvent('待機')
        if CheckSelfDeath() == 1 and not GetEventStatus(1005) and GetDistanceToPlayer() <= 5:
            """ State 16 """
            Label('L0')
            # talk:10021000:Why, you...
            TalkToPlayer(10021000, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71510031) == 1):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:10020100:You really are fond of chatting with me, aren't you?
            TalkToPlayer(10020100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 18 """
                    # talk:10021000:Why, you...
                    TalkToPlayer(10021000, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L4')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71510030)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:10020900:If a stubborn beast you be, I have no choice!
                    TalkToPlayer(10020900, -1, -1)
                    SetEventState(71510030, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71510030, 1)
                        """ State 11 """
                        Label('L2')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L4')
                elif GetEventStatus(1004) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                    Goto('L2')
                elif (not GetEventStatus(71510029) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510028) == 1):
                    """ State 26 """
                    # talk:10020840:What's wrong with you?!
                    TalkToPlayer(10020840, -1, -1)
                    SetEventState(71510029, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 27 """
                        SetEventState(71510029, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (not GetEventStatus(71510028) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510027) == 1):
                    """ State 24 """
                    # talk:10020830:What the...!
                    TalkToPlayer(10020830, -1, -1)
                    SetEventState(71510028, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 25 """
                        SetEventState(71510028, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (not GetEventStatus(71510027) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510026) == 1):
                    """ State 22 """
                    # talk:10020820:Whoa!
                    TalkToPlayer(10020820, -1, -1)
                    SetEventState(71510027, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        SetEventState(71510027, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (not GetEventStatus(71510026) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510025) == 1):
                    """ State 20 """
                    # talk:10020810:Ooh!
                    TalkToPlayer(10020810, -1, -1)
                    SetEventState(71510026, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 21 """
                        SetEventState(71510026, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (not GetEventStatus(71510025) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:10020800:Hrg!
                    TalkToPlayer(10020800, -1, -1)
                    SetEventState(71510025, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71510025, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif GetEventStatus(71510029) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
                """ State 19 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                Goto('L0')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71510031)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:10020000:Oh, there you are.
            TalkToPlayer(10020000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71510031, 1)
                SetEventState(11510594, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1004) and not GetEventStatus(1005)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1005):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L4')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

