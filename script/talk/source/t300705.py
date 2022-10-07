# -*- coding: utf-8 -*-
def t300705_1():
    """ State 0,10 """
    Label('L0')
    while True:
        DebugEvent('最初')
        if CompareBonfireLevel(1, 0) == 1 and CompareBonfireState(1) == 1:
            break
        elif (CompareBonfireState(1) == 1 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and CompareBonfireState(1) == 1 and CheckActionButtonArea(6100)):
            """ State 9 """
            DebugEvent('人間性を捧げた')
            OfferHumanity()
            RequestUnlockTrophy(26)
            """ State 8 """
            ClearTalkDisabledState()
            DebugEvent('会話タイマークリア　最初')
    """ State 1 """
    while Loop('loop1'):
        DebugEvent('待機')
        SetUpdateDistance(10)
        if CompareBonfireLevel(0, 0) == 1:
            Goto('L0')
        elif CheckActionButtonArea(6101) and CompareBonfireState(1) == 1:
            """ State 31 """
            StartBonfireAnimLoop()
            ClearTalkActionState()
            DisplayOneLineHelp(-1)
            ClearPlayerDamageInfo()
            SetEventState(760, 0)
            if CompareBonfireState(0) == 1:
                """ State 6 """
                Label('L1')
                ForceEndTalk(0)
                ClearTalkProgressData()
                CloseShopMessage()
                DebugEvent('リスト強制開放')
                EndBonfireKindleAnimLoop()
            elif GetDistanceToPlayer() >= 8 or GetPlayerYDistance() > 1:
                Goto('L1')
            elif CompareBonfireState(1) == 1 and GetEventStatus(4084):
                """ State 4 """
                while True:
                    ShowShopMessage(0, 0, 0)
                    DebugEvent('篝火リスト')
                    RequestSave(0)
                    # action:15000005:Leave
                    AddTalkListData(9, 15000005, -1)
                    # action:15000100:Level Up
                    AddTalkListData(1, 15000100, -1)
                    #AddTalkListData(2, 15000111, -1)
                    #AddTalkListData(3, 15000112, -1)
                    AddTalkListData(4, 15000120, -1)
                    # action:15000130:Attune Spell
                    AddTalkListData(5, 15000130, -1)
                    # action:15000220:Organize Storage Box
                    AddTalkListData(10, 15000220, -1)
                    # action:15000150:Travel
                    AddTalkListData(12, 15000150, -1)
                    AddTalkListData(8, 15000170, -1)
                    AddTalkListData(11, 15000270, -1)
                    def ExitPause():
                        ClearTalkListData()
                    if CompareBonfireState(0) == 1 or IsPlayerDead() == 1:
                        Goto('L1')
                    elif HasPlayerBeenAttacked() == 1:
                        Goto('L1')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer()
                          > 8):
                        Goto('L1')
                    elif not GetTalkListEntryResult():
                        break
                    elif GetTalkListEntryResult() == 1:
                        """ State 5 """
                        OpenSoul()
                        DebugEvent('ソウルショップ')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            """ State 34 """
                            Label('L2')
                            CloseMenu()
                            DebugEvent('メッセージボックス閉じる')
                            EndBonfireKindleAnimLoop()
                            Goto('L1')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 1):
                            Goto('L2')
                        elif not IsMenuOpen(23):
                            pass
                    elif GetTalkListEntryResult() == 2:
                        """ State 15 """
                        OpenEnhanceShop(0)
                        DebugEvent('武器強化')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 1):
                            Goto('L2')
                        elif not IsMenuOpen(13):
                            pass
                    elif GetTalkListEntryResult() == 4:
                        """ State 14 """
                        OpenRepairShop()
                        DebugEvent('修理ショップ')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 1):
                            Goto('L2')
                        elif not IsMenuOpen(12):
                            pass
                    elif GetTalkListEntryResult() == 12:
                        """ State 16 """
                        Label('L3')
                        StartWarpMenuInit()
                        DebugEvent('ワープメニューを開く')
                        if WasWarpMenuDestinationSelected() == 1:
                            """ State 48 """
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            DebugEvent('リスト強制開放')
                            Goto('L15')
                        elif CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 1):
                            Goto('L2')
                        elif not IsMenuOpen(36):
                            pass
                    elif GetTalkListEntryResult() == 7 and GetEventStatus(706) == 1:
                        Goto('L3')
                    elif GetTalkListEntryResult() == 7 and not GetEventStatus(706):
                        """ State 52 """
                        # action:10010712:This bonfire is cut off from the others. Cannot warp.
                        OpenGenericDialog(7, 10010712, 1, 0, 2)
                        DebugEvent('ワープできない')
                        DisplayOneLineHelp(-1)
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                              == 1):
                            """ State 44 """
                            Label('L4')
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8):
                            Goto('L4')
                        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                            """ State 45 """
                            Label('L5')
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア')
                            ClearTalkActionState()
                            ForceCloseGenericDialog()
                        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                            Goto('L5')
                    elif GetTalkListEntryResult() == 8:
                        """ State 17 """
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif GetPlayerChrType() == 8:
                            """ State 50 """
                            # action:10010725:Cannot kindle while Hollowed
                            OpenGenericDialog(7, 10010725, 1, 0, 2)
                            DebugEvent('亡者のときは注ぎ火できない')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                pass
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 28 """
                                Label('L6')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア')
                                ClearTalkActionState()
                                ForceCloseGenericDialog()
                                continue
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L6')
                            """ State 27 """
                            Label('L7')
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                        elif GetStatus(10) <= 1:
                            """ State 25 """
                            # action:10010722:No humanity
                            OpenGenericDialog(7, 10010722, 1, 0, 2)
                            DebugEvent('人間性がない　リストから')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                Goto('L7')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L7')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L6')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L6')
                        elif CompareBonfireLevel(0, 4) == 1:
                            """ State 24 """
                            # action:10010723:Cannot kindle any further
                            OpenGenericDialog(7, 10010723, 1, 0, 2)
                            DebugEvent('これ以上捧げられない　解放後')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                """ State 30 """
                                Label('L8')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L8')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 29 """
                                Label('L9')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア')
                                ClearTalkActionState()
                                ForceCloseGenericDialog()
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L9')
                        elif CompareBonfireLevel(0, 2) == 1 and not GetEventStatus(257):
                            """ State 49 """
                            # action:10010724:Cannot kindle further without the secret rite
                            OpenGenericDialog(7, 10010724, 1, 0, 2)
                            DebugEvent('これ以上捧げられない　解放前')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                Goto('L8')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L8')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L9')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L9')
                        else:
                            """ State 19 """
                            # action:10010741:Offer humanity and kindle flame?
                            OpenGenericDialog(8, 10010741, 3, 4, 2)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                """ State 22 """
                                Label('L10')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L10')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                pass
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 21 """
                                DebugEvent('人間性を捧げた')
                                SetEventState(760, 1)
                                OfferHumanity()
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                """ State 20 """
                                DebugEvent('人間性を捧げない')
                            """ State 23 """
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　リストへ')
                            ClearTalkActionState()
                            ForceCloseGenericDialog()
                            if not GetEventStatus(760):
                                pass
                            elif (GetDistanceToPlayer() >= 8 or HasPlayerBeenAttacked() == 1 or (IsTalkingToSomeoneElse()
                                  or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer() ==
                                  1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                                  > 8)):
                                Continue('loop1')
                    elif GetTalkListEntryResult() == 10:
                        """ State 35 """
                        DebugEvent('倉庫')
                        OpenRepository()
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 1):
                            Goto('L2')
                        elif not IsMenuOpen(26):
                            pass
                    elif GetTalkListEntryResult() == 5:
                        """ State 18 """
                        OpenMagicEquip(10000, 10099)
                        DebugEvent('魔法装備ショップ')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 1):
                            Goto('L2')
                        elif not IsMenuOpen(25):
                            pass
                    elif GetTalkListEntryResult() == 3:
                        """ State 32 """
                        OpenEnhanceShop(10)
                        DebugEvent('防具強化')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 1):
                            Goto('L2')
                        elif not IsMenuOpen(13):
                            pass
                    elif GetTalkListEntryResult() == 9:
                        break
                    elif GetTalkListEntryResult() == 11:
                        """ State 36 """
                        DebugEvent('亡者から復活する')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L2')
                        elif GetEventStatus(751) == 1:
                            """ State 53 """
                            # action:10010736:Cannot reverse Hollowing while cursed
                            OpenGenericDialog(7, 10010736, 1, 0, 2)
                            DebugEvent('呪われている')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                Goto('L4')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L4')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L5')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L5')
                        elif not GetPlayerChrType():
                            """ State 42 """
                            # action:10010730:
                            OpenGenericDialog(7, 10010730, 1, 0, 2)
                            DebugEvent('亡者ではない')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                """ State 47 """
                                Label('L11')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L11')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 46 """
                                Label('L12')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア')
                                ClearTalkActionState()
                                ForceCloseGenericDialog()
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L12')
                        elif GetStatus(10) <= 1:
                            """ State 43 """
                            # action:10010731:No humanity
                            OpenGenericDialog(7, 10010731, 1, 0, 2)
                            DebugEvent('人間性がない')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                Goto('L4')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L4')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L5')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L5')
                        else:
                            """ State 37 """
                            # action:10010732:Offer humanity and reverse Hollowing?
                            OpenGenericDialog(8, 10010732, 3, 4, 2)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                                  > 8):
                                pass
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 38 """
                                Label('L13')
                                DebugEvent('人間性を捧げない')
                                """ State 41 """
                                Label('L14')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア　リストへ')
                                ClearTalkActionState()
                                ForceCloseGenericDialog()
                                if True:
                                    continue
                                elif (GetDistanceToPlayer() >= 8 or HasPlayerBeenAttacked() == 1 or (IsTalkingToSomeoneElse()
                                      or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                                      > 8)):
                                    Continue('loop1')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 51 """
                                SetEventState(762, 1)
                                SetEventState(764, 1)
                                if IsPlayerDead() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                                      > 8):
                                    pass
                                elif not GetEventStatus(762):
                                    """ State 39 """
                                    DebugEvent('人間性を捧げた')
                                    PlayerRespawn()
                                    ShowGrandioseTextPresentation(3)
                                    GiveSpEffectToPlayer(25)
                                    ChangePlayerStats(10, 1, 1)
                                    if IsPlayerDead() == 1:
                                        pass
                                    elif (GetDistanceToPlayer() >= 8 or HasPlayerBeenAttacked() == 1
                                          or (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                                          > 8)):
                                        Continue('loop1')
                                    elif not IsMenuOpen(53) and not GetEventStatus(764):
                                        Goto('L14')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L13')
                            """ State 40 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                """ State 7 """
                EndBonfireKindleAnimLoop()
                Goto('L1')
            """ State 26 """
            Label('L15')
            ClearTalkDisabledState()
            DebugEvent('会話タイマーをクリア　待機へ')

