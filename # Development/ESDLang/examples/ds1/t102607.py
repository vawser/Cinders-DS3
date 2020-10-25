# -*- coding: utf-8 -*-
def t102607_1():
    """ State 0,70 """
    SetEventState(71020090, 0)
    """ State 17 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if (CheckSelfDeath() == 1 and not GetEventStatus(1177) and not GetEventStatus(1180) and GetDistanceToPlayer()
            <= 5):
            break
        elif (GetEventStatus(1176) == 1 and IsPlayerDead() == 1 and GetDistanceToPlayer() <= 5 and not
              GetEventStatus(71020090) and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 45 """
            # talk:17000500:O piteous soul...
            TalkToPlayer(17000500, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71020090, 1)
            assert HasTalkEnded() == 1
            continue
        elif (not GetEventStatus(71020081) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1175)
              == 1):
            """ State 38 """
            # talk:17000800:Hello...I will never forget what you did.
            TalkToPlayer(17000800, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 16 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    break
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310051)
                      and GetSelfHP() <= 90 and GetEventStatus(1179) == 1):
                    """ State 49 """
                    # talk:17001700:Why on earth would you...
                    TalkToPlayer(17001700, -1, -1)
                    SetEventState(71310051, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 44 """
                        Label('L2')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 48 """
                        SetEventState(71310051, 1)
                        """ State 11 """
                        Label('L3')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310050)
                      and GetSelfHP() <= 90 and GetEventStatus(1176) == 1):
                    """ State 10 """
                    # talk:17000300:Are you a heretic, or just plain Hollow?
                    TalkToPlayer(17000300, -1, -1)
                    SetEventState(71310050, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71310050, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1179) == 1:
                    """ State 12 """
                    Label('L4')
                    ForceEndTalk(3)
                    Goto('L3')
                elif GetEventStatus(1176) == 1:
                    Goto('L4')
                elif (not GetEventStatus(71310045) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(1171) == 1 and GetEventStatus(71310044) == 1):
                    """ State 55 """
                    # talk:17000250:The nerve!
                    TalkToPlayer(17000250, -1, -1)
                    SetEventState(71310045, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 54 """
                        SetEventState(71310045, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71310044) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(1171) == 1 and GetEventStatus(71310043) == 1):
                    """ State 53 """
                    # talk:17000240:Horrors!
                    TalkToPlayer(17000240, -1, -1)
                    SetEventState(71310044, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 52 """
                        SetEventState(71310044, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71310043) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(1171) == 1):
                    """ State 51 """
                    # talk:17000230:Ow!
                    TalkToPlayer(17000230, -1, -1)
                    SetEventState(71310043, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 50 """
                        SetEventState(71310043, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71310045) == 1:
                    Goto('L4')
                else:
                    Goto('L4')
            elif HasTalkEnded() == 1:
                """ State 39 """
                SetEventState(71020081, 1)
                SetEventState(11016103, 1)
                SetEventState(11010596, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71020084) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1175)
              == 1 and not GetEventStatus(11016103)):
            """ State 13 """
            # talk:17001100:I was wondering when you might return.
            TalkToPlayer(17001100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
            elif HasTalkEnded() == 1:
                """ State 47 """
                SetEventState(71020084, 1)
                SetEventState(11016103, 1)
                SetEventState(11010596, 1)
                """ State 24 """
                Label('L5')
                ClearTalkActionState()
                if True:
                    """ State 6 """
                    while True:
                        # action:15000010:Purchase Item
                        AddTalkListData(1, 15000010, -1)
                        # action:15000200:Enter Covenant
                        AddTalkListData(2, 15000200, -1)
                        ShowShopMessage(0, 0, 0)
                        # action:15000350:Learn gesture
                        AddTalkListData(5, 15000350, 287)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 21 """
                            Label('L6')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Break('mainloop')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 8 """
                                Label('L7')
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 12:
                                    pass
                                else:
                                    """ State 30 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 32 """
                            if GetEventStatus(1620) == 1 or GetEventStatus(1621) == 1:
                                """ State 34 """
                                Label('L8')
                                # talk:17001500:I do not warm easily to unfamiliar faces.
                                TalkToPlayer(17001500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 35 """
                                    SetEventState(71020089, 1)
                                    """ State 15 """
                                    Label('L9')
                                    if True:
                                        continue
                                    elif GetDistanceToPlayer() >= 3:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L15')
                            elif GetEventStatus(71020085) == 1:
                                Goto('L8')
                            elif not GetEventStatus(1620) and not GetEventStatus(1621):
                                """ State 14 """
                                # talk:17001400:Vince and Nico were fooled by a lout named Patches, and turned\ninto Hollows.
                                TalkToPlayer(17001400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 31 """
                                    SetEventState(71020088, 1)
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L15')
                        elif GetTalkListEntryResult() == 1:
                            """ State 5,4 """
                            OpenRegularShop(4200, 4299)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 20 """
                                Label('L10')
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Break('mainloop')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L7')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L10')
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L6')
                        elif GetTalkListEntryResult() == 2:
                            """ State 67 """
                            if ComparePlayerStatus(11, 0, 1) == 1:
                                """ State 64 """
                                # action:10010726:Already belong to this Covenant
                                OpenGenericDialog(7, 10010726, 1, 0, 2)
                                DebugEvent('誓約が同じ')
                                DisplayOneLineHelp(-1)
                                RequestUnlockTrophy(7)
                                if CheckSelfDeath() == 1:
                                    """ State 68 """
                                    Label('L11')
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                        Break('mainloop')
                                    else:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 66 """
                                    Label('L12')
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 65 """
                                    Label('L13')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L13')
                            elif IsMultiplayerInProgress() == 1:
                                pass
                            else:
                                """ State 63 """
                                # action:10010745:Join Covenant? (abandons former Covenant)
                                OpenGenericDialog(8, 10010745, 3, 4, 2)
                                ChangePlayerStats(31, 5, 1)
                                RequestUnlockTrophy(7)
                                if IsMultiplayerInProgress() == 1:
                                    pass
                                elif CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L11')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    """ State 60 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 59 """
                                    Label('L14')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　選択肢')
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    """ State 62 """
                                    DebugEvent('誓約を変更しない')
                                    Goto('L14')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    """ State 61 """
                                    ForceCloseMenu()
                                    SetTalkTime(2.5)
                                    BreakCovenantPledge()
                                    DebugEvent('誓約を変更する')
                                    ChangePlayerStats(11, 5, 1)
                                    SetEventState(841, 1)
                                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                        or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                        > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                        1):
                                        Goto('L12')
                                    elif not GetEventStatus(841):
                                        """ State 71 """
                                        # action:10010729:Covenant established
                                        OpenGenericDialog(7, 10010729, 1, 0, 2)
                                        DebugEvent('誓約を交わした')
                                        DisplayOneLineHelp(-1)
                                        if CheckSelfDeath() == 1:
                                            Goto('L11')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                              == 1):
                                            Goto('L12')
                                        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                            Goto('L13')
                                        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                            Goto('L13')
                            """ State 72 """
                            # action:10010747:Cannot enter covenant with phantom present.
                            OpenGenericDialog(7, 10010747, 1, 0, 2)
                            DebugEvent('マルチプレイ中')
                            DisplayOneLineHelp(-1)
                            if CheckSelfDeath() == 1:
                                Goto('L11')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                Goto('L12')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L13')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L13')
                        elif GetTalkListEntryResult() == 5:
                            """ State 69 """
                            OpenItemAcquisitionMenu(3, 9014, 1)
                            AcquireGesture(14)
                            SetEventState(287, 0)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L10')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L10')
                            elif not IsMenuOpen(63):
                                """ State 73 """
                                # action:10010755:Gesture learned
                                OpenGenericDialog(7, 10010755, 1, 0, 2)
                                DebugEvent('ジェスチャーを学んだ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    Goto('L11')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    Goto('L12')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L13')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L13')
                        """ State 7 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 26 """
                    if not DidYouDoSomethingInTheMenu(11):
                        """ State 3 """
                        DebugEvent('買わず立ち去る')
                        """ State 1 """
                        # talk:17001300:Then, be safe.
                        TalkToPlayer(17001300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 2 """
                        DebugEvent('買って立ち去る')
                        """ State 29 """
                        # talk:17001300:Then, be safe.
                        TalkToPlayer(17001300, -1, -1)
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
        elif (not GetEventStatus(71020083) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1175)
              == 1 and not GetEventStatus(11016103)):
            """ State 42 """
            # talk:17001000:I am most pleased to find you in good health.
            TalkToPlayer(17001000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 43 """
                SetEventState(71020083, 1)
                SetEventState(11016103, 1)
                SetEventState(11010596, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11016103) and GetEventStatus(1175)
              == 1):
            """ State 46 """
            # talk:17001200:Oh! Please, forgive me. I was absorbed in prayer.
            TalkToPlayer(17001200, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 58 """
                SetEventState(11016103, 1)
                SetEventState(71020083, 0)
                SetEventState(71020084, 0)
                SetEventState(71020085, 1)
                SetEventState(11010596, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71020080) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1171)
              == 1):
            """ State 37 """
            # talk:17000100:Did I not explain the urgency of our tasks?
            TalkToPlayer(17000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71020080) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1171)
              == 1):
            """ State 27 """
            # talk:17000000:You are Undead, as well?
            TalkToPlayer(17000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 28 """
                SetEventState(71020080, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71020081) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1175)
              == 1):
            """ State 40 """
            # talk:17000900:Would a Miracle be of any help to you?
            TalkToPlayer(17000900, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 41 """
                SetEventState(71020082, 1)
                SetEventState(11016103, 1)
                SetEventState(11010596, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1176) and not GetEventStatus(1177)
              and not GetEventStatus(1179) and not GetEventStatus(1180)):
            """ State 18 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 19 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1177) and not GetEventStatus(1180):
            """ State 25 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 22 """
        Label('L15')
        ClearTalkProgressData()
        """ State 23 """
        ForceEndTalk(0)
    """ State 56 """
    if GetEventStatus(1177) == 1:
        """ State 36 """
        # talk:17000400:Hrgkt! Eeg...
        TalkToPlayer(17000400, -1, -1)
        DisplayOneLineHelp(-1)
        ForceCloseMenu()
        if HasTalkEnded() == 1:
            Goto('L0')
        elif GetDistanceToPlayer() >= 5:
            Goto('L15')
    elif GetEventStatus(1180) == 1:
        """ State 57 """
        # talk:17001800:Dear Vince, dear Nico...
        TalkToPlayer(17001800, -1, -1)
        DisplayOneLineHelp(-1)
        ForceCloseMenu()
        if HasTalkEnded() == 1:
            Goto('L0')
        elif GetDistanceToPlayer() >= 5:
            Goto('L15')

