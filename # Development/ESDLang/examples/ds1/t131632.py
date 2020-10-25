# -*- coding: utf-8 -*-
def t131632_1():
    """ State 0,70 """
    SetEventState(71310079, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1628) and GetDistanceToPlayer() <= 5:
            """ State 14 """
            Label('L0')
            if GetEventStatus(1624) == 1:
                """ State 41 """
                # talk:42011600:Curses...I'm finished...
                TalkToPlayer(42011600, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
            elif GetEventStatus(1623) == 1:
                """ State 40 """
                # talk:42012000:Curses! How in the...
                TalkToPlayer(42012000, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
        elif (IsPlayerDead() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310079) and
              HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5 and (GetEventStatus(1625) == 1 or GetEventStatus(1627)
              == 1)):
            """ State 58 """
            if GetEventStatus(1623) == 1:
                """ State 71 """
                # talk:42012100:What happened to you?
                TalkToPlayer(42012100, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71310079, 1)
                assert HasTalkEnded() == 1
                continue
            elif ComparePlayerStatus(12, 0, 0) == 1:
                """ State 59 """
                # talk:42011750:Phew...The righteous prevail, again...
                TalkToPlayer(42011750, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71310079, 1)
                assert HasTalkEnded() == 1
                continue
            elif ComparePlayerStatus(12, 0, 1) == 1:
                """ State 57 """
                # talk:42011700:Phew...The righteous prevail, again...
                TalkToPlayer(42011700, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71310079, 1)
                assert HasTalkEnded() == 1
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1624) == 1):
            """ State 43 """
            if GetEventStatus(71310096) == 1 and not GetEventStatus(11310594):
                """ State 56 """
                Label('L1')
                DisplayOneLineHelp(-1)
                # talk:42011100:Oh, for heaven's sake, let's not mope about, eh?
                TalkToPlayer(42011100, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 7 """
                    Label('L2')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L0')
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310090)
                          and GetSelfHP() <= 90 and GetEventStatus(1623) == 1):
                        """ State 60 """
                        # talk:42011900:Curses, what's wrong with you!
                        TalkToPlayer(42011900, -1, -1)
                        SetEventState(71310090, 1)
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
                            """ State 61 """
                            SetEventState(71310090, 1)
                            """ State 11 """
                            Label('L4')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (not GetEventStatus(71310088) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1638) == 1 and ComparePlayerStatus(12, 0, 0) == 1 and
                          GetSelfHP() <= 90 and GetEventStatus(1624) == 1):
                        """ State 38 """
                        # talk:42011550:All right, all right, if that's the way it is!
                        TalkToPlayer(42011550, -1, -1)
                        SetEventState(71310088, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 39 """
                            SetEventState(71310088, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310086)
                          and GetSelfHP() <= 90 and GetEventStatus(1638) == 1 and ComparePlayerStatus(12,
                          0, 1) == 1 and GetEventStatus(1624) == 1):
                        """ State 12 """
                        # talk:42011500:All right, all right, if that's the way it is!
                        TalkToPlayer(42011500, -1, -1)
                        SetEventState(71310086, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 13 """
                            SetEventState(71310086, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (not GetEventStatus(71310089) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(1638) and ComparePlayerStatus(12, 0, 0) == 1 and
                          GetSelfHP() <= 90 and GetEventStatus(1624) == 1):
                        """ State 30 """
                        # talk:42011570:All right, all right, if that's the way it is!
                        TalkToPlayer(42011570, -1, -1)
                        SetEventState(71310089, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 31 """
                            SetEventState(71310089, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310087)
                          and GetSelfHP() <= 90 and not GetEventStatus(1638) and ComparePlayerStatus(12,
                          0, 1) == 1 and GetEventStatus(1624) == 1):
                        """ State 36 """
                        # talk:42011520:All right, all right, if that's the way it is!
                        TalkToPlayer(42011520, -1, -1)
                        SetEventState(71310087, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 37 """
                            SetEventState(71310087, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L10')
                    elif GetEventStatus(1625) == 1 or GetEventStatus(1627) == 1:
                        """ State 10 """
                        Label('L5')
                        ForceEndTalk(3)
                        Goto('L4')
                    elif (not GetEventStatus(71310085) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1623) == 1 and GetEventStatus(71310084) == 1):
                        """ State 34 """
                        # talk:42011860:Stop that!
                        TalkToPlayer(42011860, -1, -1)
                        SetEventState(71310085, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 35 """
                            SetEventState(71310085, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310084) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1623) == 1 and GetEventStatus(71310083) == 1):
                        """ State 32 """
                        # talk:42011850:Oi! Put an end to that!
                        TalkToPlayer(42011850, -1, -1)
                        SetEventState(71310084, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 33 """
                            SetEventState(71310084, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310083) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1623) == 1):
                        """ State 28 """
                        # talk:42011840:What?! Oww!
                        TalkToPlayer(42011840, -1, -1)
                        SetEventState(71310083, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 29 """
                            SetEventState(71310083, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310082) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1624) == 1 and GetEventStatus(71310081) == 1):
                        """ State 26 """
                        # talk:42011460:Please, no!
                        TalkToPlayer(42011460, -1, -1)
                        SetEventState(71310082, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 27 """
                            SetEventState(71310083, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310081) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1624) == 1 and GetEventStatus(71310080) == 1):
                        """ State 24 """
                        # talk:42011450:What the devil!
                        TalkToPlayer(42011450, -1, -1)
                        SetEventState(71310081, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 25 """
                            SetEventState(71310081, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif (not GetEventStatus(71310080) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1624) == 1):
                        """ State 8 """
                        # talk:42011440:Oww!
                        TalkToPlayer(42011440, -1, -1)
                        SetEventState(71310080, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 9 """
                            SetEventState(71310080, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif GetEventStatus(71310082) == 1:
                        Goto('L5')
                    elif GetEventStatus(71310085) == 1:
                        Goto('L5')
                    else:
                        Goto('L5')
                elif HasTalkEnded() == 1:
                    """ State 67 """
                    SetEventState(11310594, 1)
                    if GetDistanceToPlayer() >= 5:
                        continue
                    elif not IsMenuOpen(63):
                        """ State 53 """
                        DisplayOneLineHelp(-1)
                        # talk:42011110:Heh heh heh...
                        TalkToPlayer(42011110, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif True:
                            pass
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L10')
            elif GetEventStatus(1638) == 1:
                """ State 50 """
                DisplayOneLineHelp(-1)
                # talk:42011200:Blimey, how did you...
                TalkToPlayer(42011200, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 51 """
                    SetEventState(11310595, 1)
                    SetEventState(71310088, 1)
                    SetEventState(71310086, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif GetEventStatus(71310099) == 1:
                """ State 54 """
                DisplayOneLineHelp(-1)
                # talk:42011300:I did you wrong. But, I didn't mean it.
                TalkToPlayer(42011300, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif not GetEventStatus(71310095) and not GetEventStatus(71310096) and not GetEventStatus(1638):
                """ State 52 """
                DisplayOneLineHelp(-1)
                # talk:42010900:...Oh, you, I...
                TalkToPlayer(42010900, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 66 """
                    # action:10020041:How do you answer?
                    OpenGenericDialog(8, 10020041, 3, 4, 2)
                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                        """ State 23 """
                        Label('L6')
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
                        """ State 63 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 65 """
                        Label('L7')
                        DebugEvent('奇跡を教わらない')
                        SetEventState(71310096, 1)
                        SetEventState(71310099, 1)
                        Goto('L1')
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L7')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 64 """
                        DebugEvent('はい')
                        SetEventState(71310095, 1)
                        SetEventState(71310099, 1)
                        """ State 55 """
                        DisplayOneLineHelp(-1)
                        # talk:42011000:Oh, brilliant! A second chance! Wonderful!
                        TalkToPlayer(42011000, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            pass
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            """ State 62 """
            ClearTalkDisabledState()
            DebugEvent('会話タイマークリア　選択肢')
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1623) == 1):
            """ State 42 """
            if GetEventStatus(71310094) == 1:
                """ State 44 """
                # talk:42010600:What's your problem?
                TalkToPlayer(42010600, -1, -1)
                DebugEvent('イエスを選んだあと')
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif not GetEventStatus(71310094) and GetEventStatus(71310098) == 1:
                """ State 49 """
                DisplayOneLineHelp(-1)
                # talk:42010500:There, that hole. Take a closer look.
                TalkToPlayer(42010500, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 68 """
                    SetEventState(71310094, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif not GetEventStatus(71310091) and not GetEventStatus(71310092) and not GetEventStatus(1637):
                """ State 45 """
                DisplayOneLineHelp(-1)
                # talk:42010000:Good day! You look reasonably sane!
                TalkToPlayer(42010000, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 20 """
                    # action:10020041:How do you answer?
                    OpenGenericDialog(8, 10020041, 3, 4, 2)
                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        """ State 17 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 19 """
                        Label('L8')
                        DebugEvent('いいえ')
                        SetEventState(71310092, 1)
                        SetEventState(1637, 1)
                        SetEventState(71310098, 1)
                        """ State 22 """
                        # talk:42010200:No? Really?
                        TalkToPlayer(42010200, -1, -1)
                        DebugEvent('ノーを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 16 """
                            Label('L9')
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　選択肢')
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L8')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 18 """
                        DebugEvent('はい')
                        SetEventState(71310091, 1)
                        SetEventState(1638, 1)
                        SetEventState(1637, 1)
                        SetEventState(71310098, 1)
                        """ State 21 """
                        # talk:42010100:Yes, I guessed as much.
                        TalkToPlayer(42010100, -1, -1)
                        DebugEvent('イエスを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            Goto('L9')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif not GetEventStatus(71310098) and GetEventStatus(1638) == 1 and GetEventStatus(1637) == 1:
                """ State 46 """
                DisplayOneLineHelp(-1)
                # talk:42010300:What, you again? Well, well!
                TalkToPlayer(42010300, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif (not GetEventStatus(71310098) and not GetEventStatus(1638) and GetEventStatus(1637)
                  == 1 and ComparePlayerStatus(12, 0, 1) == 1):
                """ State 48 """
                DisplayOneLineHelp(-1)
                # talk:42010400:What, you again? Well, well!
                TalkToPlayer(42010400, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            elif (not GetEventStatus(71310098) and not GetEventStatus(1638) and GetEventStatus(1637)
                  == 1 and ComparePlayerStatus(12, 0, 0) == 1):
                """ State 47 """
                DisplayOneLineHelp(-1)
                # talk:42010450:What, you again? Well, well!
                TalkToPlayer(42010450, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L10')
            """ State 69 """
            SetEventState(71310098, 1)
            continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1628) and not GetEventStatus(1627)
              and not GetEventStatus(1625)):
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

