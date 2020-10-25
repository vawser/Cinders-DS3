# -*- coding: utf-8 -*-
def t140616_1():
    """ State 0,16 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if (CheckSelfDeath() == 1 and not GetEventStatus(1284) and not GetEventStatus(1272) and GetDistanceToPlayer()
            <= 5):
            break
        elif (GetEventStatus(1272) == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71400050)
              and not GetEventStatus(1284) and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 63 """
            DisplayOneLineHelp(-1)
            # talk:26001800:Why, youuuuu monster...!
            TalkToPlayer(26001800, -1, -1)
            SetEventState(71400050, 1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 10:
                pass
        elif (GetEventStatus(1286) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 52 """
            if GetEventStatus(753) == 1 and not GetEventStatus(11400591) and GetEventStatus(71400038) == 1:
                """ State 66 """
                # talk:26001000:Well!
                TalkToPlayer(26001000, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 15 """
                    Label('L1')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        """ State 94 """
                        Label('L2')
                        if not GetEventStatus(1272):
                            """ State 33 """
                            # talk:26001700:Hrg...rgggkt...
                            TalkToPlayer(26001700, -1, -1)
                            DisplayOneLineHelp(-1)
                            ForceCloseMenu()
                            if HasTalkEnded() == 1:
                                continue
                            elif GetDistanceToPlayer() >= 5:
                                Goto('L18')
                        else:
                            continue
                    elif (not GetEventStatus(71400024) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71400038) == 1 and GetSelfHP() <= 90 and not GetEventStatus(71400050)):
                        """ State 92 """
                        # talk:26001650:You...you would betray us?!
                        TalkToPlayer(26001650, -1, -1)
                        SetEventState(71400024, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            """ State 34 """
                            Label('L3')
                            ClearTalkProgressData()
                            def ExitPause():
                                RemoveMyAggro()
                            assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                            break
                        elif HasTalkEnded() == 1:
                            """ State 6 """
                            Label('L4')
                            SetEventState(71400024, 1)
                            """ State 8 """
                            Label('L5')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L18')
                    elif (not GetEventStatus(71400024) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(71400038) and GetSelfHP() <= 90 and not GetEventStatus(71400050)):
                        """ State 7 """
                        # talk:26001600:I knew it! I knew it!
                        TalkToPlayer(26001600, -1, -1)
                        SetEventState(71400024, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L18')
                    elif GetEventStatus(1282) == 1:
                        """ State 9 """
                        Label('L6')
                        ForceEndTalk(3)
                        Goto('L5')
                    elif GetEventStatus(1283) == 1:
                        Goto('L6')
                    elif GetEventStatus(1287) == 1:
                        Goto('L6')
                    elif (not GetEventStatus(71400023) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71400022) == 1):
                        """ State 91 """
                        # talk:26001530:Hagkt!
                        TalkToPlayer(26001530, -1, -1)
                        SetEventState(71400023, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 90 """
                            SetEventState(71400023, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L18')
                    elif (not GetEventStatus(71400022) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71400021) == 1):
                        """ State 89 """
                        # talk:26001520:Oog!
                        TalkToPlayer(26001520, -1, -1)
                        SetEventState(71400022, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 88 """
                            SetEventState(71400022, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L18')
                    elif (not GetEventStatus(71400021) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71400020) == 1):
                        """ State 87 """
                        # talk:26001510:Erggkt!
                        TalkToPlayer(26001510, -1, -1)
                        SetEventState(71400021, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 86 """
                            SetEventState(71400021, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L18')
                    elif (not GetEventStatus(71400020) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5):
                        """ State 11 """
                        # talk:26001500:Hrgkt!
                        TalkToPlayer(26001500, -1, -1)
                        SetEventState(71400020, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 10 """
                            SetEventState(71400020, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L18')
                    elif GetEventStatus(71400023) == 1:
                        Goto('L6')
                    else:
                        Goto('L6')
                elif HasTalkEnded() == 1:
                    """ State 67 """
                    SetEventState(71400039, 1)
                    SetEventState(11400591, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L18')
            elif GetEventStatus(753) == 1 and not GetEventStatus(71400038) and GetEventStatus(71400051) == 1:
                """ State 97 """
                # talk:26000903:Why not try this? I've no use for it any longer.
                TalkToPlayer(26000903, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L18')
            elif GetEventStatus(753) == 1 and not GetEventStatus(71400038):
                """ State 64 """
                # talk:26000900:Well!
                TalkToPlayer(26000900, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L18')
            elif (GetEventStatus(71400038) == 1 and not GetEventStatus(11406102) and IsEquipmentIDEquipped(2,
                  137) == 1):
                """ State 70 """
                # talk:26001200:Oh, hello...A pleasure to see you again.
                TalkToPlayer(26001200, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 71 """
                    SetEventState(71400041, 1)
                    SetEventState(11406102, 1)
                    """ State 23 """
                    Label('L7')
                    ClearTalkActionState()
                    SetEventState(365, 1)
                    if True:
                        """ State 3 """
                        while True:
                            # action:15000010:Purchase Item
                            AddTalkListData(1, 15000010, -1)
                            # action:15000190:Modify Equipment
                            AddTalkListData(2, 15000190, -1)
                            ShowShopMessage(0, 0, 0)
                            # action:15000000:Talk
                            AddTalkListData(3, 15000000, -1)
                            # action:15000005:Leave
                            AddTalkListData(4, 15000005, -1)
                            def ExitPause():
                                ClearTalkListData()
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 20 """
                                Label('L8')
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                CloseShopMessage()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    """ State 5 """
                                    Label('L9')
                                    if GetDistanceToPlayer() >= 12:
                                        pass
                                    else:
                                        """ State 27 """
                                        Continue('mainloop')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                            elif not GetTalkListEntryResult():
                                break
                            elif GetTalkListEntryResult() == 3:
                                """ State 29 """
                                if (GetEventStatus(71400049) == 1 and not GetEventStatus(71400048) and
                                    not GetEventStatus(11406103)):
                                    """ State 84 """
                                    # talk:26002110:Have you developed an interest in pyromancy?
                                    TalkToPlayer(26002110, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 85 """
                                        SetEventState(71400047, 1)
                                        SetEventState(11406103, 1)
                                        """ State 48 """
                                        Label('L10')
                                        # action:10020040:What is your decision?
                                        OpenGenericDialog(8, 10020040, 3, 4, 2)
                                        if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                            """ State 42 """
                                            Label('L11')
                                            ForceCloseGenericDialog()
                                            ForceEndTalk(0)
                                            ClearTalkProgressData()
                                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                                Goto('L2')
                                            else:
                                                Continue('mainloop')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            """ State 45 """
                                            ForceCloseGenericDialog()
                                            ForceEndTalk(0)
                                            ClearTalkProgressData()
                                            Continue('mainloop')
                                        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                            """ State 47 """
                                            Label('L12')
                                            DebugEvent('教わらない')
                                            SetEventState(71400049, 1)
                                            """ State 50 """
                                            # talk:26002300:...Well, fine. I will not force you.
                                            TalkToPlayer(26002300, -1, -1)
                                            DebugEvent('ノーを選んだあと')
                                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                Goto('L1')
                                            elif HasTalkEnded() == 1:
                                                """ State 44 """
                                                ClearTalkDisabledState()
                                                DebugEvent('会話タイマークリア　選択肢')
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 5):
                                                Goto('L18')
                                        elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                            Goto('L12')
                                        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                            """ State 46 """
                                            DebugEvent('教わる')
                                            SetEventState(71400048, 1)
                                            SetEventState(11400592, 1)
                                            if GetDistanceToPlayer() >= 5:
                                                Continue('mainloop')
                                            elif not IsMenuOpen(63):
                                                """ State 49 """
                                                # talk:26002200:You have served our Fair Lady well.
                                                TalkToPlayer(26002200, -1, -1)
                                                DebugEvent('イエスを選んだあと')
                                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                    Goto('L1')
                                                elif HasTalkEnded() == 1:
                                                    pass
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 5):
                                                    Goto('L18')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                elif (not GetEventStatus(71400048) and not GetEventStatus(71400049) and
                                      ComparePlayerStatus(5, 2, 10) == 1 and GetEventStatus(1286) ==
                                      1 and not GetEventStatus(11406103)):
                                    """ State 82 """
                                    # talk:26002100:Incidentally, do you have an interest in pyromancy?
                                    TalkToPlayer(26002100, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 83 """
                                        SetEventState(71400046, 1)
                                        SetEventState(11406103, 1)
                                        Goto('L10')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                elif (not GetEventStatus(71400042) and GetEventStatus(1286) == 1 and
                                      IsEquipmentIDEquipped(2, 137) == 1):
                                    """ State 74 """
                                    # talk:26001300:In all honesty, I am envious.
                                    TalkToPlayer(26001300, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 75 """
                                        SetEventState(71400042, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                elif GetEventStatus(71400036) == 1 and not GetEventStatus(1286):
                                    """ State 72 """
                                    # talk:26000800:...There is nothing to say to you...
                                    TalkToPlayer(26000800, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 73 """
                                        SetEventState(71400037, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                elif not GetEventStatus(71400036) and not GetEventStatus(1286):
                                    """ State 13 """
                                    # talk:26000700:There is no time for idle chat.
                                    TalkToPlayer(26000700, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 28 """
                                        SetEventState(71400036, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                elif not GetEventStatus(11406103) and GetEventStatus(71400044) == 1:
                                    """ State 80 """
                                    # talk:26002000:Have you heard of Lost Quelana?
                                    TalkToPlayer(26002000, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 81 """
                                        SetEventState(71400045, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                elif not GetEventStatus(11406103) and GetEventStatus(71400043) == 1:
                                    """ State 78 """
                                    # talk:26001900:Below us lies the ruins of the legendary city of Izalith.
                                    TalkToPlayer(26001900, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 79 """
                                        SetEventState(71400044, 1)
                                        SetEventState(11406103, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                elif GetEventStatus(1286) == 1:
                                    """ State 76 """
                                    # talk:26001400:Worse than Undead, we are diseased, and unwanted.
                                    TalkToPlayer(26001400, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 77 """
                                        SetEventState(71400043, 1)
                                        SetEventState(11406103, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L18')
                                """ State 14 """
                                if True:
                                    continue
                                elif GetDistanceToPlayer() >= 3:
                                    Continue('mainloop')
                            elif GetTalkListEntryResult() == 1:
                                """ State 2 """
                                if GetEventStatus(1286) == 1:
                                    """ State 93 """
                                    OpenRegularShop(3200, 3299)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        """ State 19 """
                                        Label('L13')
                                        CloseMenu()
                                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                            Goto('L2')
                                        elif IsPlayerMovingACertainDistance(1) == 1:
                                            Goto('L9')
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
                                elif not GetEventStatus(1286):
                                    """ State 1 """
                                    OpenRegularShop(3200, 3209)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L13')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 3):
                                        Goto('L13')
                                    elif not IsMenuOpen(11):
                                        continue
                            elif GetTalkListEntryResult() == 2:
                                """ State 96 """
                                CollectJustPyromancyFlame()
                                CombineMenuFlagAndEventFlag(365, 331)
                                OpenEquipmentChangeOfPurposeShop()
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 3):
                                    Goto('L13')
                                elif not IsMenuOpen(13):
                                    continue
                            elif GetTalkListEntryResult() == 4:
                                break
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L8')
                            """ State 4 """
                            ForceEndTalk(0)
                            Continue('mainloop')
                        """ State 25 """
                        continue
                    elif GetDistanceToPlayer() >= 3:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L18')
            else:
                """ State 68 """
                # talk:26001100:Oh, hello.
                TalkToPlayer(26001100, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 69 """
                    SetEventState(71400040, 1)
                    SetEventState(11406102, 1)
                    Goto('L7')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L18')
            """ State 65 """
            SetEventState(71400038, 1)
            SetEventState(11400591, 1)
            SetEventState(11406102, 1)
            continue
        elif (GetEventStatus(1281) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 58 """
            if GetEventStatus(71400030) == 1 and not GetEventStatus(71400012):
                """ State 26 """
                # talk:26000100:What is it? Go along, and meet Our Fair Lady.
                TalkToPlayer(26000100, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif IsEquipmentIDEquipped(2, 137) == 1 and GetEventStatus(71400000) == 1:
                """ State 55 """
                # talk:26000300:...You, you speak the tongue of the Fair Lady?
                TalkToPlayer(26000300, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 56 """
                    SetEventState(71400032, 1)
                    Goto('L7')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71400034) == 1:
                """ State 61 """
                # talk:26000600:Are you in need already?
                TalkToPlayer(26000600, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 62 """
                    SetEventState(71400035, 1)
                    SetEventState(71400034, 0)
                    SetEventState(71400033, 0)
                    Goto('L7')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71400033) == 1:
                """ State 59 """
                # talk:26000500:You again...
                TalkToPlayer(26000500, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 60 """
                    SetEventState(71400034, 1)
                    Goto('L7')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            else:
                """ State 53 """
                # talk:26000400:Are you prepared to dedicate yourself to Our Fair Lady?
                TalkToPlayer(26000400, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 54 """
                    SetEventState(71400033, 1)
                    Goto('L7')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
        elif (GetEventStatus(1280) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 51 """
            if not GetEventStatus(71400028) and not GetEventStatus(71400029) and not GetEventStatus(11406102):
                """ State 31 """
                # talk:26000000:...Oh dear...What have we here? Are you a new servant?
                TalkToPlayer(26000000, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 32 """
                    Label('L14')
                    SetEventState(71400027, 1)
                    """ State 39 """
                    # action:10020041:How do you answer?
                    OpenGenericDialog(8, 10020041, 3, 4, 2)
                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                        Goto('L11')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        """ State 36 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 38 """
                        Label('L15')
                        DebugEvent('NO')
                        SetEventState(71400029, 1)
                        SetEventState(11406102, 1)
                        """ State 41 """
                        # talk:26000040:Then you shall not pass. Away with you!
                        TalkToPlayer(26000040, -1, -1)
                        DebugEvent('ノーを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 35 """
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　選択肢')
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L18')
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L15')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 37 """
                        DebugEvent('YES')
                        SetEventState(71400028, 1)
                        if GetEventStatus(753) == 1:
                            """ State 95 """
                            Label('L16')
                            # talk:26000021:Bah, no matter. Go along and have audience with Our Fair Lady.
                            TalkToPlayer(26000021, -1, -1)
                            DebugEvent('イエスを選んだあと')
                            SetEventState(71400051, 1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L18')
                        else:
                            """ State 40 """
                            Label('L17')
                            # talk:26000020:...Hmph. But you have no eggs?
                            TalkToPlayer(26000020, -1, -1)
                            DebugEvent('イエスを選んだあと')
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L18')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L18')
            elif GetEventStatus(71400029) == 1 and GetEventStatus(11406102) == 1 and not GetEventStatus(71400028):
                """ State 12 """
                # talk:26000200:The nerve of you! Be gone, be gone at once!
                TalkToPlayer(26000200, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L18')
            elif GetEventStatus(71400028) == 1 and not GetEventStatus(11400593) and GetEventStatus(753) == 1:
                Goto('L16')
            elif GetEventStatus(71400028) == 1 and not GetEventStatus(11400593):
                Goto('L17')
            elif not GetEventStatus(71400028) and GetEventStatus(71400029) == 1 and not GetEventStatus(11406102):
                """ State 57 """
                # talk:26000000:...Oh dear...What have we here? Are you a new servant?
                TalkToPlayer(26000000, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    Goto('L14')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L18')
            """ State 43 """
            SetEventState(11400593, 1)
            SetEventState(71400030, 1)
            continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1282) and not GetEventStatus(1283)
              and not GetEventStatus(1284) and not GetEventStatus(1287) and not GetEventStatus(11405001)):
            """ State 17 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 18 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1284):
            """ State 24 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 21 """
        Label('L18')
        ClearTalkProgressData()
        """ State 22 """
        ForceEndTalk(0)
    """ State 30 """
    # talk:26001700:Hrg...rgggkt...
    TalkToPlayer(26001700, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L18')

