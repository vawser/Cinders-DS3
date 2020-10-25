# -*- coding: utf-8 -*-
def t131646_1():
    """ State 0,3 """
    while True:
        DebugEvent('unknow')
        if (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
            and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
            <= 45 and GetDistanceToPlayer() <= 10):
            """ State 2 """
            # action:10010230:Pray to the sarcophagus Gravelord
            DisplayOneLineHelp(10010230)
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 10)):
            """ State 1 """
            DisplayOneLineHelp(-1)
        elif (GetOneLineHelpStatus() == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 10):
            """ State 10 """
            ForceCloseMenu()
            SetTalkTime(2.5)
            ClearTalkActionState()
            SetEventState(11315020, 1)
            DisplayOneLineHelp(-1)
            def ExitPause():
                RemoveMyAggro()
            if True:
                break
            elif GetDistanceToPlayer() >= 12:
                pass
            """ State 11 """
            Label('L0')
            SetEventState(11315020, 0)
            """ State 39 """
            ClearTalkDisabledState()
            DebugEvent('会話タイマークリア　誓約同じ')
    """ State 4 """
    while True:
        # action:15000263:Offer <?gdsparam@109?>
        AddTalkListData(3, 15000263, 856)
        # action:15000200:Enter Covenant
        AddTalkListData(2, 15000200, -1)
        ShowShopMessage(0, 0, 0)
        # action:15000005:Leave
        AddTalkListData(4, 15000005, -1)
        def ExitPause():
            ClearTalkListData()
        if not GetTalkListEntryResult():
            Goto('L0')
        elif GetTalkListEntryResult() == 4:
            Goto('L0')
        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
              == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
            break
        elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
            break
        elif GetTalkListEntryResult() == 2:
            """ State 21 """
            if ComparePlayerStatus(11, 0, 6) == 1:
                """ State 18 """
                # action:10010726:Already belong to this Covenant
                OpenGenericDialog(7, 10010726, 1, 0, 2)
                DebugEvent('誓約が同じ')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12
                    or IsAttackedBySomeone() == 1):
                    pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 19 """
                    Label('L1')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　誓約同じ')
                    """ State 7 """
                    Label('L2')
                    if True:
                        continue
                    elif GetDistanceToPlayer() >= 12:
                        Goto('L0')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L1')
            else:
                """ State 17 """
                # action:10010745:Join Covenant? (abandons former Covenant)
                OpenGenericDialog(8, 10010745, 3, 4, 2)
                ChangePlayerStats(31, 5, 6)
                RequestUnlockTrophy(14)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                    """ State 14 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L0')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 16 """
                    Label('L3')
                    DebugEvent('誓約を変更しない')
                    """ State 13 """
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　選択肢')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L3')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 15 """
                    DebugEvent('誓約を変更する')
                    BreakCovenantPledge()
                    ChangePlayerStats(11, 5, 6)
                    SetEventState(847, 1)
                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                        == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                        > 12 or IsAttackedBySomeone() == 1):
                        pass
                    elif not GetEventStatus(847) and (not GetEventStatus(11310592) or not GetEventStatus(11310580)):
                        """ State 35 """
                        SetEventState(11310592, 1)
                        SetEventState(11310580, 1)
                        if GetDistanceToPlayer() >= 12:
                            Goto('L0')
                        elif not IsMenuOpen(63):
                            """ State 36 """
                            Label('L4')
                            # action:10010729:Covenant established
                            OpenGenericDialog(7, 10010729, 1, 0, 2)
                            DebugEvent('誓約を交わしました')
                            DisplayOneLineHelp(-1)
                            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() >
                                120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone() == 1):
                                pass
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L1')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L1')
                    elif not GetEventStatus(847):
                        Goto('L4')
            """ State 20 """
            ForceCloseGenericDialog()
            ForceEndTalk(0)
            ClearTalkProgressData()
            Goto('L0')
        elif GetTalkListEntryResult() == 3:
            """ State 30 """
            if ComparePlayerStatus(20, 0, 100) == 1:
                """ State 32 """
                # action:10010793:Cannot offer more. Well done.
                OpenGenericDialog(7, 10010793, 1, 0, 2)
                DebugEvent('ない')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12
                    or IsAttackedBySomeone() == 1):
                    """ State 34 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L0')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 33 """
                    Label('L5')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　誓約同じ')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L5')
            # goods:109:Eye of Death
            elif not IsEquipmentIDObtained(3, 109):
                """ State 27 """
                # action:10010783:No <?gdsparam@109?>
                OpenGenericDialog(7, 10010783, 1, 0, 2)
                DebugEvent('ない')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12
                    or IsAttackedBySomeone() == 1):
                    pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 28 """
                    Label('L6')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　誓約同じ')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L6')
            else:
                """ State 25 """
                # action:10020203:Offer <?gdsparam@109?>?
                OpenGenericDialog(8, 10020203, 3, 4, 2)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                    pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 24 """
                    Label('L7')
                    DebugEvent('捧げない')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L7')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 26 """
                    DebugEvent('DECIDE_NUMBER')
                    # action:10020203:Offer <?gdsparam@109?>?
                    OpenGenericDialog(3, 10020203, 3, 4, 2)
                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                        == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                        > 12):
                        pass
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        Goto('L7')
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L7')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 23 """
                        DebugEvent('捧げる')
                        ChangePlayerStats(15, 0, 1)
                        # goods:109:Eye of Death
                        PlayerEquipmentQuantityChange(3, 109, -1)
                        SetEventState(847, 1)
                        if (DoesSelfHaveSpEffect(20, 10) == 1 and not GetEventStatus(11310593) and not
                            GetEventStatus(847)):
                            """ State 31 """
                            SetEventState(11310593, 1)
                            if GetDistanceToPlayer() >= 12:
                                Goto('L0')
                            elif not IsMenuOpen(63):
                                pass
                        elif DoesSelfHaveSpEffect(20, 80) == 1 and not GetEventStatus(847):
                            pass
                        elif DoesSelfHaveSpEffect(20, 30) == 1 and not GetEventStatus(847):
                            pass
                        elif DoesSelfHaveSpEffect(20, 10) == 1 and not GetEventStatus(847):
                            pass
                        elif not GetEventStatus(847):
                            """ State 37 """
                            # action:10010796:Covenant allegiance deepened.
                            OpenGenericDialog(7, 10010796, 1, 0, 2)
                            DebugEvent('ポイントアップ')
                            DisplayOneLineHelp(-1)
                            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() >
                                120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone() == 1):
                                Goto('L8')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L6')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L6')
                        """ State 38 """
                        # action:10010797:Covenant allegiance deepened. Rank gained.
                        OpenGenericDialog(7, 10010797, 1, 0, 2)
                        DebugEvent('ランクアップ')
                        DisplayOneLineHelp(-1)
                        if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                            IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                            GetDistanceToPlayer() > 12 or IsAttackedBySomeone() == 1):
                            Goto('L8')
                        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                            Goto('L6')
                        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                            Goto('L6')
                """ State 22 """
                ForceCloseGenericDialog()
                ForceEndTalk(0)
                ClearTalkProgressData()
                Goto('L0')
            """ State 29 """
            Label('L8')
            ForceCloseGenericDialog()
            ForceEndTalk(0)
            ClearTalkProgressData()
            Goto('L0')
    """ State 9 """
    ForceEndTalk(0)
    ClearTalkProgressData()
    CloseShopMessage()
    if IsPlayerMovingACertainDistance(1) == 1:
        """ State 6 """
        if GetDistanceToPlayer() >= 15:
            pass
        else:
            """ State 12 """
            Goto('L0')
    elif not IsPlayerMovingACertainDistance(1):
        pass
    """ State 5 """
    ForceEndTalk(0)
    Goto('L0')

