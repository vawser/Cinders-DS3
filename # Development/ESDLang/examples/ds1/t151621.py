# -*- coding: utf-8 -*-
def t151621_1():
    """ State 0,44 """
    SetEventState(353, 1)
    SetEventState(364, 1)
    SetEventState(71510011, 0)
    SetEventState(367, 1)
    """ State 23 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1362) and GetDistanceToPlayer() <= 7:
            break
        elif (GetEventStatus(1361) == 1 and IsPlayerDead() == 1 and GetDistanceToPlayer() <= 15 and not
              GetEventStatus(71510011) and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 15):
            """ State 63 """
            # talk:31001700:You weak.
            TalkToPlayer(31001700, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71510011, 1)
            assert HasTalkEnded() == 1
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(11515020) == 1):
            """ State 2 """
            # talk:31000500:Hello again.
            TalkToPlayer(31000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 22 """
                Label('L1')
                ClearTalkProgressData()
                ForceEndTalk(3)
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                    """ State 60 """
                    Label('L2')
                    # talk:31000800:Angh, uggghh...
                    TalkToPlayer(31000800, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 7:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 10 and not GetEventStatus(71510009)
                      and GetSelfHP() <= 90):
                    """ State 7 """
                    # talk:31000700:Oi!
                    TalkToPlayer(31000700, -1, -1)
                    SetEventState(71510009, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 61 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7
                        break
                    elif HasTalkEnded() == 1:
                        """ State 6 """
                        SetEventState(71510009, 1)
                        """ State 8 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1361) == 1:
                    """ State 9 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71510010) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 10 and GetEventStatus(71510008) == 1):
                    """ State 59 """
                    # talk:31000650:Oww, that hurts.
                    TalkToPlayer(31000650, -1, -1)
                    SetEventState(71510010, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 58 """
                        SetEventState(71510010, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 7):
                        pass
                elif (not GetEventStatus(71510008) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 10):
                    """ State 11 """
                    # talk:31000600:Oww.
                    TalkToPlayer(31000600, -1, -1)
                    SetEventState(71510008, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 10 """
                        SetEventState(71510008, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 7):
                        pass
                elif GetEventStatus(71510010) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 1 """
                SetEventState(11515020, 0)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71510000)):
            """ State 12 """
            # talk:31000000:Who are you?
            TalkToPlayer(31000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 14 """
                SetEventState(71510000, 1)
                """ State 32 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 26 """
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
                            """ State 29 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 5 """
                                Label('L8')
                                # talk:31000400:Mng, hmng?
                                TalkToPlayer(31000400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 20:
                                    """ State 4 """
                                    Label('L9')
                                    ForceEndTalk(0)
                                    Continue('mainloop')
                                elif HasTalkEnded() == 1:
                                    """ State 3 """
                                    SetEventState(11515020, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L9')
                        elif GetTalkListEntryResult() == 6:
                            break
                        elif GetTalkListEntryResult() == 4:
                            """ State 27 """
                            OpenRepairShop()
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 7):
                                pass
                            elif not IsMenuOpen(12):
                                continue
                        elif GetTalkListEntryResult() == 2:
                            DebugEvent('強化ショップが呼ばれる')
                            """ State 42 """
                            OpenEnhanceShop(0)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 7):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif not GetTalkListEntryResult():
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 7):
                            Goto('L7')
                        elif GetTalkListEntryResult() == 5:
                            """ State 16 """
                            if GetEventStatus(10) == 1 and not GetEventStatus(71510005):
                                """ State 56 """
                                # talk:31001600:You come,
                                TalkToPlayer(31001600, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 57 """
                                    SetEventState(71510005, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 7):
                                    Goto('L11')
                            elif GetEventStatus(12) == 1 and not GetEventStatus(71510004):
                                """ State 19 """
                                # talk:31001500:You come,
                                TalkToPlayer(31001500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 7):
                                    Goto('L11')
                                elif HasTalkEnded() == 1:
                                    """ State 55 """
                                    SetEventState(71510004, 1)
                            elif GetEventStatus(71510002) == 1:
                                """ State 18 """
                                # talk:31001400:But you, friend.
                                TalkToPlayer(31001400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 7):
                                    Goto('L11')
                                elif HasTalkEnded() == 1:
                                    """ State 54 """
                                    SetEventState(71510003, 1)
                            elif not GetEventStatus(71510002) and GetEventStatus(71510001) == 1:
                                """ State 17 """
                                # talk:31001300:Talk, 'tis no good.
                                TalkToPlayer(31001300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 7):
                                    Goto('L11')
                                elif HasTalkEnded() == 1:
                                    """ State 53 """
                                    SetEventState(71510002, 1)
                            elif not GetEventStatus(71510001):
                                """ State 15 """
                                # talk:31001200:Talk, 'tis no good.
                                TalkToPlayer(31001200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 20 """
                                    SetEventState(71510001, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 7):
                                    Goto('L11')
                            """ State 21 """
                            if True:
                                continue
                            elif GetDistanceToPlayer() >= 7:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 1:
                            """ State 36 """
                            CombineMenuFlagAndEventFlag(352, 333)
                            CombineMenuFlagAndEventFlag(353, 334)
                            CombineMenuFlagAndEventFlag(364, 345)
                            CombineMenuFlagAndEventFlag(367, 346)
                            OpenEquipmentChangeOfPurposeShop()
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 7):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif GetTalkListEntryResult() == 3:
                            """ State 43 """
                            OpenEnhanceShop(10)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                            elif not IsMenuOpen(13):
                                continue
                        elif GetTalkListEntryResult() == 7:
                            """ State 64 """
                            OpenRegularShop(6200, 6299)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 7):
                                pass
                            elif not IsMenuOpen(11):
                                continue
                        """ State 28 """
                        CloseMenu()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                            Goto('L2')
                        elif IsPlayerMovingACertainDistance(1) == 1:
                            Goto('L8')
                        elif not IsPlayerMovingACertainDistance(1):
                            Goto('L9')
                        else:
                            Continue('mainloop')
                    """ State 34 """
                    if (DidYouDoSomethingInTheMenu(12) == 1 or DidYouDoSomethingInTheMenu(2) == 1 or
                        DidYouDoSomethingInTheMenu(3) == 1 or DidYouDoSomethingInTheMenu(4) == 1):
                        """ State 38 """
                        DebugEvent('買って立ち去る')
                        """ State 40 """
                        # talk:31000300:Cometh soon.
                        TalkToPlayer(31000300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 7):
                            pass
                    elif (not DidYouDoSomethingInTheMenu(12) or not DidYouDoSomethingInTheMenu(2) or
                          not DidYouDoSomethingInTheMenu(3) or not DidYouDoSomethingInTheMenu(4)):
                        """ State 39 """
                        DebugEvent('買わず立ち去る')
                        """ State 37 """
                        # talk:31000200:Cometh soon.
                        TalkToPlayer(31000200, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 7):
                            pass
                    else:
                        """ State 35 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 7:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        # goods:802:Crystal Ember
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and IsEquipmentIDObtained(3, 802) == 1):
            """ State 49 """
            # talk:31000900:Mng. What's that?
            TalkToPlayer(31000900, -1, -1)
            DebugEvent('転職アイテム持ってた会話1')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 50 """
                # action:10020012:Give <?gdsparam@802?>?
                OpenGenericDialog(8, 10020012, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 62 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                        Goto('L2')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      7):
                    """ State 46 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L8')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 48 """
                    Label('L10')
                    DebugEvent('アイテムを渡さない1')
                    """ State 52 """
                    # talk:31001000:Hmph, 'tis pity...
                    TalkToPlayer(31001000, -1, -1)
                    DebugEvent('渡さなかったあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        pass
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 7):
                        Goto('L11')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L10')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 47 """
                    DebugEvent('アイテムを渡す1')
                    SetEventState(352, 1)
                    """ State 51 """
                    # talk:31001100:I hath shiny-shiny,
                    TalkToPlayer(31001100, -1, -1)
                    DebugEvent('渡したあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        pass
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 7):
                        Goto('L11')
                """ State 45 """
                ClearTalkDisabledState()
                DebugEvent('会話タイマークリア　選択肢')
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1362):
            """ State 33 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 5 and not GetEventStatus(1361) and not GetEventStatus(1362)):
            """ State 24 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 5)):
            """ State 25 """
            DisplayOneLineHelp(-1)
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71510000) == 1):
            """ State 13 """
            # talk:31000100:Mng. Hello.
            TalkToPlayer(31000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        """ State 30 """
        Label('L11')
        ClearTalkProgressData()
        """ State 31 """
        ForceEndTalk(0)
    """ State 41 """
    # talk:31000800:Angh, uggghh...
    TalkToPlayer(31000800, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 7:
        Goto('L11')

