# -*- coding: utf-8 -*-
def t102624_1():
    """ State 0,17 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1412) and GetDistanceToPlayer() <= 15:
            break
        elif (not GetEventStatus(71000045) and GetDistanceToPlayer() <= 15 and GetEventStatus(1411) ==
              1 and GetPlayerYDistance() < 1):
            """ State 9 """
            # talk:34000700:What do you think you're doing?!
            TalkToPlayer(34000700, -1, -1)
            SetEventState(71000045, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                """ State 70 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 15
                break
            elif HasTalkEnded() == 1:
                """ State 8 """
                SetEventState(71000045, 1)
                continue
            elif GetDistanceToPlayer() >= 20 or GetPlayerYDistance() > 1:
                pass
        elif (GetDistanceToPlayer() <= 15 and GetEventStatus(1411) == 1 and GetEventStatus(71000045)
              == 1 and GetPlayerYDistance() < 1):
            """ State 68 """
            # talk:34000703:Yes, I suppose you think you're special!
            TalkToPlayer(34000703, -1, -1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 20 or GetPlayerYDistance() > 1:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3 and GetOneLineHelpStatus() == 1 and GetEventStatus(11025022) == 1 and GetEventStatus(11026103)
              == 1):
            """ State 31 """
            # talk:34000500:What's the matter with you!
            TalkToPlayer(34000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 16 """
                Label('L2')
                ClearTalkProgressData()
                ForceEndTalk(3)
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 15:
                    """ State 69 """
                    Label('L3')
                    # talk:34000800:A curse upon you...
                    TalkToPlayer(34000800, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 20:
                        pass
                elif (not GetEventStatus(71000044) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000043) == 1 and GetSelfHP() >= 90):
                    """ State 67 """
                    # talk:34000630:Eeek!
                    TalkToPlayer(34000630, -1, -1)
                    SetEventState(71000044, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 66 """
                        SetEventState(71000044, 1)
                        """ State 10 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71000043) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000042) == 1 and GetSelfHP() >= 90):
                    """ State 65 """
                    # talk:34000620:Ouch!
                    TalkToPlayer(34000620, -1, -1)
                    SetEventState(71000043, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 64 """
                        SetEventState(71000043, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71000042) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71000041) == 1 and GetSelfHP() >= 90):
                    """ State 63 """
                    # talk:34000610:Stop that!
                    TalkToPlayer(34000610, -1, -1)
                    SetEventState(71000042, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 62 """
                        SetEventState(71000042, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71000041) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetSelfHP() >= 90):
                    """ State 13 """
                    # talk:34000600:Why, you!
                    TalkToPlayer(34000600, -1, -1)
                    SetEventState(71000041, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 12 """
                        SetEventState(71000041, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71000044) == 1:
                    """ State 11 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 30 """
                SetEventState(11025022, 0)
                """ State 24 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 5 """
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
                            """ State 21 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 15:
                                Goto('L3')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 7 """
                                Label('L8')
                                # talk:34000400:Don't run off!
                                TalkToPlayer(34000400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif GetDistanceToPlayer() >= 12:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 28 """
                                    SetEventState(11025022, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 29 """
                            if GetEventStatus(11010700) == 1 and not GetEventStatus(71000036):
                                """ State 58 """
                                # talk:34001200:This is a wonderful place, don't you think?
                                TalkToPlayer(34001200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 59 """
                                    SetEventState(71000036, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            elif GetEventStatus(2) == 1 and not GetEventStatus(71000035):
                                """ State 56 """
                                # talk:34001000:I forage moss.
                                TalkToPlayer(34001000, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 57 """
                                    SetEventState(71000035, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            elif GetEventStatus(71000033) == 1 and not GetEventStatus(71000034):
                                """ State 54 """
                                # talk:34001100:Ah, go down along the side to reach the depths of the Undead\nBurg.
                                TalkToPlayer(34001100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 55 """
                                    SetEventState(71000034, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            elif not GetEventStatus(11400200):
                                """ State 52 """
                                # talk:34000900:You've come to this land at a bad time.
                                TalkToPlayer(34000900, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 53 """
                                    SetEventState(71000033, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            elif GetEventStatus(11400200) == 1:
                                """ State 60 """
                                # talk:34001300:Tell me honestly...
                                TalkToPlayer(34001300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 61 """
                                    SetEventState(71000037, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            """ State 15 """
                            if True:
                                continue
                            elif GetDistanceToPlayer() >= 3:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 1:
                            """ State 4,3 """
                            OpenRegularShop(1200, 1299)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 20 """
                                Label('L9')
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 15:
                                    Goto('L3')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L8')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L9')
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L7')
                        """ State 6 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 26 """
                    if not DidYouDoSomethingInTheMenu(11):
                        """ State 2 """
                        DebugEvent('買わず立ち去る')
                        """ State 42 """
                        if GetEventStatus(71000038) == 1 and GetEventStatus(71000039) == 1:
                            """ State 45 """
                            # talk:34000240:Are you toying with me?
                            TalkToPlayer(34000240, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L2')
                            elif HasTalkEnded() == 1:
                                """ State 50 """
                                SetEventState(71000038, 0)
                                SetEventState(71000039, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif GetEventStatus(71000038) == 1 and not GetEventStatus(71000039):
                            """ State 44 """
                            # talk:34000220:Hmph, fine, then.
                            TalkToPlayer(34000220, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L2')
                            elif HasTalkEnded() == 1:
                                """ State 49 """
                                SetEventState(71000038, 1)
                                SetEventState(71000039, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif not GetEventStatus(71000038) and not GetEventStatus(71000039):
                            """ State 71 """
                            if ComparePlayerStatus(12, 0, 1) == 1:
                                """ State 39 """
                                # talk:34000200:Drat.
                                TalkToPlayer(34000200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                                elif HasTalkEnded() == 1:
                                    pass
                            elif ComparePlayerStatus(12, 0, 0) == 1:
                                """ State 72 """
                                # talk:34000210:Drat.
                                TalkToPlayer(34000210, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            """ State 48 """
                            SetEventState(71000038, 1)
                            SetEventState(71000039, 0)
                            continue
                    elif DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 1 """
                        DebugEvent('買って立ち去る')
                        """ State 41 """
                        if GetEventStatus(71000040) == 1:
                            """ State 43 """
                            # talk:34000320:Much obliged.
                            TalkToPlayer(34000320, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L2')
                            elif HasTalkEnded() == 1:
                                """ State 47 """
                                SetEventState(71000040, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif not GetEventStatus(71000040):
                            """ State 40 """
                            # talk:34000300:Come again, if you please!
                            TalkToPlayer(34000300, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L2')
                            elif HasTalkEnded() == 1:
                                """ State 46 """
                                SetEventState(71000040, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                    else:
                        """ State 51 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(11026103) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3 and GetOneLineHelpStatus() == 1 and GetEventStatus(2)
              == 1 and GetEventStatus(71000030) == 1):
            """ State 36 """
            # talk:34000140:Oh, hello, dearie.
            TalkToPlayer(34000140, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 38 """
                SetEventState(71000032, 1)
                SetEventState(11026103, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(11026103) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000030)
              == 1):
            """ State 34 """
            # talk:34000120:Oh, there you are, dearie!
            TalkToPlayer(34000120, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 35 """
                SetEventState(71000031, 1)
                SetEventState(11026103, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3 and GetOneLineHelpStatus() == 1 and GetEventStatus(71000030) == 1 and GetEventStatus(11026103)
              == 1):
            """ State 14 """
            # talk:34000100:Oh, there you are, dearie!
            TalkToPlayer(34000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 37 """
                SetEventState(71000031, 1)
                SetEventState(11026103, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(11026103) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3 and GetOneLineHelpStatus() == 1):
            """ State 27 """
            # talk:34000000:Hmm, you still have your senses about you?
            TalkToPlayer(34000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 33 """
                SetEventState(71000030, 1)
                SetEventState(11026103, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3 and not GetEventStatus(1411) and not GetEventStatus(1412)
              and GetSelfHP() >= 60):
            """ State 18 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 3)):
            """ State 19 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1412):
            """ State 25 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 22 """
        Label('L10')
        ClearTalkProgressData()
        """ State 23 """
        ForceEndTalk(0)
    """ State 32 """
    # talk:34000800:A curse upon you...
    TalkToPlayer(34000800, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 20:
        Goto('L10')

