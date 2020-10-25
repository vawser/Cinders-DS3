# -*- coding: utf-8 -*-
def t110636_1():
    """ State 0,20 """
    SetEventState(71100003, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if (CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 12 and not GetEventStatus(1692) and not
            IsClientPlayer()):
            """ State 13 """
            Label('L0')
            # talk:46000300:Ahh...
            TalkToPlayer(46000300, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 12:
                pass
        elif (GetEventStatus(1691) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71100003) and
              GetDistanceToPlayer() <= 15 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 15):
            """ State 19 """
            # talk:46000400:Why could thou not let us be?
            TalkToPlayer(46000400, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71100003, 1)
            assert HasTalkEnded() == 1
            continue
        elif (GetEventStatus(71100001) == 1 and GetEventStatus(1690) == 1 and GetOneLineHelpStatus()
              == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and
              GetDistanceToPlayer() <= 10):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:46000100:Thou must returneth whence thou came.
            TalkToPlayer(46000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 12 and not IsClientPlayer():
                    """ State 15 """
                    # talk:46000300:Ahh...
                    TalkToPlayer(46000300, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 12:
                        Goto('L3')
                elif (not GetEventStatus(71100000) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 12 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and
                      not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and
                      GetRelativeAngleBetweenPlayerAndSelf() <= 180 and GetDistanceToPlayer() <= 12):
                    """ State 8 """
                    # talk:46000200:I expected as much from thee.
                    TalkToPlayer(46000200, -1, -1)
                    SetEventState(71100000, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 16 """
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 12 and not IsClientPlayer()
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71100000, 1)
                        SetEventState(11100590, 1)
                    elif GetDistanceToPlayer() >= 15:
                        Goto('L3')
                elif GetEventStatus(1691) == 1:
                    """ State 10 """
                    Label('L2')
                    ForceEndTalk(3)
                elif GetEventStatus(71100000) == 1:
                    Goto('L2')
                else:
                    Goto('L2')
                """ State 11 """
                ClearTalkDisabledState()
                RemoveMyAggro()
                continue
            elif HasTalkEnded() == 1:
                """ State 18 """
                SetEventState(71100002, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                pass
        elif (not GetEventStatus(71100001) and GetEventStatus(1690) == 1 and GetOneLineHelpStatus() ==
              1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 10):
            """ State 12 """
            DisplayOneLineHelp(-1)
            # talk:46000000:Who art thou?
            TalkToPlayer(46000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 14 """
                SetEventState(71100001, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                pass
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1692):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 10 and not GetEventStatus(1691) and not GetEventStatus(1692)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 10)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        """ State 3 """
        Label('L3')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

