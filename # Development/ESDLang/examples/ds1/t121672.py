# -*- coding: utf-8 -*-
def t121672_1():
    """ State 0,6 """
    while Loop('mainloop'):
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1823) and GetDistanceToPlayer() <= 7:
            """ State 16 """
            Label('L0')
            # talk:58005401:Humans...hmph...
            TalkToPlayer(58005401, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if GetDistanceToPlayer() >= 8:
                pass
            elif HasTalkEnded() == 1:
                continue
        elif (not GetEventStatus(71210068) and GetEventStatus(11210539) == 1 and GetDistanceToPlayer()
              <= 7 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 7 and GetEventStatus(1821) == 1 and GetEventStatus(11210592)
              == 1 and not GetEventStatus(1822)):
            """ State 77 """
            # talk:58000520:Hah hah! Yes, a truer shot was never loosed!
            TalkToPlayer(58000520, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            SetEventState(71210068, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                    """ State 25 """
                    Label('L2')
                    # talk:58005401:Humans...hmph...
                    TalkToPlayer(58005401, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if GetDistanceToPlayer() >= 8:
                        pass
                    elif HasTalkEnded() == 1:
                        continue
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 7 and not GetEventStatus(71210060)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:58005100:Ahh, so this is true human nature.
                    TalkToPlayer(58005100, -1, -1)
                    SetEventState(71210060, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 26 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71210060, 1)
                        SetEventState(11210911, 1)
                        """ State 11 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif GetEventStatus(1822) == 1:
                    """ State 10 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (GetEventStatus(71210058) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 7 and not GetEventStatus(71210059)):
                    """ State 85 """
                    # talk:58005040:By the Gods!
                    TalkToPlayer(58005040, -1, -1)
                    SetEventState(71210059, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 86 """
                        SetEventState(71210059, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (GetEventStatus(71210057) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 7 and not GetEventStatus(71210058)):
                    """ State 21 """
                    # talk:58005030:Stop that!
                    TalkToPlayer(58005030, -1, -1)
                    SetEventState(71210058, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 22 """
                        SetEventState(71210058, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (GetEventStatus(71210056) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 7 and not GetEventStatus(71210057)):
                    """ State 19 """
                    # talk:58005020:Understand this. I wish thee no harm.
                    TalkToPlayer(58005020, -1, -1)
                    SetEventState(71210057, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 20 """
                        SetEventState(71210057, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (GetEventStatus(71210055) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 7 and not GetEventStatus(71210056)):
                    """ State 17 """
                    # talk:58005010:Stop it, I say.
                    TalkToPlayer(58005010, -1, -1)
                    SetEventState(71210056, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 18 """
                        SetEventState(71210056, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71210055) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 7):
                    """ State 8 """
                    # talk:58005000:Cease this.
                    TalkToPlayer(58005000, -1, -1)
                    SetEventState(71210055, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71210055, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif GetEventStatus(71210059) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 79 """
                SetEventState(71210068, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(71210074)
              == 1 and not GetEventStatus(71210076) and not GetEventStatus(11210004)):
            """ State 73 """
            Label('L6')
            # talk:58000500:Hah hah hah!
            TalkToPlayer(58000500, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 75 """
                SetEventState(11210592, 1)
                SetEventState(71210076, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(71210075)
              == 1 and not GetEventStatus(71210077) and not GetEventStatus(11210004)):
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(71210070)
              == 1 and not GetEventStatus(71210074) and not GetEventStatus(71210075) and not GetEventStatus(11210004)):
            """ State 39 """
            Label('L7')
            # talk:58000400:Yes, I thought as much.
            TalkToPlayer(58000400, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 42 """
                SetEventState(71210072, 1)
                """ State 72 """
                Label('L8')
                # action:10020041:How do you answer?
                OpenGenericDialog(8, 10020041, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 41 """
                    Label('L9')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                        Goto('L2')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      7):
                    """ State 35 """
                    Label('L10')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 71 """
                    Label('L11')
                    DebugEvent('諦める')
                    SetEventState(71210075, 1)
                    SetEventState(11216103, 1)
                    if GetEventStatus(71210077) == 1:
                        """ State 81 """
                        # talk:58001100:Yes, surely that is best.
                        TalkToPlayer(58001100, -1, -1)
                        DebugEvent('ノーを選んだあと1')
                        DisplayOneLineHelp(-1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            """ State 51 """
                            Label('L12')
                            if True:
                                """ State 47 """
                                Label('L13')
                                while True:
                                    # action:15000010:Purchase Item
                                    AddTalkListData(1, 15000010, -1)
                                    # action:15000000:Talk
                                    AddTalkListData(3, 15000000, -1)
                                    # action:15000005:Leave
                                    AddTalkListData(4, 15000005, -1)
                                    ShowShopMessage(0, 0, 0)
                                    def ExitPause():
                                        ClearTalkListData()
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        """ State 53 """
                                        Label('L14')
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        CloseShopMessage()
                                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                                            Goto('L2')
                                        elif IsPlayerMovingACertainDistance(1) == 1:
                                            """ State 49 """
                                            Label('L15')
                                            # talk:58001400:Farewell, human.
                                            TalkToPlayer(58001400, -1, -1)
                                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                Goto('L1')
                                            elif GetDistanceToPlayer() >= 12:
                                                pass
                                            elif HasTalkEnded() == 1:
                                                """ State 56 """
                                                SetEventState(11215202, 1)
                                                Continue('mainloop')
                                        elif not IsPlayerMovingACertainDistance(1):
                                            pass
                                    elif not GetTalkListEntryResult():
                                        """ State 55 """
                                        Label('L16')
                                        if DidYouDoSomethingInTheMenu(11) == 1 or not DidYouDoSomethingInTheMenu(11):
                                            """ State 59 """
                                            if GetEventStatus(11210004) == 1:
                                                """ State 84 """
                                                # talk:58001600:Farewell, proud human.
                                                TalkToPlayer(58001600, -1, -1)
                                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                    Goto('L1')
                                                elif HasTalkEnded() == 1:
                                                    Continue('mainloop')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 7):
                                                    Goto('L23')
                                            elif GetEventStatus(11210592) == 1:
                                                """ State 60 """
                                                # talk:58001500:Farewell, human.
                                                TalkToPlayer(58001500, -1, -1)
                                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                    Goto('L1')
                                                elif HasTalkEnded() == 1:
                                                    Continue('mainloop')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 7):
                                                    Goto('L23')
                                            elif not GetEventStatus(11210592):
                                                """ State 44 """
                                                # talk:58001400:Farewell, human.
                                                TalkToPlayer(58001400, -1, -1)
                                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                    Goto('L1')
                                                elif HasTalkEnded() == 1:
                                                    Continue('mainloop')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 7):
                                                    Goto('L23')
                                        else:
                                            """ State 65 """
                                            ClearTalkDisabledState()
                                            Continue('mainloop')
                                    elif GetTalkListEntryResult() == 3:
                                        break
                                    elif GetTalkListEntryResult() == 1:
                                        """ State 46,45 """
                                        OpenRegularShop(6600, 6699)
                                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                            """ State 52 """
                                            Label('L17')
                                            CloseMenu()
                                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 7:
                                                Goto('L2')
                                            elif IsPlayerMovingACertainDistance(1) == 1:
                                                Goto('L15')
                                            elif not IsPlayerMovingACertainDistance(1):
                                                pass
                                            else:
                                                Continue('mainloop')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 7):
                                            Goto('L17')
                                        elif not IsMenuOpen(11):
                                            continue
                                    elif GetTalkListEntryResult() == 4:
                                        Goto('L16')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 10):
                                        Goto('L14')
                                    """ State 48 """
                                    ForceEndTalk(0)
                                    Continue('mainloop')
                                """ State 57 """
                                if (GetEventStatus(11210004) == 1 and not GetEventStatus(11210593) and
                                    GetEventStatus(71210083) == 1):
                                    """ State 82 """
                                    # talk:58002200:Ahh, this Greatbow?
                                    TalkToPlayer(58002200, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 83 """
                                        SetEventState(71210084, 1)
                                        SetEventState(11210593, 1)
                                        if GetDistanceToPlayer() >= 8:
                                            continue
                                        elif not IsMenuOpen(63):
                                            Goto('L12')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                elif (GetEventStatus(71210072) == 1 and not GetEventStatus(71210074)
                                      and not GetEventStatus(11216103) and not GetEventStatus(11210004)):
                                    """ State 58 """
                                    # talk:58001000:...Art thou prepared to challenge great Kalameet?
                                    TalkToPlayer(58001000, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        Goto('L8')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                elif (GetEventStatus(71210067) == 1 and not GetEventStatus(71210070)
                                      and not GetEventStatus(11216103) and not GetEventStatus(11210004)):
                                    """ State 50 """
                                    # talk:58000800:The Black Dragon troubles you yet, I see.
                                    TalkToPlayer(58000800, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 38 """
                                        Label('L18')
                                        # action:10020041:How do you answer?
                                        OpenGenericDialog(8, 10020041, 3, 4, 2)
                                        SetEventState(71210067, 1)
                                        if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                            Goto('L9')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 7):
                                            Goto('L10')
                                        elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                            """ State 37 """
                                            Label('L19')
                                            DebugEvent('困ってない')
                                            SetEventState(71210071, 1)
                                            SetEventState(11216103, 1)
                                            if GetEventStatus(71210073) == 1:
                                                """ State 80 """
                                                # talk:58000900:...Hmm, yes, I see. I was mistaken...
                                                TalkToPlayer(58000900, -1, -1)
                                                DebugEvent('ノーを選んだあと1')
                                                DisplayOneLineHelp(-1)
                                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                    Goto('L1')
                                                elif HasTalkEnded() == 1:
                                                    Goto('L12')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 7):
                                                    pass
                                            elif not GetEventStatus(71210073):
                                                """ State 40 """
                                                Label('L20')
                                                # talk:58000600:...Strange. I am rarely wrong on such matters...
                                                TalkToPlayer(58000600, -1, -1)
                                                DebugEvent('ノーを選んだあと1')
                                                DisplayOneLineHelp(-1)
                                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                                    Goto('L1')
                                                elif HasTalkEnded() == 1:
                                                    """ State 43 """
                                                    SetEventState(71210073, 1)
                                                    Goto('L12')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 7):
                                                    pass
                                        elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                            Goto('L19')
                                        elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                            """ State 36 """
                                            DebugEvent('困ってる')
                                            SetEventState(71210070, 1)
                                            Goto('L7')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                elif GetEventStatus(11210051) == 1 and not GetEventStatus(71210083):
                                    """ State 68 """
                                    # talk:58002100:The dragons shall never be forgotten...
                                    TalkToPlayer(58002100, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 69 """
                                        SetEventState(71210083, 1)
                                        Goto('L12')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                elif not GetEventStatus(71210079) and not GetEventStatus(11210051):
                                    """ State 61 """
                                    # talk:58001700:If thou seeketh to explore this domain, be wary of a black dragon.
                                    TalkToPlayer(58001700, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 62 """
                                        SetEventState(71210079, 1)
                                        Goto('L12')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                elif (GetEventStatus(71210081) == 1 and not GetEventStatus(11216103)
                                      and not GetEventStatus(71210078) and GetEventStatus(71210069) ==
                                      1 and not GetEventStatus(11210002)):
                                    """ State 91 """
                                    # talk:58002700:If thine wish is to succeed poor Artorias, and challenge the spread of the Dark,
                                    TalkToPlayer(58002700, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 92 """
                                        SetEventState(71210078, 1)
                                        Goto('L12')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                elif (GetEventStatus(71210081) == 1 and not GetEventStatus(11216103)
                                      and not GetEventStatus(71210069)):
                                    """ State 89 """
                                    # talk:58002600:I suspect thou hast taken a gander at it,
                                    TalkToPlayer(58002600, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 90 """
                                        SetEventState(71210069, 1)
                                        Goto('L12')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                elif GetEventStatus(71210081) == 1 and not GetEventStatus(11216103):
                                    """ State 63 """
                                    # talk:58002000:Now, do not mistake my words.
                                    TalkToPlayer(58002000, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 64 """
                                        SetEventState(71210082, 1)
                                        Goto('L12')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                                else:
                                    """ State 66 """
                                    # talk:58001900:Me?
                                    TalkToPlayer(58001900, -1, -1)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L1')
                                    elif HasTalkEnded() == 1:
                                        """ State 67 """
                                        SetEventState(71210081, 1)
                                        SetEventState(11216103, 1)
                                        Goto('L12')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 7):
                                        pass
                            elif GetDistanceToPlayer() >= 7:
                                continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 7):
                            pass
                    elif not GetEventStatus(71210077):
                        break
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L11')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 70 """
                    DebugEvent('あきらめない')
                    SetEventState(71210074, 1)
                    Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(71210071)
              == 1 and not GetEventStatus(71210073) and not GetEventStatus(11210004)):
            Goto('L20')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(11210004)
              == 1 and GetEventStatus(71210065) == 1):
            """ State 34 """
            DisplayOneLineHelp(-1)
            # talk:58002500:Thou com'st again, legend of humans.
            TalkToPlayer(58002500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 78 """
                SetEventState(71210066, 1)
                """ State 54 """
                Label('L21')
                ClearTalkActionState()
                if True:
                    Goto('L13')
                elif GetDistanceToPlayer() >= 7:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and not GetEventStatus(11210592)
              and GetEventStatus(11210004) == 1 and not GetEventStatus(71210065) and not GetEventStatus(71210061)):
            """ State 87 """
            DisplayOneLineHelp(-1)
            # talk:58002300:Hm? A visitor, have we?
            TalkToPlayer(58002300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 33 """
                Label('L22')
                SetEventState(71210065, 1)
                Goto('L21')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(11210004)
              == 1 and GetEventStatus(71210061) == 1 and not GetEventStatus(11210592) and not GetEventStatus(71210065)):
            """ State 88 """
            DisplayOneLineHelp(-1)
            # talk:58002400:I see that thou hast dusted the great black dragon Kalameet.
            TalkToPlayer(58002400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L22')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(11210004)
              == 1 and not GetEventStatus(71210065) and GetEventStatus(11210592) == 1):
            """ State 32 """
            DisplayOneLineHelp(-1)
            # talk:58001300:Why, thou hast defeated Kalameet!
            TalkToPlayer(58001300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L22')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and not GetEventStatus(11210004)
              and GetEventStatus(11210592) == 1):
            """ State 30 """
            DisplayOneLineHelp(-1)
            # talk:58001200:Ah, hello there. What of Kalameet?
            TalkToPlayer(58001200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 31 """
                SetEventState(71210064, 1)
                Goto('L21')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and not GetEventStatus(71210067)
              and GetEventStatus(11210051) == 1 and GetEventStatus(71210061) == 1 and not GetEventStatus(11210004)):
            """ State 27 """
            DisplayOneLineHelp(-1)
            # talk:58000300:Good morrow...Is the Black Dragon posing thee duress?
            TalkToPlayer(58000300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L18')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(71210061)
              == 1 and GetEventStatus(11216102) == 1):
            """ State 28 """
            DisplayOneLineHelp(-1)
            # talk:58000200:Well, thou com'st again. Thou art a strange one.
            TalkToPlayer(58000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71210063, 1)
                SetEventState(11216102, 1)
                Goto('L21')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1821) == 1 and GetEventStatus(71210061)
              == 1 and not GetEventStatus(11216102)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:58000100:Well, thou hast come again. This is a surprise.
            TalkToPlayer(58000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71210062, 1)
                SetEventState(11216102, 1)
                Goto('L21')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (GetEventStatus(1821) == 1 and not GetEventStatus(71210061) and IsPlayerTalkingToMe() ==
              1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer() <= 5 and GetOneLineHelpStatus()
              == 1):
            """ State 23 """
            DisplayOneLineHelp(-1)
            # talk:58000000:Hm? A visitor, have we?
            TalkToPlayer(58000000, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 24 """
                SetEventState(71210061, 1)
                SetEventState(11216102, 1)
                Goto('L21')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 5 and not GetEventStatus(1822) and not GetEventStatus(1823)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 5)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1823):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L23')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)
    """ State 74 """
    # talk:58000700:A wise choice. Why foist thyself unto the fiery maw?
    TalkToPlayer(58000700, -1, -1)
    DebugEvent('ノーを選んだあと1')
    DisplayOneLineHelp(-1)
    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
        Goto('L1')
    elif HasTalkEnded() == 1:
        """ State 76 """
        SetEventState(71210077, 1)
        Goto('L12')
    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer() ==
          1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 7):
        Goto('L23')

