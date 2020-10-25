# -*- coding: utf-8 -*-
def t170643_1():
    """ State 0,15 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1097) and GetDistanceToPlayer() <= 5:
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(728) == 1 and GetEventStatus(14)
              == 1):
            """ State 57 """
            # talk:13021500:...Who are you...
            TalkToPlayer(13021500, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 14 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 38 """
                    Label('L2')
                    # talk:13021700:Heavens...the folly of youth...
                    TalkToPlayer(13021700, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71700004)
                      and GetSelfHP() <= 90):
                    """ State 8 """
                    # talk:13021600:I fail to see your design,
                    TalkToPlayer(13021600, -1, -1)
                    SetEventState(71700004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 39 """
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 7 """
                        SetEventState(71700004, 1)
                        """ State 9 """
                        Label('L3')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1099) == 1:
                    """ State 10 """
                    Label('L4')
                    ForceEndTalk(3)
                    Goto('L3')
                elif GetEventStatus(1096) == 1:
                    Goto('L4')
                elif GetEventStatus(71700000) == 1:
                    Goto('L4')
                else:
                    Goto('L4')
            elif HasTalkEnded() == 1:
                """ State 58 """
                SetEventState(11700592, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700008) == 1 and GetEventStatus(1095)
              == 1 and GetEventStatus(14) == 1):
            """ State 45 """
            # talk:13020800:Oh, there you are, it has been a while.
            TalkToPlayer(13020800, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 46 """
                SetEventState(71700010, 1)
                SetEventState(11706100, 1)
                """ State 22 """
                Label('L5')
                ClearTalkActionState()
                if True:
                    """ State 4 """
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
                            """ State 19 """
                            Label('L6')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 6 """
                                Label('L7')
                                TalkToPlayer(-1, -1, -1)
                                DebugEvent('離れたとき会話')
                                if GetDistanceToPlayer() >= 12:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 27 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 29 """
                            if GetEventStatus(71700012) == 1 and GetEventStatus(14) == 1:
                                """ State 59 """
                                # talk:13021200:Mm...mm...
                                TalkToPlayer(13021200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L9')
                            elif GetEventStatus(71700011) == 1:
                                """ State 30 """
                                # talk:13021400:The tomes stored in these Archives are truly magnificent.
                                TalkToPlayer(13021400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 31 """
                                    SetEventState(71700012, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L9')
                            elif not GetEventStatus(71700011):
                                """ State 12 """
                                # talk:13021300:Ah, the secret of Seath's immortality?
                                TalkToPlayer(13021300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 28 """
                                    SetEventState(71700011, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L9')
                            """ State 13 """
                            if True:
                                continue
                            elif GetDistanceToPlayer() >= 3:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 1:
                            """ State 3,2 """
                            OpenRegularShop(5000, 5099)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 18 """
                                Label('L8')
                                CloseMenu()
                                DebugEvent('メッセージボックスを閉じる')
                                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                    Goto('L2')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L7')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L8')
                            elif not IsMenuOpen(11):
                                continue
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L6')
                        """ State 5 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 24 """
                    if not DidYouDoSomethingInTheMenu(11):
                        """ State 48 """
                        DebugEvent('買わず立ち去る')
                        """ State 60 """
                        if GetEventStatus(14) == 1:
                            """ State 53 """
                            # talk:13021200:Mm...mm...
                            TalkToPlayer(13021200, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 62 """
                                SetEventState(71700014, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        else:
                            """ State 52 """
                            # talk:13021100:Farewell.
                            TalkToPlayer(13021100, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 61 """
                                SetEventState(71700014, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                    elif DidYouDoSomethingInTheMenu(11) == 1:
                        """ State 47 """
                        DebugEvent('買って立ち去る')
                        """ State 50 """
                        if GetEventStatus(71700013) == 1:
                            """ State 51 """
                            # talk:13021000:Come again, any time you please.
                            TalkToPlayer(13021000, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 55 """
                                SetEventState(71700013, 0)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif not GetEventStatus(71700013):
                            """ State 49 """
                            # talk:13020900:Come again.
                            TalkToPlayer(13020900, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 54 """
                                SetEventState(71700013, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                    else:
                        """ State 56 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700007) == 1 and GetEventStatus(1095)
              == 1 and not GetEventStatus(11706100)):
            """ State 43 """
            # talk:13020750:Oh, hello there. Where have you been?
            TalkToPlayer(13020750, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 44 """
                SetEventState(71700009, 1)
                SetEventState(11706100, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71700007) == 1 and GetEventStatus(1095)
              == 1):
            """ State 41 """
            # talk:13020700:Hello there. You really are very diligent.
            TalkToPlayer(13020700, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 42 """
                SetEventState(71700008, 1)
                SetEventState(11706100, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71700007) and GetEventStatus(1095)
              == 1):
            """ State 11 """
            # talk:13020600:Hello there. I was expecting you.
            TalkToPlayer(13020600, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 40 """
                SetEventState(71700007, 1)
                SetEventState(11706100, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71700006) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1094)
              == 1):
            """ State 35 """
            # talk:13020200:Hello. Don't mind me. Go on ahead.
            TalkToPlayer(13020200, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1094) == 1 and not GetEventStatus(71700006)):
            """ State 37 """
            # talk:13020100:Oh, thank you very much. I'm saved.
            TalkToPlayer(13020100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 36 """
                SetEventState(71700006, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1093) == 1):
            """ State 25 """
            # talk:13020000:Hello again! What a chance meeting this is!
            TalkToPlayer(13020000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 26 """
                SetEventState(71700005, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1096) and not GetEventStatus(1097)
              and not GetEventStatus(1099)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1097):
            """ State 23 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 20 """
        Label('L9')
        ClearTalkProgressData()
        """ State 21 """
        ForceEndTalk(0)
    """ State 32 """
    # talk:13021700:Heavens...the folly of youth...
    TalkToPlayer(13021700, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L9')

