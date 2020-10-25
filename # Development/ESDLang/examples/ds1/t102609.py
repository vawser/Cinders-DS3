# -*- coding: utf-8 -*-
def t102609_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1214) and GetDistanceToPlayer() <= 5:
            """ State 16 """
            Label('L0')
            # talk:19000600:By the Gods...
            TalkToPlayer(19000600, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11020600) == 1 and GetEventStatus(71310024)
              == 1):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:19000300:Oh, it's you?
            TalkToPlayer(19000300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 18 """
                    # talk:19000600:By the Gods...
                    TalkToPlayer(19000600, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L4')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310022)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:19000500:Curses! What the devil's wrong with you?
                    TalkToPlayer(19000500, -1, -1)
                    SetEventState(71310022, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71310022, 1)
                        """ State 11 """
                        Label('L2')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L4')
                elif GetEventStatus(1213) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                    Goto('L2')
                elif (not GetEventStatus(71310021) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71310020) == 1):
                    """ State 24 """
                    # talk:19000430:What the!
                    TalkToPlayer(19000430, -1, -1)
                    SetEventState(71310021, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 25 """
                        SetEventState(71310021, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (not GetEventStatus(71310020) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:19000420:Egads!
                    TalkToPlayer(19000420, -1, -1)
                    SetEventState(71310020, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71310020, 1)
                        Goto('L2')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif GetEventStatus(71310021) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
                """ State 19 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                Goto('L0')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
            elif HasTalkEnded() == 1:
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71310024) == 1 and not GetEventStatus(11026109)):
            """ State 22 """
            DisplayOneLineHelp(-1)
            # talk:19000200:Oh, you yet again. You're a persistent one, aren't you? Hah hah\nhah.
            TalkToPlayer(19000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 23 """
                SetEventState(71310025, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71310023) == 1):
            """ State 20 """
            DisplayOneLineHelp(-1)
            # talk:19000100:Oh, you again. What business have you?
            TalkToPlayer(19000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 21 """
                SetEventState(71310024, 1)
                SetEventState(11026109, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71310023)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:19000000:Hm? What have we here?
            TalkToPlayer(19000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71310023, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1213) and not GetEventStatus(1214)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1214):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L4')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

