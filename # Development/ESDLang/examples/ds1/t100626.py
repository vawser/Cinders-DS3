# -*- coding: utf-8 -*-
def t100626_1():
    """ State 0,6 """
    Label('L0')
    while Loop('mainloop'):
        if CheckSelfDeath() == 1 and not GetEventStatus(1435) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1431) == 1 and GetEventStatus(71320006)
              == 1):
            """ State 47 """
            DisplayOneLineHelp(-1)
            # talk:36000300:Aye, siwmae.
            TalkToPlayer(36000300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 39 """
                    Label('L2')
                    ForceCloseMenu()
                    # talk:36000800:By the Lords...why...
                    TalkToPlayer(36000800, -1, -1)
                    DisplayOneLineHelp(-1)
                    if GetDistanceToPlayer() >= 5:
                        pass
                    elif HasTalkEnded() == 1:
                        continue
                elif (GetDistanceToPlayer() <= 5 and not GetEventStatus(71320005) and GetSelfHP() <=
                      90 and IsPlayerAttacking() == 1):
                    """ State 12 """
                    # talk:36000700:What problem do you have now?
                    TalkToPlayer(36000700, -1, -1)
                    SetEventState(71320005, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 14 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71320005, 1)
                        """ State 11 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1434) == 1:
                    """ State 10 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif GetEventStatus(71320004) == 1:
                    Goto('L5')
                elif (not GetEventStatus(71320004) and GetDistanceToPlayer() <= 5 and GetEventStatus(71320003)
                      == 1 and IsPlayerAttacking() == 1):
                    """ State 36 """
                    # talk:36000640:Oww!
                    TalkToPlayer(36000640, -1, -1)
                    SetEventState(71320004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 37 """
                        SetEventState(71320004, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71320003) and GetDistanceToPlayer() <= 5 and GetEventStatus(71320002)
                      == 1 and IsPlayerAttacking() == 1):
                    """ State 34 """
                    # talk:36000630:Ouch!
                    TalkToPlayer(36000630, -1, -1)
                    SetEventState(71320003, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 35 """
                        SetEventState(71320003, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71320002) and GetDistanceToPlayer() <= 5 and GetEventStatus(71320001)
                      == 1 and IsPlayerAttacking() == 1):
                    """ State 32 """
                    # talk:36000620:Now, stop that!
                    TalkToPlayer(36000620, -1, -1)
                    SetEventState(71320002, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 33 """
                        SetEventState(71320002, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71320001) and GetDistanceToPlayer() <= 5 and GetEventStatus(71320000)
                      == 1 and IsPlayerAttacking() == 1):
                    """ State 30 """
                    # talk:36000610:What's this about?
                    TalkToPlayer(36000610, -1, -1)
                    SetEventState(71320001, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 31 """
                        SetEventState(71320001, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71320000) and GetDistanceToPlayer() <= 5 and IsPlayerAttacking()
                      == 1):
                    """ State 8 """
                    # talk:36000600:Hold on, there!
                    TalkToPlayer(36000600, -1, -1)
                    SetEventState(71320000, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71320000, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 23 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 16 """
                    while True:
                        # action:15000010:Purchase Item
                        AddTalkListData(1, 15000010, -1)
                        # action:15000350:Learn gesture
                        AddTalkListData(2, 15000350, 288)
                        ShowShopMessage(0, 0, 0)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        def ExitPause():
                            ClearTalkListData()
                        if not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 26 """
                            if (DidYouDoSomethingInTheMenu(11) == 1 and not GetEventStatus(71320011)
                                and GetEventStatus(1431) == 1 and GetEventStatus(71320010) == 1):
                                """ State 46 """
                                DisplayOneLineHelp(-1)
                                # talk:36001200:Hmm...
                                TalkToPlayer(36001200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 51 """
                                    SetEventState(71320011, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L12')
                            elif (DidYouDoSomethingInTheMenu(11) == 1 and not GetEventStatus(71320010)
                                  and GetEventStatus(71320009) == 1 and GetEventStatus(2) == 1):
                                """ State 43 """
                                # talk:36001100:Hmm...
                                TalkToPlayer(36001100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 50 """
                                    SetEventState(71320010, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L12')
                            elif DidYouDoSomethingInTheMenu(11) == 1 and not GetEventStatus(71320009):
                                """ State 27 """
                                # talk:36001000:Hmm...
                                TalkToPlayer(36001000, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 49 """
                                    SetEventState(71320009, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L12')
                            else:
                                """ State 19 """
                                # talk:36000900:Hmm...
                                TalkToPlayer(36000900, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L12')
                        elif GetTalkListEntryResult() == 1:
                            """ State 15 """
                            if GetEventStatus(1431) == 1:
                                """ State 60 """
                                OpenRegularShop(1500, 1599)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    """ State 21 """
                                    Label('L7')
                                    CloseMenu()
                                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                        Goto('L2')
                                    elif IsPlayerMovingACertainDistance(1) == 1:
                                        """ State 18 """
                                        Label('L8')
                                        if GetDistanceToPlayer() >= 12:
                                            """ State 17 """
                                            Label('L9')
                                            ForceEndTalk(0)
                                            Continue('mainloop')
                                        else:
                                            """ State 25 """
                                            Continue('mainloop')
                                    elif not IsPlayerMovingACertainDistance(1):
                                        Goto('L9')
                                    else:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15):
                                    Goto('L7')
                                elif not IsMenuOpen(11):
                                    continue
                            elif GetEventStatus(1430) == 1:
                                """ State 48 """
                                OpenRegularShop(1500, 1569)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L7')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15):
                                    Goto('L7')
                                elif not IsMenuOpen(11):
                                    continue
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            """ State 22 """
                            Label('L10')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                Goto('L8')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L9')
                        elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L10')
                        elif GetTalkListEntryResult() == 2:
                            """ State 54 """
                            OpenItemAcquisitionMenu(3, 9004, 1)
                            AcquireGesture(4)
                            SetEventState(288, 0)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L7')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 15):
                                Goto('L7')
                            elif not IsMenuOpen(63):
                                """ State 58 """
                                # action:10010755:Gesture learned
                                OpenGenericDialog(7, 10010755, 1, 0, 2)
                                DebugEvent('ジェスチャーを学んだ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    """ State 56 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                        Goto('L2')
                                    else:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 55 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 57 """
                                    Label('L11')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L11')
                        """ State 20 """
                        if True:
                            pass
                        elif GetDistanceToPlayer() >= 3:
                            Continue('mainloop')
                    """ State 24 """
                    if DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 28 """
                        DebugEvent('買って立ち去る')
                        """ State 52 """
                        # talk:36000400:Thank you. That was a fine trade.
                        TalkToPlayer(36000400, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif not DidYouDoSomethingInTheMenu(11):
                        """ State 29 """
                        DebugEvent('買わず立ち去る')
                        """ State 53 """
                        # talk:36000500:Well, that is a shame, then.
                        TalkToPlayer(36000500, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    else:
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(11006100) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71320006)
              == 1):
            """ State 44 """
            DisplayOneLineHelp(-1)
            # talk:36000100:Aye, siwmae.
            TalkToPlayer(36000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 45 """
                SetEventState(71320008, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71320006) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 42 """
            DisplayOneLineHelp(-1)
            # talk:36000020:Aye, siwmae.
            TalkToPlayer(36000020, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 59 """
                SetEventState(71320007, 1)
                SetEventState(11006100, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71320006) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 40 """
            DisplayOneLineHelp(-1)
            # talk:36000000:Aye, siwmae.
            TalkToPlayer(36000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 41 """
                SetEventState(71320006, 1)
                SetEventState(11006100, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1434) and not GetEventStatus(1435)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1435):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L12')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)
    """ State 38 """
    ForceCloseMenu()
    # talk:36000800:By the Lords...why...
    TalkToPlayer(36000800, -1, -1)
    DisplayOneLineHelp(-1)
    if GetDistanceToPlayer() >= 5:
        Goto('L12')
    elif HasTalkEnded() == 1:
        Goto('L0')

