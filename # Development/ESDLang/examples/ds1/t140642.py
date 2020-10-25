# -*- coding: utf-8 -*-
def t140642_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
            <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(1766)):
            """ State 12 """
            DisplayOneLineHelp(-1)
            # talk:52000100:...
            TalkToPlayer(52000100, -1, -1)
            SetEventState(11200597, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                """ State 3 """
                Label('L0')
                ClearTalkProgressData()
                """ State 2 """
                ForceEndTalk(0)
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1766) == 1):
            """ State 10 """
            DisplayOneLineHelp(-1)
            # talk:52000000:...
            TalkToPlayer(52000000, -1, -1)
            SetEventState(11200597, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                pass
            elif HasTalkEnded() == 1:
                """ State 11 """
                SetEventState(71200095, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L0')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1763) and not GetEventStatus(1764)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1764):
            """ State 1 """
            DisplayOneLineHelp(-1)
        """ State 7 """
        ClearTalkProgressData()
        def ExitPause():
            RemoveMyAggro()
        if GetEventStatus(1763) == 1:
            pass
        else:
            pass
        """ State 8 """
        ForceEndTalk(3)
        """ State 9 """
        ClearTalkDisabledState()
        RemoveMyAggro()

