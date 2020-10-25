# -*- coding: utf-8 -*-
def t102632_1():
    """ State 0,68 """
    SetEventState(71320074, 0)
    """ State 19 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1628) and GetDistanceToPlayer() <= 5:
            break
        elif (GetEventStatus(1627) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71320074) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 66 """
            # talk:42021800:What happened to you?
            TalkToPlayer(42021800, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71320074, 1)
            assert HasTalkEnded() == 1
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71320064) == 1 and GetEventStatus(11026112)
              == 1):
            """ State 39 """
            # talk:42020200:Oh, there you are again.
            TalkToPlayer(42020200, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 18 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 61 """
                    Label('L2')
                    # talk:42021700:Curses! How in the...
                    TalkToPlayer(42021700, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71320063)
                      and GetSelfHP() <= 90):
                    """ State 10 """
                    # talk:42021600:Curses, what's wrong with you!
                    TalkToPlayer(42021600, -1, -1)
                    SetEventState(71320063, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 62 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71320063, 1)
                        """ State 11 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1627) == 1:
                    """ State 12 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71320062) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71320061) == 1):
                    """ State 58 """
                    # talk:42021560:Stop that!
                    TalkToPlayer(42021560, -1, -1)
                    SetEventState(71320062, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 57 """
                        SetEventState(71320062, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71320061) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71320060) == 1):
                    """ State 56 """
                    # talk:42021550:Oi! Put an end to that!
                    TalkToPlayer(42021550, -1, -1)
                    SetEventState(71320061, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 55 """
                        SetEventState(71320061, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71320060) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 14 """
                    # talk:42021540:What?! Oww!
                    TalkToPlayer(42021540, -1, -1)
                    SetEventState(71320060, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71320060, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71320062) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 60 """
                SetEventState(71320066, 1)
                SetEventState(11026112, 1)
                """ State 26 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 6 """
                    while True:
                        # action:15000010:Purchase Item
                        AddTalkListData(1, 15000010, -1)
                        # action:15000350:Learn gesture
                        AddTalkListData(2, 15000350, 285)
                        ShowShopMessage(0, 0, 0)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 23 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 8 """
                                Label('L8')
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 12:
                                    pass
                                else:
                                    """ State 32 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 34 """
                            if (not GetEventStatus(71320072) and ComparePlayerStatus(12, 0, 0) == 1 and
                                not GetEventStatus(1600)):
                                """ State 36 """
                                # talk:42021050:Here, have you met that backwoods Shiva?
                                TalkToPlayer(42021050, -1, -1)
                                DisplayOneLineHelp(-1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif (not GetEventStatus(71320072) and ComparePlayerStatus(12, 0, 1) == 1
                                  and not GetEventStatus(1600)):
                                """ State 64 """
                                # talk:42021000:Here, have you met that backwoods Shiva?
                                TalkToPlayer(42021000, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif (not GetEventStatus(71320071) and ComparePlayerStatus(12, 0, 0) == 1
                                  and GetEventStatus(71510031) == 1):
                                """ State 63 """
                                # talk:42020950:Here, have you met that sunbathing Solaire?
                                TalkToPlayer(42020950, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 54 """
                                    Label('L9')
                                    SetEventState(71320071, 1)
                                    """ State 17 """
                                    Label('L10')
                                    if True:
                                        continue
                                    elif GetDistanceToPlayer() >= 3:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif (not GetEventStatus(71320071) and ComparePlayerStatus(12, 0, 1) == 1
                                  and GetEventStatus(71510031) == 1):
                                """ State 53 """
                                # talk:42020900:Here, have you met that sunbathing Solaire?
                                TalkToPlayer(42020900, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif (not GetEventStatus(71320070) and ComparePlayerStatus(12, 0, 0) == 1
                                  and not GetEventStatus(1202) and not GetEventStatus(1192)):
                                """ State 52 """
                                # talk:42020850:Oi, have you met Petrus, that self-proclaimed cleric?
                                TalkToPlayer(42020850, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 51 """
                                    Label('L11')
                                    SetEventState(71320070, 1)
                                    Goto('L10')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif (not GetEventStatus(71320070) and ComparePlayerStatus(12, 0, 1) == 1
                                  and not GetEventStatus(1202) and not GetEventStatus(1192)):
                                """ State 50 """
                                # talk:42020800:Oi, have you met Petrus, that self-proclaimed cleric?
                                TalkToPlayer(42020800, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    Goto('L11')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif (not GetEventStatus(71320069) and ComparePlayerStatus(12, 0, 0) == 1
                                  and GetEventStatus(3) == 1):
                                """ State 35 """
                                # talk:42020750:Oi, have you met Lautrec the Embraced?
                                TalkToPlayer(42020750, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 33 """
                                    Label('L12')
                                    SetEventState(71320069, 1)
                                    Goto('L10')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif (not GetEventStatus(71320069) and ComparePlayerStatus(12, 0, 1) == 1
                                  and GetEventStatus(3) == 1):
                                """ State 16 """
                                # talk:42020700:Oi, have you met Lautrec the Embraced?
                                TalkToPlayer(42020700, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    Goto('L12')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            else:
                                """ State 45 """
                                # talk:42021060:I'm done with the looting. I'm a humble merchant now!
                                TalkToPlayer(42021060, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    Goto('L10')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            """ State 65 """
                            SetEventState(71320072, 1)
                            Goto('L10')
                        elif GetTalkListEntryResult() == 1:
                            """ State 5,4 """
                            OpenRegularShop(1600, 1699)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 22 """
                                Label('L13')
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L8')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L13')
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L7')
                        elif GetTalkListEntryResult() == 2:
                            """ State 67 """
                            OpenItemAcquisitionMenu(3, 9012, 1)
                            AcquireGesture(12)
                            SetEventState(285, 0)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L13')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L13')
                            elif not IsMenuOpen(63):
                                """ State 72 """
                                # action:10010755:Gesture learned
                                OpenGenericDialog(7, 10010755, 1, 0, 2)
                                DebugEvent('ジェスチャーを学んだ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    """ State 70 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                        Goto('L2')
                                    else:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 69 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 71 """
                                    Label('L14')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L10')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L14')
                        """ State 7 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 28 """
                    if not DidYouDoSomethingInTheMenu(11):
                        """ State 3 """
                        DebugEvent('買わず立ち去る')
                        """ State 42 """
                        if GetEventStatus(71320068) == 1:
                            """ State 44 """
                            # talk:42020400:Come on, you can do better than that.
                            TalkToPlayer(42020400, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 49 """
                                SetEventState(71320068, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif not GetEventStatus(71320068):
                            """ State 1 """
                            # talk:42020300:What, nothing appeals to you?
                            TalkToPlayer(42020300, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 48 """
                                SetEventState(71320068, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                    elif DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 2 """
                        DebugEvent('買って立ち去る')
                        """ State 41 """
                        if GetEventStatus(71320067) == 1:
                            """ State 43 """
                            # talk:42020600:How is it? Fine stuff, eh?
                            TalkToPlayer(42020600, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 47 """
                                SetEventState(71320067, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif not GetEventStatus(71320067):
                            """ State 31 """
                            # talk:42020500:Right? Good stuff, eh?
                            TalkToPlayer(42020500, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 46 """
                                SetEventState(71320067, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                    else:
                        """ State 59 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(11026112) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71320064)
              == 1 and ComparePlayerStatus(12, 0, 0) == 1):
            """ State 38 """
            # talk:42020150:Oh, you again. Fancy that.
            TalkToPlayer(42020150, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 40 """
                Label('L15')
                SetEventState(71320065, 1)
                SetEventState(11026112, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71320064) == 1 and not GetEventStatus(11026112)
              and ComparePlayerStatus(12, 0, 1) == 1):
            """ State 15 """
            # talk:42020100:Oh, you again. Fancy that.
            TalkToPlayer(42020100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L15')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71320064) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 29 """
            # talk:42020000:Oh, we meet again. How many of you are there?
            TalkToPlayer(42020000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 30 """
                SetEventState(71320064, 1)
                SetEventState(11026112, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1627) and not GetEventStatus(1628)):
            """ State 20 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 21 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1628):
            """ State 27 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 24 """
        Label('L16')
        ClearTalkProgressData()
        """ State 25 """
        ForceEndTalk(0)
    """ State 37 """
    # talk:42021700:Curses! How in the...
    TalkToPlayer(42021700, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L16')

