# -*- coding: utf-8 -*-
def t150625_1():
    """ State 0,17 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        if CheckSelfDeath() == 1 and not GetEventStatus(1422) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11505020) == 1):
            """ State 31 """
            # talk:35000600:...Hm, fine, fine. I understand.
            TalkToPlayer(35000600, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 16 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 60 """
                    Label('L2')
                    # talk:35000900:Hrrggahh...
                    TalkToPlayer(35000900, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71500009)
                      and GetSelfHP() <= 90):
                    """ State 9 """
                    # talk:35000800:What the devil's got into you!
                    TalkToPlayer(35000800, -1, -1)
                    SetEventState(71500009, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 61 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 8 """
                        SetEventState(71500009, 1)
                        """ State 10 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1421) == 1:
                    """ State 11 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71500014) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71500013) == 1):
                    """ State 56 """
                    # talk:35000760:Hrgaw!
                    TalkToPlayer(35000760, -1, -1)
                    SetEventState(71500014, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 55 """
                        SetEventState(71500014, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71500013) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71500012) == 1):
                    """ State 54 """
                    # talk:35000740:Hrgroah!
                    TalkToPlayer(35000740, -1, -1)
                    SetEventState(71500013, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 53 """
                        SetEventState(71500013, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71500012) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71500008) == 1):
                    """ State 52 """
                    # talk:35000720:Hrgrah!
                    TalkToPlayer(35000720, -1, -1)
                    SetEventState(71500012, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 51 """
                        SetEventState(71500012, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71500008) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 13 """
                    # talk:35000700:Hrgro!
                    TalkToPlayer(35000700, -1, -1)
                    SetEventState(71500008, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 12 """
                        SetEventState(71500008, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71500014) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 30 """
                SetEventState(11505020, 0)
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
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 7 """
                                Label('L8')
                                # talk:35000500:...Hmm?
                                TalkToPlayer(35000500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 12:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 27 """
                                    SetEventState(11505020, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 29 """
                            if GetEventStatus(71500004) == 1 and not GetEventStatus(11506100):
                                """ State 57 """
                                # talk:35001200:Where do I get all my things?
                                TalkToPlayer(35001200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 58 """
                                    SetEventState(71500005, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            elif GetEventStatus(71500003) == 1:
                                """ State 32 """
                                # talk:35001100:Let me give you a nibble of advice.
                                TalkToPlayer(35001100, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 33 """
                                    SetEventState(71500004, 1)
                                    SetEventState(11506100, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L10')
                            elif not GetEventStatus(71500003):
                                """ State 14 """
                                # talk:35001000:There's nothing more to say.
                                TalkToPlayer(35001000, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 28 """
                                    SetEventState(71500003, 1)
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
                            OpenRegularShop(5300, 5599)
                            if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                """ State 20 """
                                Label('L9')
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
                                Goto('L9')
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L7')
                        """ State 6 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 26 """
                    if not DidYouDoSomethingInTheMenu(11):
                        """ State 2 """
                        DebugEvent('買わず立ち去る')
                        """ State 44 """
                        if GetEventStatus(71500010) == 1:
                            """ State 46 """
                            # talk:35000320:So, you're that good? Don't need a thing?
                            TalkToPlayer(35000320, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 50 """
                                SetEventState(71500010, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif not GetEventStatus(71500010):
                            """ State 41 """
                            # talk:35000300:Nothing at all?
                            TalkToPlayer(35000300, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 49 """
                                SetEventState(71500010, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                    elif DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 1 """
                        DebugEvent('買って立ち去る')
                        """ State 43 """
                        if GetEventStatus(71500011) == 1:
                            """ State 45 """
                            # talk:35000420:There you go, another brave soul.
                            TalkToPlayer(35000420, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 48 """
                                SetEventState(71500011, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif not GetEventStatus(71500011):
                            """ State 42 """
                            # talk:35000400:Go along, try and make something of yourself.
                            TalkToPlayer(35000400, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 47 """
                                SetEventState(71500011, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                    else:
                        """ State 59 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71500001) == 1 and GetEventStatus(71500002)
              == 1):
            """ State 38 """
            # talk:35000220:...
            TalkToPlayer(35000220, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 40 """
                SetEventState(71500002, 0)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71500001) == 1 and not GetEventStatus(71500002)):
            """ State 36 """
            # talk:35000200:...
            TalkToPlayer(35000200, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 37 """
                SetEventState(71500002, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71500001)):
            """ State 35 """
            # talk:35000100:...
            TalkToPlayer(35000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 39 """
                SetEventState(71500001, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1421) and not GetEventStatus(1422)):
            """ State 18 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 19 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1422):
            """ State 25 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 22 """
        Label('L10')
        ClearTalkProgressData()
        """ State 23 """
        ForceEndTalk(0)
    """ State 34 """
    # talk:35000900:Hrrggahh...
    TalkToPlayer(35000900, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L10')

