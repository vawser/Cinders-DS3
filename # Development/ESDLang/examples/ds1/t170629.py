# -*- coding: utf-8 -*-
def t170629_1():
    """ State 0,36 """
    SetEventState(71700042, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1548) and GetDistanceToPlayer() <= 5:
            """ State 15 """
            Label('L0')
            # talk:39000400:Oh, how can this be...!
            TalkToPlayer(39000400, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (GetEventStatus(1547) == 1 and IsPlayerDead() == 1 and GetDistanceToPlayer() <= 5 and not
              GetEventStatus(71700042) and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 34 """
            # talk:39000500:Rest assured. I will kill you as many times as it takes.
            TalkToPlayer(39000500, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71700042, 1)
            assert HasTalkEnded() == 1
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1542) == 1 and not GetEventStatus(71700038)):
            """ State 20 """
            DisplayOneLineHelp(-1)
            # talk:39000000:It was you who rescued me? Why, thank you.
            TalkToPlayer(39000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 17 """
                    Label('L2')
                    # talk:39000400:Oh, how can this be...!
                    TalkToPlayer(39000400, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71700037)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:39000300:Yes, now I see.
                    TalkToPlayer(39000300, -1, -1)
                    SetEventState(71700037, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 18 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71700037, 1)
                        """ State 11 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1547) == 1:
                    """ State 10 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71700036) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71700035) == 1):
                    """ State 21 """
                    # talk:39000240:What the devil?!
                    TalkToPlayer(39000240, -1, -1)
                    SetEventState(71700036, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 22 """
                        SetEventState(71700036, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71700035) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:39000230:What in the...!
                    TalkToPlayer(39000230, -1, -1)
                    SetEventState(71700035, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71700035, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71700036) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 32 """
                SetEventState(71700038, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700041) == 1 and GetEventStatus(1542)
              == 1):
            """ State 29 """
            Label('L6')
            # talk:39000140:Yes, I see...But if you should happen to bump into him,
            TalkToPlayer(39000140, -1, -1)
            DebugEvent('ノーを選んだあと1')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 35 """
                Label('L7')
                SetEventState(11700593, 1)
                """ State 23 """
                ClearTalkDisabledState()
                DebugEvent('会話タイマークリア　選択肢')
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700040) == 1 and GetEventStatus(1542)
              == 1):
            """ State 28 """
            Label('L8')
            # talk:39000120:Thank goodness! I knew he was here somewhere.
            TalkToPlayer(39000120, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L7')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700038) == 1 and GetEventStatus(1542)
              == 1 and not GetEventStatus(71700040) and not GetEventStatus(71700041)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:39000100:Oh! Have you seen my father?
            TalkToPlayer(39000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 27 """
                # action:10020041:How do you answer?
                OpenGenericDialog(8, 10020041, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 30 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L2')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 24 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 26 """
                    Label('L9')
                    DebugEvent('NO')
                    SetEventState(71700041, 1)
                    Goto('L6')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L9')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 25 """
                    DebugEvent('YES')
                    SetEventState(71700040, 1)
                    Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1547) and not GetEventStatus(1548)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1548):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

