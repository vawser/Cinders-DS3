# -*- coding: utf-8 -*-
def t101637_1():
    """ State 0,80 """
    SetEventState(71800067, 0)
    """ State 6 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1702) and GetDistanceToPlayer() <= 5:
            break
        elif (GetEventStatus(1701) == 1 and IsPlayerDead() == 1 and GetDistanceToPlayer() <= 5 and not
              GetEventStatus(71800067) and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 71 """
            # talk:47001200:Much trouble hast thou caus'd.
            TalkToPlayer(47001200, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71800067, 1)
            assert HasTalkEnded() == 1
            continue
        # goods:373:Indictment
        elif not IsEquipmentIDObtained(3, 373) and GetEventStatus(71800065) == 1:
            """ State 78 """
            SetEventState(71800065, 0)
            continue
        # goods:373:Indictment
        elif IsEquipmentIDObtained(3, 373) == 1 and not GetEventStatus(71800065):
            """ State 77 """
            SetEventState(71800065, 1)
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1700) == 1):
            """ State 53 """
            if (not GetEventStatus(71800056) and not GetEventStatus(71800057) and ComparePlayerStatus(11,
                5, 1) == 1):
                """ State 59 """
                DisplayOneLineHelp(-1)
                # talk:47001400:Greetings.
                TalkToPlayer(47001400, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 7 """
                    Label('L1')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        """ State 16 """
                        Label('L2')
                        DisplayOneLineHelp(-1)
                        # talk:47001100:Thou shalt regret this...
                        TalkToPlayer(47001100, -1, -1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 5:
                            Goto('L20')
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71800055)
                          and GetSelfHP() <= 90):
                        """ State 12 """
                        # talk:47001000:Thou hast made thyself clear.
                        TalkToPlayer(47001000, -1, -1)
                        SetEventState(71800055, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            """ State 17 """
                            Label('L3')
                            ClearTalkProgressData()
                            def ExitPause():
                                RemoveMyAggro()
                            assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                            break
                        elif HasTalkEnded() == 1:
                            """ State 13 """
                            SetEventState(71800055, 1)
                            """ State 11 """
                            Label('L4')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            Goto('L20')
                    elif GetEventStatus(1701) == 1:
                        """ State 10 """
                        Label('L5')
                        ForceEndTalk(3)
                        Goto('L4')
                    elif (not GetEventStatus(71800054) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71800053) == 1):
                        """ State 50 """
                        # talk:47000940:By the Lords!
                        TalkToPlayer(47000940, -1, -1)
                        SetEventState(71800054, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 51 """
                            SetEventState(71800054, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L20')
                    elif (not GetEventStatus(71800053) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71800052) == 1):
                        """ State 48 """
                        # talk:47000930:Oog!
                        TalkToPlayer(47000930, -1, -1)
                        SetEventState(71800053, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 49 """
                            SetEventState(71800053, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L20')
                    elif (not GetEventStatus(71800052) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71800051) == 1):
                        """ State 46 """
                        # talk:47000920:Arg!
                        TalkToPlayer(47000920, -1, -1)
                        SetEventState(71800052, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 47 """
                            SetEventState(71800052, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L20')
                    elif (not GetEventStatus(71800051) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71800050) == 1):
                        """ State 44 """
                        # talk:47000910:Hrgt!
                        TalkToPlayer(47000910, -1, -1)
                        SetEventState(71800051, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 45 """
                            SetEventState(71800051, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L20')
                    elif (not GetEventStatus(71800050) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5):
                        """ State 8 """
                        # talk:47000900:Ooph!
                        TalkToPlayer(47000900, -1, -1)
                        SetEventState(71800050, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 9 """
                            SetEventState(71800050, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L20')
                    elif GetEventStatus(71300058) == 1:
                        Goto('L5')
                    else:
                        Goto('L5')
                elif HasTalkEnded() == 1:
                    """ State 60 """
                    SetEventState(71800057, 1)
                    SetEventState(11016111, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L20')
            elif not GetEventStatus(71800056) and ComparePlayerStatus(11, 0, 1) == 1 and not GetEventStatus(71800057):
                """ State 56 """
                DisplayOneLineHelp(-1)
                # talk:47001300:Greetings.
                TalkToPlayer(47001300, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 57 """
                    SetEventState(71800056, 1)
                    SetEventState(11016111, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L20')
            elif GetEventStatus(71800061) == 1 and not GetEventStatus(11016111) and GetPlayerChrType() == 8:
                """ State 67 """
                DisplayOneLineHelp(-1)
                # talk:47000400:Greetings. Well, I did'st not expect to find thee Hollow.
                TalkToPlayer(47000400, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 68 """
                    SetEventState(71800062, 1)
                    SetEventState(11016111, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L20')
            elif GetEventStatus(71800058) == 1 and GetPlayerChrType() == 8:
                """ State 69 """
                DisplayOneLineHelp(-1)
                # talk:47000300:Greetings. Just in time, art thee not?
                TalkToPlayer(47000300, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 70 """
                    SetEventState(71800061, 1)
                    SetEventState(11016111, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L20')
            elif not GetEventStatus(11016111) and GetEventStatus(71800059) == 1:
                """ State 65 """
                DisplayOneLineHelp(-1)
                # talk:47000200:Greetings, and a pleasure to see thee again.
                TalkToPlayer(47000200, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 66 """
                    SetEventState(71800060, 1)
                    SetEventState(11016111, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L20')
            elif GetEventStatus(71800058) == 1 and not GetEventStatus(11016111):
                """ State 54 """
                # talk:47001600:Good tidings, thou art welcome.
                TalkToPlayer(47001600, -1, -1)
                DebugEvent('イエスを選んだあと')
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L20')
                elif HasTalkEnded() == 1:
                    """ State 76 """
                    SetEventState(71800059, 1)
                    SetEventState(11016111, 1)
            else:
                """ State 14 """
                DisplayOneLineHelp(-1)
                # talk:47000100:Greetings, and welcome back.
                TalkToPlayer(47000100, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 15 """
                    SetEventState(71800058, 1)
                    SetEventState(11016111, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L20')
            """ State 26 """
            ClearTalkActionState()
            if True:
                """ State 19 """
                while True:
                    # action:15000010:Purchase Item
                    AddTalkListData(2, 15000010, -1)
                    # action:15000210:Abandon Covenant
                    AddTalkListData(5, 15000210, -1)
                    # action:15000165:Request Absolution
                    AddTalkListData(6, 15000165, -1)
                    ShowShopMessage(0, 0, 0)
                    # action:15000350:Learn gesture
                    AddTalkListData(1, 15000350, 283)
                    # action:15000000:Talk
                    AddTalkListData(3, 15000000, 71300069)
                    # action:15000005:Leave
                    AddTalkListData(4, 15000005, -1)
                    def ExitPause():
                        ClearTalkListData()
                    if not GetTalkListEntryResult():
                        """ State 27 """
                        Label('L6')
                        if GetEventStatus(71800064) == 1:
                            """ State 58 """
                            DisplayOneLineHelp(-1)
                            # talk:47000600:If thou commiteth a crime, bring thyself back here.
                            TalkToPlayer(47000600, -1, -1)
                            SetEventState(71800064, 0)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                break
                        # goods:373:Indictment
                        elif (DidYouDoSomethingInTheMenu(11) == 1 and IsEquipmentIDObtained(3, 373) ==
                              1 and not GetEventStatus(71800065)):
                            """ State 32 """
                            DebugEvent('買って立ち去る')
                            """ State 55 """
                            DisplayOneLineHelp(-1)
                            # talk:47000700:Stocking up on Indictments? How honourable of you.
                            TalkToPlayer(47000700, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                break
                        elif True:
                            """ State 33 """
                            DebugEvent('買わず立ち去る')
                            """ State 31 """
                            # talk:47000800:Thou art welcome anytime.
                            TalkToPlayer(47000800, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                break
                        else:
                            """ State 34 """
                            Label('L7')
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　選択肢')
                    elif GetTalkListEntryResult() == 3:
                        """ State 30,22 """
                        # talk:47001700:Hmm...
                        TalkToPlayer(47001700, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 29 """
                            SetEventState(71800066, 1)
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            break
                    elif GetTalkListEntryResult() == 2:
                        """ State 18,75 """
                        OpenRegularShop(4400, 4499)
                        if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                            """ State 24 """
                            Label('L8')
                            CloseMenu()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 21 """
                                Label('L9')
                                if GetDistanceToPlayer() >= 12:
                                    """ State 20 """
                                    Label('L10')
                                    ForceEndTalk(0)
                                    Continue('mainloop')
                                else:
                                    """ State 28 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L10')
                            else:
                                Continue('mainloop')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L8')
                        elif not IsMenuOpen(11):
                            continue
                    elif GetTalkListEntryResult() == 4:
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 3):
                        """ State 25 """
                        Label('L11')
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        CloseShopMessage()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L2')
                        elif IsPlayerMovingACertainDistance(1) == 1:
                            Goto('L9')
                        elif not IsPlayerMovingACertainDistance(1):
                            Goto('L10')
                    elif IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L11')
                    elif GetTalkListEntryResult() == 5:
                        """ State 42 """
                        if ComparePlayerStatus(11, 0, 0) == 1:
                            """ State 39 """
                            # action:10010727:No Covenants to abandon
                            OpenGenericDialog(7, 10010727, 1, 0, 2)
                            DebugEvent('誓約が同じ')
                            DisplayOneLineHelp(-1)
                            if CheckSelfDeath() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                """ State 41 """
                                Label('L12')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                Continue('mainloop')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 40 """
                                Label('L13')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア　誓約同じ')
                                Goto('L19')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L13')
                        else:
                            """ State 38 """
                            # action:10010746:Abandon present Covenant?
                            OpenGenericDialog(8, 10010746, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                """ State 35 """
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                Continue('mainloop')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 37 """
                                Label('L14')
                                DebugEvent('誓約を変更しない')
                                Goto('L7')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L14')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 36 """
                                ForceCloseMenu()
                                SetTalkTime(2.5)
                                BreakCovenantPledge()
                                DebugEvent('誓約を変更する')
                                ChangePlayerStats(11, 5, 0)
                                SetEventState(840, 1)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                    Goto('L12')
                                elif not GetEventStatus(840):
                                    """ State 81 """
                                    # action:10010728:Covenant abandoned
                                    OpenGenericDialog(7, 10010728, 1, 0, 2)
                                    DebugEvent('誓約を破棄した')
                                    DisplayOneLineHelp(-1)
                                    if CheckSelfDeath() == 1:
                                        pass
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                          == 1):
                                        Goto('L12')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        Goto('L13')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        Goto('L13')
                        """ State 43 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L2')
                        else:
                            Continue('mainloop')
                    elif GetTalkListEntryResult() == 6:
                        """ State 84 """
                        if not GetEventStatus(742) and not GetEventStatus(744):
                            """ State 83 """
                            # action:10010734:You have not sinned
                            OpenGenericDialog(7, 10010734, 1, 0, 1)
                            DebugEvent('罪を犯していない')
                            DisplayOneLineHelp(-1)
                            if CheckSelfDeath() == 1:
                                """ State 64 """
                                Label('L15')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone() == 1):
                                """ State 74 """
                                Label('L16')
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                Continue('mainloop')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 73 """
                                Label('L17')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア　誓約同じ')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L17')
                        elif GetEventStatus(742) == 1 or GetEventStatus(744) == 1:
                            """ State 63 """
                            # action:10020052:Request absolution? Required souls: <?evntAcquittalPrice?>
                            OpenGenericDialog(8, 10020052, 3, 4, 2)
                            SetAquittalCostMessageTag(500, 1)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L15')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                """ State 61 """
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                Continue('mainloop')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 62 """
                                Label('L18')
                                DebugEvent('免罪しない')
                                SetEventState(71300079, 1)
                                SetEventState(71300087, 1)
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L18')
                            elif (GetGenericDialogButtonResult() == 1 and ComparePlayerAcquittalPrice(500,
                                  1, 2) == 1 and not IsGenericDialogOpen()):
                                """ State 72 """
                                # action:10010754:Insufficient souls
                                OpenGenericDialog(7, 10010754, 1, 0, 1)
                                DebugEvent('誓約が同じ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    Goto('L15')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone() ==
                                      1):
                                    Goto('L16')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L17')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L17')
                            elif (GetGenericDialogButtonResult() == 1 and ComparePlayerAcquittalPrice(500,
                                  1, 3) == 1 and not IsGenericDialogOpen()):
                                """ State 85 """
                                ForceCloseMenu()
                                SetTalkTime(2.5)
                                DebugEvent('免罪する')
                                SubtractAcquittalCostFromPlayerSouls(500, 1)
                                SetEventState(755, 1)
                                SetEventState(71800064, 1)
                                SetEventState(840, 1)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                    Goto('L12')
                                elif not GetEventStatus(840):
                                    """ State 82 """
                                    # action:10010735:You were cleansed of sin
                                    OpenGenericDialog(7, 10010735, 1, 0, 1)
                                    DebugEvent('免罪する')
                                    DisplayOneLineHelp(-1)
                                    if CheckSelfDeath() == 1:
                                        Goto('L15')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone()
                                          == 1):
                                        Goto('L16')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        Goto('L17')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        Goto('L17')
                    elif GetTalkListEntryResult() == 1:
                        """ State 79 """
                        OpenItemAcquisitionMenu(3, 9011, 1)
                        AcquireGesture(11)
                        SetEventState(283, 0)
                        if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L8')
                        elif not IsMenuOpen(63):
                            """ State 87 """
                            # action:10010755:Gesture learned
                            OpenGenericDialog(7, 10010755, 1, 0, 2)
                            DebugEvent('ジェスチャーを学んだ')
                            DisplayOneLineHelp(-1)
                            if CheckSelfDeath() == 1:
                                Goto('L15')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                Goto('L16')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L17')
                    """ State 23 """
                    Label('L19')
                    if True:
                        pass
                    elif GetDistanceToPlayer() >= 3:
                        Continue('mainloop')
            elif GetDistanceToPlayer() >= 3:
                continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1701) and not GetEventStatus(1702)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1702):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L20')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)
    """ State 52 """
    # talk:47001100:Thou shalt regret this...
    TalkToPlayer(47001100, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L20')

