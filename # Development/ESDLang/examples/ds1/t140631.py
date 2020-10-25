# -*- coding: utf-8 -*-
def t140631_1():
    """ State 0,47 """
    ShuffleRNGSeed(100)
    SetEventState(71200077, 0)
    SetEventState(71200078, 0)
    SetEventState(71200079, 0)
    """ State 6 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('unknow')
        if IsClientPlayer() == 1:
            """ State 57 """
            DebugEvent('クライアント用待機')
            assert not IsClientPlayer()
            continue
        elif CheckSelfDeath() == 1 and not GetEventStatus(1604) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerDead() == 1 and GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() ==
              1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
              and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 180 and GetDistanceToPlayer()
              <= 5):
            """ State 46 """
            if GetEventStatus(1603) == 1 and not GetEventStatus(71200077):
                """ State 44 """
                # talk:41012000:You sick Hollow...
                TalkToPlayer(41012000, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71200077, 1)
                assert HasTalkEnded() == 1
                continue
            else:
                continue
        elif (GetEventStatus(1603) == 1 and not GetEventStatus(71200065) and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10 and GetSelfHP() <= 40 and not GetEventStatus(71200077)):
            """ State 52 """
            DisplayOneLineHelp(-1)
            # talk:41011800:Hiyaah!
            TalkToPlayer(41011800, -1, -1)
            SetEventState(71200065, 1)
            SetEventState(71200064, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                """ State 17 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                break
            elif HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1601) == 1):
            """ State 37 """
            if GetEventStatus(71200067) == 1 and not GetEventStatus(11406106):
                """ State 42 """
                DisplayOneLineHelp(-1)
                # talk:41010200:Well, there you are again.
                TalkToPlayer(41010200, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 7 """
                    Label('L2')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        break
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71200064)
                          and GetSelfHP() <= 90 and not GetEventStatus(1194)):
                        """ State 12 """
                        # talk:41011700:You have some guts, to turn on us!
                        TalkToPlayer(41011700, -1, -1)
                        SetEventState(71300059, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 13 """
                            SetEventState(71200064, 1)
                            """ State 11 """
                            Label('L3')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L9')
                    elif GetEventStatus(1607) == 1:
                        """ State 10 """
                        Label('L4')
                        ForceEndTalk(3)
                        Goto('L3')
                    elif GetEventStatus(1606) == 1:
                        Goto('L4')
                    elif GetEventStatus(1603) == 1:
                        Goto('L4')
                    elif (not GetEventStatus(71200063) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1601) == 1 and GetEventStatus(71200062) == 1):
                        """ State 34 """
                        # talk:41011630:Have you lost it?
                        TalkToPlayer(41011630, -1, -1)
                        SetEventState(71200063, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 35 """
                            SetEventState(71200063, 1)
                            Goto('L3')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L9')
                    elif (not GetEventStatus(71200062) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1601) == 1 and GetEventStatus(71200061) == 1):
                        """ State 32 """
                        # talk:41011620:Why, you dirty...!
                        TalkToPlayer(41011620, -1, -1)
                        SetEventState(71200062, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 33 """
                            SetEventState(71200062, 1)
                            Goto('L3')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L9')
                    elif (not GetEventStatus(71200061) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1601) == 1 and GetEventStatus(71200060) == 1):
                        """ State 30 """
                        # talk:41011610:Mnph!
                        TalkToPlayer(41011610, -1, -1)
                        SetEventState(71200061, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 31 """
                            SetEventState(71200061, 1)
                            Goto('L3')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L9')
                    elif (not GetEventStatus(71200060) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1601) == 1):
                        """ State 8 """
                        # talk:41011600:Hrg!
                        TalkToPlayer(41011600, -1, -1)
                        SetEventState(71200060, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 9 """
                            SetEventState(71200060, 1)
                            Goto('L3')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L9')
                    elif GetEventStatus(71200063) == 1:
                        Goto('L4')
                    else:
                        Goto('L4')
                elif HasTalkEnded() == 1:
                    """ State 43 """
                    SetEventState(71200068, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L9')
            elif GetEventStatus(71200066) == 1:
                """ State 14 """
                DisplayOneLineHelp(-1)
                # talk:41010100:We meet again.
                TalkToPlayer(41010100, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 15 """
                    SetEventState(71200067, 1)
                    SetEventState(11406106, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L9')
            elif not GetEventStatus(71200066):
                """ State 40 """
                DisplayOneLineHelp(-1)
                # talk:41010000:Hello again.
                TalkToPlayer(41010000, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 41 """
                    SetEventState(71200066, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L9')
            """ State 25 """
            ClearTalkActionState()
            if True:
                """ State 19 """
                while True:
                    # action:15000011:Purchase Weapon
                    AddTalkListData(1, 15000011, -1)
                    ShowShopMessage(0, 0, 0)
                    # action:15000350:Learn gesture
                    AddTalkListData(2, 15000350, 281)
                    # action:15000005:Leave
                    AddTalkListData(4, 15000005, -1)
                    def ExitPause():
                        ClearTalkListData()
                    if not GetTalkListEntryResult():
                        break
                    elif GetTalkListEntryResult() == 1:
                        """ State 18,45 """
                        OpenRegularShop(1700, 1799)
                        if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                            """ State 23 """
                            Label('L5')
                            CloseMenu()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Break('mainloop')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 21 """
                                Label('L6')
                                if GetDistanceToPlayer() >= 12:
                                    pass
                                else:
                                    """ State 27 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                            else:
                                Continue('mainloop')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L5')
                        elif not IsMenuOpen(11):
                            continue
                    elif GetTalkListEntryResult() == 4:
                        break
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 3):
                        """ State 24 """
                        Label('L7')
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        CloseShopMessage()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Break('mainloop')
                        elif IsPlayerMovingACertainDistance(1) == 1:
                            Goto('L6')
                        elif not IsPlayerMovingACertainDistance(1):
                            pass
                    elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L7')
                    elif GetTalkListEntryResult() == 2:
                        """ State 48 """
                        OpenItemAcquisitionMenu(3, 9010, 1)
                        AcquireGesture(10)
                        SetEventState(281, 0)
                        if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L5')
                        elif not IsMenuOpen(63):
                            """ State 56 """
                            # action:10010755:Gesture learned
                            OpenGenericDialog(7, 10010755, 1, 0, 2)
                            DebugEvent('ジェスチャーを学んだ')
                            DisplayOneLineHelp(-1)
                            if CheckSelfDeath() == 1:
                                """ State 54 """
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Break('mainloop')
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                """ State 53 """
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                Continue('mainloop')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 55 """
                                Label('L8')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア　誓約同じ')
                                """ State 22 """
                                if True:
                                    continue
                                elif GetDistanceToPlayer() >= 3:
                                    Continue('mainloop')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L8')
                    """ State 20 """
                    ForceEndTalk(0)
                    Continue('mainloop')
                """ State 26 """
                if DidYouDoSomethingInTheMenu(11) == 1:
                    """ State 28 """
                    SetRNGSeed()
                    if not GetEventStatus(71200080):
                        """ State 29 """
                        # talk:41010300:I see you have a sharp eye for trinkets.
                        TalkToPlayer(41010300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 49 """
                            SetEventState(71200080, 1)
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif not GetEventStatus(71200081):
                        """ State 38 """
                        # talk:41010400:Right then. I'll see you in the forest.
                        TalkToPlayer(41010400, -1, -1)
                        DebugEvent('ノーを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 50 """
                            SetEventState(71200081, 1)
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    else:
                        """ State 39 """
                        DisplayOneLineHelp(-1)
                        # talk:41010500:Right then. I'll be seeing you.
                        TalkToPlayer(41010500, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 51 """
                            SetEventState(71200080, 0)
                            SetEventState(71200081, 0)
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                else:
                    continue
            elif GetDistanceToPlayer() >= 3:
                continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1603) and not GetEventStatus(1604)):
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
        elif (IsAttackedBySomeone() == 1 and not GetEventStatus(1604) and not GetEventStatus(1608) and
              not GetEventStatus(1609)):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 3 """
        Label('L9')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)
    """ State 16,36 """
    # talk:41011900:You poor fool...
    TalkToPlayer(41011900, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L9')

