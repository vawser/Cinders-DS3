# -*- coding: utf-8 -*-
def t121670_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1125) and GetDistanceToPlayer() <= 5:
            """ State 15 """
            Label('L0')
            # talk:56005010:Eek!
            TalkToPlayer(56005010, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if GetDistanceToPlayer() >= 5:
                pass
            elif HasTalkEnded() == 1:
                continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(11210541)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1125):
            """ State 1 """
            DisplayOneLineHelp(-1)
            """ State 7 """
            Label('L1')
            ClearTalkProgressData()
            def ExitPause():
                RemoveMyAggro()
            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                """ State 18 """
                # talk:56005010:Eek!
                TalkToPlayer(56005010, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if GetDistanceToPlayer() >= 5:
                    Goto('L4')
                elif HasTalkEnded() == 1:
                    continue
            elif GetEventStatus(1124) == 1:
                """ State 10 """
                Label('L2')
                ForceEndTalk(3)
            elif (not GetEventStatus(71210099) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                  <= 5 and GetEventStatus(71210098) == 1):
                """ State 21 """
                # talk:56005010:Eek!
                TalkToPlayer(56005010, -1, -1)
                SetEventState(71210099, 1)
                ForceCloseMenu()
                if CheckSelfDeath() == 1:
                    """ State 19 """
                    Label('L3')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                    Goto('L0')
                elif HasTalkEnded() == 1:
                    """ State 22 """
                    SetEventState(71210099, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L4')
            elif not GetEventStatus(71210098) and IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5:
                """ State 8 """
                # talk:56005000:Aah...
                TalkToPlayer(56005000, -1, -1)
                SetEventState(71210098, 1)
                ForceCloseMenu()
                if CheckSelfDeath() == 1:
                    Goto('L3')
                elif HasTalkEnded() == 1:
                    """ State 9 """
                    SetEventState(71210098, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L4')
            elif GetEventStatus(71210099) == 1:
                Goto('L2')
            else:
                Goto('L2')
            """ State 11 """
            ClearTalkDisabledState()
            RemoveMyAggro()
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1128) == 1 and GetEventStatus(71210096)
              == 1):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:56000020:...Hmm...mm...
            TalkToPlayer(56000020, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 20 """
                SetEventState(71210097, 1)
                SetEventState(71210095, 0)
                SetEventState(71210096, 0)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1128) == 1 and not GetEventStatus(71210096)
              and GetEventStatus(71210095) == 1):
            """ State 12 """
            DisplayOneLineHelp(-1)
            # talk:56000010:...Aah...mmn...
            TalkToPlayer(56000010, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 13 """
                SetEventState(71210096, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1128) == 1 and not GetEventStatus(71210095) and GetOneLineHelpStatus() ==
              1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:56000000:...Mmn...ahh...
            TalkToPlayer(56000000, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 17 """
                SetEventState(71210095, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        """ State 3 """
        Label('L4')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

