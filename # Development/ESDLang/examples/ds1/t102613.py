# -*- coding: utf-8 -*-
def t102613_1():
    """ State 0,19 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1254) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11025021) == 1):
            """ State 36 """
            # talk:23010600:That was rather abrupt.
            TalkToPlayer(23010600, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 18 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 73 """
                    Label('L2')
                    # talk:23010900:Aaahhhh...
                    TalkToPlayer(23010900, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71000005)
                      and GetSelfHP() <= 90):
                    """ State 10 """
                    # talk:23010800:You detest my pyromancy! That must be it!
                    TalkToPlayer(23010800, -1, -1)
                    SetEventState(71000005, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 74 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71000005, 1)
                        """ State 11 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1253) == 1:
                    """ State 12 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71000004) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 14 """
                    # talk:23010700:Whoa!
                    TalkToPlayer(23010700, -1, -1)
                    SetEventState(71000004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71000004, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (GetEventStatus(71000004) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71000016)):
                    """ State 54 """
                    # talk:23010720:What's wrong with you!
                    TalkToPlayer(23010720, -1, -1)
                    SetEventState(71000016, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 53 """
                        SetEventState(71000016, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (GetEventStatus(71000016) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71000017)):
                    """ State 56 """
                    # talk:23010740:Stop that, please!
                    TalkToPlayer(23010740, -1, -1)
                    SetEventState(71000017, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 55 """
                        SetEventState(71000017, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71000017) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 35 """
                SetEventState(11025021, 0)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(11020103) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11020102)
              == 1 and GetEventStatus(71000022) == 1 and not GetEventStatus(11026102) and not GetEventStatus(71000020)):
            """ State 61 """
            # talk:23011400:Ah, hello, there.
            TalkToPlayer(23011400, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 62 """
                Label('L6')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 75 """
                    Label('L7')
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
                    """ State 66 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    """ State 8 """
                    Label('L8')
                    # talk:23010500:Wait, friend!
                    TalkToPlayer(23010500, -1, -1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif GetDistanceToPlayer() >= 12:
                        """ State 7 """
                        Label('L9')
                        ForceEndTalk(0)
                        continue
                    elif HasTalkEnded() == 1:
                        """ State 32 """
                        SetEventState(11025021, 1)
                        continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 68 """
                    Label('L10')
                    DebugEvent('上位呪術を教えない')
                    """ State 70 """
                    # talk:23011600:...I see. I suppose I was mistaken.
                    TalkToPlayer(23011600, -1, -1)
                    DebugEvent('ノーを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 71 """
                        Label('L11')
                        SetEventState(71000020, 1)
                        """ State 65 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        """ State 26 """
                        Label('L12')
                        ClearTalkActionState()
                        SetEventState(365, 1)
                        if True:
                            """ State 6 """
                            while True:
                                # action:15000010:Purchase Item
                                AddTalkListData(1, 15000010, -1)
                                # action:15000190:Modify Equipment
                                AddTalkListData(2, 15000190, -1)
                                ShowShopMessage(0, 0, 0)
                                # action:15000000:Talk
                                AddTalkListData(3, 15000000, -1)
                                # action:15000005:Leave
                                AddTalkListData(4, 15000005, -1)
                                def ExitPause():
                                    ClearTalkListData()
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    """ State 23 """
                                    Label('L13')
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    CloseShopMessage()
                                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                        Goto('L2')
                                    elif IsPlayerMovingACertainDistance(1) == 1:
                                        Goto('L8')
                                    elif not IsPlayerMovingACertainDistance(1):
                                        Goto('L9')
                                elif not GetTalkListEntryResult():
                                    break
                                elif GetTalkListEntryResult() == 3:
                                    """ State 34 """
                                    if (GetEventStatus(71000020) == 1 and GetEventStatus(11020102) ==
                                        1 and not GetEventStatus(11020103) and GetEventStatus(71000021)
                                        == 1):
                                        """ State 64 """
                                        # talk:23011402:Why, what spectacular pyromancy.
                                        TalkToPlayer(23011402, -1, -1)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            Goto('L1')
                                        elif HasTalkEnded() == 1:
                                            Goto('L6')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L21')
                                    elif (GetEventStatus(71000019) == 1 and not GetEventStatus(11026102)
                                          and not GetEventStatus(71000021)):
                                        """ State 37 """
                                        # talk:23011300:In this land, pyromancers earn a certain respect.
                                        TalkToPlayer(23011300, -1, -1)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            Goto('L1')
                                        elif HasTalkEnded() == 1:
                                            """ State 72 """
                                            SetEventState(71000021, 1)
                                            SetEventState(11026102, 1)
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L21')
                                    elif (GetEventStatus(71000018) == 1 and not GetEventStatus(11026102)
                                          and not GetEventStatus(71000019)):
                                        """ State 59 """
                                        # talk:23011200:My teacher, whom I imagine still resides in the Great Swamp,
                                        TalkToPlayer(23011200, -1, -1)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            Goto('L1')
                                        elif HasTalkEnded() == 1:
                                            """ State 60 """
                                            SetEventState(71000019, 1)
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L21')
                                    elif GetEventStatus(71000003) == 1 and not GetEventStatus(71000018):
                                        """ State 57 """
                                        # talk:23011100:Pyromancy has a, well, rather primitive aspect to it.
                                        TalkToPlayer(23011100, -1, -1)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            Goto('L1')
                                        elif HasTalkEnded() == 1:
                                            """ State 58 """
                                            SetEventState(71000018, 1)
                                            SetEventState(11026102, 1)
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L21')
                                    elif not GetEventStatus(71000003):
                                        """ State 16 """
                                        # talk:23011000:Pyromancy is the art of casting fire.
                                        TalkToPlayer(23011000, -1, -1)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            Goto('L1')
                                        elif HasTalkEnded() == 1:
                                            """ State 33 """
                                            SetEventState(71000003, 1)
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L21')
                                    elif GetEventStatus(71000003) == 1 and GetEventStatus(740) == 1:
                                        """ State 76 """
                                        # talk:23011700:A pyromancer's flame is a part of his own body.
                                        TalkToPlayer(23011700, -1, -1)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            Goto('L1')
                                        elif HasTalkEnded() == 1:
                                            """ State 77 """
                                            Label('L14')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L21')
                                    elif GetEventStatus(71000003) == 1 and not GetEventStatus(740):
                                        """ State 78 """
                                        # talk:23011720:A pyromancer's flame is a part of his own body.
                                        TalkToPlayer(23011720, -1, -1)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            Goto('L1')
                                        elif HasTalkEnded() == 1:
                                            Goto('L14')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L21')
                                    """ State 17 """
                                    if True:
                                        continue
                                    elif GetDistanceToPlayer() >= 3:
                                        Continue('mainloop')
                                elif GetTalkListEntryResult() == 1:
                                    """ State 5,4 """
                                    OpenRegularShop(3000, 3099)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        pass
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 3):
                                        pass
                                    elif not IsMenuOpen(11):
                                        continue
                                elif GetTalkListEntryResult() == 2:
                                    """ State 82 """
                                    CollectJustPyromancyFlame()
                                    CombineMenuFlagAndEventFlag(365, 331)
                                    OpenEquipmentChangeOfPurposeShop()
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        pass
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 3):
                                        pass
                                    elif not IsMenuOpen(13):
                                        continue
                                elif GetTalkListEntryResult() == 4:
                                    break
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 3):
                                    Goto('L13')
                                """ State 22 """
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L8')
                                elif not IsPlayerMovingACertainDistance(1):
                                    Goto('L9')
                                else:
                                    Continue('mainloop')
                            """ State 28 """
                            if DidYouDoSomethingInTheMenu(11) == 1 or DidYouDoSomethingInTheMenu(4) == 1:
                                """ State 2 """
                                DebugEvent('買って立ち去る')
                                """ State 31 """
                                # talk:23010400:Good-bye, then.
                                TalkToPlayer(23010400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    continue
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                            elif not DidYouDoSomethingInTheMenu(11) or not DidYouDoSomethingInTheMenu(4):
                                """ State 3 """
                                DebugEvent('買わず立ち去る')
                                """ State 1 """
                                # talk:23010300:Good-bye, then.
                                TalkToPlayer(23010300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    continue
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                            else:
                                continue
                        elif GetDistanceToPlayer() >= 3:
                            continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L10')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 67 """
                    DebugEvent('上位呪術教えたフラグセット')
                    SetEventState(11020103, 1)
                    """ State 69 """
                    # talk:23011500:Why, yes, of course!
                    TalkToPlayer(23011500, -1, -1)
                    DebugEvent('イエスを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        Goto('L11')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000020) == 1 and GetEventStatus(11020102)
              == 1 and GetEventStatus(11020103) == 1):
            """ State 63 """
            # talk:23011501:Thank you for sharing.
            TalkToPlayer(23011501, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L12')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71000001) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71000015)):
            """ State 39 """
            # talk:23010120:Oh, hello, there.
            TalkToPlayer(23010120, -1, -1)
            DisplayOneLineHelp(-1)
            DebugEvent('人間性取り戻した')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 40 """
                SetEventState(71000002, 1)
                SetEventState(11026102, 1)
                """ State 45 """
                Label('L15')
                # action:10020041:How do you answer?
                OpenGenericDialog(8, 10020041, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L7')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 42 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    Goto('L8')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 44 """
                    Label('L16')
                    DebugEvent('呪術を教わらない')
                    """ State 47 """
                    # talk:23010040:Oh, really...Well, that's a shame.
                    TalkToPlayer(23010040, -1, -1)
                    DebugEvent('ノーを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 41 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen() and not GetEventStatus(71000002):
                    Goto('L16')
                elif (GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen() and GetEventStatus(71000002)
                      == 1):
                    Goto('L16')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen() and not GetEventStatus(71000002):
                    """ State 43 """
                    Label('L17')
                    DebugEvent('呪術を教わる')
                    SetEventState(71000015, 1)
                    if GetEventStatus(740) == 1:
                        """ State 81 """
                        Label('L18')
                        # talk:23010050:Yeah, wonderful!
                        TalkToPlayer(23010050, -1, -1)
                        DebugEvent('イエスを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 83 """
                            SetEventState(71000022, 1)
                            SetEventState(11026102, 1)
                            """ State 52 """
                            Label('L19')
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　選択肢')
                            Goto('L12')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif not GetEventStatus(740):
                        """ State 46 """
                        Label('L20')
                        # talk:23010020:Yeah, wonderful!
                        TalkToPlayer(23010020, -1, -1)
                        DebugEvent('イエスを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 79 """
                            DebugEvent('アイテム譲渡')
                            SetEventState(71000022, 1)
                            SetEventState(11020602, 1)
                            SetEventState(11026102, 1)
                            if GetDistanceToPlayer() >= 5:
                                continue
                            elif not IsMenuOpen(63):
                                """ State 80 """
                                # talk:23010030:A flame from the Great Swamp. Now you're a fully-fledged\npyromancer.
                                TalkToPlayer(23010030, -1, -1)
                                DebugEvent('イエスを選んだあと')
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    Goto('L19')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5 or IsPlayerDead() == 1):
                            pass
                elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen() and GetEventStatus(71000002)
                      == 1):
                    Goto('L17')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71000001) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 29 """
            # talk:23010000:Well, I see you made it out!
            TalkToPlayer(23010000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 30 """
                SetEventState(71000001, 1)
                SetEventState(11026102, 1)
                Goto('L15')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000015) == 1 and not GetEventStatus(71000022)
              and GetEventStatus(740) == 1):
            Goto('L18')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000015) == 1 and not GetEventStatus(71000022)
              and not GetEventStatus(740)):
            Goto('L20')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000015) == 1):
            """ State 15 """
            # talk:23010100:Oh, hello, there.
            TalkToPlayer(23010100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L12')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1253) and not GetEventStatus(1254)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1254):
            """ State 27 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 24 """
        Label('L21')
        ClearTalkProgressData()
        """ State 25 """
        ForceEndTalk(0)
    """ State 38 """
    # talk:23010900:Aaahhhh...
    TalkToPlayer(23010900, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L21')

