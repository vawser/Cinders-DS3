# -*- coding: utf-8 -*-
def t180100_1():
    """ State 0,15 """
    Label('L0')
    while True:
        DebugEvent('最初')
        if (GetOneLineHelpStatus() == 1 and CompareBonfireState(0) == 1 and HasDisableTalkPeriodElapsed()
            == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
            and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
            <= 2):
            """ State 17 """
            Label('L1')
            DisplayOneLineHelp(-1)
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            Goto('L1')
        elif CompareBonfireLevel(2, 0) == 1 and CompareBonfireState(1) == 1:
            break
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and CompareBonfireState(1) == 1):
            """ State 18 """
            # action:10010106:Rest at Lordvessel
            DisplayOneLineHelp(10010106)
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and CompareBonfireState(1) == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            """ State 14 """
            DebugEvent('人間性を捧げた')
            OfferHumanity()
            if not GetEventStatus(270):
                """ State 34 """
                SetEventState(270, 1)
                RequestUnlockTrophy(26)
            else:
                pass
            """ State 13 """
            ClearTalkDisabledState()
            DebugEvent('会話タイマークリア　最初')
    """ State 1 """
    while Loop('loop1'):
        DebugEvent('待機')
        SetUpdateDistance(10)
        if (CompareBonfireState(0) == 1 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
            and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
            <= 45 and GetDistanceToPlayer() <= 4):
            """ State 3 """
            Label('L2')
            DisplayOneLineHelp(-1)
        elif CompareBonfireLevel(0, 0) == 1:
            Goto('L0')
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 4)):
            Goto('L2')
        elif GetPlayerYDistance() > 2 and GetOneLineHelpStatus() == 1:
            """ State 31 """
            DisplayOneLineHelp(-1)
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 4 and CompareBonfireState(1) == 1 and GetPlayerYDistance()
              < 2):
            """ State 2 """
            # action:10010106:Rest at Lordvessel
            DisplayOneLineHelp(10010106)
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and CompareBonfireState(1) == 1):
            """ State 29 """
            StartBonfireAnimLoop()
            ClearTalkActionState()
            DisplayOneLineHelp(-1)
            ClearPlayerDamageInfo()
            if CompareBonfireState(0) == 1:
                """ State 11 """
                Label('L3')
                ForceEndTalk(0)
                ClearTalkProgressData()
                CloseShopMessage()
                DebugEvent('リスト強制開放')
                EndBonfireKindleAnimLoop()
            elif GetDistanceToPlayer() >= 8 or GetPlayerYDistance() > 2:
                Goto('L3')
            elif CompareBonfireState(1) == 1:
                """ State 4 """
                while True:
                    ShowShopMessage(0, 0, 0)
                    DebugEvent('篝火リスト')
                    RequestSave(0)
                    # action:15000005:Leave
                    AddTalkListData(9, 15000005, -1)
                    # action:15000175:Offer souls to Lordvessel
                    AddTalkListData(6, 15000175, 702)
                    # action:15000100:Level Up
                    AddTalkListData(1, 15000100, 11810000)
                    # action:15000111:Reinforce Weapon
                    AddTalkListData(2, 15000111, 250)
                    # action:15000112:Reinforce Armor
                    AddTalkListData(3, 15000112, 251)
                    # action:15000120:Repair Equipment
                    AddTalkListData(4, 15000120, 252)
                    # action:15000130:Attune Magic
                    AddTalkListData(5, 15000130, 719)
                    # action:15000220:Access Bottomless Box
                    AddTalkListData(10, 15000220, 258)
                    # action:15000150:Warp
                    AddTalkListData(7, 15000150, 710)
                    # action:10010744:Covenant
                    AddTalkListData(8, 10010744, 69696969)
                    # action:15000270:Reverse Hollowing
                    AddTalkListData(11, 15000270, 11810000)
                    def ExitPause():
                        ClearTalkListData()
                    if CompareBonfireState(0) == 1 or IsPlayerDead() == 1:
                        Goto('L3')
                    elif HasPlayerBeenAttacked() == 1:
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 8):
                        Goto('L3')
                    elif not GetTalkListEntryResult():
                        break
                    elif GetTalkListEntryResult() == 1:
                        """ State 10 """
                        OpenSoul()
                        DebugEvent('ソウルショップ')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            """ State 32 """
                            Label('L4')
                            CloseMenu()
                            DebugEvent('メッセージボックス閉じる')
                            EndBonfireKindleAnimLoop()
                            Goto('L3')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(23):
                            pass
                    elif GetTalkListEntryResult() == 2:
                        """ State 20 """
                        OpenEnhanceShop(0)
                        DebugEvent('武器強化')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(13):
                            pass
                    elif GetTalkListEntryResult() == 4:
                        """ State 19 """
                        OpenRepairShop()
                        DebugEvent('修理ショップ')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(12):
                            pass
                    elif GetTalkListEntryResult() == 7:
                        """ State 21 """
                        StartWarpMenuInit()
                        DebugEvent('ワープメニューを開く')
                        if WasWarpMenuDestinationSelected() == 1:
                            """ State 48 """
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            DebugEvent('リスト強制開放')
                            Goto('L14')
                        elif CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(36):
                            pass
                    elif GetTalkListEntryResult() == 10:
                        """ State 33 """
                        DebugEvent('倉庫')
                        OpenRepository()
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(26):
                            pass
                    elif GetTalkListEntryResult() == 5:
                        """ State 22 """
                        OpenMagicEquip(10000, 10099)
                        DebugEvent('魔法装備ショップ')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(25):
                            pass
                    elif GetTalkListEntryResult() == 3:
                        """ State 30 """
                        OpenEnhanceShop(10)
                        DebugEvent('防具強化')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(13):
                            pass
                    elif GetTalkListEntryResult() == 9:
                        break
                    elif GetTalkListEntryResult() == 6:
                        """ State 35 """
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        # goods:2500:Lord Soul, goods:2501:Lord Soul, goods:2502:Bequeathed Lord Soul Shard, goods:2503:Bequeathed Lord Soul Shard
                        elif (not IsEquipmentIDObtained(3, 2500) and not IsEquipmentIDObtained(3, 2501)
                              and not IsEquipmentIDObtained(3, 2502) and not IsEquipmentIDObtained(3,
                              2503)):
                            """ State 25 """
                            # action:10010171:No Lord Souls to offer
                            OpenGenericDialog(1, 10010171, 1, 0, 1)
                            DebugEvent('王のソウルがない　リストから')
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                """ State 27 """
                                Label('L5')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L5')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 28 """
                                Label('L6')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア')
                                ClearTalkActionState()
                                ForceCloseGenericDialog()
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L6')
                        elif GetEventStatus(4084) == 1:
                            """ State 23 """
                            DebugEvent('王のソウルを捧げた')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            SetEventState(756, 1)
                            """ State 24 """
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　リストへ')
                            ClearTalkActionState()
                            ForceCloseGenericDialog()
                            if not GetEventStatus(756) and not GetEventStatus(11800211):
                                pass
                            elif GetEventStatus(11800211) == 1:
                                break
                            elif (GetDistanceToPlayer() >= 8 or HasPlayerBeenAttacked() == 1 or (IsTalkingToSomeoneElse()
                                  or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer() ==
                                  1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                                  > 8)):
                                Continue('loop1')
                    elif GetTalkListEntryResult() == 11:
                        """ State 36 """
                        DebugEvent('亡者から復活する')
                        if CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetEventStatus(751) == 1:
                            """ State 50 """
                            # action:10010736:Cannot reverse Hollowing while cursed
                            OpenGenericDialog(7, 10010736, 1, 0, 2)
                            DebugEvent('呪われている')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                pass
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 45 """
                                Label('L7')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア')
                                ClearTalkActionState()
                                ForceCloseGenericDialog()
                                continue
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L7')
                            """ State 44 """
                            Label('L8')
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                        elif not GetPlayerChrType():
                            """ State 42 """
                            # action:10010730:You are not Hollow
                            OpenGenericDialog(7, 10010730, 1, 0, 2)
                            DebugEvent('亡者ではない')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                """ State 47 """
                                Label('L9')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L9')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 46 """
                                Label('L10')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア')
                                ClearTalkActionState()
                                ForceCloseGenericDialog()
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L10')
                        elif GetStatus(10) <= 1:
                            """ State 43 """
                            # action:10010731:No humanity
                            OpenGenericDialog(7, 10010731, 1, 0, 2)
                            DebugEvent('人間性がない')
                            DisplayOneLineHelp(-1)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                Goto('L8')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                Goto('L8')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L7')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L7')
                        else:
                            """ State 37 """
                            # action:10010732:Offer humanity and reverse Hollowing?
                            OpenGenericDialog(8, 10010732, 3, 4, 2)
                            if (CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1 or IsPlayerDead()
                                == 1):
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 8):
                                pass
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 38 """
                                Label('L11')
                                DebugEvent('人間性を捧げない')
                                """ State 41 """
                                Label('L12')
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
                                """ State 49 """
                                SetEventState(762, 1)
                                SetEventState(764, 1)
                                if IsPlayerDead() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
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
                                    elif GetDistanceToPlayer() >= 8 or HasPlayerBeenAttacked() == 1:
                                        Continue('loop1')
                                    elif not IsMenuOpen(53) and not GetEventStatus(764):
                                        Goto('L12')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L11')
                            """ State 40 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                    elif GetTalkListEntryResult() == 8:
                        """ State 5 """
                        c172()
                        DebugEvent('Open_covenant_menu')
                        if CheckActionButtonArea() == 1:
                            """ State 6 """
                            ForceCloseMenu()
                            assert GetEventStatus(4084) == 1
                            """ State 7 """
                            c175()
                            assert not CheckSpecificPersonMenuIsOpen()
                            """ State 8 """
                            # action:10010729:Covenant established
                            OpenGenericDialog(7, 10010729, 1, 0, 2)
                            DisplayOneLineHelp(-1)
                            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() >
                                180 or GetDistanceToPlayer() > 8):
                                Goto('L3')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 9 """
                                Label('L13')
                                ClearTalkActionState()
                                DisplayOneLineHelp(-1)
                                ClearPlayerDamageInfo()
                                SetEventState(760, 0)
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L13')
                        elif CompareBonfireState(0) == 1 or HasPlayerBeenAttacked() == 1:
                            Goto('L4')
                        elif GetDistanceToPlayer() >= 8 and GetPlayerYDistance() > 2:
                            Goto('L4')
                        elif not IsMenuOpen(180):
                            pass
                """ State 12 """
                EndBonfireKindleAnimLoop()
                Goto('L3')
            """ State 26 """
            Label('L14')
            ClearTalkDisabledState()
            DebugEvent('会話タイマーをクリア　待機へ')

