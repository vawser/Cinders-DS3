# -*- coding: utf-8 -*-
def t120663_1():
    """ State 0,14 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1125) and GetDistanceToPlayer() <= 5:
            break
        elif (not GetEventStatus(71200000) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1121)
              == 1):
            """ State 24 """
            # talk:15000000:So, it is thou who rescueth me?
            TalkToPlayer(15000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 13 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 51 """
                    Label('L2')
                    # talk:15000300:Ahh...
                    TalkToPlayer(15000300, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif GetEventStatus(1124) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                    """ State 9 """
                    Label('L4')
                    ClearTalkDisabledState()
                    RemoveMyAggro()
                    continue
                elif (not GetEventStatus(71200012) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71200011) == 1):
                    """ State 50 """
                    # talk:15000260:Cease this barbarism...
                    TalkToPlayer(15000260, -1, -1)
                    SetEventState(71200012, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 52 """
                        Label('L5')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 49 """
                        SetEventState(71200012, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71200011) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71200010) == 1):
                    """ State 48 """
                    # talk:15000240:Whatever for...
                    TalkToPlayer(15000240, -1, -1)
                    SetEventState(71200011, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 47 """
                        SetEventState(71200011, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71200010) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 46 """
                    # talk:15000220:What dost thou...
                    TalkToPlayer(15000220, -1, -1)
                    SetEventState(71200010, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 45 """
                        SetEventState(71200010, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71200012) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
            elif HasTalkEnded() == 1:
                """ State 25 """
                SetEventState(71200000, 1)
                """ State 39 """
                Label('L6')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 53 """
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
                    """ State 36 """
                    Label('L8')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    """ State 8 """
                    Label('L9')
                    # talk:15000800:Wait, where... are...
                    TalkToPlayer(15000800, -1, -1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif GetDistanceToPlayer() >= 12:
                        """ State 7 """
                        Label('L10')
                        ForceEndTalk(0)
                        continue
                    elif HasTalkEnded() == 1:
                        """ State 27 """
                        SetEventState(71200006, 1)
                        SetEventState(11206100, 1)
                        continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 38 """
                    Label('L11')
                    DebugEvent('魔術を教わらない')
                    SetEventState(71200002, 1)
                    """ State 41 """
                    Label('L12')
                    # talk:15000100:Yes, of course...I understand well.
                    TalkToPlayer(15000100, -1, -1)
                    DebugEvent('ノーを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 55 """
                        DebugEvent('状態遷移フラグたてる')
                        SetEventState(11200591, 1)
                        """ State 35 """
                        Label('L13')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L11')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 37 """
                    DebugEvent('魔術を教わる')
                    SetEventState(71200001, 1)
                    """ State 40 """
                    Label('L14')
                    # talk:15000050:My heartfelt thanks. I am pleased beyond words.
                    TalkToPlayer(15000050, -1, -1)
                    DebugEvent('イエスを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 54 """
                        DebugEvent('状態遷移フラグたてる')
                        SetEventState(11200590, 1)
                        Goto('L13')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71200002) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1121)
              == 1 and not GetEventStatus(71200001) and GetEventStatus(71200000) == 1):
            """ State 34 """
            # talk:15000020:Thou hast return'd. Bless thee.
            TalkToPlayer(15000020, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200006) == 1 and GetEventStatus(11206100)
              == 1):
            """ State 30 """
            # talk:15000900:Thou hast return'd. Bless thee.
            TalkToPlayer(15000900, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71200006, 0)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1130) == 1):
            """ State 59 """
            # talk:15000500:I am Dusk of Oolacile.
            TalkToPlayer(15000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 21 """
                Label('L15')
                ClearTalkActionState()
                if True:
                    """ State 6 """
                    while True:
                        # action:15000010:Purchase Item
                        AddTalkListData(1, 15000010, -1)
                        # action:15000350:Learn gesture
                        AddTalkListData(2, 15000350, 284)
                        ShowShopMessage(0, 0, 0)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 18 """
                            Label('L16')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                Goto('L9')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L10')
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 28 """
                            if GetEventStatus(71210091) == 1 and GetEventStatus(1130) == 1 and not GetEventStatus(11206104):
                                """ State 65 """
                                # talk:56000300:I still think on that creature from the Abyss that preyed upon me.
                                TalkToPlayer(56000300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 66 """
                                    SetEventState(71210093, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L19')
                            elif (GetEventStatus(71210090) == 1 and GetEventStatus(1130) == 1 and not
                                  GetEventStatus(11206102)):
                                """ State 62 """
                                # talk:56000200:Excuse me for such whimsical utterances.
                                TalkToPlayer(56000200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 63 """
                                    SetEventState(71210091, 1)
                                    SetEventState(11206104, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L19')
                            elif (GetEventStatus(1130) == 1 and GetEventStatus(71210092) == 1 and not
                                  GetEventStatus(71210091)):
                                """ State 60 """
                                # talk:56000100:...This may strike thine ear as somewhat peculiar, but...
                                TalkToPlayer(56000100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 61 """
                                    SetEventState(71210090, 1)
                                    SetEventState(11206102, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L19')
                            elif GetEventStatus(71200005) == 1 and not GetEventStatus(11206103):
                                """ State 44 """
                                # talk:15001300:My home of Oolacile was reduced to ashes, long ago, in my time.
                                TalkToPlayer(15001300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 64 """
                                    SetEventState(71210092, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L19')
                            elif GetEventStatus(71200004) == 1:
                                """ State 42 """
                                # talk:15001200:The sorceries of Oolacile differ from the magic of thine age.
                                TalkToPlayer(15001200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 43 """
                                    SetEventState(71200005, 1)
                                    SetEventState(11206103, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L19')
                            elif not GetEventStatus(71200004):
                                """ State 31 """
                                # talk:15001100:For a very long time, I was trapped within the Crystal Golem.
                                TalkToPlayer(15001100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 32 """
                                    SetEventState(71200004, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L19')
                        elif GetTalkListEntryResult() == 1:
                            """ State 5,4 """
                            OpenRegularShop(2200, 2299)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 17 """
                                Label('L17')
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L9')
                                elif not IsPlayerMovingACertainDistance(1):
                                    Goto('L10')
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L17')
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L16')
                        elif GetTalkListEntryResult() == 2:
                            """ State 56 """
                            OpenItemAcquisitionMenu(3, 9013, 1)
                            AcquireGesture(13)
                            SetEventState(284, 0)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L17')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L17')
                            elif not IsMenuOpen(63):
                                """ State 58 """
                                # action:10010755:Gesture learned
                                OpenGenericDialog(7, 10010755, 1, 0, 2)
                                DebugEvent('ジェスチャーを学んだ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    Goto('L7')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    Goto('L8')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 57 """
                                    Label('L18')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L18')
                        """ State 12 """
                        if True:
                            pass
                        elif GetDistanceToPlayer() >= 3:
                            Continue('mainloop')
                    """ State 23 """
                    if not DidYouDoSomethingInTheMenu(11):
                        """ State 3 """
                        DebugEvent('買わず立ち去る')
                        """ State 1 """
                        # talk:15000600:If thou art in need, pray summon me again.
                        TalkToPlayer(15000600, -1, -1)
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
                        """ State 26 """
                        # talk:15000700:If thou art in need, pray summon me again.
                        TalkToPlayer(15000700, -1, -1)
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
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71200001) and GetEventStatus(71200002)
              == 1 and not GetEventStatus(1123)):
            Goto('L12')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71200002) and GetEventStatus(71200001)
              == 1 and not GetEventStatus(1123)):
            Goto('L14')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1123) == 1):
            """ State 11 """
            # talk:15000500:I am Dusk of Oolacile.
            TalkToPlayer(15000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L15')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1120) and not GetEventStatus(1124)
              and not GetEventStatus(1125) and not GetEventStatus(1126) and not GetEventStatus(1122)
              and not GetEventStatus(1129)):
            """ State 15 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 16 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1125):
            """ State 22 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 19 """
        Label('L19')
        ClearTalkProgressData()
        """ State 20 """
        ForceEndTalk(0)
    """ State 33 """
    # talk:15000300:Ahh...
    TalkToPlayer(15000300, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L19')

