# -*- coding: utf-8 -*-
def t130632_1():
    """ State 0,66 """
    SetEventState(71310075, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1628) and GetDistanceToPlayer() <= 5:
            """ State 14 """
            Label('L0')
            if GetEventStatus(1621) == 1:
                """ State 40 """
                # talk:42001000:Curses...I'm finished...
                TalkToPlayer(42001000, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
            elif GetEventStatus(1620) == 1:
                """ State 39 """
                # talk:42001400:Curses! How in the...
                TalkToPlayer(42001400, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
        elif (GetEventStatus(1627) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71310075) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 56 """
            if GetEventStatus(1620) == 1:
                """ State 67 """
                # talk:42001500:What happened to you?
                TalkToPlayer(42001500, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71310075, 1)
                assert HasTalkEnded() == 1
                continue
            elif ComparePlayerStatus(12, 0, 0) == 1:
                """ State 57 """
                # talk:42001110:Phew...The righteous prevail, again...
                TalkToPlayer(42001110, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71310075, 1)
                assert HasTalkEnded() == 1
                continue
            elif ComparePlayerStatus(12, 0, 1) == 1:
                """ State 55 """
                # talk:42001100:Phew...The righteous prevail, again...
                TalkToPlayer(42001100, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71310075, 1)
                assert HasTalkEnded() == 1
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1621) == 1):
            """ State 42 """
            if GetEventStatus(11300591) == 1:
                pass
            elif GetEventStatus(71310070) == 1 and not GetEventStatus(11300591):
                """ State 52 """
                Label('L1')
                DisplayOneLineHelp(-1)
                # talk:42000500:Are you certain?!
                TalkToPlayer(42000500, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 7 """
                    Label('L2')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L0')
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310065)
                          and GetSelfHP() <= 90 and GetEventStatus(1620) == 1):
                        """ State 58 """
                        # talk:42001300:Curses, what's wrong with you!
                        TalkToPlayer(42001300, -1, -1)
                        SetEventState(71310065, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            """ State 15 """
                            Label('L3')
                            ClearTalkProgressData()
                            def ExitPause():
                                RemoveMyAggro()
                            assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                            Goto('L0')
                        elif HasTalkEnded() == 1:
                            """ State 59 """
                            SetEventState(71310065, 1)
                            """ State 11 """
                            Label('L4')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (not GetEventStatus(71310063) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1638) == 1 and ComparePlayerStatus(12, 0, 0) == 1 and
                          GetSelfHP() <= 90 and GetEventStatus(1621) == 1):
                        """ State 37 """
                        # talk:42000950:All right, all right, if that's the way it is!
                        TalkToPlayer(42000950, -1, -1)
                        SetEventState(71310063, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 38 """
                            SetEventState(71310063, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310061)
                          and GetSelfHP() <= 90 and GetEventStatus(1638) == 1 and ComparePlayerStatus(12,
                          0, 1) == 1 and GetEventStatus(1621) == 1):
                        """ State 12 """
                        # talk:42000900:All right, all right, if that's the way it is!
                        TalkToPlayer(42000900, -1, -1)
                        SetEventState(71310061, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 13 """
                            SetEventState(71310061, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (not GetEventStatus(71310064) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(1638) and ComparePlayerStatus(12, 0, 0) == 1 and
                          GetSelfHP() <= 90 and GetEventStatus(1621) == 1):
                        """ State 29 """
                        # talk:42000970:All right, all right, if that's the way it is!
                        TalkToPlayer(42000970, -1, -1)
                        SetEventState(71310064, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 30 """
                            SetEventState(71310064, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310062)
                          and GetSelfHP() <= 90 and not GetEventStatus(1638) and ComparePlayerStatus(12,
                          0, 1) == 1 and GetEventStatus(1621) == 1):
                        """ State 35 """
                        # talk:42000920:All right, all right, if that's the way it is!
                        TalkToPlayer(42000920, -1, -1)
                        SetEventState(71310062, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 36 """
                            SetEventState(71310062, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif GetEventStatus(1627) == 1:
                        """ State 10 """
                        Label('L5')
                        ForceEndTalk(3)
                        Goto('L4')
                    elif (not GetEventStatus(71310060) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1620) == 1 and GetEventStatus(71310059) == 1):
                        """ State 33 """
                        # talk:42001260:Stop that!
                        TalkToPlayer(42001260, -1, -1)
                        SetEventState(71310060, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 34 """
                            SetEventState(71310060, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310059) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1620) == 1 and GetEventStatus(71310058) == 1):
                        """ State 31 """
                        # talk:42001250:Oi! Put an end to that!
                        TalkToPlayer(42001250, -1, -1)
                        SetEventState(71310059, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 32 """
                            SetEventState(71310059, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310058) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1620) == 1):
                        """ State 27 """
                        # talk:42001240:What?! Oww!
                        TalkToPlayer(42001240, -1, -1)
                        SetEventState(71310058, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 28 """
                            SetEventState(71310058, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310057) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1621) == 1 and GetEventStatus(71310056) == 1):
                        """ State 25 """
                        # talk:42000860:Please, no!
                        TalkToPlayer(42000860, -1, -1)
                        SetEventState(71310057, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 26 """
                            SetEventState(71310057, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310056) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1621) == 1 and GetEventStatus(71310055) == 1):
                        """ State 23 """
                        # talk:42000850:What the devil!
                        TalkToPlayer(42000850, -1, -1)
                        SetEventState(71310056, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 24 """
                            SetEventState(71310056, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310055) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1621) == 1):
                        """ State 8 """
                        # talk:42000840:Oww!
                        TalkToPlayer(42000840, -1, -1)
                        SetEventState(71310055, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 9 """
                            SetEventState(71310055, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif GetEventStatus(71310057) == 1:
                        Goto('L5')
                    elif GetEventStatus(71310060) == 1:
                        Goto('L5')
                    else:
                        Goto('L5')
                elif HasTalkEnded() == 1:
                    """ State 65 """
                    SetEventState(71310072, 1)
                    SetEventState(11300591, 1)
                    if GetDistanceToPlayer() >= 5:
                        continue
                    elif not IsMenuOpen(63):
                        pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L10')
            elif not GetEventStatus(1637) and GetEventStatus(11300590) == 1:
                """ State 49 """
                DisplayOneLineHelp(-1)
                # talk:42000300:Oh, does it really matter that much?
                TalkToPlayer(42000300, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif not GetEventStatus(1637):
                """ State 45 """
                DisplayOneLineHelp(-1)
                # talk:42000200:Ah, oh! Well, well, how are you, then?
                TalkToPlayer(42000200, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 46 """
                    SetEventState(71310068, 1)
                    SetEventState(11300590, 1)
                    assert not IsMenuOpen(63)
                    """ State 48 """
                    DisplayOneLineHelp(-1)
                    # talk:42000210:Heh heh. We'll be wonderful friends.
                    TalkToPlayer(42000210, -1, -1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L10')
            elif GetEventStatus(71310071) == 1:
                """ State 63 """
                Label('L6')
                DebugEvent('奇跡を教わらない')
                SetEventState(71310071, 1)
                if ComparePlayerStatus(12, 0, 1) == 1:
                    """ State 53 """
                    DisplayOneLineHelp(-1)
                    # talk:42000600:Oh, really? Yes, I see...Righty-oh!
                    TalkToPlayer(42000600, -1, -1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        pass
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L10')
                elif ComparePlayerStatus(12, 0, 0) == 1:
                    """ State 54 """
                    DisplayOneLineHelp(-1)
                    # talk:42000650:Oh, really? Yes, I see...Righty-oh!
                    TalkToPlayer(42000650, -1, -1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        pass
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L10')
                """ State 60 """
                ClearTalkDisabledState()
                DebugEvent('会話タイマークリア　選択肢')
                continue
            elif GetEventStatus(71310070) == 1:
                """ State 51 """
                DisplayOneLineHelp(-1)
                # talk:42000700:Oh, will you come off it, now!
                TalkToPlayer(42000700, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
                elif HasTalkEnded() == 1:
                    continue
            elif (not GetEventStatus(71310070) and not GetEventStatus(71310071) and GetEventStatus(1637)
                  == 1):
                """ State 47 """
                DisplayOneLineHelp(-1)
                # talk:42000400:Ah, oh! Well, how are you, then?
                TalkToPlayer(42000400, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 64 """
                    # action:10020041:How do you answer?
                    OpenGenericDialog(8, 10020041, 3, 4, 2)
                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                        """ State 22 """
                        Label('L7')
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L0')
                        else:
                            continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        """ State 61 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        Goto('L6')
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L6')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 62 """
                        DebugEvent('はい')
                        SetEventState(71310070, 1)
                        Goto('L1')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            """ State 50 """
            DisplayOneLineHelp(-1)
            # talk:42000510:We're on the same side! Undead outcasts!
            TalkToPlayer(42000510, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
            elif HasTalkEnded() == 1:
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1620) == 1):
            """ State 41 """
            if not GetEventStatus(71310066) and not GetEventStatus(71310067):
                """ State 43 """
                DisplayOneLineHelp(-1)
                # talk:42000000:Good day! You look reasonably sane!
                TalkToPlayer(42000000, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 19 """
                    # action:10020041:How do you answer?
                    OpenGenericDialog(8, 10020041, 3, 4, 2)
                    SetEventState(1637, 1)
                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                        Goto('L7')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        """ State 16 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 18 """
                        Label('L8')
                        DebugEvent('いいえ')
                        SetEventState(71310067, 1)
                        SetEventState(1637, 1)
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L8')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 17 """
                        DebugEvent('はい')
                        SetEventState(71310066, 1)
                        SetEventState(1638, 1)
                        SetEventState(1637, 1)
                        """ State 20 """
                        Label('L9')
                        # talk:42000020:Yes, I imagined as much.
                        TalkToPlayer(42000020, -1, -1)
                        DebugEvent('イエスを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 68 """
                            SetEventState(71310076, 1)
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif GetEventStatus(71310067) == 1 and not GetEventStatus(71310076):
                pass
            elif GetEventStatus(71310066) == 1 and not GetEventStatus(71310076):
                Goto('L9')
            elif GetEventStatus(1637) == 1:
                """ State 44 """
                DisplayOneLineHelp(-1)
                # talk:42000100:Yeah? What is it now?
                TalkToPlayer(42000100, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            """ State 21 """
            # talk:42000040:No? Well, that's strange.
            TalkToPlayer(42000040, -1, -1)
            DebugEvent('ノーを選んだあと')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 69 """
                SetEventState(71310077, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1628) and not GetEventStatus(1627)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1628):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 3 """
        Label('L10')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

