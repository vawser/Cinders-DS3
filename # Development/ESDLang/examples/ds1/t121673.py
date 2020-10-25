# -*- coding: utf-8 -*-
def t121673_1():
    """ State 0,68 """
    SetEventState(71210005, 0)
    SetEventState(71210006, 0)
    SetEventState(71210007, 0)
    """ State 18 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1842) and GetDistanceToPlayer() <= 5:
            break
        elif (GetEventStatus(1841) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71210005) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 58 """
            # talk:59005500:You damn fool.
            TalkToPlayer(59005500, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71210005, 1)
            assert HasTalkEnded() == 1
            continue
        elif (GetEventStatus(1841) == 1 and not GetEventStatus(71210007) and GetDistanceToPlayer() <=
              5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5 and GetPlayerRemainingHP() < 10 and not IsPlayerDead()):
            """ State 72 """
            # talk:59005400:What? Now you're feeling the heat?
            TalkToPlayer(59005400, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71210007, 1)
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 10:
                pass
        elif (GetEventStatus(1841) == 1 and not GetEventStatus(71210006) and GetDistanceToPlayer() <=
              5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5 and GetSelfHP() <= 70 and not IsPlayerDead()):
            """ State 71 """
            # talk:59005300:There!
            TalkToPlayer(59005300, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71210006, 1)
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 10:
                pass
        elif (GetEventStatus(71210008) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210010)):
            """ State 63 """
            Label('L1')
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            # talk:59000100:Yes, of course. Exactly what happened to me.
            TalkToPlayer(59000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 17 """
                Label('L2')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 56 """
                    Label('L3')
                    # talk:59005600:Hrrg...
                    TalkToPlayer(59005600, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71210004)
                      and GetSelfHP() <= 90 and GetEventStatus(11210536) == 1):
                    """ State 73 """
                    # talk:59005100:What now? You think this my fault?
                    TalkToPlayer(59005100, -1, -1)
                    SetEventState(71210004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 57 """
                        Label('L4')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 8 """
                        Label('L5')
                        SetEventState(71210004, 1)
                        """ State 10 """
                        Label('L6')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71210004)
                      and GetSelfHP() <= 90 and not GetEventStatus(11210536)):
                    """ State 9 """
                    # talk:59005000:Oh! It's come to blows, has it?
                    TalkToPlayer(59005000, -1, -1)
                    SetEventState(71210004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1841) == 1:
                    """ State 11 """
                    Label('L7')
                    ForceEndTalk(3)
                    Goto('L6')
                elif (not GetEventStatus(71210003) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71210002) == 1):
                    """ State 70 """
                    # talk:59005230:That bloody hurts!
                    TalkToPlayer(59005230, -1, -1)
                    SetEventState(71210003, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 69 """
                        SetEventState(71210003, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71210002) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71210001) == 1):
                    """ State 53 """
                    # talk:59005220:Oww!
                    TalkToPlayer(59005220, -1, -1)
                    SetEventState(71210002, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 52 """
                        SetEventState(71210002, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71210001) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71210000) == 1):
                    """ State 51 """
                    # talk:59005210:Erg!
                    TalkToPlayer(59005210, -1, -1)
                    SetEventState(71210001, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 50 """
                        SetEventState(71210001, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71210000) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 13 """
                    # talk:59005200:Ooph!
                    TalkToPlayer(59005200, -1, -1)
                    SetEventState(71210000, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 12 """
                        SetEventState(71210000, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71210003) == 1:
                    Goto('L7')
                else:
                    Goto('L7')
            elif HasTalkEnded() == 1:
                """ State 66 """
                SetEventState(71210010, 1)
                """ State 16 """
                Label('L8')
                if True:
                    """ State 5 """
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
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 22 """
                            Label('L10')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L3')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 7 """
                                Label('L11')
                                # talk:59000600:So long.
                                TalkToPlayer(59000600, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif GetDistanceToPlayer() >= 12:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 30 """
                                    SetEventState(11215200, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            """ State 27 """
                            Label('L12')
                            if not DidYouDoSomethingInTheMenu(11):
                                """ State 2 """
                                DebugEvent('買わず立ち去る')
                                """ State 42 """
                                if (GetEventStatus(11210536) == 1 and not GetEventStatus(11210900) and
                                    not GetEventStatus(11210901)):
                                    pass
                                elif GetEventStatus(11210536) == 1:
                                    """ State 76 """
                                    Label('L13')
                                    # talk:59001400:I'll be seeing you.
                                    TalkToPlayer(59001400, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L2')
                                    elif HasTalkEnded() == 1:
                                        Continue('mainloop')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L19')
                                else:
                                    """ State 29 """
                                    Label('L14')
                                    # talk:59000600:So long.
                                    TalkToPlayer(59000600, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L2')
                                    elif HasTalkEnded() == 1:
                                        Continue('mainloop')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L19')
                            elif DidYouDoSomethingInTheMenu(11) == 1:
                                """ State 1 """
                                DebugEvent('買って立ち去る')
                                """ State 41 """
                                if (GetEventStatus(11210536) == 1 and not GetEventStatus(11210900) and
                                    not GetEventStatus(11210901)):
                                    pass
                                elif GetEventStatus(11210536) == 1:
                                    Goto('L13')
                                else:
                                    Goto('L14')
                            else:
                                """ State 54 """
                                ClearTalkDisabledState()
                                Continue('mainloop')
                            """ State 43 """
                            # talk:59000700:So long.
                            TalkToPlayer(59000700, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L2')
                            elif HasTalkEnded() == 1:
                                Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L19')
                        elif GetTalkListEntryResult() == 3:
                            break
                        elif GetTalkListEntryResult() == 1:
                            """ State 4,3 """
                            OpenRegularShop(6400, 6499)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 21 """
                                Label('L15')
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L3')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L11')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L15')
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 4:
                            Goto('L12')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L10')
                        """ State 6 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 32 """
                    if not GetEventStatus(11210537) and not GetEventStatus(71210015) and not GetEventStatus(11210001):
                        """ State 15 """
                        # talk:59000800:Did you happen across Knight Artorias?
                        TalkToPlayer(59000800, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 31 """
                            SetEventState(71210015, 1)
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (GetEventStatus(11210001) == 1 and not GetEventStatus(71210054) and GetEventStatus(71210016)
                          == 1):
                        """ State 79 """
                        # talk:59001600:Believe it or not,
                        TalkToPlayer(59001600, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 80 """
                            SetEventState(71210054, 1)
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(11210001) == 1 and not GetEventStatus(71210016):
                        """ State 33 """
                        # talk:59000900:Did you really slay Knight Artorias?
                        TalkToPlayer(59000900, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 34 """
                            SetEventState(71210016, 1)
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif not GetEventStatus(71210017) and GetEventStatus(71210038) == 1:
                        """ State 44 """
                        # talk:59001000:So, what did that giant mushroom make you do?
                        TalkToPlayer(59001000, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 45 """
                            SetEventState(71210017, 1)
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(11210536) == 1 and not GetEventStatus(11210900) and not GetEventStatus(11210901):
                        """ State 48 """
                        # talk:59001200:What? If you've something to say, then say it!
                        TalkToPlayer(59001200, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 49 """
                            SetEventState(71210019, 1)
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(11210536) == 1:
                        """ State 77 """
                        # talk:59001500:...Well, you've quite the nerve!
                        TalkToPlayer(59001500, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 78 """
                            SetEventState(71210053, 1)
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    else:
                        """ State 46 """
                        # talk:59001100:Hm? I've little to talk about, really.
                        TalkToPlayer(59001100, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 47 """
                            SetEventState(71210018, 1)
                            Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71210009) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210011)):
            """ State 64 """
            Label('L16')
            # talk:59000200:Oh, well, my mistake...
            TalkToPlayer(59000200, -1, -1)
            DebugEvent('ノーを選んだあと1')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 67 """
                SetEventState(71210011, 1)
                Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71210008) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210009)):
            """ State 28 """
            # talk:59000000:Hm...Oh, let me guess...
            TalkToPlayer(59000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 62 """
                # action:10020041:How do you answer?
                OpenGenericDialog(8, 10020041, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 65 """
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
                    """ State 59 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 61 """
                    Label('L17')
                    DebugEvent('いいえ')
                    SetEventState(71210009, 1)
                    Goto('L16')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L17')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 60 """
                    DebugEvent('はい')
                    SetEventState(71210008, 1)
                    Goto('L1')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(11210536) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11210900)
              and not GetEventStatus(11210901)):
            """ State 37 """
            # talk:59000500:Oh, you again...
            TalkToPlayer(59000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 38 """
                SetEventState(71210014, 1)
                """ State 25 """
                Label('L18')
                ClearTalkActionState()
                if True:
                    Goto('L9')
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(11210536) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 74 """
            # talk:59001300:...Oh, you!
            TalkToPlayer(59001300, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 75 """
                SetEventState(71210052, 1)
                Goto('L18')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11216100) and GetEventStatus(71210012)
              == 1):
            """ State 14 """
            # talk:59000400:Oh, for Juniper's sake.
            TalkToPlayer(59000400, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 40 """
                SetEventState(71210013, 1)
                Goto('L18')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1):
            """ State 39 """
            # talk:59000300:Oh, still alive, are you?
            TalkToPlayer(59000300, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 55 """
                SetEventState(71210012, 1)
                SetEventState(11216100, 1)
                Goto('L18')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1841) and not GetEventStatus(1842)):
            """ State 19 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 20 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1842):
            """ State 26 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 23 """
        Label('L19')
        ClearTalkProgressData()
        """ State 24 """
        ForceEndTalk(0)
    """ State 36 """
    # talk:59005600:Hrrg...
    TalkToPlayer(59005600, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L19')

