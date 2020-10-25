# -*- coding: utf-8 -*-
def t130620_1():
    """ State 0,43 """
    SetEventState(361, 1)
    SetEventState(367, 1)
    """ State 21 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        if CheckSelfDeath() == 1 and not GetEventStatus(1342) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11305020) == 1):
            """ State 2 """
            # talk:30000600:...You've got rotten manners.
            TalkToPlayer(30000600, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 20 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 76 """
                    Label('L2')
                    # talk:30000900:Curses...
                    TalkToPlayer(30000900, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71300029)
                      and GetSelfHP() <= 90):
                    """ State 7 """
                    # talk:30000800:Trying to cause trouble, are you?
                    TalkToPlayer(30000800, -1, -1)
                    SetEventState(71300029, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 77 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 6 """
                        SetEventState(71300029, 1)
                        """ State 8 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1341) == 1:
                    """ State 9 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71300030) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71300028) == 1):
                    """ State 72 """
                    # talk:30000750:You rotten scoundrel!
                    TalkToPlayer(30000750, -1, -1)
                    SetEventState(71300030, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 71 """
                        SetEventState(71300030, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71300028) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 11 """
                    # talk:30000700:Bah!
                    TalkToPlayer(30000700, -1, -1)
                    SetEventState(71300028, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 10 """
                        SetEventState(71300028, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71300030) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 1 """
                SetEventState(11305020, 0)
                """ State 30 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 24 """
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
                            """ State 27 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 5 """
                                Label('L8')
                                # talk:30000500:Now where've you gone?
                                TalkToPlayer(30000500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 12:
                                    """ State 4 """
                                    Label('L9')
                                    ForceEndTalk(0)
                                    Continue('mainloop')
                                elif HasTalkEnded() == 1:
                                    """ State 3 """
                                    SetEventState(11305020, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L9')
                        elif GetTalkListEntryResult() == 6:
                            break
                        elif GetTalkListEntryResult() == 4:
                            """ State 25 """
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
                            DebugEvent('強化ショップが呼ばれる')
                            """ State 41 """
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
                        elif GetTalkListEntryResult() == 5:
                            """ State 14 """
                            if GetEventStatus(71300025) == 1 and GetEventStatus(9) == 1:
                                """ State 69 """
                                # talk:30002200:I've told you, I have nothing to discuss...
                                TalkToPlayer(30002200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 70 """
                                    SetEventState(71300031, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif GetEventStatus(2) == 1 and GetEventStatus(71300024) == 1:
                                """ State 67 """
                                # talk:30002100:I've told you, I have nothing to discuss...
                                TalkToPlayer(30002100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 68 """
                                    SetEventState(71300025, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif GetEventStatus(71300023) == 1:
                                """ State 17 """
                                # talk:30002000:Well, you are a persistent one, are you not? 
                                TalkToPlayer(30002000, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 66 """
                                    SetEventState(71300024, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif not GetEventStatus(71300023) and GetEventStatus(71300022) == 1:
                                """ State 16 """
                                # talk:30001900:Enough with your presence. It disturbs me.
                                TalkToPlayer(30001900, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 65 """
                                    SetEventState(71300023, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif not GetEventStatus(71300022) and GetEventStatus(71300021) == 1:
                                """ State 15 """
                                # talk:30001800:...I've told you, I'm here for the trade, not for the talk!
                                TalkToPlayer(30001800, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 64 """
                                    SetEventState(71300022, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            elif not GetEventStatus(71300021):
                                """ State 13 """
                                # talk:30001700:...Hmph! I'm here to smith, not to chit chat.
                                TalkToPlayer(30001700, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 18 """
                                    SetEventState(71300021, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L16')
                            """ State 19 """
                            if True:
                                continue
                            elif GetDistanceToPlayer() >= 3:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 1:
                            """ State 34 """
                            CombineMenuFlagAndEventFlag(361, 342)
                            CombineMenuFlagAndEventFlag(362, 343)
                            CombineMenuFlagAndEventFlag(363, 344)
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
                        elif GetTalkListEntryResult() == 3:
                            """ State 42 """
                            OpenEnhanceShop(10)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif GetTalkListEntryResult() == 7:
                            """ State 79,80 """
                            OpenRegularShop(6300, 6399)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                pass
                            elif not IsMenuOpen(11):
                                continue
                        """ State 26 """
                        CloseMenu()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L2')
                        elif IsPlayerMovingACertainDistance(1) == 1:
                            Goto('L8')
                        elif not IsPlayerMovingACertainDistance(1):
                            Goto('L9')
                        else:
                            Continue('mainloop')
                    """ State 32 """
                    if (DidYouDoSomethingInTheMenu(12) == 1 or DidYouDoSomethingInTheMenu(2) == 1 or
                        DidYouDoSomethingInTheMenu(3) == 1 or DidYouDoSomethingInTheMenu(4) == 1 or DidYouDoSomethingInTheMenu(11)
                        == 1):
                        """ State 37 """
                        DebugEvent('買って立ち去る')
                        """ State 39 """
                        # talk:30000400:If that'll be all, then be gone with you!
                        TalkToPlayer(30000400, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not DidYouDoSomethingInTheMenu(12) or not DidYouDoSomethingInTheMenu(2) or
                          not DidYouDoSomethingInTheMenu(3) or not DidYouDoSomethingInTheMenu(4) or not
                          DidYouDoSomethingInTheMenu(11)):
                        """ State 38 """
                        DebugEvent('買わず立ち去る')
                        """ State 36 """
                        # talk:30000300:Well, what was that about?
                        TalkToPlayer(30000300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    else:
                        """ State 33 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:812:Large Flame Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 812) == 1):
            """ State 48 """
            # talk:30001000:...Hmph? Why, is that...
            TalkToPlayer(30001000, -1, -1)
            DebugEvent('転職アイテム持ってた会話1')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 49 """
                # action:10020022:Give <?gdsparam@812?>?
                OpenGenericDialog(8, 10020022, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 78 """
                    Label('L10')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L2')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 45 """
                    Label('L11')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L8')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 47 """
                    Label('L12')
                    DebugEvent('アイテムを渡さない1')
                    """ State 51 """
                    # talk:30001100:Hmm, hmm, yes, yes, I see...
                    TalkToPlayer(30001100, -1, -1)
                    DebugEvent('渡さなかったあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 44 """
                        Label('L13')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L12')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 46 """
                    DebugEvent('アイテムを渡す1')
                    SetEventState(362, 1)
                    """ State 50 """
                    # talk:30001200:Yes, yes, very well! We'll get these old bones to work!
                    TalkToPlayer(30001200, -1, -1)
                    DebugEvent('渡したあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L13')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:813:Chaos Flame Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 813) == 1):
            """ State 54 """
            # talk:30001300:...Hmph? Why, that's...
            TalkToPlayer(30001300, -1, -1)
            DebugEvent('転職アイテム持ってた会話2')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 55 """
                # action:10020023:Give <?gdsparam@813?>?
                OpenGenericDialog(8, 10020023, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L11')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 53 """
                    Label('L14')
                    DebugEvent('アイテムを渡さない2')
                    """ State 57 """
                    # talk:30001400:Hmm, hmm...Fine, then...
                    TalkToPlayer(30001400, -1, -1)
                    DebugEvent('渡さなかったあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L13')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L14')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 52 """
                    DebugEvent('アイテムを渡す2')
                    SetEventState(363, 1)
                    """ State 56 """
                    # talk:30001500:Keh heh heh heh heh!
                    TalkToPlayer(30001500, -1, -1)
                    DebugEvent('渡したあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L13')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:800:Large Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 800) == 1 and not GetEventStatus(71300032)):
            """ State 59 """
            SetEventState(71300032, 1)
            """ State 58 """
            Label('L15')
            # talk:30001600:...Hmph? Why, you have...
            TalkToPlayer(30001600, -1, -1)
            DebugEvent('だれかの転職アイテム持ってた会話')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L13')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:801:Very Large Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 801) == 1 and not GetEventStatus(71300033)):
            """ State 60 """
            SetEventState(71300033, 1)
            Goto('L15')
        # goods:802:Crystal Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 802) == 1 and not GetEventStatus(71300034)):
            """ State 61 """
            SetEventState(71300034, 1)
            Goto('L15')
        # goods:806:Large Magic Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 806) == 1 and not GetEventStatus(71300035)):
            """ State 62 """
            SetEventState(71300035, 1)
            Goto('L15')
        # goods:807:Enchanted Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 807) == 1 and not GetEventStatus(71300036)):
            """ State 63 """
            SetEventState(71300036, 1)
            Goto('L15')
        # goods:808:Divine Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 808) == 1 and not GetEventStatus(71300037)):
            """ State 73 """
            SetEventState(71300037, 1)
            Goto('L15')
        # goods:809:Large Divine Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 809) == 1 and not GetEventStatus(71300038)):
            """ State 74 """
            SetEventState(71300038, 1)
            Goto('L15')
        # goods:810:Dark Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 810) == 1 and not GetEventStatus(71300039)):
            """ State 75 """
            SetEventState(71300039, 1)
            Goto('L15')
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1342):
            """ State 31 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1341) and not GetEventStatus(1342)):
            """ State 22 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 23 """
            DisplayOneLineHelp(-1)
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1):
            """ State 12 """
            # talk:30000100:...What's that, then? Need some smithing?
            TalkToPlayer(30000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        """ State 28 """
        Label('L16')
        ClearTalkProgressData()
        """ State 29 """
        ForceEndTalk(0)
    """ State 40 """
    # talk:30000900:Curses...
    TalkToPlayer(30000900, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L16')

