# -*- coding: utf-8 -*-
def t101623_1():
    """ State 0,19 """
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1402) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11015021) == 1 and GetEventStatus(11016100)
              == 1):
            """ State 38 """
            # talk:33000500:What was that about?
            TalkToPlayer(33000500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 18 """
                Label('L0')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 69 """
                    Label('L1')
                    # talk:33000800:Why, me...
                    TalkToPlayer(33000800, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        pass
                    elif GetDistanceToPlayer() >= 5:
                        """ State 24 """
                        Label('L2')
                        ClearTalkProgressData()
                        """ State 25 """
                        ForceEndTalk(0)
                        continue
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71010082)
                      and GetSelfHP() <= 90):
                    """ State 10 """
                    # talk:33000700:You've gone mad, have you!?
                    TalkToPlayer(33000700, -1, -1)
                    SetEventState(71010082, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 70 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71010082, 1)
                        """ State 11 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L2')
                elif GetEventStatus(1401) == 1:
                    """ State 12 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71010081) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010080) == 1):
                    """ State 66 """
                    # talk:33000630:It's me! Stop it, I tell you!
                    TalkToPlayer(33000630, -1, -1)
                    SetEventState(71010081, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 65 """
                        SetEventState(71010081, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
                elif (not GetEventStatus(71010080) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010079) == 1):
                    """ State 64 """
                    # talk:33000620:Oi, what's this about?
                    TalkToPlayer(33000620, -1, -1)
                    SetEventState(71010080, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 63 """
                        SetEventState(71010080, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
                elif (not GetEventStatus(71010079) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71010078) == 1):
                    """ State 62 """
                    # talk:33000610:Yeowch!
                    TalkToPlayer(33000610, -1, -1)
                    SetEventState(71010079, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 61 """
                        SetEventState(71010079, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
                elif (not GetEventStatus(71010078) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 14 """
                    # talk:33000600:Eeg!
                    TalkToPlayer(33000600, -1, -1)
                    SetEventState(71010078, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71010078, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
                elif GetEventStatus(71010081) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 37 """
                SetEventState(11015021, 0)
                """ State 26 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 6 """
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
                            """ State 23 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L1')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 8 """
                                Label('L8')
                                # talk:33000400:Hey, what! What's the matter?
                                TalkToPlayer(33000400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif GetDistanceToPlayer() >= 12:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 32 """
                                    SetEventState(11015021, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 34 """
                            if GetEventStatus(11400200) == 1 and not GetEventStatus(71010089):
                                """ State 73 """
                                # talk:33001500:It's actually quite nice here, you know?
                                TalkToPlayer(33001500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif HasTalkEnded() == 1:
                                    """ State 74 """
                                    SetEventState(71010089, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L2')
                            elif not GetEventStatus(71010086) and GetEventStatus(11010700) == 1:
                                """ State 57 """
                                # talk:33001100:Eh? My wares?
                                TalkToPlayer(33001100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif HasTalkEnded() == 1:
                                    """ State 58 """
                                    SetEventState(71010086, 1)
                                    SetEventState(11016101, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L2')
                            elif GetEventStatus(71010084) == 1 and not GetEventStatus(71010085):
                                """ State 55 """
                                # talk:33001000:Ah, you can forget it.
                                TalkToPlayer(33001000, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif HasTalkEnded() == 1:
                                    """ State 56 """
                                    SetEventState(71010085, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L2')
                            elif (GetEventStatus(71010083) == 1 and not GetEventStatus(71010084) and
                                  GetEventStatus(11010005) == 1):
                                """ State 35 """
                                # talk:33000900:Ah, this one? Ain't she lovely?
                                TalkToPlayer(33000900, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif HasTalkEnded() == 1:
                                    """ State 36 """
                                    SetEventState(71010084, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L2')
                            elif not GetEventStatus(71010083):
                                """ State 16 """
                                # talk:33001400:Things are getting treacherous in these parts.
                                TalkToPlayer(33001400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif HasTalkEnded() == 1:
                                    """ State 33 """
                                    SetEventState(71010083, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L2')
                            elif GetEventStatus(71010085) == 1 and not GetEventStatus(11016101):
                                """ State 71 """
                                # talk:33001200:Now, don't squander your time chatting!
                                TalkToPlayer(33001200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif HasTalkEnded() == 1:
                                    """ State 72 """
                                    SetEventState(71010088, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L2')
                            elif GetEventStatus(71010083) == 1:
                                """ State 59 """
                                # talk:33001300:Eh? I'm not here to chit-chat.
                                TalkToPlayer(33001300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L0')
                                elif HasTalkEnded() == 1:
                                    """ State 60 """
                                    SetEventState(71010087, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L2')
                            """ State 17 """
                            if True:
                                continue
                            elif GetDistanceToPlayer() >= 3:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 1:
                            """ State 5,4 """
                            OpenRegularShop(1100, 1199)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 22 """
                                Label('L9')
                                CloseMenu()
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L1')
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
                              GetDistanceToPlayer() > 3):
                            Goto('L7')
                        """ State 7 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 28 """
                    if not DidYouDoSomethingInTheMenu(11):
                        """ State 3 """
                        DebugEvent('買わず立ち去る')
                        """ State 46 """
                        if GetEventStatus(71010073) == 1 and GetEventStatus(71010074) == 1:
                            """ State 49 """
                            # talk:33000200:Hmph!
                            TalkToPlayer(33000200, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L0')
                            elif HasTalkEnded() == 1:
                                """ State 54 """
                                SetEventState(71010073, 0)
                                SetEventState(71010074, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L2')
                        elif GetEventStatus(71010073) == 1 and not GetEventStatus(71010074):
                            """ State 48 """
                            # talk:33000220:Tsk!
                            TalkToPlayer(33000220, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L0')
                            elif HasTalkEnded() == 1:
                                """ State 53 """
                                SetEventState(71010073, 1)
                                SetEventState(71010074, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L2')
                        elif not GetEventStatus(71010073) and not GetEventStatus(71010074):
                            """ State 1 """
                            # talk:33000240:Hmph.
                            TalkToPlayer(33000240, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L0')
                            elif HasTalkEnded() == 1:
                                """ State 52 """
                                SetEventState(71010073, 1)
                                SetEventState(71010074, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L2')
                    elif DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 2 """
                        DebugEvent('買って立ち去る')
                        """ State 45 """
                        if GetEventStatus(71010075) == 1:
                            """ State 47 """
                            # talk:33000320:Ah, thank you, very much.
                            TalkToPlayer(33000320, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L0')
                            elif HasTalkEnded() == 1:
                                """ State 51 """
                                SetEventState(71010075, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L2')
                        elif not GetEventStatus(71010075):
                            """ State 31 """
                            # talk:33000300:Thank you kindly.
                            TalkToPlayer(33000300, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L0')
                            elif HasTalkEnded() == 1:
                                """ State 50 """
                                SetEventState(71010075, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L2')
                    else:
                        """ State 67 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (not GetEventStatus(11016100) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11400200)
              == 1 and GetEventStatus(71010070) == 1):
            """ State 43 """
            # talk:33000140:Oh, there you are.
            TalkToPlayer(33000140, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 68 """
                SetEventState(71010072, 1)
                SetEventState(11016100, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (not GetEventStatus(11016100) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010070)
              == 1):
            """ State 41 """
            # talk:33000120:Oh, there you are.
            TalkToPlayer(33000120, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 42 """
                SetEventState(71010071, 1)
                SetEventState(11016100, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71010070) == 1 and GetEventStatus(11016100)
              == 1):
            """ State 15 """
            # talk:33000100:Oh, you again?
            TalkToPlayer(33000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 44 """
                SetEventState(71010071, 1)
                SetEventState(11016100, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (not GetEventStatus(11016100) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 29 """
            # talk:33000000:Well, now...
            TalkToPlayer(33000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 30 """
                SetEventState(71010070, 1)
                SetEventState(11016100, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1401) and not GetEventStatus(1402)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1402):
            """ State 27 """
            DisplayOneLineHelp(-1)
            Goto('L0')
        """ State 39 """
        Label('L10')
        DebugEvent('待機')
        SetUpdateDistance(25)
        Quit()
    """ State 40 """
    # talk:33000800:Why, me...
    TalkToPlayer(33000800, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L10')
    elif GetDistanceToPlayer() >= 5:
        Goto('L2')

