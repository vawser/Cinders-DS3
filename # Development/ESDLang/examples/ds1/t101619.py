# -*- coding: utf-8 -*-
def t101619_1():
    """ State 0,26 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1322) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11015020) == 1 and GetEventStatus(71010000)
              == 1):
            """ State 2 """
            # talk:29000800:What's going on with you, eh?
            TalkToPlayer(29000800, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 25 """
                Label('L1')
                ClearTalkProgressData()
                ForceEndTalk(3)
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 93 """
                    Label('L2')
                    # talk:29001100:Curses, you damn backstabber...
                    TalkToPlayer(29001100, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71010010)
                      and GetSelfHP() <= 90):
                    """ State 7 """
                    # talk:29001000:Well, you've got some nerve!
                    TalkToPlayer(29001000, -1, -1)
                    SetEventState(71010010, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 94 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 6 """
                        SetEventState(71010010, 1)
                        """ State 8 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1321) == 1:
                    """ State 9 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71010011) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010009) == 1):
                    """ State 87 """
                    # talk:29000950:Owww, that hurts!
                    TalkToPlayer(29000950, -1, -1)
                    SetEventState(71010011, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 86 """
                        SetEventState(71010011, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71010009) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 11 """
                    # talk:29000900:Ow!
                    TalkToPlayer(29000900, -1, -1)
                    SetEventState(71010009, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 10 """
                        SetEventState(71010009, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71010011) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 1 """
                SetEventState(11015020, 0)
                """ State 36 """
                Label('L6')
                ClearTalkActionState()
                SetEventState(367, 1)
                if True:
                    """ State 29 """
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
                        AddTalkListData(5, 15000010, -1)
                        # action:15000350:Learn gesture
                        AddTalkListData(8, 15000350, 282)
                        # action:15000000:Talk
                        AddTalkListData(6, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(7, 15000005, -1)
                        ShowShopMessage(0, 0, 0)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 33 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 5 """
                                Label('L8')
                                # talk:29000700:Oi, where're you off to?
                                TalkToPlayer(29000700, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 12:
                                    """ State 4 """
                                    Label('L9')
                                    ForceEndTalk(0)
                                    Continue('mainloop')
                                elif HasTalkEnded() == 1:
                                    """ State 3 """
                                    SetEventState(11015020, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L9')
                        elif GetTalkListEntryResult() == 7:
                            break
                        elif GetTalkListEntryResult() == 4:
                            """ State 30 """
                            OpenRepairShop()
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(12):
                                continue
                        elif GetTalkListEntryResult() == 2:
                            """ State 31 """
                            OpenEnhanceShop(0)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif not GetTalkListEntryResult():
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L7')
                        elif (GetTalkListEntryResult() == 1 and not GetEventStatus(350) and not GetEventStatus(351)
                              and not GetEventStatus(358) and not GetEventStatus(359) and not GetEventStatus(360)):
                            """ State 98 """
                            # action:10010750:Special ember required for blacksmiths to ascend weapons
                            OpenGenericDialog(1, 10010750, 1, 0, 2)
                            DebugEvent('種火持ってない')
                            if CheckSelfDeath() == 1:
                                """ State 95 """
                                Label('L10')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                """ State 45 """
                                Label('L11')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                Goto('L8')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 99 """
                                Label('L12')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア　誓約同じ')
                                """ State 24 """
                                Label('L13')
                                if True:
                                    continue
                                elif GetDistanceToPlayer() >= 3:
                                    Continue('mainloop')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L12')
                        elif GetTalkListEntryResult() == 6:
                            """ State 16 """
                            if GetEventStatus(71010006) == 1 and GetEventStatus(710) == 1:
                                """ State 96 """
                                # talk:29002800:Oh, yes, and one other thing about the Darkroot Garden.
                                TalkToPlayer(29002800, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 97 """
                                    SetEventState(71010020, 1)
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L22')
                            elif GetEventStatus(71010005) == 1 and not GetEventStatus(11016102):
                                """ State 78 """
                                # talk:29002700:I know little of the Darkroot Garden.
                                TalkToPlayer(29002700, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 79 """
                                    SetEventState(71010006, 1)
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L22')
                            elif GetEventStatus(71010004) == 1 and not GetEventStatus(11016102):
                                """ State 76 """
                                # talk:29000600:Sen's Fortress is an old proving grounds built by the ancient\ngods.
                                TalkToPlayer(29000600, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 77 """
                                    SetEventState(71010005, 1)
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L22')
                            elif GetEventStatus(71010003) == 1 and not GetEventStatus(11016102):
                                """ State 19 """
                                # talk:29000500:This is the old church.
                                TalkToPlayer(29000500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 23 """
                                    SetEventState(71010004, 1)
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L22')
                            elif GetEventStatus(71010002) == 1:
                                """ State 18 """
                                # talk:29000400:You can forge armour just like you do weapons.
                                TalkToPlayer(29000400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 22 """
                                    SetEventState(71010003, 1)
                                    SetEventState(11016102, 1)
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L22')
                            elif GetEventStatus(71010001) == 1 and not GetEventStatus(71010002):
                                """ State 17 """
                                # talk:29000300:There are two types of weapon forging. There's reinforcement, and\nthere's ascension.
                                TalkToPlayer(29000300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 21 """
                                    SetEventState(71010002, 1)
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L22')
                            elif not GetEventStatus(71010001):
                                """ State 15 """
                                # talk:29000200:Most weapons and armour are mighty sturdy indeed.
                                TalkToPlayer(29000200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 20 """
                                    SetEventState(71010001, 1)
                                    Goto('L13')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L22')
                        elif GetTalkListEntryResult() == 1:
                            """ State 39 """
                            CombineMenuFlagAndEventFlag(350, 331)
                            CombineMenuFlagAndEventFlag(351, 332)
                            CombineMenuFlagAndEventFlag(350, 335)
                            CombineMenuFlagAndEventFlag(358, 339)
                            CombineMenuFlagAndEventFlag(359, 340)
                            CombineMenuFlagAndEventFlag(360, 341)
                            CombineMenuFlagAndEventFlag(367, 346)
                            OpenEquipmentChangeOfPurposeShop()
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif GetTalkListEntryResult() == 5:
                            """ State 41,42 """
                            OpenRegularShop(1400, 1499)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 3:
                            """ State 43 """
                            OpenEnhanceShop(10)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif GetTalkListEntryResult() == 8:
                            """ State 100 """
                            OpenItemAcquisitionMenu(3, 9002, 1)
                            AcquireGesture(2)
                            SetEventState(282, 0)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(63):
                                """ State 102 """
                                # action:10010755:Gesture learned
                                OpenGenericDialog(7, 10010755, 1, 0, 2)
                                DebugEvent('ジェスチャーを学んだ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    Goto('L10')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    Goto('L11')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 101 """
                                    Label('L14')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L13')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L14')
                        """ State 32 """
                        CloseMenu()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L2')
                        elif IsPlayerMovingACertainDistance(1) == 1:
                            Goto('L8')
                        elif not IsPlayerMovingACertainDistance(1):
                            Goto('L9')
                        else:
                            Continue('mainloop')
                    """ State 38 """
                    if (DidYouDoSomethingInTheMenu(11) == 1 or DidYouDoSomethingInTheMenu(12) == 1 or
                        DidYouDoSomethingInTheMenu(2) == 1 or DidYouDoSomethingInTheMenu(3) == 1 or DidYouDoSomethingInTheMenu(4)
                        == 1):
                        """ State 89 """
                        DebugEvent('買って立ち去る')
                        """ State 91 """
                        # talk:29002600:Don't get yourself killed.
                        TalkToPlayer(29002600, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not DidYouDoSomethingInTheMenu(11) or not DidYouDoSomethingInTheMenu(12) or
                          not DidYouDoSomethingInTheMenu(2) or not DidYouDoSomethingInTheMenu(3) or not
                          DidYouDoSomethingInTheMenu(4)):
                        """ State 90 """
                        DebugEvent('買わず立ち去る')
                        """ State 88 """
                        # talk:29002500:I'll be seeing you, then.
                        TalkToPlayer(29002500, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    else:
                        """ State 92 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71010000)):
            """ State 12 """
            # talk:29000000:Well, you must be a new arrival.
            TalkToPlayer(29000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 14 """
                SetEventState(71010000, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:800:Large Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 800) == 1):
            """ State 48 """
            # talk:29001200:Ahh, why, that's a fine ember you have there.
            TalkToPlayer(29001200, -1, -1)
            DebugEvent('転職アイテム持ってた会話1')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 49 """
                # action:10020010:Give <?gdsparam@800?>?
                OpenGenericDialog(8, 10020010, 3, 4, 2)
                if CheckSelfDeath() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    Goto('L11')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 47 """
                    Label('L15')
                    DebugEvent('アイテムを渡さない1')
                    """ State 51 """
                    # talk:29001300:I see...'Tis a pity...
                    TalkToPlayer(29001300, -1, -1)
                    DebugEvent('渡さなかったあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 44 """
                        Label('L16')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L15')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 46 """
                    DebugEvent('アイテムを渡す1')
                    SetEventState(350, 1)
                    """ State 50 """
                    # talk:29001400:Magnificent! You won't be disappointed.
                    TalkToPlayer(29001400, -1, -1)
                    DebugEvent('渡したあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:801:Very Large Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 801) == 1):
            """ State 54 """
            # talk:29001450:Well, I'll be! That's a brilliant ember you've got there!
            TalkToPlayer(29001450, -1, -1)
            DebugEvent('転職アイテム持ってた会話2')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 55 """
                # action:10020011:Give <?gdsparam@801?>?
                OpenGenericDialog(8, 10020011, 3, 4, 2)
                if CheckSelfDeath() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    Goto('L11')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 53 """
                    Label('L17')
                    DebugEvent('アイテムを渡さない2')
                    """ State 57 """
                    # talk:29001460:I see...'Tis a pity...
                    TalkToPlayer(29001460, -1, -1)
                    DebugEvent('渡さなかったあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L17')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 52 """
                    DebugEvent('アイテムを渡す2')
                    SetEventState(351, 1)
                    """ State 56 """
                    # talk:29001470:Well! Thank you mightily for that.
                    TalkToPlayer(29001470, -1, -1)
                    DebugEvent('渡したあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:808:Divine Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 808) == 1):
            """ State 60 """
            # talk:29001500:My, that's a rare ember you have there.
            TalkToPlayer(29001500, -1, -1)
            DebugEvent('転職アイテム持ってた会話2')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 61 """
                # action:10020018:Give <?gdsparam@808?>?
                OpenGenericDialog(8, 10020018, 3, 4, 2)
                if CheckSelfDeath() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    Goto('L11')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 59 """
                    Label('L18')
                    DebugEvent('アイテムを渡さない3')
                    """ State 63 """
                    # talk:29001600:I see...'Tis a pity...
                    TalkToPlayer(29001600, -1, -1)
                    DebugEvent('渡さなかったあと3')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L18')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 58 """
                    DebugEvent('アイテムを渡す3')
                    SetEventState(358, 1)
                    """ State 62 """
                    # talk:29001700:Well, thanks for that!
                    TalkToPlayer(29001700, -1, -1)
                    DebugEvent('渡したあと3')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:809:Large Divine Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 809) == 1):
            """ State 66 """
            # talk:29001800:Oh, my, what a brilliant ember you have there.
            TalkToPlayer(29001800, -1, -1)
            DebugEvent('転職アイテム持ってた会話4')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 67 """
                # action:10020019:Give <?gdsparam@809?>?
                OpenGenericDialog(8, 10020019, 3, 4, 2)
                if CheckSelfDeath() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    Goto('L11')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 65 """
                    Label('L19')
                    DebugEvent('アイテムを渡さない4')
                    """ State 69 """
                    # talk:29001900:I see...'Tis a pity...
                    TalkToPlayer(29001900, -1, -1)
                    DebugEvent('渡さなかったあと4')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L19')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 64 """
                    DebugEvent('アイテムを渡す4')
                    SetEventState(359, 1)
                    """ State 68 """
                    # talk:29002000:Ah-hah! Splendid, splendid! Thank you!
                    TalkToPlayer(29002000, -1, -1)
                    DebugEvent('渡したあと4')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:810:Dark Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 810) == 1):
            """ State 72 """
            # talk:29002100:Hrm? Show me that ember of yours...
            TalkToPlayer(29002100, -1, -1)
            DebugEvent('転職アイテム持ってた会話5')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 73 """
                # action:10020020:Give <?gdsparam@810?>?
                OpenGenericDialog(8, 10020020, 3, 4, 2)
                if CheckSelfDeath() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    Goto('L11')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 71 """
                    Label('L20')
                    DebugEvent('アイテムを渡さない5')
                    """ State 75 """
                    # talk:29002200:Are you sure? Well, fair enough.
                    TalkToPlayer(29002200, -1, -1)
                    DebugEvent('渡さなかったあと5')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L20')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 70 """
                    DebugEvent('アイテムを渡す5')
                    SetEventState(360, 1)
                    """ State 74 """
                    # talk:29002300:Yes, well! Thank you.
                    TalkToPlayer(29002300, -1, -1)
                    DebugEvent('渡したあと5')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L16')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:802:Crystal Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 802) == 1 and not GetEventStatus(71010012)):
            """ State 81 """
            SetEventState(71010012, 1)
            """ State 80 """
            Label('L21')
            # talk:29002400:Hmm, that's an odd ember you have there.
            TalkToPlayer(29002400, -1, -1)
            DebugEvent('だれかの転職アイテム持ってた会話')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L16')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:806:Large Magic Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 806) == 1 and not GetEventStatus(71010013)):
            """ State 82 """
            SetEventState(71010013, 1)
            Goto('L21')
        # goods:807:Enchanted Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 807) == 1 and not GetEventStatus(71010014)):
            """ State 83 """
            SetEventState(71010014, 1)
            Goto('L21')
        # goods:812:Large Flame Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 812) == 1 and not GetEventStatus(71010015)):
            """ State 84 """
            SetEventState(71010015, 1)
            Goto('L21')
        # goods:813:Chaos Flame Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 813) == 1 and not GetEventStatus(71010016)):
            """ State 85 """
            SetEventState(71010016, 1)
            Goto('L21')
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1322):
            """ State 37 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1321) and not GetEventStatus(1322)):
            """ State 27 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 28 """
            DisplayOneLineHelp(-1)
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010000) == 1):
            """ State 13 """
            # talk:29000100:Well, hello again.
            TalkToPlayer(29000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        """ State 34 """
        Label('L22')
        ClearTalkProgressData()
        """ State 35 """
        ForceEndTalk(0)
    """ State 40 """
    # talk:29001100:Curses, you damn backstabber...
    TalkToPlayer(29001100, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L22')

