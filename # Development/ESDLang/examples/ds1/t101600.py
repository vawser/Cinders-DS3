# -*- coding: utf-8 -*-
def t101600_1():
    """ State 0,6 """
    while True:
        DebugEvent('待機')
        if CheckSelfDeath() == 1 and not GetEventStatus(1005) and GetDistanceToPlayer() <= 5:
            """ State 16 """
            Label('L0')
            # talk:10010800:Why, you...
            TalkToPlayer(10010800, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if GetDistanceToPlayer() >= 5:
                pass
            elif HasTalkEnded() == 1:
                continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100092) == 1 and not GetEventStatus(71100091)
              and GetEventStatus(1007) == 1):
            """ State 59 """
            Label('L1')
            DisplayOneLineHelp(-1)
            # talk:10022500:Oh, hello there.
            TalkToPlayer(10022500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L2')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 24 """
                    Label('L3')
                    # talk:10010800:Why, you...
                    TalkToPlayer(10010800, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if GetDistanceToPlayer() >= 5:
                        pass
                    elif HasTalkEnded() == 1:
                        continue
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71010064)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:10010700:If a stubborn beast you be, I have no choice!
                    TalkToPlayer(10010700, -1, -1)
                    SetEventState(71010064, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 25 """
                        Label('L4')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71010064, 1)
                        """ State 11 """
                        Label('L5')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1004) == 1:
                    """ State 10 """
                    Label('L6')
                    ForceEndTalk(3)
                    Goto('L5')
                elif (not GetEventStatus(71010063) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010062) == 1):
                    """ State 50 """
                    # talk:10010640:What's wrong with you?!
                    TalkToPlayer(10010640, -1, -1)
                    SetEventState(71010063, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 51 """
                        SetEventState(71010063, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71010062) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010061) == 1):
                    """ State 48 """
                    # talk:10010630:What the...!
                    TalkToPlayer(10010630, -1, -1)
                    SetEventState(71010062, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 49 """
                        SetEventState(71010062, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71010061) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010060) == 1):
                    """ State 46 """
                    # talk:10010620:Whoa!
                    TalkToPlayer(10010620, -1, -1)
                    SetEventState(71010061, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 47 """
                        SetEventState(71010061, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71010060) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010059) == 1):
                    """ State 44 """
                    # talk:10010610:Ooh!
                    TalkToPlayer(10010610, -1, -1)
                    SetEventState(71010060, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 45 """
                        SetEventState(71010060, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71010059) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:10010600:Hrg!
                    TalkToPlayer(10010600, -1, -1)
                    SetEventState(71010059, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71010059, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71010058) == 1:
                    Goto('L6')
                else:
                    Goto('L6')
            elif HasTalkEnded() == 1 and GetEventStatus(71100092) == 1:
                """ State 60 """
                Label('L7')
                # action:10010745:Join Covenant? (abandons former Covenant)
                OpenGenericDialog(8, 10010745, 3, 4, 2)
                ChangePlayerStats(31, 5, 3)
                RequestUnlockTrophy(10)
                if IsMultiplayerInProgress() == 1:
                    """ State 72 """
                    # action:10010747:Cannot enter covenant with phantom present.
                    OpenGenericDialog(7, 10010747, 1, 0, 2)
                    DebugEvent('マルチプレイ中')
                    DisplayOneLineHelp(-1)
                    if CheckSelfDeath() == 1:
                        """ State 33 """
                        Label('L8')
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L3')
                        else:
                            continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12 or IsAttackedBySomeone() == 1):
                        """ State 27 """
                        Label('L9')
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 26 """
                        Label('L10')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        Goto('L10')
                elif CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L8')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L9')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 63 """
                    Label('L11')
                    DebugEvent('誓約しない')
                    SetEventState(71100092, 1)
                    """ State 64 """
                    Label('L12')
                    # talk:10022300:Yes, well, each has one's beliefs.
                    TalkToPlayer(10022300, -1, -1)
                    DebugEvent('ノーを選んだあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        Goto('L10')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L11')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 61 """
                    ForceCloseMenu()
                    SetTalkTime(2.5)
                    DebugEvent('誓約する')
                    SetEventState(71100091, 1)
                    BreakCovenantPledge()
                    ChangePlayerStats(11, 5, 3)
                    SetEventState(843, 1)
                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                        == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                        > 12 or IsAttackedBySomeone() == 1):
                        Goto('L9')
                    elif not GetEventStatus(11010594) and not GetEventStatus(843):
                        """ State 66 """
                        SetEventState(11010594, 1)
                        if GetDistanceToPlayer() >= 8:
                            continue
                        elif not IsMenuOpen(63):
                            """ State 71 """
                            Label('L13')
                            # action:10010729:Covenant established
                            OpenGenericDialog(7, 10010729, 1, 0, 2)
                            DebugEvent('誓約を交わしました')
                            DisplayOneLineHelp(-1)
                            if CheckSelfDeath() == 1:
                                Goto('L8')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone() == 1):
                                Goto('L9')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 56 """
                                Label('L14')
                                DisplayOneLineHelp(-1)
                                # talk:10022260:And there we are. Now, just say a prayer at the Altar of\nSunlight, right there.
                                TalkToPlayer(10022260, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 57 """
                                    SetEventState(71100094, 1)
                                    continue
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L14')
                    elif GetDistanceToPlayer() <= 5 and not GetEventStatus(843):
                        Goto('L13')
            elif HasTalkEnded() == 1 and GetEventStatus(71100098) == 1:
                """ State 69 """
                Label('L15')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L8')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L9')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 68 """
                    Label('L16')
                    DebugEvent('望まない')
                    SetEventState(71100098, 1)
                    Goto('L12')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L16')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 67 """
                    DebugEvent('望む')
                    SetEventState(71100097, 1)
                    """ State 62 """
                    Label('L17')
                    # talk:10022250:Oh! Magnificent! I knew you would fancy it!
                    TalkToPlayer(10022250, -1, -1)
                    DebugEvent('イエスを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 70 """
                        SetEventState(71100093, 1)
                        Goto('L7')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100098) == 1 and not GetEventStatus(71100097)
              and GetEventStatus(1007) == 1):
            Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100097) == 1 and not GetEventStatus(71100091)
              and GetEventStatus(1007) == 1 and not GetEventStatus(71100092)):
            Goto('L17')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100093) == 1 and not GetEventStatus(71100094)
              and GetEventStatus(1007) == 1):
            Goto('L14')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100094) == 1 and GetEventStatus(1007)
              == 1 and not GetEventStatus(71100095)):
            """ State 58 """
            DisplayOneLineHelp(-1)
            # talk:10022400:Oh, hello there. Still here?
            TalkToPlayer(10022400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71100094) == 1 and GetEventStatus(1007)
              == 1 and GetEventStatus(71100095) == 1):
            """ State 65 """
            DisplayOneLineHelp(-1)
            # talk:10022700:Oh, hello there.
            TalkToPlayer(10022700, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100097) and not GetEventStatus(71100098)
              and GetEventStatus(1007) == 1 and GetStatus(6) + (GetStatus(13) + GetStatus(13) + GetStatus(13)
              + GetStatus(13) + GetStatus(13)) > 25 and ComparePlayerStatus(11, 5, 3) == 1):
            """ State 54 """
            DisplayOneLineHelp(-1)
            # talk:10022200:Oh, hello there.
            TalkToPlayer(10022200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 55 """
                SetEventState(71100090, 1)
                Goto('L15')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71100096) and GetEventStatus(1007)
              == 1):
            """ State 52 """
            DisplayOneLineHelp(-1)
            # talk:10022600:Hmm! Ah, oh...hello there.
            TalkToPlayer(10022600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 53 """
                SetEventState(71100096, 1)
                SetEventState(71010056, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010053) == 1 and GetEventStatus(11010591)
              == 1 and not GetEventStatus(71010056)):
            """ State 19 """
            Label('L18')
            DisplayOneLineHelp(-1)
            # talk:10010310:We are amidst strange beings, in a strange land.
            TalkToPlayer(10010310, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 20 """
                SetEventState(71010056, 1)
                SetEventState(11010590, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010055) == 1 and not GetEventStatus(71010053)):
            """ State 38 """
            DisplayOneLineHelp(-1)
            # talk:10010500:Oh, hello. You're still keen on speaking to me?
            TalkToPlayer(10010500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 36 """
                Label('L19')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L8')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L9')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 39 """
                    Label('L20')
                    DebugEvent('願いを聞かない')
                    SetEventState(71010055, 1)
                    """ State 40 """
                    # talk:10010360:Well, yes, quite understandable.
                    TalkToPlayer(10010360, -1, -1)
                    DebugEvent('ノーを選んだあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        Goto('L10')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L20')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 35 """
                    DebugEvent('話を聞く')
                    SetEventState(71010053, 1)
                    """ State 37 """
                    Label('L21')
                    # talk:10010300:This pleases me greatly! Well then, take this.
                    TalkToPlayer(10010300, -1, -1)
                    DebugEvent('イエスを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 34 """
                        Label('L22')
                        DebugEvent('アイテムを渡す')
                        SetEventState(11010591, 1)
                        if GetDistanceToPlayer() >= 8:
                            continue
                        elif not IsMenuOpen(63) and GetDistanceToPlayer() <= 5:
                            Goto('L18')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5 or IsPlayerDead() == 1):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010054) == 1 and not GetEventStatus(71010052)):
            """ State 23 """
            DisplayOneLineHelp(-1)
            # talk:10010500:Oh, hello. You're still keen on speaking to me?
            TalkToPlayer(10010500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 30 """
                Label('L23')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L8')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L9')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 29 """
                    Label('L24')
                    DebugEvent('話を聞かない')
                    SetEventState(71010054, 1)
                    """ State 32 """
                    # talk:10010350:Well, yes, quite understandable.
                    TalkToPlayer(10010350, -1, -1)
                    DebugEvent('ノーを選んだあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        Goto('L10')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L24')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 28 """
                    DebugEvent('話を聞く')
                    SetEventState(71010052, 1)
                    """ State 31 """
                    Label('L25')
                    # talk:10010250:The way I see it, our fates appear to be intertwined.
                    TalkToPlayer(10010250, -1, -1)
                    DebugEvent('イエスを選んだあと')
                    DisplayOneLineHelp(-1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 43 """
                        SetEventState(71010058, 1)
                        Goto('L19')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010053) == 1 and not GetEventStatus(11010591)):
            Goto('L21')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010053) == 1 and not GetEventStatus(11010591)):
            """ State 42 """
            TalkToPlayer(10010301, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L22')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010052) == 1 and not GetEventStatus(71010058)):
            Goto('L25')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010058) == 1 and GetEventStatus(71010052)
              == 1 and not GetEventStatus(71010055) and not GetEventStatus(71010053)):
            """ State 41 """
            # talk:10010250:The way I see it, our fates appear to be intertwined.
            TalkToPlayer(10010250, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L19')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010056) == 1):
            """ State 21 """
            DisplayOneLineHelp(-1)
            # talk:10010400:Oh, hello there. I will stay behind, to gaze at the sun.
            TalkToPlayer(10010400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 22 """
                SetEventState(71010057, 1)
                SetEventState(11010590, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010050) == 1 and not GetEventStatus(71010054)
              and not GetEventStatus(71010052) and not GetEventStatus(50000000)):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:10010200:Oh, ah-hah! So, I didn't scare you?
            TalkToPlayer(10010200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 18 """
                SetEventState(71010051, 1)
                Goto('L23')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71010050) == 1 and GetEventStatus(705) == 1 and GetEventStatus(50000000)
              == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and
              GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 73 """
            DisplayOneLineHelp(-1)
            # talk:10010400:Oh, hello there. I will stay behind, to gaze at the sun.
            TalkToPlayer(10010400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 74 """
                SetEventState(11010590, 1)
                SetEventState(11010591, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71010050)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:10010100:Ah, hello! You don't look Hollow, far from it!
            TalkToPlayer(10010100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71010050, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1004) and not GetEventStatus(1005)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1005):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 3 """
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

