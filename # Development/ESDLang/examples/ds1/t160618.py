# -*- coding: utf-8 -*-
def t160618_1():
    """ State 0,15 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1315) and GetDistanceToPlayer() <= 5:
            break
        elif (GetEventStatus(13) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 34 """
            # talk:28001200:...Magnificent. You defeated the Four Kings.
            TalkToPlayer(28001200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 14 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 31 """
                    Label('L2')
                    # talk:28002500:Ohh...ogghh...How could I allow this...
                    TalkToPlayer(28002500, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (not GetEventStatus(71600034) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetSelfHP() <= 90):
                    """ State 7 """
                    # talk:28002400:Sigh...
                    TalkToPlayer(28002400, -1, -1)
                    SetEventState(71600034, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 32 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 6 """
                        SetEventState(71600034, 1)
                        """ State 8 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1314) == 1:
                    """ State 9 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71600033) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600032) == 1):
                    """ State 68 """
                    # talk:28002330:Stop that!
                    TalkToPlayer(28002330, -1, -1)
                    SetEventState(71600033, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 67 """
                        SetEventState(71600033, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71600032) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600031) == 1):
                    """ State 66 """
                    # talk:28002320:Cease!
                    TalkToPlayer(28002320, -1, -1)
                    SetEventState(71600032, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 65 """
                        SetEventState(71600032, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71600031) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600030) == 1):
                    """ State 64 """
                    # talk:28002310:What are you doing!
                    TalkToPlayer(28002310, -1, -1)
                    SetEventState(71600031, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 63 """
                        SetEventState(71600031, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71600030) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 11 """
                    # talk:28002300:What! No!
                    TalkToPlayer(28002300, -1, -1)
                    SetEventState(71600030, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 10 """
                        SetEventState(71600030, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71600033) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 73 """
                SetEventState(11600593, 1)
                SetEventState(71600050, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71600061) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 53 """
            # talk:28001700:Oh, hello.
            TalkToPlayer(28001700, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 54 """
                SetEventState(71600055, 1)
                """ State 22 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 3 """
                    while True:
                        # action:15000240:Have curse broken
                        AddTalkListData(2, 15000240, -1)
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
                            """ State 19 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 5 """
                                Label('L8')
                                if GetDistanceToPlayer() >= 12:
                                    pass
                                else:
                                    """ State 26 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 27 """
                            if (GetEventStatus(1312) == 1 and not GetEventStatus(11606100) and GetEventStatus(71600059)
                                == 1):
                                """ State 61 """
                                # talk:28001100:According to legend, the knight Artorias crossed the Abyss,
                                TalkToPlayer(28001100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 62 """
                                    SetEventState(71600049, 1)
                                    """ State 13 """
                                    Label('L9')
                                    if True:
                                        continue
                                    elif GetDistanceToPlayer() >= 3:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                            elif GetEventStatus(1312) == 1:
                                """ State 59 """
                                # talk:28002200:Long ago, the Four Kings were powerful men. Only, their hearts\nwere weak.
                                TalkToPlayer(28002200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 60 """
                                    SetEventState(71600059, 1)
                                    SetEventState(11606100, 1)
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                            elif GetEventStatus(1311) == 1:
                                """ State 57 """
                                # talk:28002100:New Londo was sacrificed to contain the Darkwraiths.
                                TalkToPlayer(28002100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 58 """
                                    SetEventState(71600058, 1)
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                            else:
                                """ State 55 """
                                # talk:28002000:I am the Guardian of the Seal.
                                TalkToPlayer(28002000, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 56 """
                                    SetEventState(71600057, 1)
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L17')
                        elif GetTalkListEntryResult() == 1:
                            """ State 2,1 """
                            OpenRegularShop(2400, 2499)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 18 """
                                Label('L10')
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L8')
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
                            Goto('L7')
                        elif GetTalkListEntryResult() == 2:
                            """ State 83 """
                            if not GetEventStatus(751):
                                """ State 87 """
                                # action:10010733:You are not cursed
                                OpenGenericDialog(7, 10010733, 1, 0, 2)
                                DebugEvent('呪われていない')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 89 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 88 """
                                    Label('L11')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L11')
                            elif ComparePlayerStatus(10, 0, 0) == 1:
                                """ State 80 """
                                # action:10010761:No humanity
                                OpenGenericDialog(7, 10010761, 1, 0, 2)
                                DebugEvent('人間性が足りない')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 82 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 81 """
                                    Label('L12')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L12')
                            else:
                                """ State 79 """
                                # action:10020060:Have curse broken in trade for humanity?
                                OpenGenericDialog(8, 10020060, 3, 4, 2)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 15):
                                    """ State 76 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 78 """
                                    Label('L13')
                                    DebugEvent('解呪しない')
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L13')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    """ State 77 """
                                    DebugEvent('解呪する')
                                    ChangePlayerStats(10, 1, 1)
                                    SetEventState(754, 1)
                                    SetEventState(71600063, 1)
                                    Goto('L9')
                            """ State 84 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            else:
                                Continue('mainloop')
                        """ State 4 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 24 """
                    continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1312) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600061)):
            """ State 36 """
            if GetEventStatus(1644) == 1:
                """ State 49 """
                # talk:28001000:...You've broken the seal, have you?...
                TalkToPlayer(28001000, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 50 """
                    SetEventState(71600047, 1)
                    SetEventState(71600061, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(1644):
                """ State 51 """
                # talk:28001010:...You've broken the seal, have you?...
                TalkToPlayer(28001010, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 52 """
                    SetEventState(71600048, 1)
                    SetEventState(71600061, 1)
                    continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
        elif (GetEventStatus(11600592) == 1 and not GetEventStatus(71600060) and IsPlayerTalkingToMe()
              == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer() <= 2 and
              GetOneLineHelpStatus() == 1):
            """ State 33 """
            Label('L14')
            # talk:28001540:The Four Kings slumber in the deepest chamber of the ruins.
            TalkToPlayer(28001540, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 35 """
                SetEventState(71600060, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1311) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11600592)):
            """ State 42 """
            if GetEventStatus(71600062) == 1:
                """ State 43 """
                # talk:28001520:Oh, hello. You've acquired the Lordvessel, have you?
                TalkToPlayer(28001520, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 44 """
                    SetEventState(71600053, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L17')
            elif not GetEventStatus(71600062):
                """ State 45 """
                # talk:28001530:Well, this is a surprise. I get few visitors, save for ghosts.
                TalkToPlayer(28001530, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 46 """
                    SetEventState(71600054, 1)
                    SetEventState(71600062, 1)
                    SetEventState(71600040, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    Goto('L17')
            """ State 72 """
            SetEventState(11600592, 1)
            if GetDistanceToPlayer() >= 5:
                continue
            elif not IsMenuOpen(63):
                Goto('L14')
        elif (GetEventStatus(751) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 74 """
            if not GetEventStatus(71600041) and not GetEventStatus(71600040) and not GetEventStatus(71600062):
                """ State 41 """
                # talk:28000100:Well, this is a surprise. I don't get many visitors, except\nghosts.
                TalkToPlayer(28000100, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 71 """
                    SetEventState(71600041, 1)
                    SetEventState(71600062, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71600040) == 1 and not GetEventStatus(71600041) and not GetEventStatus(71600044):
                """ State 25 """
                # talk:28000400:Well, hello there. Have you been cursed?
                TalkToPlayer(28000400, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 70 """
                    SetEventState(71600044, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71600060) == 1:
                """ State 47 """
                Label('L15')
                # talk:28000900:Hello there. What is it?
                TalkToPlayer(28000900, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 48 """
                    SetEventState(71600046, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71600063) == 1 and not GetEventStatus(11406102):
                """ State 37 """
                # talk:28000500:Hello, there. Cursed again?
                TalkToPlayer(28000500, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 38 """
                    SetEventState(71600045, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            else:
                """ State 85 """
                Label('L16')
                # talk:28000250:Hello again. How are you?
                TalkToPlayer(28000250, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 86 """
                    SetEventState(11406102, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
        elif (not GetEventStatus(751) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 75 """
            if (not GetEventStatus(71600040) and not GetEventStatus(71600041) and not GetEventStatus(11406102)
                and not GetEventStatus(71600062)):
                """ State 29 """
                # talk:28000000:Well, this is a surprise. I don't get many visitors, except for\nghosts.
                TalkToPlayer(28000000, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 30 """
                    SetEventState(71600040, 1)
                    SetEventState(71600062, 1)
                    SetEventState(11406102, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif GetEventStatus(71600060) == 1:
                Goto('L15')
            elif not GetEventStatus(71600040) and GetEventStatus(71600041) == 1 and not GetEventStatus(71600042):
                """ State 12 """
                # talk:28000200:Oh, hello there. How are you?
                TalkToPlayer(28000200, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 69 """
                    SetEventState(71600042, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(11406102):
                """ State 39 """
                # talk:28000300:Hello, there. Where have you been? I'm glad to see you well.
                TalkToPlayer(28000300, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 40 """
                    SetEventState(71600043, 1)
                    SetEventState(11406102, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            else:
                Goto('L16')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1314) and not GetEventStatus(1315)):
            """ State 16 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 17 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1315):
            """ State 23 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 20 """
        Label('L17')
        ClearTalkProgressData()
        """ State 21 """
        ForceEndTalk(0)
    """ State 28 """
    # talk:28002500:Ohh...ogghh...How could I allow this...
    TalkToPlayer(28002500, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L17')

