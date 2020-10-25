# -*- coding: utf-8 -*-
def t121675_1():
    """ State 0,18 """
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1872) and GetDistanceToPlayer() <= 6:
            """ State 37 """
            Label('L0')
            # talk:61005103:But, why... Why... Dear Dusk...
            TalkToPlayer(61005103, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 6:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71210036) == 1 and not GetEventStatus(71210038)):
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and (GetEventStatus(1128) == 1 or GetEventStatus(1129)
              == 1 or GetEventStatus(1130) == 1) and not GetEventStatus(11210594)):
            """ State 73 """
            # talk:61000700:I have awaited thee.\nThou hast rescued Princess Dusk,
            TalkToPlayer(61000700, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 17 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6:
                    """ State 51 """
                    Label('L2')
                    # talk:61005103:But, why... Why... Dear Dusk...
                    TalkToPlayer(61005103, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 6:
                        pass
                elif GetEventStatus(1871) == 1:
                    """ State 11 """
                    Label('L3')
                    ForceEndTalk(3)
                    """ State 10 """
                    Label('L4')
                    ClearTalkDisabledState()
                    RemoveMyAggro()
                    continue
                elif (not GetEventStatus(71210035) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 6 and GetEventStatus(71210034) == 1):
                    """ State 58 """
                    # talk:61005050:Stop!
                    TalkToPlayer(61005050, -1, -1)
                    SetEventState(71210035, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 52 """
                        Label('L5')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 57 """
                        SetEventState(71210035, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif (not GetEventStatus(71210034) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 6 and GetEventStatus(71210033) == 1):
                    """ State 56 """
                    # talk:61005040:Please, no!
                    TalkToPlayer(61005040, -1, -1)
                    SetEventState(71210033, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 55 """
                        SetEventState(71210034, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif (not GetEventStatus(71210033) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 6 and GetEventStatus(71210032) == 1):
                    """ State 54 """
                    # talk:61005030:Stop that!
                    TalkToPlayer(61005030, -1, -1)
                    SetEventState(71210033, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 53 """
                        SetEventState(71210033, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif (not GetEventStatus(71210032) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 6 and GetEventStatus(71210031) == 1):
                    """ State 49 """
                    # talk:61005020:Aaah!
                    TalkToPlayer(61005020, -1, -1)
                    SetEventState(71210032, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 48 """
                        SetEventState(71210032, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif (not GetEventStatus(71210031) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 6 and GetEventStatus(71210030) == 1):
                    """ State 47 """
                    # talk:61005010:Ooh!
                    TalkToPlayer(61005010, -1, -1)
                    SetEventState(71210031, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 46 """
                        SetEventState(71210031, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif (not GetEventStatus(71210030) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 6):
                    """ State 13 """
                    # talk:61005000:Ah!
                    TalkToPlayer(61005000, -1, -1)
                    SetEventState(71210030, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 12 """
                        SetEventState(71210030, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 6):
                        pass
                elif GetEventStatus(71210035) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
            elif HasTalkEnded() == 1:
                """ State 72 """
                SetEventState(71210041, 1)
                SetEventState(11210594, 1)
                SetEventState(71210038, 1)
                if GetDistanceToPlayer() >= 6:
                    continue
                elif not IsMenuOpen(63):
                    """ State 25 """
                    Label('L6')
                    ClearTalkActionState()
                    if True:
                        """ State 6 """
                        Label('L7')
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
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 22 """
                                Label('L8')
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                CloseShopMessage()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6:
                                    Goto('L2')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    """ State 8 """
                                    Label('L9')
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif GetDistanceToPlayer() >= 12:
                                        pass
                                    elif HasTalkEnded() == 1:
                                        """ State 30 """
                                        SetEventState(11215201, 1)
                                        Continue('mainloop')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                            elif not GetTalkListEntryResult():
                                """ State 27 """
                                Label('L10')
                                if not DidYouDoSomethingInTheMenu(11):
                                    """ State 3 """
                                    DebugEvent('買わず立ち去る')
                                    """ State 1 """
                                    # talk:61000800:May the flames guide thee.
                                    TalkToPlayer(61000800, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        Continue('mainloop')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 6):
                                        Goto('L15')
                                elif DidYouDoSomethingInTheMenu(11) == 1:
                                    """ State 2 """
                                    DebugEvent('買って立ち去る')
                                    """ State 29 """
                                    # talk:61000800:May the flames guide thee.
                                    TalkToPlayer(61000800, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        Continue('mainloop')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 6):
                                        Goto('L15')
                                else:
                                    """ State 50 """
                                    ClearTalkDisabledState()
                                    Continue('mainloop')
                            elif GetTalkListEntryResult() == 3:
                                break
                            elif GetTalkListEntryResult() == 1:
                                """ State 5,4 """
                                OpenRegularShop(6500, 6599)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    """ State 21 """
                                    Label('L11')
                                    CloseMenu()
                                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6:
                                        Goto('L2')
                                    elif IsPlayerMovingACertainDistance(1) == 1:
                                        Goto('L9')
                                    elif not IsPlayerMovingACertainDistance(1):
                                        pass
                                    else:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 6):
                                    Goto('L11')
                                elif not IsMenuOpen(11):
                                    continue
                            elif GetTalkListEntryResult() == 4:
                                Goto('L10')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                Goto('L8')
                            """ State 7 """
                            ForceEndTalk(0)
                            Continue('mainloop')
                        """ State 32 """
                        if not GetEventStatus(71210046) and GetEventStatus(11210594) == 1:
                            """ State 42 """
                            # talk:61001300:I will remember thee,\nbut I will keep thy story to myself.
                            TalkToPlayer(61001300, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 43 """
                                SetEventState(71210046, 1)
                                SetEventState(71210043, 1)
                                """ State 16 """
                                Label('L12')
                                if True:
                                    Goto('L7')
                                elif GetDistanceToPlayer() >= 6:
                                    continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                        elif (not GetEventStatus(11216101) and GetEventStatus(71210044) == 1 and not
                              GetEventStatus(71210045)):
                            """ State 40 """
                            # talk:61001200:Not long ago, I had another visitor.
                            TalkToPlayer(61001200, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 41 """
                                SetEventState(71210045, 1)
                                Goto('L12')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                        elif GetEventStatus(71210043) == 1:
                            """ State 44 """
                            # talk:61001100:Hah hah...Was thine eye, glancing hither?
                            TalkToPlayer(61001100, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 45 """
                                SetEventState(71210044, 1)
                                SetEventState(11216101, 1)
                                Goto('L12')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                        elif not GetEventStatus(11216101) and GetEventStatus(71210042) == 1:
                            """ State 33 """
                            # talk:61001000:Thou art from a time far, far ahead.
                            TalkToPlayer(61001000, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 34 """
                                SetEventState(71210043, 1)
                                Goto('L12')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                        else:
                            """ State 15 """
                            # talk:61000900:Thou shalt see further on.
                            TalkToPlayer(61000900, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 31 """
                                SetEventState(71210042, 1)
                                SetEventState(11216101, 1)
                                Goto('L12')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 6):
                                pass
                    elif GetDistanceToPlayer() >= 6:
                        continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (GetEventStatus(71210038) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and GetOneLineHelpStatus() == 1 and GetPlayerChrType()
              == 8):
            """ State 39 """
            # talk:61000600:Struggling, are we?
            TalkToPlayer(61000600, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (GetEventStatus(71210038) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and GetOneLineHelpStatus() == 1 and not GetPlayerChrType()):
            """ State 38 """
            # talk:61000500:Thank goodness thou art safe.
            TalkToPlayer(61000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210036) and GetEventStatus(71210037)
              == 1):
            """ State 14 """
            # talk:61000300:Hast thou reconsidered?
            TalkToPlayer(61000300, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 64 """
                Label('L13')
                # action:10020041:How do you answer?
                OpenGenericDialog(8, 10020041, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 67 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 6:
                        Goto('L2')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      6):
                    """ State 61 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 63 """
                    Label('L14')
                    DebugEvent('たすけない')
                    SetEventState(71210037, 1)
                    if GetEventStatus(71210039) == 1:
                        """ State 59 """
                        DisplayOneLineHelp(-1)
                        # talk:61000400:Yes, yes, of course.
                        TalkToPlayer(61000400, -1, -1)
                        SetEventState(71210040, 1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 70 """
                            SetEventState(71210040, 1)
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 6):
                            Goto('L15')
                    elif not GetEventStatus(71210039):
                        """ State 66 """
                        # talk:61000200:Yes, I understand.
                        TalkToPlayer(61000200, -1, -1)
                        DebugEvent('ノーを選んだあと1')
                        SetEventState(71210039, 1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 69 """
                            SetEventState(71210039, 1)
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 6):
                            Goto('L15')
                    """ State 60 """
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　選択肢')
                    continue
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L14')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 62 """
                    DebugEvent('助ける')
                    SetEventState(71210036, 1)
                    break
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (not GetEventStatus(71210036) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210037)
              and GetEventStatus(71210092) == 1):
            """ State 74 """
            # talk:61000020:Well, look at this one.
            TalkToPlayer(61000020, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L13')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (not GetEventStatus(71210036) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210037)
              and not GetEventStatus(71210092)):
            """ State 28 """
            # talk:61000000:Well, look at this one.
            TalkToPlayer(61000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L13')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and not GetEventStatus(1871) and not GetEventStatus(1872)):
            """ State 19 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 3.5)):
            """ State 20 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1872):
            """ State 26 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 23 """
        Label('L15')
        ClearTalkProgressData()
        """ State 24 """
        ForceEndTalk(0)
    """ State 65 """
    DebugEvent('イエスを選んだあと')
    DisplayOneLineHelp(-1)
    # talk:61000100:Thank you.
    TalkToPlayer(61000100, -1, -1)
    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
        Goto('L1')
    elif HasTalkEnded() == 1:
        """ State 68 """
        SetEventState(71210038, 1)
        Goto('L12')
    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer() ==
          1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 6):
        Goto('L15')

