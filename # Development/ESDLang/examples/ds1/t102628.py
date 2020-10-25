# -*- coding: utf-8 -*-
def t102628_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1513) and GetDistanceToPlayer() <= 5:
            """ State 15 """
            Label('L0')
            # talk:38070700:Heavens, me...
            TalkToPlayer(38070700, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1509) == 1):
            """ State 21 """
            DisplayOneLineHelp(-1)
            # talk:38070300:Oh, hello, friend.
            TalkToPlayer(38070300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 17 """
                    Label('L2')
                    # talk:38070700:Heavens, me...
                    TalkToPlayer(38070700, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71410019)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:38070600:That's your game, is it?
                    TalkToPlayer(38070600, -1, -1)
                    SetEventState(71410019, 1)
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
                        SetEventState(71410019, 1)
                        """ State 11 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1512) == 1:
                    """ State 10 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71410018) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410017) == 1):
                    """ State 26 """
                    # talk:38070530:Why, are you...!
                    TalkToPlayer(38070530, -1, -1)
                    SetEventState(71410018, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 27 """
                        SetEventState(71410018, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71410017) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410016) == 1):
                    """ State 24 """
                    # talk:38070520:Wha!
                    TalkToPlayer(38070520, -1, -1)
                    SetEventState(71410017, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 25 """
                        SetEventState(71410017, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71410016) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410015) == 1):
                    """ State 22 """
                    # talk:38070510:Whoa!
                    TalkToPlayer(38070510, -1, -1)
                    SetEventState(71410016, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        SetEventState(71410016, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71410015) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:38070500:Yeeg!
                    TalkToPlayer(38070500, -1, -1)
                    SetEventState(71410015, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71410015, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71410018) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 40 """
                SetEventState(11020593, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410026) == 1 and GetEventStatus(1510)
              == 1 and not GetEventStatus(1540) and not GetEventStatus(1541) and not GetEventStatus(1547)
              and not GetEventStatus(1548)):
            """ State 41 """
            DisplayOneLineHelp(-1)
            # talk:38070400:Oh, hello, friend.
            TalkToPlayer(38070400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410025) == 1 and GetEventStatus(1510)
              == 1):
            """ State 38 """
            Label('L6')
            DisplayOneLineHelp(-1)
            # talk:38070210:This is a relief. Now I have no regrets.
            TalkToPlayer(38070210, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 39 """
                SetEventState(71410026, 1)
                SetEventState(11020593, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11020595) and GetEventStatus(1510)
              == 1):
            """ State 19 """
            DisplayOneLineHelp(-1)
            # talk:38070200:Hello, friend. Still holding up?
            TalkToPlayer(38070200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 20 """
                SetEventState(71410025, 1)
                SetEventState(11020595, 1)
                if GetDistanceToPlayer() >= 5:
                    continue
                elif not IsMenuOpen(63):
                    Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410020) == 1 and GetEventStatus(1497)
              == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:38070100:There you are.
            TalkToPlayer(38070100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410022) == 1 and GetEventStatus(1497)
              == 1 and not GetEventStatus(71410024)):
            """ State 34 """
            Label('L7')
            # talk:38070040:Is that so?
            TalkToPlayer(38070040, -1, -1)
            DebugEvent('ノーを選んだあと1')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 37 """
                SetEventState(71410024, 1)
                SetEventState(71410020, 1)
                SetEventState(11020592, 1)
                """ State 28 """
                Label('L8')
                ClearTalkDisabledState()
                DebugEvent('会話タイマークリア　選択肢')
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410021) == 1 and GetEventStatus(1497)
              == 1 and not GetEventStatus(71410023)):
            """ State 33 """
            Label('L9')
            # talk:38070020:Yes! I knew it!
            TalkToPlayer(38070020, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 36 """
                SetEventState(71410023, 1)
                SetEventState(11020594, 1)
                SetEventState(71410020, 1)
                SetEventState(11020592, 1)
                Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71410021) and GetEventStatus(1497)
              == 1 and not GetEventStatus(71410022)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:38070000:Well! Fancy meeting you here.
            TalkToPlayer(38070000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 32 """
                # action:10020041:How do you answer?
                OpenGenericDialog(8, 10020041, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 35 """
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
                    """ State 29 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 31 """
                    Label('L10')
                    DebugEvent('嘘をつく')
                    SetEventState(71410022, 1)
                    Goto('L7')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L10')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 30 """
                    DebugEvent('真実を言う')
                    SetEventState(71410021, 1)
                    Goto('L9')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
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
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

