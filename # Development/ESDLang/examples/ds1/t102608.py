# -*- coding: utf-8 -*-
def t102608_1():
    """ State 0,135 """
    SetEventState(71300093, 0)
    """ State 6 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('unknow')
        if (CheckSelfDeath() == 1 and not GetEventStatus(1196) and not GetEventStatus(1198) and GetDistanceToPlayer()
            <= 5):
            break
        elif (GetEventStatus(1195) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71300093) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 129 """
            # talk:18011000:Too bad for you, I'm a wolf in sheep's clothing. Best of luck as\na Hollow!
            TalkToPlayer(18011000, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71300093, 1)
            assert HasTalkEnded() == 1
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1202) == 1):
            """ State 78 """
            if not GetEventStatus(71300065):
                """ State 101 """
                Label('L1')
                DisplayOneLineHelp(-1)
                # talk:18000000:Hello there. I believe we are not acquainted?
                TalkToPlayer(18000000, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 7 """
                    Label('L2')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        """ State 17 """
                        Label('L3')
                        DisplayOneLineHelp(-1)
                        if GetEventStatus(1196) == 1:
                            """ State 77 """
                            # talk:18010900:Rrk! Why...how could I...
                            TalkToPlayer(18010900, -1, -1)
                            DisplayOneLineHelp(-1)
                            ForceCloseMenu()
                            if HasTalkEnded() == 1:
                                continue
                            elif GetDistanceToPlayer() >= 5:
                                pass
                        elif GetEventStatus(1198) == 1:
                            """ State 76 """
                            # talk:18000600:N...no...this can't be...
                            TalkToPlayer(18000600, -1, -1)
                            DisplayOneLineHelp(-1)
                            ForceCloseMenu()
                            if HasTalkEnded() == 1:
                                continue
                            elif GetDistanceToPlayer() >= 5:
                                pass
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71300064)
                          and GetSelfHP() <= 90 and GetEventStatus(1194) == 1):
                        """ State 64 """
                        # talk:18010800:What is it, fool? Driven to madness by emotion?
                        TalkToPlayer(18010800, -1, -1)
                        SetEventState(71300064, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            """ State 18 """
                            Label('L4')
                            ClearTalkProgressData()
                            def ExitPause():
                                RemoveMyAggro()
                            assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                            break
                        elif HasTalkEnded() == 1:
                            """ State 65 """
                            SetEventState(71300064, 1)
                            """ State 11 """
                            Label('L5')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            pass
                    elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71300059)
                          and GetSelfHP() <= 90 and not GetEventStatus(1194)):
                        """ State 12 """
                        # talk:18000500:By the Lords! You damn fool!
                        TalkToPlayer(18000500, -1, -1)
                        SetEventState(71300059, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 13 """
                            SetEventState(71300059, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            pass
                    elif GetEventStatus(1195) == 1:
                        """ State 10 """
                        Label('L6')
                        ForceEndTalk(3)
                        Goto('L5')
                    elif GetEventStatus(1197) == 1:
                        Goto('L6')
                    elif (not GetEventStatus(71300063) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1194) == 1 and GetEventStatus(71300062) == 1):
                        """ State 72 """
                        # talk:18010730:Argh!
                        TalkToPlayer(18010730, -1, -1)
                        SetEventState(71300063, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 73 """
                            SetEventState(71300063, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71300062) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1194) == 1 and GetEventStatus(71300061) == 1):
                        """ State 70 """
                        # talk:18010720:Mnph!
                        TalkToPlayer(18010720, -1, -1)
                        SetEventState(71300062, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 71 """
                            SetEventState(71300062, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71300061) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1194) == 1 and GetEventStatus(71300060) == 1):
                        """ State 68 """
                        # talk:18010710:Ooph!
                        TalkToPlayer(18010710, -1, -1)
                        SetEventState(71300061, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 69 """
                            SetEventState(71300061, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71300060) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(1194) == 1):
                        """ State 66 """
                        # talk:18010700:Hrgkt!
                        TalkToPlayer(18010700, -1, -1)
                        SetEventState(71300060, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 67 """
                            SetEventState(71300060, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71300058) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(1194) and GetEventStatus(71300057) == 1):
                        """ State 62 """
                        # talk:18000430:Ooph!
                        TalkToPlayer(18000430, -1, -1)
                        SetEventState(71300058, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 63 """
                            SetEventState(71300058, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71300057) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(1194) and GetEventStatus(71300056) == 1):
                        """ State 60 """
                        # talk:18000420:Mrgm!
                        TalkToPlayer(18000420, -1, -1)
                        SetEventState(71300057, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 61 """
                            SetEventState(71300057, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71300056) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(1194) and GetEventStatus(71300055) == 1):
                        """ State 58 """
                        # talk:18000410:Ooh!
                        TalkToPlayer(18000410, -1, -1)
                        SetEventState(71300056, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 59 """
                            SetEventState(71300056, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71300055) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and not GetEventStatus(1194)):
                        """ State 8 """
                        # talk:18000400:Hrg!
                        TalkToPlayer(18000400, -1, -1)
                        SetEventState(71300055, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L4')
                        elif HasTalkEnded() == 1:
                            """ State 9 """
                            SetEventState(71300055, 1)
                            Goto('L5')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(71300058) == 1:
                        Goto('L6')
                    elif GetEventStatus(71300063) == 1:
                        Goto('L6')
                    else:
                        Goto('L6')
                elif HasTalkEnded() == 1:
                    """ State 102 """
                    SetEventState(71300065, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71300065) == 1 and not GetEventStatus(71300066):
                """ State 103 """
                DisplayOneLineHelp(-1)
                # talk:18000100:Hello there.
                TalkToPlayer(18000100, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 104 """
                    SetEventState(71300066, 1)
                    SetEventState(11020599, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    pass
            elif not GetEventStatus(71300083) and GetEventStatus(1171) == 1:
                """ State 91 """
                DisplayOneLineHelp(-1)
                # talk:18011800:Oh, hello.
                TalkToPlayer(18011800, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 92 """
                    SetEventState(71300083, 1)
                    SetEventState(11020600, 1)
                    SetEventState(71300078, 1)
                    SetEventState(71300090, 1)
                    SetEventState(71300091, 1)
                    SetEventState(71300081, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif (not GetEventStatus(71300078) and not GetEventStatus(71300079) and GetEventStatus(71300066)
                  == 1):
                """ State 14 """
                DisplayOneLineHelp(-1)
                # talk:18000250:Oh, my... you again?
                TalkToPlayer(18000250, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 15 """
                    SetEventState(71300077, 1)
                    """ State 44 """
                    Label('L7')
                    # action:10020040:What is your decision?
                    OpenGenericDialog(8, 10020040, 3, 4, 2)
                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                        """ State 47 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L3')
                        else:
                            continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        """ State 41 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 43 """
                        Label('L8')
                        DebugEvent('奇跡を教わらない')
                        SetEventState(71300079, 1)
                        """ State 46 """
                        # talk:18011300:That is a shame. But each to their own.
                        TalkToPlayer(18011300, -1, -1)
                        DebugEvent('ノーを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 40 """
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　選択肢')
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L8')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 42 """
                        DebugEvent('奇跡を教わる')
                        SetEventState(71300078, 1)
                        """ State 45 """
                        Label('L9')
                        # talk:18011200:Very well. Then first, a Covenant with the Gods.
                        TalkToPlayer(18011200, -1, -1)
                        DebugEvent('イエスを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 82 """
                            SetEventState(71300090, 1)
                            if GetDistanceToPlayer() >= 5:
                                continue
                            else:
                                """ State 56 """
                                Label('L10')
                                if ComparePlayerStatus(11, 0, 1) == 1:
                                    """ State 53 """
                                    # action:10010726:Already belong to this Covenant
                                    OpenGenericDialog(7, 10010726, 1, 0, 2)
                                    DebugEvent('誓約が同じ')
                                    DisplayOneLineHelp(-1)
                                    RequestUnlockTrophy(7)
                                    if CheckSelfDeath() == 1:
                                        """ State 57 """
                                        Label('L11')
                                        ForceCloseGenericDialog()
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                            Goto('L3')
                                        else:
                                            continue
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                          == 1):
                                        """ State 55 """
                                        Label('L12')
                                        ForceCloseGenericDialog()
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        continue
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        """ State 54 """
                                        Label('L13')
                                        ClearTalkDisabledState()
                                        DebugEvent('会話タイマークリア　誓約同じ')
                                        if not GetEventStatus(71300091):
                                            """ State 83 """
                                            Label('L14')
                                            # talk:18011210:Now, let me share my Miracles.
                                            TalkToPlayer(18011210, -1, -1)
                                            DebugEvent('イエスを選んだあと')
                                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                Goto('L2')
                                            elif HasTalkEnded() == 1:
                                                """ State 84 """
                                                SetEventState(71300091, 1)
                                                """ State 27 """
                                                Label('L15')
                                                ClearTalkActionState()
                                                if True:
                                                    """ State 20 """
                                                    Label('L16')
                                                    while True:
                                                        # action:15000010:Purchase Item
                                                        AddTalkListData(1, 15000010, -1)
                                                        # action:15000200:Enter Covenant
                                                        AddTalkListData(2, 15000200, -1)
                                                        # action:15000350:Learn gesture
                                                        AddTalkListData(5, 15000350, -1)
                                                        # action:15000000:Talk
                                                        AddTalkListData(3, 15000000, 1202)
                                                        # action:15000005:Leave
                                                        AddTalkListData(4, 15000005, -1)
                                                        ShowShopMessage(0, 0, 0)
                                                        def ExitPause():
                                                            ClearTalkListData()
                                                        if not GetTalkListEntryResult():
                                                            """ State 28 """
                                                            Label('L17')
                                                            if (DidYouDoSomethingInTheMenu(11) == 1 and not
                                                                GetEventStatus(1193)):
                                                                """ State 37 """
                                                                DebugEvent('買って立ち去る')
                                                                """ State 39 """
                                                                # talk:18011700:Come again.
                                                                TalkToPlayer(18011700, -1, -1)
                                                                if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                                    == 1):
                                                                    Goto('L2')
                                                                elif HasTalkEnded() == 1:
                                                                    Continue('mainloop')
                                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                      or IsCharacterDisabled() or IsClientPlayer()
                                                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                      > 120 or GetDistanceToPlayer() > 5):
                                                                    break
                                                            elif (not DidYouDoSomethingInTheMenu(11) and not
                                                                  GetEventStatus(1193)):
                                                                """ State 38 """
                                                                DebugEvent('買わず立ち去る')
                                                                """ State 36 """
                                                                # talk:18011700:Come again.
                                                                TalkToPlayer(18011700, -1, -1)
                                                                if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                                    == 1):
                                                                    Goto('L2')
                                                                elif HasTalkEnded() == 1:
                                                                    Continue('mainloop')
                                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                      or IsCharacterDisabled() or IsClientPlayer()
                                                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                      > 120 or GetDistanceToPlayer() > 5):
                                                                    break
                                                            else:
                                                                Continue('mainloop')
                                                        elif GetTalkListEntryResult() == 3:
                                                            """ State 31 """
                                                            if (GetEventStatus(71300085) == 1 and GetEventStatus(71300083)
                                                                == 1):
                                                                """ State 34 """
                                                                # talk:18012300:Reah is the youngest daughter of the good house of Thorolund.
                                                                TalkToPlayer(18012300, -1, -1)
                                                                if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                                    == 1):
                                                                    Goto('L2')
                                                                elif HasTalkEnded() == 1:
                                                                    """ State 35 """
                                                                    SetEventState(71300086, 1)
                                                                    """ State 24 """
                                                                    Label('L18')
                                                                    if True:
                                                                        continue
                                                                    elif GetDistanceToPlayer() >= 3:
                                                                        Continue('mainloop')
                                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                      or IsCharacterDisabled() or IsClientPlayer()
                                                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                      > 120 or GetDistanceToPlayer() > 5):
                                                                    break
                                                            elif GetEventStatus(71300087) == 1:
                                                                pass
                                                            elif GetEventStatus(71300086) == 1:
                                                                """ State 98 """
                                                                Label('L19')
                                                                # talk:18012100:Very well. I can surely tell you, of all people...
                                                                TalkToPlayer(18012100, -1, -1)
                                                                DebugEvent('イエスを選んだあと')
                                                                if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                                    == 1):
                                                                    Goto('L2')
                                                                elif HasTalkEnded() == 1:
                                                                    Goto('L18')
                                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                      or IsCharacterDisabled() or IsClientPlayer()
                                                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                      > 120 or GetDistanceToPlayer() > 5):
                                                                    break
                                                            elif not GetEventStatus(71300084) and not GetEventStatus(1171):
                                                                """ State 23 """
                                                                # talk:18011900:My companions are M'lady and her young knights.
                                                                TalkToPlayer(18011900, -1, -1)
                                                                if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                                    == 1):
                                                                    Goto('L2')
                                                                elif HasTalkEnded() == 1:
                                                                    """ State 30 """
                                                                    SetEventState(71300084, 1)
                                                                    Goto('L18')
                                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                      or IsCharacterDisabled() or IsClientPlayer()
                                                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                      > 120 or GetDistanceToPlayer() > 5):
                                                                    break
                                                            else:
                                                                """ State 32 """
                                                                # talk:18012000:An Undead mission?
                                                                TalkToPlayer(18012000, -1, -1)
                                                                if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                                    == 1):
                                                                    Goto('L2')
                                                                elif HasTalkEnded() == 1:
                                                                    """ State 33 """
                                                                    SetEventState(71300085, 1)
                                                                    """ State 97 """
                                                                    # action:10020050:Show your dedication? Required souls: <?evntAcquittalPrice?> 
                                                                    OpenGenericDialog(8, 10020050, 3, 4, 2)
                                                                    SetAquittalCostMessageTag(100, 1)
                                                                    if (CheckSelfDeath() == 1 or IsAttackedBySomeone()
                                                                        == 1):
                                                                        pass
                                                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                          or IsCharacterDisabled() or IsClientPlayer()
                                                                          == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                          > 120 or GetDistanceToPlayer() > 5):
                                                                        """ State 94 """
                                                                        ForceCloseGenericDialog()
                                                                        ForceEndTalk(0)
                                                                        ClearTalkProgressData()
                                                                        Continue('mainloop')
                                                                    elif (not GetGenericDialogButtonResult() and not
                                                                          IsGenericDialogOpen()):
                                                                        """ State 96 """
                                                                        Label('L20')
                                                                        DebugEvent('奇跡を教わらない')
                                                                        SetEventState(71300079, 1)
                                                                        SetEventState(71300087, 1)
                                                                        Goto('L22')
                                                                    elif (GetGenericDialogButtonResult() == 2 and not
                                                                          IsGenericDialogOpen()):
                                                                        Goto('L20')
                                                                    elif (GetGenericDialogButtonResult() == 1 and ComparePlayerAcquittalPrice(100,
                                                                          1, 2) == 1 and not IsGenericDialogOpen()):
                                                                        """ State 130 """
                                                                        # action:10010752:Insufficient dedication
                                                                        OpenGenericDialog(7, 10010752, 1, 0, 2)
                                                                        DebugEvent('誓約が同じ')
                                                                        DisplayOneLineHelp(-1)
                                                                        if CheckSelfDeath() == 1:
                                                                            pass
                                                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                              or IsCharacterDisabled() or IsClientPlayer()
                                                                              == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                              > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone()
                                                                              == 1):
                                                                            """ State 132 """
                                                                            ForceCloseGenericDialog()
                                                                            ForceEndTalk(0)
                                                                            ClearTalkProgressData()
                                                                            Continue('mainloop')
                                                                        elif (not GetGenericDialogButtonResult() and not
                                                                              IsGenericDialogOpen()):
                                                                            """ State 131 """
                                                                            Label('L21')
                                                                            ClearTalkDisabledState()
                                                                            DebugEvent('会話タイマークリア　誓約同じ')
                                                                            Goto('L18')
                                                                        elif (GetGenericDialogButtonResult() == 1 and not
                                                                              IsGenericDialogOpen()):
                                                                            Goto('L21')
                                                                    elif (GetGenericDialogButtonResult() == 1 and ComparePlayerAcquittalPrice(100,
                                                                          1, 3) == 1 and not IsGenericDialogOpen()):
                                                                        """ State 95 """
                                                                        DebugEvent('奇跡を教わる')
                                                                        SubtractAcquittalCostFromPlayerSouls(100, 1)
                                                                        SetEventState(71300086, 1)
                                                                        Goto('L19')
                                                                    """ State 100 """
                                                                    ForceCloseGenericDialog()
                                                                    ForceEndTalk(0)
                                                                    ClearTalkProgressData()
                                                                    if (CheckSelfDeath() == 1 and GetDistanceToPlayer()
                                                                        <= 5):
                                                                        Goto('L3')
                                                                    else:
                                                                        Continue('mainloop')
                                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                      or IsCharacterDisabled() or IsClientPlayer()
                                                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                      > 120 or GetDistanceToPlayer() > 5):
                                                                    break
                                                            """ State 99 """
                                                            Label('L22')
                                                            # talk:18012200:I am afraid that may be difficult. For our missions are sacred.
                                                            TalkToPlayer(18012200, -1, -1)
                                                            DebugEvent('ノーを選んだあと')
                                                            if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                                == 1):
                                                                Goto('L2')
                                                            elif HasTalkEnded() == 1:
                                                                Goto('L18')
                                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                  or IsCharacterDisabled() or IsClientPlayer()
                                                                  == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                  > 120 or GetDistanceToPlayer() > 5):
                                                                break
                                                        elif GetTalkListEntryResult() == 1:
                                                            """ State 19,133 """
                                                            OpenRegularShop(4000, 4099)
                                                            if (CheckSelfDeath() == 1 or IsAttackedBySomeone()
                                                                == 1):
                                                                """ State 25 """
                                                                Label('L23')
                                                                CloseMenu()
                                                                if (CheckSelfDeath() == 1 and GetDistanceToPlayer()
                                                                    <= 5):
                                                                    Goto('L3')
                                                                elif IsPlayerMovingACertainDistance(1) == 1:
                                                                    """ State 22 """
                                                                    Label('L24')
                                                                    if GetDistanceToPlayer() >= 12:
                                                                        """ State 21 """
                                                                        Label('L25')
                                                                        ForceEndTalk(0)
                                                                        Continue('mainloop')
                                                                    else:
                                                                        """ State 29 """
                                                                        Continue('mainloop')
                                                                elif not IsPlayerMovingACertainDistance(1):
                                                                    Goto('L25')
                                                                else:
                                                                    Continue('mainloop')
                                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                  or IsCharacterDisabled() or IsClientPlayer()
                                                                  == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                  > 120 or GetDistanceToPlayer() > 15):
                                                                Goto('L23')
                                                            elif not IsMenuOpen(11):
                                                                pass
                                                        elif GetTalkListEntryResult() == 4:
                                                            Goto('L17')
                                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                              or IsCharacterDisabled() or IsClientPlayer()
                                                              == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                              > 120 or GetDistanceToPlayer() > 3):
                                                            """ State 26 """
                                                            Label('L26')
                                                            ForceEndTalk(0)
                                                            ClearTalkProgressData()
                                                            CloseShopMessage()
                                                            if (CheckSelfDeath() == 1 and GetDistanceToPlayer()
                                                                <= 5):
                                                                Goto('L3')
                                                            elif IsPlayerMovingACertainDistance(1) == 1:
                                                                Goto('L24')
                                                            elif not IsPlayerMovingACertainDistance(1):
                                                                Goto('L25')
                                                        elif (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                              == 1):
                                                            Goto('L26')
                                                        elif GetTalkListEntryResult() == 2:
                                                            Goto('L10')
                                                        elif GetTalkListEntryResult() == 5:
                                                            """ State 134 """
                                                            OpenItemAcquisitionMenu(3, 9005, 1)
                                                            AcquireGesture(5)
                                                            SetEventState(280, 0)
                                                            if (CheckSelfDeath() == 1 or IsAttackedBySomeone()
                                                                == 1):
                                                                Goto('L23')
                                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                  or IsCharacterDisabled() or IsClientPlayer()
                                                                  == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                  > 120 or GetDistanceToPlayer() > 15):
                                                                Goto('L23')
                                                            elif not IsMenuOpen(63):
                                                                """ State 138 """
                                                                # action:10010755:Gesture learned
                                                                OpenGenericDialog(7, 10010755, 1, 0, 2)
                                                                DebugEvent('ジェスチャーを学んだ')
                                                                DisplayOneLineHelp(-1)
                                                                if CheckSelfDeath() == 1:
                                                                    Goto('L11')
                                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                                      or IsCharacterDisabled() or IsClientPlayer()
                                                                      == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                                      == 1):
                                                                    Goto('L12')
                                                                elif (not GetGenericDialogButtonResult() and not
                                                                      IsGenericDialogOpen()):
                                                                    Goto('L21')
                                                                elif (GetGenericDialogButtonResult() == 1 and not
                                                                      IsGenericDialogOpen()):
                                                                    Goto('L21')
                                                elif GetDistanceToPlayer() >= 3:
                                                    continue
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 5):
                                                pass
                                        elif GetEventStatus(71300091) == 1:
                                            Goto('L16')
                                        else:
                                            continue
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        Goto('L13')
                                else:
                                    """ State 52 """
                                    # action:10010745:Join Covenant? (abandons former Covenant)
                                    OpenGenericDialog(8, 10010745, 3, 4, 2)
                                    ChangePlayerStats(31, 5, 1)
                                    RequestUnlockTrophy(7)
                                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                        Goto('L11')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        """ State 49 """
                                        ForceCloseGenericDialog()
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        continue
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        """ State 51 """
                                        Label('L27')
                                        DebugEvent('誓約を変更しない')
                                        if not GetEventStatus(71300092) and GetEventStatus(1202) == 1:
                                            """ State 85 """
                                            # talk:18011300:That is a shame. But each to their own.
                                            TalkToPlayer(18011300, -1, -1)
                                            DebugEvent('ノーを選んだあと')
                                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                Goto('L2')
                                            elif HasTalkEnded() == 1:
                                                """ State 93 """
                                                SetEventState(71300092, 1)
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 5):
                                                Goto('L31')
                                        else:
                                            pass
                                        """ State 48 """
                                        ClearTalkDisabledState()
                                        DebugEvent('会話タイマークリア　選択肢')
                                        continue
                                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                        Goto('L27')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        """ State 50 """
                                        ForceCloseMenu()
                                        SetTalkTime(2.5)
                                        BreakCovenantPledge()
                                        DebugEvent('誓約を変更する')
                                        ChangePlayerStats(11, 5, 1)
                                        SetEventState(842, 1)
                                        if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                            or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                            > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                            == 1):
                                            Goto('L12')
                                        elif not GetEventStatus(842):
                                            """ State 136 """
                                            # action:10010729:Covenant established
                                            OpenGenericDialog(7, 10010729, 1, 0, 2)
                                            DebugEvent('誓約を交わしました')
                                            DisplayOneLineHelp(-1)
                                            if CheckSelfDeath() == 1:
                                                Goto('L11')
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                  == 1):
                                                Goto('L12')
                                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                """ State 137 """
                                                Label('L28')
                                                ClearTalkDisabledState()
                                                DebugEvent('会話タイマークリア　誓約同じ')
                                                if not GetEventStatus(71300091):
                                                    Goto('L14')
                                                else:
                                                    Goto('L16')
                                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                Goto('L28')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71300078) and GetEventStatus(71300079) == 1:
                """ State 86 """
                DisplayOneLineHelp(-1)
                # talk:18011600:Oh, hello.
                TalkToPlayer(18011600, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    Goto('L7')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71300090) and GetEventStatus(71300078) == 1:
                Goto('L9')
            elif GetEventStatus(71300090) == 1 and ComparePlayerStatus(11, 5, 1) == 1 and not GetEventStatus(71300091):
                """ State 87 """
                DisplayOneLineHelp(-1)
                # talk:18011200:Very well. Then first, a Covenant with the Gods.
                TalkToPlayer(18011200, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71300091) and ComparePlayerStatus(11, 0, 1) == 1:
                Goto('L14')
            elif GetEventStatus(71300081) == 1:
                """ State 90 """
                DisplayOneLineHelp(-1)
                # talk:18011500:Oh, hello.
                TalkToPlayer(18011500, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            else:
                """ State 88 """
                DisplayOneLineHelp(-1)
                # talk:18011400:Oh, hello.
                TalkToPlayer(18011400, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 89 """
                    SetEventState(71300081, 1)
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1195) and not GetEventStatus(1196)
              and not GetEventStatus(1197) and not GetEventStatus(1198)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1198) and not GetEventStatus(1196):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1193) == 1):
            """ State 79 """
            if GetEventStatus(1180) == 1 and GetEventStatus(71300072) == 1:
                """ State 119 """
                Label('L29')
                DisplayOneLineHelp(-1)
                # talk:18012400:Oh, I'm sorry. Miracles, was it?
                TalkToPlayer(18012400, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 120 """
                    SetEventState(71300073, 1)
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(1177) == 1 and GetEventStatus(71300072) == 1:
                Goto('L29')
            elif (not GetEventStatus(71300071) and not GetEventStatus(11026107) and GetEventStatus(71300070)
                  == 1):
                """ State 113 """
                DisplayOneLineHelp(-1)
                # talk:18010400:...Ah, oh, you. Have you seen M'lady?
                TalkToPlayer(18010400, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 114 """
                    SetEventState(71300071, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71300070) == 1 and GetEventStatus(1180) == 1 and not GetEventStatus(71300072):
                """ State 115 """
                Label('L30')
                DisplayOneLineHelp(-1)
                # talk:18010500:Are, are you sure?! Then M'lady...
                TalkToPlayer(18010500, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 116 """
                    SetEventState(71300072, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif (GetEventStatus(71300070) == 1 and GetEventStatus(1177) == 1 and GetEventStatus(815)
                  == 1 and not GetEventStatus(71300072)):
                Goto('L30')
            elif GetEventStatus(71300070) == 1:
                """ State 117 """
                DisplayOneLineHelp(-1)
                # talk:18012410:Oh, I'm sorry. Miracles, was it?
                TalkToPlayer(18012410, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 118 """
                    SetEventState(71300073, 1)
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71300069) == 1:
                """ State 111 """
                DisplayOneLineHelp(-1)
                # talk:18010100:Your Highness...where have you gone?
                TalkToPlayer(18010100, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 112 """
                    SetEventState(71300070, 1)
                    SetEventState(11026107, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71300069) and GetEventStatus(71300065) == 1:
                """ State 109 """
                DisplayOneLineHelp(-1)
                # talk:18010000:Uh, oh, you again?
                TalkToPlayer(18010000, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 110 """
                    SetEventState(71300069, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71300065):
                Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1191) == 1):
            """ State 80 """
            if GetEventStatus(71300067) == 1 and not GetEventStatus(11026108):
                """ State 107 """
                DisplayOneLineHelp(-1)
                # talk:18000300:Oh, you yet again?
                TalkToPlayer(18000300, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 108 """
                    SetEventState(71300068, 1)
                    SetEventState(11020600, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71300066) == 1:
                """ State 105 """
                DisplayOneLineHelp(-1)
                # talk:18000200:Oh, my... you again?
                TalkToPlayer(18000200, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 106 """
                    SetEventState(71300067, 1)
                    SetEventState(11026108, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1194) == 1):
            """ State 81 """
            if GetEventStatus(1175) == 1 and not GetEventStatus(71300076):
                """ State 125 """
                DisplayOneLineHelp(-1)
                # talk:18010600:...Oh, it's you...
                TalkToPlayer(18010600, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 126 """
                    SetEventState(71300076, 1)
                    SetEventState(71300075, 1)
                    SetEventState(71300074, 1)
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71300074) == 1 and not GetEventStatus(71300075):
                """ State 123 """
                DisplayOneLineHelp(-1)
                # talk:18010300:In the depths of the Catacombs, M'lady slipped off the giant's\ncoffin and into a hole.
                TalkToPlayer(18010300, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 124 """
                    SetEventState(71300075, 1)
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71300074):
                """ State 121 """
                DisplayOneLineHelp(-1)
                # talk:18010200:Oh, hello there.
                TalkToPlayer(18010200, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 122 """
                    SetEventState(71300074, 1)
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71300075) == 1:
                """ State 127 """
                DisplayOneLineHelp(-1)
                # talk:18011500:Oh, hello.
                TalkToPlayer(18011500, -1, -1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L2')
                elif HasTalkEnded() == 1:
                    """ State 128 """
                    Goto('L15')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
        """ State 3 """
        Label('L31')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)
    """ State 16 """
    if GetEventStatus(1196) == 1:
        """ State 75 """
        # talk:18010900:Rrk! Why...how could I...
        TalkToPlayer(18010900, -1, -1)
        DisplayOneLineHelp(-1)
        ForceCloseMenu()
        if HasTalkEnded() == 1:
            Goto('L0')
        elif GetDistanceToPlayer() >= 5:
            Goto('L31')
    elif GetEventStatus(1198) == 1:
        """ State 74 """
        # talk:18000600:N...no...this can't be...
        TalkToPlayer(18000600, -1, -1)
        DisplayOneLineHelp(-1)
        ForceCloseMenu()
        if HasTalkEnded() == 1:
            Goto('L0')
        elif GetDistanceToPlayer() >= 5:
            Goto('L31')

