# -*- coding: utf-8 -*-
def t141658_1():
    """ State 0,6 """
    while True:
        DebugEvent('待機')
        if (CheckSelfDeath() == 1 and not GetEventStatus(1005) and not GetEventStatus(1011) and GetDistanceToPlayer()
            <= 5):
            """ State 16 """
            Label('L0')
            if CheckSelfDeath() == 1 and GetEventStatus(1011) == 1:
                """ State 29 """
                Label('L1')
                # talk:10030100:...Ahh, it's over...
                TalkToPlayer(10030100, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
            elif CheckSelfDeath() == 1 and GetEventStatus(1005) == 1:
                """ State 30 """
                Label('L2')
                # talk:10030400:Why, you...
                TalkToPlayer(10030400, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
        elif (not GetEventStatus(71410042) and GetDistanceToPlayer() <= 10 and GetEventStatus(1002) ==
              1 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:10030000:...Hrg, rg...Arrrgh...
            TalkToPlayer(10030000, -1, -1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                """ State 7 """
                Label('L3')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 18 """
                    if CheckSelfDeath() == 1 and GetEventStatus(1011) == 1:
                        Goto('L1')
                    elif CheckSelfDeath() == 1 and GetEventStatus(1005) == 1:
                        Goto('L2')
                elif GetEventStatus(1002) == 1:
                    """ State 10 """
                    Label('L4')
                    ForceEndTalk(3)
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71410040)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:10030300:If a stubborn beast you be, I have no choice!
                    TalkToPlayer(10030300, -1, -1)
                    SetEventState(71410040, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 19 """
                        Label('L5')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71410040, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L6')
                elif GetEventStatus(1010) == 1:
                    Goto('L4')
                elif GetEventStatus(1004) == 1:
                    Goto('L4')
                elif (not GetEventStatus(71410039) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410038) == 1):
                    """ State 26 """
                    # talk:10030240:What's wrong with you?!
                    TalkToPlayer(10030240, -1, -1)
                    SetEventState(71410039, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 27 """
                        SetEventState(71410039, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif (not GetEventStatus(71410038) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410037) == 1):
                    """ State 24 """
                    # talk:10030230:What the...!
                    TalkToPlayer(10030230, -1, -1)
                    SetEventState(71410038, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 25 """
                        SetEventState(71410038, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif (not GetEventStatus(71410037) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410036) == 1):
                    """ State 22 """
                    # talk:10030220:Whoa!
                    TalkToPlayer(10030220, -1, -1)
                    SetEventState(71410037, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        SetEventState(71410037, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif (not GetEventStatus(71410036) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410035) == 1):
                    """ State 20 """
                    # talk:10030210:Ooh!
                    TalkToPlayer(10030210, -1, -1)
                    SetEventState(71410036, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 21 """
                        SetEventState(71410036, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif (not GetEventStatus(71410035) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:10030200:Hrg!
                    TalkToPlayer(10030200, -1, -1)
                    SetEventState(71410035, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71410035, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L6')
                elif GetEventStatus(71410039) == 1:
                    Goto('L4')
                else:
                    Goto('L4')
                """ State 11 """
                ClearTalkDisabledState()
                RemoveMyAggro()
                continue
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71410042, 1)
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1009) == 1):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:10040010:...Why?...Why?...
            TalkToPlayer(10040010, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L3')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1003) == 1):
            """ State 28 """
            DisplayOneLineHelp(-1)
            # talk:10040000:Was it all a lie? Have I done this all, for nothing?
            TalkToPlayer(10040000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L3')
            elif HasTalkEnded() == 1:
                """ State 31 """
                SetEventState(11410595, 1)
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
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1004) and not GetEventStatus(1005)
              and not GetEventStatus(1010) and not GetEventStatus(1011) and not GetEventStatus(1002)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1005) and not GetEventStatus(1011):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L3')
        """ State 3 """
        Label('L6')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

