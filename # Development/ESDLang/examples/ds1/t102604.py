# -*- coding: utf-8 -*-
def t102604_1():
    """ State 0,19 """
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1115) and GetDistanceToPlayer() <= 5:
            """ State 39 """
            Label('L0')
            # talk:14012400:Rrrg...
            TalkToPlayer(14012400, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and ComparePlayerStatus(5, 1, 10) == 1):
            """ State 62 """
            if GetEventStatus(71020067) == 1 and GetEventStatus(1171) == 1 and not GetEventStatus(71020066):
                """ State 86 """
                Label('L1')
                # talk:14012500:Did you see them?
                TalkToPlayer(14012500, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 18 """
                    Label('L2')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1:
                        """ State 82 """
                        Label('L3')
                        # talk:14012400:Rrrg...
                        TalkToPlayer(14012400, -1, -1)
                        DisplayOneLineHelp(-1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 5:
                            pass
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71020054)
                          and GetSelfHP() <= 90):
                        """ State 10 """
                        # talk:14012300:Damn...you've lost it, haven't you?
                        TalkToPlayer(14012300, -1, -1)
                        SetEventState(71020054, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            """ State 83 """
                            Label('L4')
                            ClearTalkProgressData()
                            def ExitPause():
                                RemoveMyAggro()
                            assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                            Goto('L0')
                        elif HasTalkEnded() == 1:
                            """ State 9 """
                            SetEventState(71020054, 1)
                            """ State 11 """
                            Label('L5')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            pass
                    elif GetEventStatus(1114) == 1:
                        """ State 12 """
                        Label('L6')
                        ForceEndTalk(3)
                        Goto('L5')
                    elif (not GetEventStatus(71020050) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5):
                        """ State 14 """
                        # talk:14012200:Uwwah!
                        TalkToPlayer(14012200, -1, -1)
                        SetEventState(71020050, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 13 """
                            SetEventState(71020050, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (GetEventStatus(71020050) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(71020051)):
                        """ State 77 """
                        # talk:14012220:Heavens!
                        TalkToPlayer(14012220, -1, -1)
                        SetEventState(71020051, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 76 """
                            SetEventState(71020051, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (GetEventStatus(71020051) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(71020052)):
                        """ State 79 """
                        # talk:14012240:In the name of sanity!
                        TalkToPlayer(14012240, -1, -1)
                        SetEventState(71020052, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 78 """
                            SetEventState(71020052, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (GetEventStatus(71020052) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(71020053)):
                        """ State 81 """
                        # talk:14012260:Cease! Have you gone mad!
                        TalkToPlayer(14012260, -1, -1)
                        SetEventState(71020053, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 80 """
                            SetEventState(71020053, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(71020053) == 1:
                        Goto('L6')
                    else:
                        Goto('L6')
                elif HasTalkEnded() == 1:
                    """ State 87 """
                    SetEventState(71020066, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif (not GetEventStatus(71020063) and GetEventStatus(1113) == 1 and GetEventStatus(71020067)
                  == 1):
                """ State 65 """
                # talk:14011620:Oh, there you are! Just so you know...
                TalkToPlayer(14011620, -1, -1)
                DisplayOneLineHelp(-1)
                DebugEvent('逃亡後素養無し')
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 51 """
                    SetEventState(71020063, 1)
                    SetEventState(71020062, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif (not GetEventStatus(71020061) and GetEventStatus(71020067) == 1 and not GetEventStatus(71020063)
                  and GetEventStatus(11500594) == 1 and not GetEventStatus(1096) and (GetEventStatus(1091)
                  == 1 or GetEventStatus(1092) == 1)):
                """ State 46 """
                Label('L7')
                # talk:14011200:Oh, hello again!
                TalkToPlayer(14011200, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 47 """
                    SetEventState(71020061, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71020067) and not GetEventStatus(71020057):
                """ State 40 """
                # talk:14010010:Oh, hello.
                TalkToPlayer(14010010, -1, -1)
                DisplayOneLineHelp(-1)
                DebugEvent('素養無し挨拶1')
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 41 """
                    SetEventState(71020067, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            else:
                """ State 63 """
                # talk:14010300:Oh, hello.
                TalkToPlayer(14010300, -1, -1)
                DisplayOneLineHelp(-1)
                DebugEvent('素養なし挨拶２')
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11026106) == 1 and GetEventStatus(71020055)
              == 1):
            """ State 36 """
            # talk:14010700:No matter. Let us continue.
            TalkToPlayer(14010700, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 35 """
                SetEventState(71020055, 0)
                """ State 26 """
                Label('L8')
                ClearTalkActionState()
                if True:
                    """ State 6 """
                    Label('L9')
                    while True:
                        # action:15000010:Purchase Item
                        AddTalkListData(1, 15000010, -1)
                        ShowShopMessage(0, 0, 0)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        def ExitPause():
                            ClearTalkListData()
                        if not GetTalkListEntryResult():
                            """ State 28 """
                            Label('L10')
                            if DidYouDoSomethingInTheMenu(11) == 1:
                                """ State 2 """
                                DebugEvent('買って立ち去る')
                                """ State 31 """
                                # talk:14010500:All right. That'll do it.
                                TalkToPlayer(14010500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                            elif not DidYouDoSomethingInTheMenu(11):
                                """ State 3 """
                                DebugEvent('買わず立ち去る')
                                """ State 1 """
                                # talk:14010400:Good-bye, then.
                                TalkToPlayer(14010400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                            else:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 3:
                            break
                        elif GetTalkListEntryResult() == 1:
                            """ State 5 """
                            if GetEventStatus(1112) == 1:
                                """ State 4 """
                                OpenRegularShop(2000, 2019)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 3):
                                    pass
                                elif not IsMenuOpen(11):
                                    continue
                            elif GetEventStatus(1113) == 1:
                                """ State 44 """
                                OpenRegularShop(2000, 2099)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 3):
                                    pass
                                elif not IsMenuOpen(11):
                                    continue
                            """ State 22 """
                            CloseMenu()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L3')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 8 """
                                Label('L11')
                                # talk:14010600:Hm? What's that?
                                TalkToPlayer(14010600, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif GetDistanceToPlayer() >= 12:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 32 """
                                    SetEventState(11026106, 1)
                                    SetEventState(71020055, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                            else:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 4:
                            Goto('L10')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            """ State 23 """
                            Label('L12')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L3')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                Goto('L11')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L12')
                        """ State 7 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 34 """
                    if GetEventStatus(71020064) == 1 and GetEventStatus(723) == 1:
                        break
                    elif not GetEventStatus(71020074) and GetEventStatus(1095) == 1:
                        """ State 72 """
                        # talk:14011900:Ohh! Master Logan is at the Archives?!
                        TalkToPlayer(14011900, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 73 """
                            SetEventState(71020074, 1)
                            """ State 17 """
                            Label('L13')
                            if True:
                                Goto('L9')
                            elif GetDistanceToPlayer() >= 3:
                                continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(1113) == 1 and not GetEventStatus(71020074):
                        """ State 70 """
                        # talk:14011800:It's not that I am concerned for Master Logan's welfare.
                        TalkToPlayer(14011800, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 71 """
                            SetEventState(71020073, 1)
                            Goto('L13')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(1092) == 1 and GetEventStatus(71020077) == 1:
                        """ State 68 """
                        # talk:14011500:Have you ever cast one of Logan's spells?
                        TalkToPlayer(14011500, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 69 """
                            SetEventState(71020072, 1)
                            Goto('L13')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(1092) == 1 and not GetEventStatus(71020072):
                        """ State 66 """
                        # talk:14011400:Have you spoken to Master Logan?
                        TalkToPlayer(14011400, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 67 """
                            SetEventState(71020071, 1)
                            Goto('L13')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif not GetEventStatus(11026106) and GetEventStatus(71020069) == 1 and not GetEventStatus(71020070):
                        """ State 42 """
                        # talk:14011000:I wish to do what I can to locate Master Logan.
                        TalkToPlayer(14011000, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 43 """
                            SetEventState(71020070, 1)
                            Goto('L13')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(71020068) == 1 and not GetEventStatus(71020069):
                        """ State 37 """
                        # talk:14010900:Ahh, yes, the note that Master Logan left?
                        TalkToPlayer(14010900, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 38 """
                            SetEventState(71020069, 1)
                            SetEventState(11026106, 1)
                            Goto('L13')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(1090) == 1 and not GetEventStatus(71020068):
                        """ State 16 """
                        # talk:14010800:Have you heard of Big Hat Logan?
                        TalkToPlayer(14010800, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 33 """
                            SetEventState(71020068, 1)
                            Goto('L13')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    else:
                        """ State 89 """
                        # talk:14012600:Two things are required for sorcery.
                        TalkToPlayer(14012600, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 90 """
                            SetEventState(71020076, 1)
                            Goto('L13')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71020066) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1171)
              == 1 and GetEventStatus(71020057) == 1):
            Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71020064) == 1 and GetEventStatus(723)
              == 1):
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71020064) and GetEventStatus(71020074)
              == 1):
            """ State 52 """
            # talk:14012000:Oh, hello.
            TalkToPlayer(14012000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 53 """
                SetEventState(71020064, 1)
                Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71020062) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1113)
              == 1 and not GetEventStatus(71020074) and GetEventStatus(71020057) == 1 and not GetEventStatus(71020063)):
            """ State 48 """
            # talk:14011600:Oh, there you are! Just so you know...
            TalkToPlayer(14011600, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 49 """
                SetEventState(71020062, 1)
                SetEventState(71020063, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71020061) and GetEventStatus(71020057)
              == 1 and not GetEventStatus(71020062) and GetEventStatus(11500594) == 1 and not GetEventStatus(1096)
              and (GetEventStatus(1091) == 1 or GetEventStatus(1092) == 1)):
            Goto('L7')
        elif (GetEventStatus(71020063) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and ComparePlayerStatus(5,
              4, 10) == 1 and not GetEventStatus(71020058) and not GetEventStatus(71020059)):
            """ State 88 """
            # talk:14010640:Oh, hello.
            TalkToPlayer(14010640, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 30 """
                Label('L14')
                SetEventState(71020057, 1)
                """ State 58 """
                Label('L15')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 84 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L3')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 55 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 57 """
                    Label('L16')
                    DebugEvent('魔術を教わらない')
                    SetEventState(71020059, 1)
                    """ State 60 """
                    # talk:14010040:Yes, I see...
                    TalkToPlayer(14010040, -1, -1)
                    DebugEvent('ノーを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 54 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L16')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 56 """
                    DebugEvent('魔術を教わる')
                    SetEventState(71020058, 1)
                    """ State 59 """
                    # talk:14010020:Splendid! Very well!
                    TalkToPlayer(14010020, -1, -1)
                    DebugEvent('イエスを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 61 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        Goto('L8')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71020067) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and ComparePlayerStatus(5,
              4, 10) == 1 and not GetEventStatus(71020058) and not GetEventStatus(71020059)):
            """ State 85 """
            # talk:14010100:Oh, hello.
            TalkToPlayer(14010100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L14')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71020058) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71020059)):
            """ State 29 """
            # talk:14010000:Oh, hello.
            TalkToPlayer(14010000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L14')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71020058) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71020059)
              == 1):
            """ State 45 """
            # talk:14010220:Oh, hello.
            TalkToPlayer(14010220, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L15')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71020062) == 1 and GetEventStatus(1113)
              == 1):
            """ State 50 """
            # talk:14011700:Oh, hello, you made it!
            TalkToPlayer(14011700, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71020061) == 1):
            """ State 64 """
            # talk:14011300:Oh, hello.
            TalkToPlayer(14011300, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71020058) == 1):
            """ State 15 """
            # talk:14010200:Oh, hello.
            TalkToPlayer(14010200, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1114) and not GetEventStatus(1115)):
            """ State 20 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 21 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1115):
            """ State 27 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 24 """
        Label('L17')
        ClearTalkProgressData()
        """ State 25 """
        ForceEndTalk(0)
    """ State 74 """
    # talk:14012100:I have decided to seek the Regal Archives.
    TalkToPlayer(14012100, -1, -1)
    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
        Goto('L2')
    elif HasTalkEnded() == 1:
        """ State 75 """
        SetEventState(71020075, 1)
        Goto('L13')
    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer() ==
          1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
        Goto('L17')

