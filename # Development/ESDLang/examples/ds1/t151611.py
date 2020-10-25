# -*- coding: utf-8 -*-
def t151611_1():
    """ State 0,20 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(30)
        if CheckSelfDeath() == 1 and not GetEventStatus(1232) and GetDistanceToPlayer() <= 15:
            """ State 34 """
            # talk:21000500:Aieegh...
            TalkToPlayer(21000500, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                pass
            elif GetDistanceToPlayer() >= 16:
                break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 12 and GetOneLineHelpStatus() == 1 and GetEventStatus(71510020) == 1):
            """ State 45 """
            ForceCloseMenu()
            SetTalkTime(2.5)
            def ExitPause():
                SetEventState(11515351, 1)
            if not GetEventStatus(71510023) and GetEventStatus(11800200) == 1:
                """ State 41 """
                # talk:21000600:Magnificent...Thou hast filled the Lordvessel.
                TalkToPlayer(21000600, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 19 """
                    Label('L1')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 15:
                        """ State 36 """
                        Label('L2')
                        # talk:21000500:Aieegh...
                        TalkToPlayer(21000500, -1, -1)
                        DisplayOneLineHelp(-1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 16:
                            break
                    elif GetEventStatus(1231) == 1:
                        """ State 16 """
                        Label('L3')
                        ForceEndTalk(3)
                        """ State 15 """
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        if GetEventStatus(11515351) == 1:
                            """ State 29 """
                            Label('L4')
                            SetEventState(11515351, 0)
                            continue
                        else:
                            continue
                    elif GetEventStatus(71510028) == 1:
                        Goto('L3')
                    else:
                        Goto('L3')
                elif HasTalkEnded() == 1:
                    """ State 42 """
                    SetEventState(71510023, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      15):
                    break
            elif GetEventStatus(71510022) == 1:
                """ State 17 """
                # talk:21000200:O Chosen Undead.
                TalkToPlayer(21000200, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      15):
                    break
            elif not GetEventStatus(71510022) and GetEventStatus(71510021) == 1:
                """ State 38 """
                Label('L5')
                # talk:21000110:And beseech thee. Succeed Lord Gwyn, and inheriteth the Fire of\nour world.
                TalkToPlayer(21000110, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 40 """
                    SetEventState(71510022, 1)
                    SetEventState(11516101, 1)
                    Goto('L4')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      15):
                    break
            elif not GetEventStatus(71510021):
                """ State 30 """
                # talk:21000100:O chosen Undead.
                TalkToPlayer(21000100, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 31 """
                    SetEventState(71510021, 1)
                    SetEventState(11510592, 1)
                    if GetDistanceToPlayer() >= 15:
                        Goto('L4')
                    elif not IsMenuOpen(63) and GetDistanceToPlayer() <= 15:
                        Goto('L5')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      15 or IsPlayerDead() == 1):
                    break
            """ State 27 """
            while Loop('loop1'):
                ClearTalkActionState()
                if True:
                    """ State 12 """
                    while True:
                        # action:15000200:Enter Covenant
                        AddTalkListData(2, 15000200, -1)
                        # action:15000000:Talk
                        AddTalkListData(1, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        ShowShopMessage(0, 0, 0)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 24 """
                            Label('L6')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 15:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 14 """
                                # talk:21000300:Now thou shalt go forth, chosen Undead.
                                TalkToPlayer(21000300, -1, -1)
                                if GetDistanceToPlayer() >= 15:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 33 """
                                    SetEventState(71510026, 1)
                                    SetEventState(71510027, 0)
                                    Goto('L4')
                                """ State 13 """
                                Label('L7')
                                ForceEndTalk(0)
                                Goto('L4')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L7')
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif GetTalkListEntryResult() == 1:
                            """ State 49 """
                            if GetEventStatus(71510015) == 1:
                                """ State 54 """
                                # talk:21000800:Please. Father's role thou should assume, and inheriteth the Fire\nof our world.
                                TalkToPlayer(21000800, -1, -1)
                                DisplayOneLineHelp(-1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 55 """
                                    SetEventState(71510016, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15 or IsPlayerDead() == 1):
                                    Break('mainloop')
                            elif not GetEventStatus(71510015):
                                """ State 52 """
                                # talk:21000700:Since the day Father his form did obscureth, I have await'd thee.
                                TalkToPlayer(21000700, -1, -1)
                                DisplayOneLineHelp(-1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 53 """
                                    SetEventState(71510015, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15 or IsPlayerDead() == 1):
                                    Break('mainloop')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L6')
                        elif GetTalkListEntryResult() == 2:
                            """ State 35 """
                            if ComparePlayerStatus(11, 0, 2) == 1:
                                """ State 6 """
                                # action:10010726:Already belong to this Covenant
                                OpenGenericDialog(7, 10010726, 1, 0, 2)
                                DebugEvent('誓約が同じ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 8 """
                                    Label('L8')
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Goto('L4')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 7 """
                                    Label('L9')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L13')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L9')
                            else:
                                """ State 5 """
                                # action:10010745:Join Covenant? (abandons former Covenant)
                                OpenGenericDialog(8, 10010745, 3, 4, 2)
                                ChangePlayerStats(31, 5, 2)
                                RequestUnlockTrophy(8)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15):
                                    """ State 2 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Goto('L4')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 4 """
                                    Label('L10')
                                    DebugEvent('誓約を変更しない')
                                    """ State 1 """
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　選択肢')
                                    Goto('L13')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L10')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    """ State 3 """
                                    BreakCovenantPledge()
                                    DebugEvent('誓約を変更する')
                                    ChangePlayerStats(11, 5, 2)
                                    SetEventState(71510024, 1)
                                    SetEventState(844, 1)
                                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                        or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                        > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone()
                                        == 1):
                                        Goto('L8')
                                    elif not GetEventStatus(844):
                                        """ State 43 """
                                        SetEventState(11510595, 1)
                                        if GetDistanceToPlayer() >= 15:
                                            Goto('L4')
                                        elif not IsMenuOpen(63) and GetDistanceToPlayer() <= 15:
                                            """ State 44 """
                                            Label('L11')
                                            # action:10010729:Covenant established
                                            OpenGenericDialog(7, 10010729, 1, 0, 2)
                                            DebugEvent('誓約を交わしました')
                                            DisplayOneLineHelp(-1)
                                            if CheckSelfDeath() == 1:
                                                pass
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone()
                                                  == 1):
                                                Goto('L8')
                                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                """ State 50 """
                                                Label('L12')
                                                # talk:21000900:Hereafter, I, Gwynevere, shall serveth as thine guardian.
                                                TalkToPlayer(21000900, -1, -1)
                                                DisplayOneLineHelp(-1)
                                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                    Goto('L1')
                                                elif HasTalkEnded() == 1:
                                                    """ State 51 """
                                                    SetEventState(71510017, 1)
                                                    Continue('loop1')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 15):
                                                    Break('mainloop')
                                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                Goto('L12')
                                    elif not GetEventStatus(844):
                                        Goto('L11')
                            """ State 37 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 15:
                                Goto('L2')
                            else:
                                Goto('L4')
                        """ State 18 """
                        Label('L13')
                        if True:
                            pass
                        elif GetDistanceToPlayer() >= 15:
                            Goto('L4')
                    """ State 46 """
                    SetEventState(11515351, 0)
                    if DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 10 """
                        DebugEvent('買って立ち去る')
                        """ State 32 """
                        # talk:21000300:Now thou shalt go forth, chosen Undead.
                        TalkToPlayer(21000300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            Continue('mainloop')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Break('mainloop')
                    elif not DidYouDoSomethingInTheMenu(11):
                        """ State 11 """
                        DebugEvent('買わず立ち去る')
                        """ State 9 """
                        # talk:21000300:Now thou shalt go forth, chosen Undead.
                        TalkToPlayer(21000300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            Continue('mainloop')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Break('mainloop')
                    else:
                        Continue('mainloop')
                elif GetDistanceToPlayer() >= 15:
                    Goto('L4')
        elif (GetEventStatus(1230) == 1 and not GetEventStatus(71510020) and GetDistanceToPlayer() <=
              16 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 16):
            """ State 56 """
            ForceCloseMenu()
            DisplayOneLineHelp(-1)
            # talk:21000000:Thou hast journey'd far, and overcome much, chosen Undead.
            TalkToPlayer(21000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 57 """
                SetEventState(71510020, 1)
            elif GetDistanceToPlayer() >= 16:
                break
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 12 and not GetEventStatus(1231) and not GetEventStatus(1232)):
            """ State 21 """
            # action:10010210:Kneel
            DisplayOneLineHelp(10010210)
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 12)):
            """ State 22 """
            DisplayOneLineHelp(-1)
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1232):
            """ State 28 """
            DisplayOneLineHelp(-1)
            Goto('L1')
    """ State 25 """
    ClearTalkProgressData()
    """ State 26 """
    ForceEndTalk(0)
    Goto('L0')

