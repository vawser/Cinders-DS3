# -*- coding: utf-8 -*-
def t151612_1():
    """ State 0,14 """
    while True:
        DebugEvent('待機')
        SetUpdateDistance(25)
        if (not GetEventStatus(11510593) and not GetEventStatus(71510036) and not GetEventStatus(11516102)
            and GetDistanceToPlayer() <= 12 and not GetEventStatus(1241) and HasDisableTalkPeriodElapsed()
            == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
            and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 180 and GetDistanceToPlayer()
            <= 12 and not GetEventStatus(1242)):
            """ State 27 """
            # talk:22000300:Halt!
            TalkToPlayer(22000300, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                pass
            elif HasTalkEnded() == 1:
                """ State 28 """
                SetEventState(71510035, 1)
                SetEventState(11510593, 1)
                SetEventState(11516102, 1)
                continue
        elif GetEventStatus(11515350) == 1:
            """ State 51 """
            ForceCloseMenu()
            SetTalkTime(2.5)
            if (GetEventStatus(11515350) == 1 and not GetEventStatus(71510037) and GetDistanceToPlayer()
                <= 12 and GetEventStatus(1240) == 1 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
                and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
                <= 180 and GetDistanceToPlayer() <= 12):
                """ State 21 """
                # talk:22000900:O Disciple of the Dark Sun.
                TalkToPlayer(22000900, -1, -1)
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                    Goto('L10')
                elif HasTalkEnded() == 1:
                    """ State 22 """
                    SetEventState(71510036, 1)
                    break
            elif (GetEventStatus(11515350) == 1 and not GetEventStatus(71510039) and GetDistanceToPlayer()
                  <= 12 and GetEventStatus(71510037) == 1 and GetEventStatus(1240) == 1 and HasDisableTalkPeriodElapsed()
                  == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
                  and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 180 and GetDistanceToPlayer()
                  <= 12):
                """ State 12 """
                # talk:22000500:Welcome back, Blade of the Darkmoon.
                TalkToPlayer(22000500, -1, -1)
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                    Goto('L10')
                elif HasTalkEnded() == 1:
                    """ State 30 """
                    SetEventState(71510039, 1)
                    """ State 19 """
                    Label('L0')
                    ClearTalkActionState()
                    if True:
                        """ State 9 """
                        Label('L1')
                        # action:15000264:Offer <?gdsparam@374?>
                        AddTalkListData(2, 15000264, 858)
                        ShowShopMessage(0, 0, 0)
                        # action:15000200:Enter Covenant
                        AddTalkListData(3, 15000200, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 16 """
                            Label('L2')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if IsPlayerMovingACertainDistance(1) == 1:
                                """ State 11 """
                                if GetDistanceToPlayer() >= 17:
                                    pass
                                else:
                                    """ State 23 """
                                    SetEventState(71510041, 1)
                                    SetEventState(71510042, 0)
                                    Goto('L9')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                            """ State 10 """
                            ForceEndTalk(0)
                        elif not GetTalkListEntryResult():
                            pass
                        elif GetTalkListEntryResult() == 4:
                            pass
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L2')
                        elif GetTalkListEntryResult() == 3:
                            break
                        elif GetTalkListEntryResult() == 2:
                            """ State 41 """
                            if ComparePlayerStatus(22, 0, 100) == 1:
                                """ State 44 """
                                # action:10010794:Cannot offer more. Well done.
                                OpenGenericDialog(7, 10010794, 1, 0, 2)
                                DebugEvent('ない')
                                DisplayOneLineHelp(-1)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone() == 1):
                                    """ State 46 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Goto('L9')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 45 """
                                    Label('L3')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    """ State 13 """
                                    Label('L4')
                                    if True:
                                        Goto('L1')
                                    elif GetDistanceToPlayer() >= 18:
                                        Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L3')
                            # goods:374:Souvenir of Reprisal
                            elif not IsEquipmentIDObtained(3, 374):
                                """ State 38 """
                                # action:10010784:No <?gdsparam@374?>
                                OpenGenericDialog(7, 10010784, 1, 0, 2)
                                DebugEvent('ない')
                                DisplayOneLineHelp(-1)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone() == 1):
                                    pass
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 39 """
                                    Label('L5')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L4')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L5')
                            else:
                                """ State 36 """
                                # action:10020204:Offer <?gdsparam@374?>?
                                OpenGenericDialog(8, 10020204, 3, 4, 2)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 15):
                                    pass
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 35 """
                                    Label('L6')
                                    DebugEvent('捧げない')
                                    Goto('L4')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L6')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    """ State 37 """
                                    DebugEvent('DECIDE_NUMBER')
                                    # action:10020204:Offer <?gdsparam@374?>?
                                    OpenGenericDialog(3, 10020204, 3, 4, 2)
                                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                        or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                        > 120 or GetDistanceToPlayer() > 15):
                                        pass
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        Goto('L6')
                                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                        Goto('L6')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        """ State 34 """
                                        DebugEvent('捧げる')
                                        ChangePlayerStats(15, 0, 1)
                                        # goods:374:Souvenir of Reprisal
                                        PlayerEquipmentQuantityChange(3, 374, -1)
                                        SetEventState(844, 1)
                                        if (DoesSelfHaveSpEffect(22, 10) == 1 and not GetEventStatus(844)
                                            and (not GetEventStatus(11510597) or not GetEventStatus(11510581))):
                                            """ State 43 """
                                            SetEventState(11510597, 1)
                                            SetEventState(11510581, 1)
                                            if GetDistanceToPlayer() >= 15:
                                                Goto('L9')
                                            elif not IsMenuOpen(63):
                                                """ State 49 """
                                                Label('L7')
                                                # action:10010797:Covenant allegiance deepened. Rank gained.
                                                OpenGenericDialog(7, 10010797, 1, 0, 2)
                                                DebugEvent('ランクアップ')
                                                DisplayOneLineHelp(-1)
                                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                    > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                    == 1):
                                                    Goto('L8')
                                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                    Goto('L5')
                                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                    Goto('L5')
                                        elif DoesSelfHaveSpEffect(22, 80) == 1 and not GetEventStatus(844):
                                            Goto('L7')
                                        elif DoesSelfHaveSpEffect(22, 30) == 1 and not GetEventStatus(844):
                                            Goto('L7')
                                        elif DoesSelfHaveSpEffect(22, 10) == 1 and not GetEventStatus(844):
                                            Goto('L7')
                                        elif not GetEventStatus(844):
                                            """ State 48 """
                                            # action:10010796:Covenant allegiance deepened.
                                            OpenGenericDialog(7, 10010796, 1, 0, 2)
                                            DebugEvent('ポイントアップ')
                                            DisplayOneLineHelp(-1)
                                            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                == 1):
                                                Goto('L8')
                                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                Goto('L5')
                                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                Goto('L5')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 15):
                                            pass
                                """ State 33 """
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                Goto('L9')
                            """ State 40 """
                            Label('L8')
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                    elif GetDistanceToPlayer() >= 18:
                        pass
            elif (GetEventStatus(11515350) == 1 and GetEventStatus(71510039) == 1 and GetDistanceToPlayer()
                  <= 12 and GetEventStatus(71510037) == 1 and GetEventStatus(1240) == 1 and HasDisableTalkPeriodElapsed()
                  == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
                  and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 180 and GetDistanceToPlayer()
                  <= 12):
                """ State 31 """
                # talk:22000600:Very well, Blade of the Darkmoon.
                TalkToPlayer(22000600, -1, -1)
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                    Goto('L10')
                elif HasTalkEnded() == 1:
                    """ State 32 """
                    SetEventState(71510039, 0)
                    Goto('L0')
            """ State 20 """
            Label('L9')
            SetEventState(11515350, 0)
            continue
        """ State 17 """
        Label('L10')
        ClearTalkProgressData()
        """ State 18 """
        ForceEndTalk(0)
    """ State 24 """
    if ComparePlayerStatus(11, 0, 8) == 1:
        """ State 6 """
        # action:10010726:Already belong to this Covenant
        OpenGenericDialog(7, 10010726, 1, 0, 2)
        DebugEvent('誓約が同じ')
        DisplayOneLineHelp(-1)
        if CheckSelfDeath() == 1:
            pass
        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
              == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
            """ State 8 """
            Label('L11')
            ForceCloseGenericDialog()
            ForceEndTalk(0)
            ClearTalkProgressData()
            Goto('L9')
        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
            """ State 7 """
            Label('L12')
            ClearTalkDisabledState()
            DebugEvent('会話タイマークリア　誓約同じ')
            Goto('L4')
        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
            Goto('L12')
    elif IsMultiplayerInProgress() == 1:
        """ State 50 """
        Label('L13')
        # action:10010747:Cannot enter covenant with phantom present.
        OpenGenericDialog(7, 10010747, 1, 0, 2)
        DebugEvent('マルチプレイ中')
        DisplayOneLineHelp(-1)
        if CheckSelfDeath() == 1:
            pass
        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
              == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
            Goto('L11')
        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
            Goto('L12')
        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
            Goto('L12')
    else:
        """ State 5 """
        # action:10010745:Join Covenant? (abandons former Covenant)
        OpenGenericDialog(8, 10010745, 3, 4, 2)
        ChangePlayerStats(31, 5, 8)
        RequestUnlockTrophy(9)
        if IsMultiplayerInProgress() == 1:
            Goto('L13')
        elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
            pass
        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
            """ State 3 """
            BreakCovenantPledge()
            DebugEvent('誓約を変更する')
            ChangePlayerStats(11, 5, 8)
            SetEventState(71510037, 1)
            SetEventState(844, 1)
            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                Goto('L11')
            elif not GetEventStatus(844) and (not GetEventStatus(11510596) or not GetEventStatus(11510580)):
                """ State 42 """
                SetEventState(11510596, 1)
                SetEventState(11510580, 1)
                if GetDistanceToPlayer() >= 15:
                    Goto('L9')
                elif not IsMenuOpen(63):
                    """ State 47 """
                    Label('L14')
                    # action:10010729:Covenant established
                    OpenGenericDialog(7, 10010729, 1, 0, 2)
                    DebugEvent('誓約を交わしました')
                    DisplayOneLineHelp(-1)
                    if CheckSelfDeath() == 1:
                        pass
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 15):
                        Goto('L11')
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 25 """
                        Label('L15')
                        # talk:22001000:Very well. Now thou art a Blade of the Darkmoon.
                        TalkToPlayer(22001000, -1, -1)
                        DebugEvent('誓約したあと')
                        if HasTalkEnded() == 1:
                            """ State 1 """
                            Label('L16')
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　選択肢')
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L10')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        Goto('L15')
            elif not GetEventStatus(844):
                Goto('L14')
        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
              == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
            """ State 2 """
            ForceCloseGenericDialog()
            ForceEndTalk(0)
            ClearTalkProgressData()
            Goto('L9')
        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
            """ State 4 """
            Label('L17')
            DebugEvent('誓約を変更しない')
            SetEventState(71510038, 1)
            """ State 26 """
            # talk:22001100:Very well.
            TalkToPlayer(22001100, -1, -1)
            DebugEvent('誓約しなかったあと')
            if HasTalkEnded() == 1:
                Goto('L16')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                Goto('L10')
        elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
            Goto('L17')
    """ State 29 """
    ForceCloseGenericDialog()
    ForceEndTalk(0)
    ClearTalkProgressData()
    Goto('L9')

