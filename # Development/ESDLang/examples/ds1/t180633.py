# -*- coding: utf-8 -*-
def t180633_1():
    """ State 0,16 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if (CheckSelfDeath() == 1 and not GetEventStatus(1647) and GetEventStatus(830) == 1 and GetDistanceToPlayer()
            <= 15):
            """ State 74 """
            Label('L1')
            # talk:43011900:You sorry fool...You could not be the Chosen one.
            TalkToPlayer(43011900, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (CheckSelfDeath() == 1 and not GetEventStatus(1647) and not GetEventStatus(830) and GetDistanceToPlayer()
              <= 15):
            break
        elif (not GetEventStatus(71800038) and GetEventStatus(1649) == 1 and GetDistanceToPlayer() <=
              10 and not GetEventStatus(830) and not GetEventStatus(831) and HasDisableTalkPeriodElapsed()
              == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
              and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 180 and GetDistanceToPlayer()
              <= 10 and not GetEventStatus(1647)):
            """ State 84 """
            DisplayOneLineHelp(-1)
            # talk:43001900:You sorry fool...You could not be the Chosen one.
            TalkToPlayer(43001900, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 8 """
                Label('L2')
                ClearTalkProgressData()
                ForceEndTalk(3)
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1:
                    """ State 76 """
                    Label('L3')
                    if CheckSelfDeath() == 1 and GetEventStatus(830) == 1 and GetDistanceToPlayer() <= 15:
                        """ State 75 """
                        # talk:43011900:You sorry fool...You could not be the Chosen one.
                        TalkToPlayer(43011900, -1, -1)
                        DisplayOneLineHelp(-1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 15:
                            pass
                    elif CheckSelfDeath() == 1 and not GetEventStatus(830) and GetDistanceToPlayer() <= 15:
                        """ State 12 """
                        # talk:43001900:You sorry fool...You could not be the Chosen one.
                        TalkToPlayer(43001900, -1, -1)
                        DisplayOneLineHelp(-1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 15:
                            pass
                elif GetEventStatus(1650) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 83 """
                    # talk:43000500:...Hm? No, no, I'm fine, I'm fine.
                    TalkToPlayer(43000500, -1, -1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 13 """
                        Label('L4')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        if CheckSelfDeath() == 1 and GetEventStatus(830) == 1:
                            Goto('L1')
                        elif CheckSelfDeath() == 1 and not GetEventStatus(830):
                            break
                    elif HasTalkEnded() == 1:
                        """ State 82,4 """
                        Label('L5')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 15 and not GetEventStatus(71800024)
                      and GetSelfHP() <= 90 and GetEventStatus(830) == 1):
                    """ State 69 """
                    # talk:43011900:You sorry fool...You could not be the Chosen one.
                    TalkToPlayer(43011900, -1, -1)
                    SetEventState(71800024, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 2 """
                        Label('L6')
                        SetEventState(71800024, 1)
                        SetEventState(11020598, 1)
                        Goto('L5')
                    elif GetDistanceToPlayer() >= 16:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 15 and not GetEventStatus(71800024)
                      and GetSelfHP() <= 90 and not GetEventStatus(830)):
                    """ State 3 """
                    # talk:43001900:You sorry fool...You could not be the Chosen one.
                    TalkToPlayer(43001900, -1, -1)
                    SetEventState(71800024, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L6')
                    elif GetDistanceToPlayer() >= 16:
                        pass
                elif GetEventStatus(1646) == 1:
                    """ State 5 """
                    Label('L7')
                    ForceEndTalk(3)
                    Goto('L5')
                elif (not GetEventStatus(71800023) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71800022) == 1 and GetEventStatus(830) == 1):
                    """ State 73 """
                    # talk:43011730:Ooph!
                    TalkToPlayer(43011730, -1, -1)
                    SetEventState(71800023, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 67 """
                        Label('L8')
                        SetEventState(71800023, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71800022) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71800021) == 1 and GetEventStatus(830) == 1):
                    """ State 72 """
                    # talk:43011720:Agh!
                    TalkToPlayer(43011720, -1, -1)
                    SetEventState(71800022, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 65 """
                        Label('L9')
                        SetEventState(71800022, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71800021) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71800020) == 1 and GetEventStatus(830) == 1):
                    """ State 71 """
                    # talk:43011710:Hrg!
                    TalkToPlayer(43011710, -1, -1)
                    SetEventState(71800021, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 63 """
                        Label('L10')
                        SetEventState(71800021, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71800020) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(830) == 1):
                    """ State 70 """
                    # talk:43011700:Hmg!
                    TalkToPlayer(43011700, -1, -1)
                    SetEventState(71800020, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 6 """
                        Label('L11')
                        SetEventState(71800020, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71800023) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71800022) == 1 and not GetEventStatus(830)):
                    """ State 68 """
                    # talk:43001730:Ooph!
                    TalkToPlayer(43001730, -1, -1)
                    SetEventState(71800023, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L8')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71800022) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71800021) == 1 and not GetEventStatus(830)):
                    """ State 66 """
                    # talk:43001720:Agh!
                    TalkToPlayer(43001720, -1, -1)
                    SetEventState(71800022, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L9')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71800021) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71800020) == 1 and not GetEventStatus(830)):
                    """ State 64 """
                    # talk:43001710:Hrg!
                    TalkToPlayer(43001710, -1, -1)
                    SetEventState(71800021, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L10')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71800020) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(830)):
                    """ State 7 """
                    # talk:43001700:Hmg!
                    TalkToPlayer(43001700, -1, -1)
                    SetEventState(71800020, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L11')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif GetEventStatus(71800023) == 1:
                    Goto('L7')
                else:
                    Goto('L7')
            elif HasTalkEnded() == 1:
                """ State 85 """
                SetEventState(71800038, 1)
                SetEventState(11020598, 1)
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (not GetEventStatus(71800034) and GetEventStatus(830) == 1 and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10 and GetEventStatus(822) == 1 and not GetEventStatus(11800100)
              and not GetEventStatus(1647)):
            """ State 61 """
            DisplayOneLineHelp(-1)
            # talk:43001010:This is the Firelink Chamber, for the successor of Lord Gwyn.
            TalkToPlayer(43001010, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 62 """
                SetEventState(71800034, 1)
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71800033) and GetEventStatus(71800039)
              == 1 and GetEventStatus(1643) == 1):
            """ State 31 """
            DisplayOneLineHelp(-1)
            # talk:43001000:Heavens! You have done it! You have retrieved the Lordvessel!
            TalkToPlayer(43001000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 51 """
                SetEventState(71800033, 1)
                SetEventState(71800026, 1)
                SetEventState(71800027, 1)
                SetEventState(71800028, 1)
                SetEventState(71800029, 1)
                """ State 49 """
                Label('L12')
                SetEventState(820, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71800026) == 1 and not GetEventStatus(71800029)
              and GetEventStatus(11500200) == 1):
            """ State 78 """
            Label('L13')
            # talk:43000250:Very well. Then I am pleased to share.
            TalkToPlayer(43000250, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 60 """
                SetEventState(71800029, 1)
                SetEventState(71800028, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71800026) == 1 and not GetEventStatus(71800028)):
            """ State 28 """
            Label('L14')
            # talk:43000250:Very well. Then I am pleased to share.
            TalkToPlayer(43000250, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 32 """
                SetEventState(71800028, 1)
                SetEventState(71800029, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71800027) == 1 and not GetEventStatus(71800026)):
            """ State 22 """
            DisplayOneLineHelp(-1)
            # talk:43000700:What brings you here?
            TalkToPlayer(43000700, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 27 """
                Label('L15')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 30 """
                    Label('L16')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 24 """
                    Label('L17')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 26 """
                    Label('L18')
                    DebugEvent('話を聞かない')
                    SetEventState(71800027, 1)
                    """ State 29 """
                    # talk:43000140:By the Lords...Are you certain?
                    TalkToPlayer(43000140, -1, -1)
                    DebugEvent('ノーを選んだあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L18')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 25 """
                    DebugEvent('話を聞く')
                    SetEventState(71800026, 1)
                    if GetEventStatus(11500200) == 1:
                        Goto('L13')
                    else:
                        Goto('L14')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71800025) and GetEventStatus(1641) == 1 and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10):
            """ State 57 """
            DisplayOneLineHelp(-1)
            # talk:43000000:Hmgg...Hmgg...
            TalkToPlayer(43000000, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 58 """
                SetEventState(71800025, 1)
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71800037) and GetEventStatus(1645)
              == 1 and GetEventStatus(830) == 1):
            """ State 55 """
            DisplayOneLineHelp(-1)
            # talk:43001600:Ahh...ohh!
            TalkToPlayer(43001600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 56 """
                SetEventState(71800037, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71800035) and GetEventStatus(1644)
              == 1 and GetEventStatus(830) == 1):
            """ State 53 """
            DisplayOneLineHelp(-1)
            # talk:43001200:Very well.
            TalkToPlayer(43001200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 54 """
                SetEventState(71800035, 1)
                SetEventState(824, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1643) == 1 and GetEventStatus(71800033)
              == 1 and GetEventStatus(830) == 1):
            """ State 21 """
            DisplayOneLineHelp(-1)
            # talk:43001100:What is it? Place the Lordvessel on the altar.
            TalkToPlayer(43001100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71800030) and GetEventStatus(1650) == 1 and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10):
            """ State 20 """
            DisplayOneLineHelp(-1)
            # talk:43000400:Hmgg...Hmgg...
            TalkToPlayer(43000400, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 81 """
                SetEventState(71800030, 1)
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71800026) == 1 and GetEventStatus(830)
              == 1):
            """ State 86 """
            DisplayOneLineHelp(-1)
            # talk:43000350:I am pleased to see you well.
            TalkToPlayer(43000350, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 40 """
                Label('L19')
                ClearTalkActionState()
                if True:
                    """ State 33 """
                    while True:
                        # action:15000141:Feed Item
                        AddTalkListData(5, 15000141, -1)
                        # action:15000150:Warp
                        AddTalkListData(1, 15000150, 822)
                        # action:15000300:Feed <?gdsparam@1010?>
                        AddTalkListData(6, 15000300, 781)
                        # action:15000301:Feed <?gdsparam@1020?>
                        AddTalkListData(7, 15000301, 782)
                        # action:15000302:Feed <?gdsparam@1030?>
                        AddTalkListData(8, 15000302, 783)
                        # action:15000303:Feed <?gdsparam@1040?>
                        AddTalkListData(9, 15000303, 784)
                        # action:15000304:Feed <?gdsparam@1050?>
                        AddTalkListData(10, 15000304, 785)
                        # action:15000305:Feed <?gdsparam@1060?>
                        AddTalkListData(11, 15000305, 786)
                        # action:15000306:Feed <?gdsparam@1070?>
                        AddTalkListData(12, 15000306, 787)
                        # action:15000307:Feed <?gdsparam@1080?>
                        AddTalkListData(13, 15000307, 788)
                        # action:15000308:Feed <?gdsparam@1090?>
                        AddTalkListData(14, 15000308, 789)
                        # action:15000309:Feed <?gdsparam@1100?>
                        AddTalkListData(15, 15000309, 790)
                        # action:15000000:Talk
                        AddTalkListData(2, 15000000, 71800035)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, 1642)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        ShowShopMessage(0, 0, 0)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 39 """
                            Label('L20')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1:
                                Goto('L3')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 35 """
                                Label('L21')
                                # talk:43000950:Farewell.
                                TalkToPlayer(43000950, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif GetDistanceToPlayer() >= 20:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 43 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L20')
                        elif not GetTalkListEntryResult():
                            """ State 41 """
                            Label('L22')
                            if not GetEventStatus(830):
                                """ State 42 """
                                # talk:43000950:Farewell.
                                TalkToPlayer(43000950, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L27')
                            elif GetEventStatus(830) == 1:
                                """ State 89 """
                                # talk:43000950:Farewell.
                                TalkToPlayer(43000950, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L27')
                            else:
                                """ State 50 """
                                ClearTalkDisabledState()
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 4:
                            Goto('L22')
                        elif GetTalkListEntryResult() == 1:
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 44 """
                            if GetEventStatus(1642) == 1 and not GetEventStatus(830):
                                """ State 36 """
                                # talk:43000800:Those who seek the Realm of Lords must brave Sen's Fortress, a\ndeadly house of traps.
                                TalkToPlayer(43000800, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 37 """
                                    Label('L23')
                                    if True:
                                        continue
                                    elif GetDistanceToPlayer() >= 15:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L27')
                            elif GetEventStatus(1642) == 1 and GetEventStatus(830) == 1:
                                """ State 87 """
                                # talk:43000850:Those who seek the Realm of Lords must brave Sen's Fortress, a\ndeadly house of traps.
                                TalkToPlayer(43000850, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Goto('L23')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L27')
                        elif GetTalkListEntryResult() == 2:
                            """ State 111 """
                            if not GetEventStatus(1642) and not GetEventStatus(830):
                                """ State 45 """
                                # talk:43001300:The beings who possess these souls have outlived their\nusefulness, or have chosen the path of the wicked.
                                TalkToPlayer(43001300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Goto('L23')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L27')
                            elif not GetEventStatus(1642) and GetEventStatus(830) == 1:
                                """ State 88 """
                                # talk:43001350:The beings who possess these souls have outlived their\nusefulness, or have chosen the path of the wicked.
                                TalkToPlayer(43001350, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Goto('L23')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L27')
                        elif GetTalkListEntryResult() == 5:
                            """ State 79,80 """
                            DebugEvent('売却ショップ')
                            OpenSellShop(-1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 38 """
                                Label('L24')
                                CloseMenu()
                                if CheckSelfDeath() == 1:
                                    Goto('L3')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L21')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L24')
                            elif not IsMenuOpen(64):
                                continue
                        elif GetTalkListEntryResult() == 6:
                            """ State 90 """
                            # action:10020250:Feed <?gdsparam@1010?>?
                            OpenGenericDialog(8, 10020250, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                """ State 92 """
                                Label('L25')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア')
                                ForceCloseGenericDialog()
                                continue
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 91 """
                                # goods:1010:Large Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1010, -1)
                                # goods:1000:Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1000, 5)
                                # action:10010900:<?gdsparam@1010?> shattered, becoming <?gdsparam@1000?>
                                OpenGenericDialog(7, 10010900, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 7:
                            """ State 93 """
                            # action:10020251:Feed <?gdsparam@1020?>?
                            OpenGenericDialog(8, 10020251, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 94 """
                                # goods:1020:Green Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1020, -1)
                                # goods:1000:Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1000, 5)
                                # action:10010901:<?gdsparam@1020?> shattered, becoming <?gdsparam@1000?>
                                OpenGenericDialog(7, 10010901, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 8:
                            """ State 95 """
                            # action:10020252:Feed <?gdsparam@1030?>?
                            OpenGenericDialog(8, 10020252, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 96 """
                                # goods:1030:Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1030, -1)
                                # goods:1010:Large Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1010, 3)
                                # action:10010902:<?gdsparam@1030?> shattered, becoming <?gdsparam@1010?>
                                OpenGenericDialog(7, 10010902, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 9:
                            """ State 97 """
                            # action:10020253:Feed <?gdsparam@1040?>?
                            OpenGenericDialog(8, 10020253, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 98 """
                                # goods:1040:Blue Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1040, -1)
                                # goods:1020:Green Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1020, 3)
                                # action:10010903:<?gdsparam@1040?> shattered, becoming <?gdsparam@1020?>
                                OpenGenericDialog(7, 10010903, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 10:
                            """ State 99 """
                            # action:10020254:Feed <?gdsparam@1050?>?
                            OpenGenericDialog(8, 10020254, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 100 """
                                # goods:1050:White Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1050, -1)
                                # goods:1020:Green Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1020, 3)
                                # action:10010904:<?gdsparam@1050?> shattered, becoming <?gdsparam@1020?>
                                OpenGenericDialog(7, 10010904, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 11:
                            """ State 101 """
                            # action:10020255:Feed <?gdsparam@1060?>?
                            OpenGenericDialog(8, 10020255, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 102 """
                                # goods:1060:Red Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1060, -1)
                                # goods:1020:Green Titanite Shard
                                PlayerEquipmentQuantityChange(3, 1020, 3)
                                # action:10010905:<?gdsparam@1060?> shattered, becoming <?gdsparam@1020?>
                                OpenGenericDialog(7, 10010905, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 12:
                            """ State 103 """
                            # action:10020256:Feed <?gdsparam@1070?>?
                            OpenGenericDialog(8, 10020256, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 104 """
                                # goods:1070:Titanite Slab
                                PlayerEquipmentQuantityChange(3, 1070, -1)
                                # goods:1030:Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1030, 2)
                                # action:10010906:<?gdsparam@1070?> shattered, becoming <?gdsparam@1030?>
                                OpenGenericDialog(7, 10010906, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 13:
                            """ State 105 """
                            # action:10020257:Feed <?gdsparam@1080?>?
                            OpenGenericDialog(8, 10020257, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 106 """
                                # goods:1080:Blue Titanite Slab
                                PlayerEquipmentQuantityChange(3, 1080, -1)
                                # goods:1040:Blue Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1040, 2)
                                # action:10010907:<?gdsparam@1080?> shattered, becoming <?gdsparam@1040?>
                                OpenGenericDialog(7, 10010907, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 14:
                            """ State 107 """
                            # action:10020258:Feed <?gdsparam@1090?>?
                            OpenGenericDialog(8, 10020258, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 108 """
                                # goods:1090:White Titanite Slab
                                PlayerEquipmentQuantityChange(3, 1090, -1)
                                # goods:1050:White Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1050, 2)
                                # action:10010908:<?gdsparam@1090?> shattered, becoming <?gdsparam@1050?>
                                OpenGenericDialog(7, 10010908, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        elif GetTalkListEntryResult() == 15:
                            """ State 109 """
                            # action:10020259:Feed <?gdsparam@1100?>?
                            OpenGenericDialog(8, 10020259, 3, 4, 2)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L16')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L17')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L25')
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L25')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 110 """
                                # goods:1100:Red Titanite Slab
                                PlayerEquipmentQuantityChange(3, 1100, -1)
                                # goods:1060:Red Titanite Chunk
                                PlayerEquipmentQuantityChange(3, 1060, 2)
                                # action:10010909:<?gdsparam@1100?> shattered, becoming <?gdsparam@1060?>
                                OpenGenericDialog(7, 10010909, 1, 0, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L16')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L25')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L25')
                        """ State 34 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 59 """
                    if GetEventStatus(830) == 1:
                        """ State 46 """
                        # talk:43001500:Are you ready?
                        TalkToPlayer(43001500, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 47 """
                            SetEventState(824, 1)
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif not GetEventStatus(830):
                        """ State 48 """
                        # talk:43001400:Very well.
                        TalkToPlayer(43001400, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            Goto('L12')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                elif GetDistanceToPlayer() >= 15:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71800026) == 1 and not GetEventStatus(830)):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:43000300:I am pleased to see you well.
            TalkToPlayer(43000300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L19')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71800033) and not GetEventStatus(71800039)
              and GetEventStatus(1643) == 1):
            """ State 52 """
            DisplayOneLineHelp(-1)
            # talk:43000200:Ahh, hello. Was it you who rang the Bell of Awakening?
            TalkToPlayer(43000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 77 """
                SetEventState(71800033, 1)
                SetEventState(71800039, 1)
                SetEventState(71800026, 1)
                SetEventState(71800027, 1)
                SetEventState(71800028, 1)
                SetEventState(71800029, 1)
                Goto('L12')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71800026) and GetEventStatus(1642)
              == 1 and not GetEventStatus(71800027)):
            """ State 18 """
            DisplayOneLineHelp(-1)
            # talk:43000100:Ahh, hello. Was it you who rang the Bell of Awakening?
            TalkToPlayer(43000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71800039, 1)
                Goto('L15')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif GetOneLineHelpStatus() == 1 and GetPlayerYDistance() > 2:
            """ State 14 """
            Label('L26')
            DisplayOneLineHelp(-1)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 3.5)):
            Goto('L26')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and not GetEventStatus(1646) and not GetEventStatus(1647)
              and not GetEventStatus(1648) and not GetEventStatus(1650) and not GetEventStatus(1641)):
            """ State 15 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1647):
            """ State 11 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 9 """
        Label('L27')
        ClearTalkProgressData()
        if GetEventStatus(71800024) == 1:
            """ State 112 """
            SetEventState(11020598, 1)
            ForceEndTalk(0)
        else:
            """ State 10 """
            ForceEndTalk(0)
    """ State 1 """
    # talk:43001900:You sorry fool...You could not be the Chosen one.
    TalkToPlayer(43001900, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 15:
        Goto('L27')

