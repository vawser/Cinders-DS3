# -*- coding: utf-8 -*-
def t160622_1():
    """ State 0,40 """
    SetEventState(355, 1)
    SetEventState(367, 1)
    """ State 19 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        if CheckSelfDeath() == 1 and not GetEventStatus(1382) and GetDistanceToPlayer() <= 6:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and GetEventStatus(11815020) == 1):
            """ State 2 """
            # talk:32000500:What was that about?
            TalkToPlayer(32000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 18 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6:
                    """ State 74 """
                    Label('L2')
                    # talk:32000800:No...impossible...
                    TalkToPlayer(32000800, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 6:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 6 and not GetEventStatus(71810009)
                      and GetSelfHP() <= 90):
                    """ State 7 """
                    # talk:32000700:Damn, you've gone Hollow, have you?
                    TalkToPlayer(32000700, -1, -1)
                    SetEventState(71810009, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 75 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6
                        break
                    elif HasTalkEnded() == 1:
                        """ State 6 """
                        SetEventState(71810009, 1)
                        """ State 8 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1381) == 1:
                    """ State 9 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71810012) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 6):
                    """ State 73 """
                    # talk:32000660:What's got into you!
                    TalkToPlayer(32000660, -1, -1)
                    SetEventState(71810012, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 72 """
                        SetEventState(71810012, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 8):
                        pass
                elif GetEventStatus(71810012) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 1 """
                SetEventState(11815020, 0)
                """ State 28 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 22 """
                    while True:
                        # action:15000190:Modify Equipment
                        AddTalkListData(1, 15000190, -1)
                        # action:15000111:Reinforce Weapon
                        AddTalkListData(2, 15000111, -1)
                        # action:15000112:Reinforce Armor
                        AddTalkListData(3, 15000112, -1)
                        # action:15000120:Repair Equipment
                        AddTalkListData(4, 15000120, -1)
                        # action:15000010:Purchase Item
                        AddTalkListData(7, 15000010, -1)
                        # action:15000000:Talk
                        AddTalkListData(5, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(6, 15000005, -1)
                        ShowShopMessage(0, 0, 0)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 25 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 5 """
                                Label('L8')
                                # talk:32000400:Hm? What's happened?
                                TalkToPlayer(32000400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 12:
                                    """ State 4 """
                                    Label('L9')
                                    ForceEndTalk(0)
                                    Continue('mainloop')
                                elif HasTalkEnded() == 1:
                                    """ State 3 """
                                    SetEventState(11815020, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L9')
                        elif GetTalkListEntryResult() == 6:
                            break
                        elif GetTalkListEntryResult() == 4:
                            """ State 23 """
                            OpenRepairShop()
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                            elif not IsMenuOpen(12):
                                continue
                        elif GetTalkListEntryResult() == 2:
                            DebugEvent('強化ショップが呼ばれる')
                            """ State 38 """
                            OpenEnhanceShop(0)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif not GetTalkListEntryResult():
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 6):
                            Goto('L7')
                        elif GetTalkListEntryResult() == 5:
                            """ State 13 """
                            if GetEventStatus(71810014) == 1 and not GetEventStatus(71810015):
                                """ State 15 """
                                # talk:32001800:Sorcery? Don't ask me how it actually works.
                                TalkToPlayer(32001800, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 6):
                                    Goto('L16')
                                elif HasTalkEnded() == 1:
                                    """ State 62 """
                                    SetEventState(71810015, 1)
                            elif (not GetEventStatus(1110) and GetEventStatus(71810013) == 1 and not
                                  GetEventStatus(71810014)):
                                """ State 14 """
                                # talk:32001700:Old Big Hat? Of course I've heard of him.
                                TalkToPlayer(32001700, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 6):
                                    Goto('L16')
                                elif HasTalkEnded() == 1:
                                    """ State 61 """
                                    SetEventState(71810014, 1)
                            else:
                                """ State 12 """
                                # talk:32001600:Hm? What is it?
                                TalkToPlayer(32001600, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 16 """
                                    SetEventState(71810013, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 6):
                                    Goto('L16')
                            """ State 17 """
                            if True:
                                continue
                            elif GetDistanceToPlayer() >= 6:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 1:
                            """ State 32 """
                            CombineMenuFlagAndEventFlag(355, 336)
                            CombineMenuFlagAndEventFlag(356, 337)
                            CombineMenuFlagAndEventFlag(357, 338)
                            CombineMenuFlagAndEventFlag(367, 346)
                            OpenEquipmentChangeOfPurposeShop()
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif GetTalkListEntryResult() == 3:
                            """ State 39 """
                            OpenEnhanceShop(10)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif GetTalkListEntryResult() == 7:
                            """ State 77,78 """
                            OpenRegularShop(2100, 2199)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                            elif not IsMenuOpen(11):
                                continue
                        """ State 24 """
                        CloseMenu()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6:
                            Goto('L2')
                        elif IsPlayerMovingACertainDistance(1) == 1:
                            Goto('L8')
                        elif not IsPlayerMovingACertainDistance(1):
                            Goto('L9')
                        else:
                            Continue('mainloop')
                    """ State 30 """
                    if (DidYouDoSomethingInTheMenu(12) == 1 or DidYouDoSomethingInTheMenu(2) == 1 or
                        DidYouDoSomethingInTheMenu(3) == 1 or DidYouDoSomethingInTheMenu(4) == 1):
                        """ State 34 """
                        DebugEvent('買って立ち去る')
                        """ State 36 """
                        # talk:32000300:Good-bye, then.
                        TalkToPlayer(32000300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 6):
                            pass
                    elif (not DidYouDoSomethingInTheMenu(12) or not DidYouDoSomethingInTheMenu(2) or
                          not DidYouDoSomethingInTheMenu(3) or not DidYouDoSomethingInTheMenu(4)):
                        """ State 35 """
                        DebugEvent('買わず立ち去る')
                        """ State 33 """
                        # talk:32000200:Come back soon.
                        TalkToPlayer(32000200, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 6):
                            pass
                    else:
                        """ State 31 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 6:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71810000)):
            """ State 10 """
            # talk:32000000:Hrm?
            TalkToPlayer(32000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 11 """
                SetEventState(71810000, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and GetEventStatus(71810000) == 1 and not GetEventStatus(71810001)):
            """ State 55 """
            # talk:32000020:Hm? What is it?
            TalkToPlayer(32000020, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 56 """
                SetEventState(71810001, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        # goods:806:Large Magic Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 806) == 1):
            """ State 45 """
            # talk:32000900:Hey, hang on...
            TalkToPlayer(32000900, -1, -1)
            DebugEvent('転職アイテム持ってた会話1')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 46 """
                # action:10020016:Give <?gdsparam@806?>?
                OpenGenericDialog(8, 10020016, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 76 """
                    Label('L10')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L2')
                    else:
                        continue
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 43 """
                    DebugEvent('アイテムを渡す1')
                    SetEventState(356, 1)
                    """ State 47 """
                    # talk:32001100:Yes, as you should!
                    TalkToPlayer(32001100, -1, -1)
                    DebugEvent('渡したあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 41 """
                        Label('L11')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    """ State 44 """
                    Label('L12')
                    DebugEvent('アイテムを渡さない1')
                    """ State 48 """
                    # talk:32001000:...Yes, I see. All right, fine.
                    TalkToPlayer(32001000, -1, -1)
                    DebugEvent('渡さなかったあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L11')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    Goto('L12')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      6):
                    """ State 42 """
                    Label('L13')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        # goods:807:Enchanted Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 807) == 1):
            """ State 51 """
            # talk:32001200:Hey, hang on...
            TalkToPlayer(32001200, -1, -1)
            DebugEvent('転職アイテム持ってた会話2')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 52 """
                # action:10020017:Give <?gdsparam@807?>?
                OpenGenericDialog(8, 10020017, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L10')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 49 """
                    DebugEvent('アイテムを渡す2')
                    SetEventState(357, 1)
                    """ State 53 """
                    # talk:32001400:Oh, really! You are wonderful!
                    TalkToPlayer(32001400, -1, -1)
                    DebugEvent('渡したあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L11')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    """ State 50 """
                    Label('L14')
                    DebugEvent('アイテムを渡さない2')
                    """ State 54 """
                    # talk:32001300:...Fine.
                    TalkToPlayer(32001300, -1, -1)
                    DebugEvent('渡さなかったあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L11')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    Goto('L14')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      6):
                    Goto('L13')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        # goods:800:Large Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 800) == 1 and not GetEventStatus(71810016)):
            """ State 64 """
            SetEventState(71810016, 1)
            """ State 63 """
            Label('L15')
            # talk:32001500:Hey, hang on...
            TalkToPlayer(32001500, -1, -1)
            DebugEvent('だれかの転職アイテム持ってた会話')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L11')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        # goods:801:Very Large Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 801) == 1 and not GetEventStatus(71810017)):
            """ State 65 """
            SetEventState(71810017, 1)
            Goto('L15')
        # goods:802:Crystal Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 802) == 1 and not GetEventStatus(71810018)):
            """ State 66 """
            SetEventState(71810018, 1)
            Goto('L15')
        # goods:808:Divine Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 808) == 1 and not GetEventStatus(71810019)):
            """ State 67 """
            SetEventState(71810019, 1)
            Goto('L15')
        # goods:809:Large Divine Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 809) == 1 and not GetEventStatus(71810020)):
            """ State 68 """
            SetEventState(71810020, 1)
            Goto('L15')
        # goods:810:Dark Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 810) == 1 and not GetEventStatus(71810021)):
            """ State 69 """
            SetEventState(71810021, 1)
            Goto('L15')
        # goods:812:Large Flame Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 812) == 1 and not GetEventStatus(71810022)):
            """ State 70 """
            SetEventState(71810022, 1)
            Goto('L15')
        # goods:813:Chaos Flame Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 813) == 1 and not GetEventStatus(71810023)):
            """ State 71 """
            SetEventState(71810023, 1)
            Goto('L15')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71810003) and GetEventStatus(71810002)
              == 1 and GetEventStatus(71810001) == 1):
            """ State 59 """
            # talk:32000150:Oh, hello.
            TalkToPlayer(32000150, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 60 """
                SetEventState(71810003, 1)
                SetEventState(71810002, 0)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 4 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71810002) and GetEventStatus(71810001)
              == 1):
            """ State 57 """
            # talk:32000100:Oh, hello.
            TalkToPlayer(32000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 58 """
                SetEventState(71810002, 1)
                SetEventState(71810003, 0)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1382):
            """ State 29 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 4 and not GetEventStatus(1381) and not GetEventStatus(1382)):
            """ State 20 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 4)):
            """ State 21 """
            DisplayOneLineHelp(-1)
            continue
        """ State 26 """
        Label('L16')
        ClearTalkProgressData()
        """ State 27 """
        ForceEndTalk(0)
    """ State 37 """
    # talk:32000800:No...impossible...
    TalkToPlayer(32000800, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 6:
        Goto('L16')

