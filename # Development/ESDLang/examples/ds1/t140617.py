# -*- coding: utf-8 -*-
def t140617_1():
    """ State 0,15 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1295) and GetDistanceToPlayer() <= 5:
            break
        elif (GetEventStatus(1293) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 43 """
            if GetEventStatus(71400077) == 1:
                """ State 59 """
                # talk:27000100:Ah, there you are.
                TalkToPlayer(27000100, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    """ State 14 """
                    Label('L1')
                    ClearTalkProgressData()
                    def ExitPause():
                        RemoveMyAggro()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        """ State 31 """
                        Label('L2')
                        # talk:27000800:Farewell, my mother, my sisters...
                        TalkToPlayer(27000800, -1, -1)
                        DisplayOneLineHelp(-1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 5:
                            pass
                    elif (not GetEventStatus(71400057) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetSelfHP() <= 90):
                        """ State 7 """
                        # talk:27000700:Hmm...The voice of reason fails?
                        TalkToPlayer(27000700, -1, -1)
                        SetEventState(71400057, 1)
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
                            SetEventState(71400057, 1)
                            """ State 8 """
                            Label('L4')
                            ClearTalkDisabledState()
                            RemoveMyAggro()
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 10):
                            pass
                    elif GetEventStatus(1294) == 1:
                        """ State 9 """
                        Label('L5')
                        ForceEndTalk(3)
                        Goto('L4')
                    elif (not GetEventStatus(71400056) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5 and GetEventStatus(71400055) == 1):
                        """ State 67 """
                        # talk:27000660:Stop that!
                        TalkToPlayer(27000660, -1, -1)
                        SetEventState(71400056, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 66 """
                            SetEventState(71400056, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif (not GetEventStatus(71400055) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                          <= 5):
                        """ State 11 """
                        # talk:27000640:What is it! Fool!
                        TalkToPlayer(27000640, -1, -1)
                        SetEventState(71400055, 1)
                        ForceCloseMenu()
                        if CheckSelfDeath() == 1:
                            Goto('L3')
                        elif HasTalkEnded() == 1:
                            """ State 10 """
                            SetEventState(71400055, 1)
                            Goto('L4')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            pass
                    elif GetEventStatus(71400028) == 1:
                        Goto('L5')
                    else:
                        Goto('L5')
                elif HasTalkEnded() == 1:
                    """ State 22 """
                    Label('L6')
                    ClearTalkActionState()
                    SetEventState(365, 1)
                    SetEventState(366, 1)
                    if True:
                        """ State 3 """
                        while True:
                            # action:15000010:Purchase Item
                            AddTalkListData(1, 15000010, -1)
                            # action:15000190:Modify Equipment
                            AddTalkListData(2, 15000190, -1)
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
                                    # talk:27000400:Hm? What's the rush?
                                    TalkToPlayer(27000400, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif GetDistanceToPlayer() >= 12:
                                        pass
                                    elif HasTalkEnded() == 1:
                                        """ State 25 """
                                        SetEventState(11405021, 1)
                                        Continue('mainloop')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 3):
                                Goto('L7')
                            elif not GetTalkListEntryResult():
                                break
                            elif GetTalkListEntryResult() == 3:
                                """ State 27 """
                                if GetEventStatus(71400077) == 1:
                                    """ State 75 """
                                    # talk:27001310:Thank you. I am blessed to have met you.
                                    TalkToPlayer(27001310, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        pass
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L13')
                                elif (not GetEventStatus(11406104) and GetEventStatus(71400075) == 1
                                      and not GetEventStatus(71400077)):
                                    """ State 64 """
                                    # talk:27001200:...Hmm...
                                    TalkToPlayer(27001200, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 65 """
                                        SetEventState(71400076, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L13')
                                elif (GetEventStatus(71400074) == 1 and not GetEventStatus(11406104)
                                      and not GetEventStatus(71400075)):
                                    """ State 62 """
                                    # talk:27001100:The Witch of Izalith?
                                    TalkToPlayer(27001100, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 63 """
                                        SetEventState(71400075, 1)
                                        SetEventState(11406104, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L13')
                                elif GetEventStatus(71400073) == 1:
                                    """ State 60 """
                                    # talk:27001000:Pyromancy is the art of invoking and manipulating fire.
                                    TalkToPlayer(27001000, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 61 """
                                        SetEventState(71400074, 1)
                                        SetEventState(11406104, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L13')
                                elif not GetEventStatus(71400073):
                                    """ State 12 """
                                    # talk:27000900:Long ago, I accepted another pupil, like yourself.
                                    TalkToPlayer(27000900, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 26 """
                                        SetEventState(71400073, 1)
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5):
                                        Goto('L13')
                                """ State 13 """
                                if True:
                                    continue
                                elif GetDistanceToPlayer() >= 3:
                                    Continue('mainloop')
                            elif GetTalkListEntryResult() == 1:
                                """ State 2,1 """
                                OpenRegularShop(3400, 3499)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    """ State 18 """
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
                            elif GetTalkListEntryResult() == 2:
                                """ State 74 """
                                CollectJustPyromancyFlame()
                                CombineMenuFlagAndEventFlag(365, 331)
                                CombineMenuFlagAndEventFlag(366, 332)
                                OpenEquipmentChangeOfPurposeShop()
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 3):
                                    Goto('L9')
                                elif not IsMenuOpen(13):
                                    continue
                            elif GetTalkListEntryResult() == 4:
                                break
                            """ State 4 """
                            ForceEndTalk(0)
                            Continue('mainloop')
                        """ State 24 """
                        if GetEventStatus(722) == 1:
                            """ State 72 """
                            # talk:27000320:Ah, very well.
                            TalkToPlayer(27000320, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 73 """
                                SetEventState(71400071, 1)
                                SetEventState(11400595, 1)
                                continue
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                pass
                        elif DidYouDoSomethingInTheMenu(11) == 1 or DidYouDoSomethingInTheMenu(4) == 1:
                            """ State 69 """
                            DebugEvent('買って立ち去る')
                            if GetEventStatus(71400077) == 1:
                                """ State 76 """
                                # talk:27000350:Now, go.
                                TalkToPlayer(27000350, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    continue
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                            else:
                                """ State 71 """
                                # talk:27000300:Now, go.
                                TalkToPlayer(27000300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    continue
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                        elif not DidYouDoSomethingInTheMenu(11) or not DidYouDoSomethingInTheMenu(4):
                            """ State 70 """
                            DebugEvent('買わず立ち去る')
                            if GetEventStatus(71400077) == 1:
                                """ State 77 """
                                # talk:27000250:No luck, hmm...
                                TalkToPlayer(27000250, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    continue
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                            else:
                                """ State 68 """
                                # talk:27000200:No luck, hmm...
                                TalkToPlayer(27000200, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    continue
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    pass
                        else:
                            continue
                    elif GetDistanceToPlayer() >= 3:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    pass
            elif not GetEventStatus(71400077):
                """ State 57 """
                # talk:27001300:Outstanding...You have done very well.
                TalkToPlayer(27001300, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 58 """
                    SetEventState(71400077, 1)
                    SetEventState(11400594, 1)
                    if GetDistanceToPlayer() >= 5:
                        continue
                    elif not IsMenuOpen(63):
                        Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsPlayerDead() == 1):
                    pass
        elif (GetEventStatus(1292) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 49,53 """
            # talk:27000340:Fool. Hurry along.
            TalkToPlayer(27000340, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 54 """
                SetEventState(71400072, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1291) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 42 """
            if GetEventStatus(11405021) == 1:
                """ State 55 """
                # talk:27000500:What was that? You are a peculiar one.
                TalkToPlayer(27000500, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 56 """
                    SetEventState(11405021, 0)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L13')
            elif not GetEventStatus(71400059) and GetEventStatus(71400060) == 1:
                """ State 48 """
                # talk:27000060:What? Considering my pyromancy?
                TalkToPlayer(27000060, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 30 """
                    Label('L10')
                    SetEventState(71400058, 1)
                    """ State 37 """
                    # action:10020040:What is your decision?
                    OpenGenericDialog(8, 10020040, 3, 4, 2)
                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                        """ State 40 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L2')
                        else:
                            continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        """ State 34 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 36 """
                        Label('L11')
                        DebugEvent('NO')
                        SetEventState(71400060, 1)
                        """ State 39 """
                        # talk:27000040:Hmm, very well. Then we are done.
                        TalkToPlayer(27000040, -1, -1)
                        DebugEvent('ノーを選んだあと')
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 33 """
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　選択肢')
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L13')
                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                        Goto('L11')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        """ State 35 """
                        DebugEvent('YES')
                        SetEventState(71400059, 1)
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L13')
            elif GetEventStatus(71400059) == 1 and not GetEventStatus(71400061):
                pass
            elif not GetEventStatus(71400059) and not GetEventStatus(71400060):
                """ State 29 """
                # talk:27000000:Hmm...A mere Undead, yet you can see me? Fascinating...
                TalkToPlayer(27000000, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    Goto('L10')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L13')
            elif not GetEventStatus(11406100) and GetEventStatus(71400063) == 1:
                """ State 51 """
                # talk:27000140:Ah. It has been some time.
                TalkToPlayer(27000140, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 52 """
                    SetEventState(71400066, 1)
                    SetEventState(71400063, 0)
                    SetEventState(71400064, 0)
                    SetEventState(11406100, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L13')
            elif GetEventStatus(71400063) == 1 and GetEventStatus(71400064) == 1:
                """ State 50 """
                # talk:27000130:Ah, you again.
                TalkToPlayer(27000130, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 45 """
                    Label('L12')
                    SetEventState(71400064, 1)
                    SetEventState(11406100, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L13')
            elif GetEventStatus(71400063) == 1 and not GetEventStatus(71400064):
                """ State 44 """
                # talk:27000120:Ah, you again.
                TalkToPlayer(27000120, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    Goto('L12')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L13')
            elif not GetEventStatus(71400063):
                """ State 46 """
                # talk:27000100:Ah, there you are.
                TalkToPlayer(27000100, -1, -1)
                DisplayOneLineHelp(-1)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L1')
                elif HasTalkEnded() == 1:
                    """ State 47 """
                    SetEventState(71400063, 1)
                    SetEventState(11406100, 1)
                    Goto('L6')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    Goto('L13')
            """ State 38 """
            # talk:27000020:Yes, of course. It should be expected.
            TalkToPlayer(27000020, -1, -1)
            DebugEvent('イエスを選んだあと')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 41 """
                SetEventState(71400061, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1290) and not GetEventStatus(1294)
              and not GetEventStatus(1295)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1295):
            """ State 23 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 20 """
        Label('L13')
        ClearTalkProgressData()
        """ State 21 """
        ForceEndTalk(0)
    """ State 28 """
    # talk:27000800:Farewell, my mother, my sisters...
    TalkToPlayer(27000800, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 5:
        Goto('L13')

