# -*- coding: utf-8 -*-
def t101648_1():
    """ State 0,3 """
    while True:
        DebugEvent('unknow')
        if (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
            and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
            <= 45 and GetDistanceToPlayer() <= 3 and (GetEventStatus(853) == 1 or GetStatus(6) + (GetStatus(13)
            + GetStatus(13) + GetStatus(13) + GetStatus(13) + GetStatus(13)) > 25)):
            """ State 2 """
            # action:10010220:Pray at the Altar of Sunlight
            DisplayOneLineHelp(10010220)
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 3)):
            """ State 1 """
            DisplayOneLineHelp(-1)
        elif (GetOneLineHelpStatus() == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3):
            """ State 10 """
            ForceCloseMenu()
            SetTalkTime(2.5)
            ClearTalkActionState()
            SetEventState(11015030, 1)
            DisplayOneLineHelp(-1)
            if True:
                break
            elif GetDistanceToPlayer() >= 5:
                pass
            """ State 11 """
            Label('L0')
            SetEventState(11015030, 0)
            """ State 47 """
            ClearTalkDisabledState()
            DebugEvent('会話タイマークリア　誓約同じ')
    """ State 4 """
    while True:
        # action:15000360:Offer soul of Great Lord
        AddTalkListData(1, 15000360, 715)
        # action:15000260:Offer <?gdsparam@375?>
        AddTalkListData(3, 15000260, 853)
        # action:15000200:Enter Covenant
        AddTalkListData(2, 15000200, -1)
        # action:15000350:Learn gesture
        AddTalkListData(5, 15000350, 286)
        ShowShopMessage(0, 0, 0)
        # action:15000005:Leave
        AddTalkListData(4, 15000005, -1)
        SetEventState(71100095, 1)
        def ExitPause():
            ClearTalkListData()
        if not GetTalkListEntryResult():
            Goto('L0')
        elif GetTalkListEntryResult() == 4:
            Goto('L0')
        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
              == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
            break
        elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
            break
        elif GetTalkListEntryResult() == 2:
            """ State 21 """
            if ComparePlayerStatus(11, 0, 3) == 1:
                """ State 18 """
                # action:10010726:Already belong to this Covenant
                OpenGenericDialog(7, 10010726, 1, 0, 2)
                DebugEvent('誓約が同じ')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5
                    or IsAttackedBySomeone() == 1):
                    pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 19 """
                    Label('L1')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　誓約同じ')
                    """ State 7 """
                    Label('L2')
                    ClearTalkActionState()
                    if True:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L0')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L1')
            elif IsMultiplayerInProgress() == 1:
                """ State 45 """
                Label('L3')
                # action:10010747:Cannot enter covenant with phantom present.
                OpenGenericDialog(7, 10010747, 1, 0, 2)
                DebugEvent('マルチプレイ中')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5
                    or IsAttackedBySomeone() == 1):
                    pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    Goto('L1')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L1')
            else:
                """ State 17 """
                # action:10010745:Join Covenant? (abandons former Covenant)
                OpenGenericDialog(8, 10010745, 3, 4, 2)
                ChangePlayerStats(31, 5, 3)
                RequestUnlockTrophy(10)
                if IsMultiplayerInProgress() == 1:
                    Goto('L3')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 14 """
                    Label('L4')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L0')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 16 """
                    Label('L5')
                    DebugEvent('誓約を変更しない')
                    """ State 13 """
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　選択肢')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L5')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 15 """
                    DebugEvent('誓約を変更する')
                    BreakCovenantPledge()
                    ChangePlayerStats(11, 5, 3)
                    SetEventState(844, 1)
                    if not GetEventStatus(11010594) and not GetEventStatus(844):
                        """ State 31 """
                        SetEventState(11010594, 1)
                        if GetDistanceToPlayer() >= 5:
                            Goto('L0')
                        elif not IsMenuOpen(63):
                            """ State 42 """
                            Label('L6')
                            # action:10010729:Covenant established
                            OpenGenericDialog(7, 10010729, 1, 0, 2)
                            DebugEvent('誓約が変更されました')
                            DisplayOneLineHelp(-1)
                            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() >
                                120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                pass
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L1')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L1')
                    elif not GetEventStatus(844):
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5 or IsAttackedBySomeone() == 1):
                        Goto('L4')
            """ State 20 """
            ForceCloseGenericDialog()
            ForceEndTalk(0)
            ClearTalkProgressData()
            Goto('L0')
        elif GetTalkListEntryResult() == 3:
            """ State 30 """
            if ComparePlayerStatus(17, 0, 100) == 1:
                """ State 33 """
                # action:10010790:Cannot offer more. Well done.
                OpenGenericDialog(7, 10010790, 1, 0, 2)
                DebugEvent('ない')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5
                    or IsAttackedBySomeone() == 1):
                    """ State 35 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L0')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 34 """
                    Label('L7')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　誓約同じ')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L7')
            # goods:375:Sunlight Medal
            elif not IsEquipmentIDObtained(3, 375):
                """ State 27 """
                # action:10010780:No <?gdsparam@375?>
                OpenGenericDialog(7, 10010780, 1, 0, 2)
                DebugEvent('ない')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5
                    or IsAttackedBySomeone() == 1):
                    """ State 29 """
                    Label('L8')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L0')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 28 """
                    Label('L9')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　誓約同じ')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L9')
                """ State 5 """
                Label('L10')
                ForceEndTalk(0)
                Goto('L0')
            else:
                """ State 25 """
                # action:10020200:Offer <?gdsparam@375?>
                OpenGenericDialog(8, 10020200, 3, 4, 2)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                    pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 24 """
                    Label('L11')
                    DebugEvent('捧げない')
                    Goto('L2')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L11')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 26 """
                    # action:10020200:Offer <?gdsparam@375?>
                    OpenGenericDialog(3, 10020200, 3, 4, 2)
                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                        == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                        > 5):
                        pass
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        Goto('L11')
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L11')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 23 """
                        DebugEvent('捧げる')
                        ChangePlayerStats(15, 0, 1)
                        # goods:375:Sunlight Medal
                        PlayerEquipmentQuantityChange(3, 375, -1)
                        SetEventState(844, 1)
                        if (DoesSelfHaveSpEffect(17, 10) == 1 and not GetEventStatus(11010595) and not
                            GetEventStatus(844)):
                            """ State 32 """
                            SetEventState(11010595, 1)
                            if GetDistanceToPlayer() >= 5:
                                Goto('L0')
                            elif not IsMenuOpen(63):
                                """ State 44 """
                                Label('L12')
                                # action:10010797:Covenant allegiance deepened. Rank gained.
                                OpenGenericDialog(7, 10010797, 1, 0, 2)
                                DebugEvent('ランクアップ')
                                DisplayOneLineHelp(-1)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                    Goto('L8')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L9')
                        elif DoesSelfHaveSpEffect(17, 80) == 1 and not GetEventStatus(844):
                            Goto('L12')
                        elif DoesSelfHaveSpEffect(17, 30) == 1 and not GetEventStatus(844):
                            Goto('L12')
                        elif DoesSelfHaveSpEffect(17, 10) == 1 and not GetEventStatus(844):
                            Goto('L12')
                        elif not GetEventStatus(844):
                            """ State 43 """
                            # action:10010796:Covenant allegiance deepened.
                            OpenGenericDialog(7, 10010796, 1, 0, 2)
                            DebugEvent('ポイントアップ')
                            DisplayOneLineHelp(-1)
                            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() >
                                120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                Goto('L8')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L9')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L9')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                """ State 22 """
                ForceCloseGenericDialog()
                ForceEndTalk(0)
                ClearTalkProgressData()
                Goto('L0')
        elif GetTalkListEntryResult() == 1:
            """ State 36,41 """
            # action:10020300:Offer <?gdsparam@702?>?
            OpenGenericDialog(8, 10020300, 3, 4, 2)
            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                """ State 40 """
                Label('L13')
                DebugEvent('捧げない')
                Goto('L2')
            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                Goto('L13')
            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                """ State 39 """
                DebugEvent('捧げる')
                # goods:702:Soul of Gwyn, Lord of Cinder
                PlayerEquipmentQuantityChange(3, 702, -1)
                SetEventState(844, 1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                    pass
                elif not GetEventStatus(844):
                    """ State 48 """
                    SetEventState(11010598, 1)
                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                        == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                        > 5):
                        pass
                    elif not IsMenuOpen(63):
                        Goto('L2')
            """ State 38 """
            ForceCloseGenericDialog()
            ForceEndTalk(0)
            ClearTalkProgressData()
            Goto('L0')
        elif GetTalkListEntryResult() == 5:
            """ State 37 """
            OpenItemAcquisitionMenu(3, 9007, 1)
            AcquireGesture(7)
            SetEventState(286, 0)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 8 """
                Label('L14')
                CloseMenu()
                if IsPlayerMovingACertainDistance(1) == 1:
                    """ State 6 """
                    Label('L15')
                    if GetDistanceToPlayer() >= 12:
                        Goto('L10')
                    else:
                        """ State 12 """
                        Goto('L0')
                elif not IsPlayerMovingACertainDistance(1):
                    Goto('L10')
                else:
                    Goto('L0')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 3):
                Goto('L14')
            elif not IsMenuOpen(63):
                """ State 46 """
                # action:10010755:Gesture learned
                OpenGenericDialog(7, 10010755, 1, 0, 2)
                DebugEvent('ジェスチャーを学んだ')
                DisplayOneLineHelp(-1)
                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                    == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5
                    or IsAttackedBySomeone() == 1):
                    Goto('L8')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    Goto('L9')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L9')
    """ State 9 """
    ForceEndTalk(0)
    ClearTalkProgressData()
    CloseShopMessage()
    if IsPlayerMovingACertainDistance(1) == 1:
        Goto('L15')
    elif not IsPlayerMovingACertainDistance(1):
        Goto('L10')

