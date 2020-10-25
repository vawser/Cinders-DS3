# -*- coding: utf-8 -*-
def t160634_1():
    """ State 0,28 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if (CheckSelfDeath() == 1 and not GetEventStatus(1676) and GetEventStatus(831) == 1 and GetDistanceToPlayer()
            <= 15):
            """ State 95 """
            Label('L1')
            # talk:44002500:Fool...You could not be the Dark Lord.
            TalkToPlayer(44002500, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (CheckSelfDeath() == 1 and not GetEventStatus(1676) and not GetEventStatus(831) and GetDistanceToPlayer()
              <= 15):
            break
        elif (not GetEventStatus(71600023) and GetEventStatus(1678) == 1 and GetDistanceToPlayer() <=
              10 and GetEventStatus(71800035) == 1 and not GetEventStatus(831) and not GetEventStatus(830)
              and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10 and not GetEventStatus(1675) and not GetEventStatus(1676)
              and not GetEventStatus(1677)):
            """ State 103 """
            DisplayOneLineHelp(-1)
            # talk:44001300:Nonsense!
            TalkToPlayer(44001300, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 19 """
                Label('L2')
                ClearTalkProgressData()
                ForceEndTalk(3)
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1:
                    """ State 97 """
                    Label('L3')
                    if CheckSelfDeath() == 1 and GetEventStatus(831) == 1 and GetDistanceToPlayer() <= 15:
                        """ State 96 """
                        # talk:44002500:Fool...You could not be the Dark Lord.
                        TalkToPlayer(44002500, -1, -1)
                        DisplayOneLineHelp(-1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 15:
                            pass
                    elif CheckSelfDeath() == 1 and not GetEventStatus(831) and GetDistanceToPlayer() <= 15:
                        """ State 23 """
                        # talk:44002200:Fool...You could not be the Dark Lord.
                        TalkToPlayer(44002200, -1, -1)
                        DisplayOneLineHelp(-1)
                        ForceCloseMenu()
                        if HasTalkEnded() == 1:
                            continue
                        elif GetDistanceToPlayer() >= 15:
                            pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 15 and not GetEventStatus(71600004)
                      and GetSelfHP() <= 90 and GetEventStatus(831) == 1):
                    """ State 90 """
                    # talk:44002500:Fool...You could not be the Dark Lord.
                    TalkToPlayer(44002500, -1, -1)
                    SetEventState(71600004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 24 """
                        Label('L4')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        if CheckSelfDeath() == 1 and GetEventStatus(831) == 1:
                            Goto('L1')
                        elif CheckSelfDeath() == 1 and not GetEventStatus(831):
                            break
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        Label('L5')
                        SetEventState(71600004, 1)
                        SetEventState(11600590, 1)
                        """ State 15 """
                        Label('L6')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif GetDistanceToPlayer() >= 16:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 15 and not GetEventStatus(71600004)
                      and GetSelfHP() <= 90 and not GetEventStatus(831)):
                    """ State 14 """
                    # talk:44002200:Fool...You could not be the Dark Lord.
                    TalkToPlayer(44002200, -1, -1)
                    SetEventState(71600004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L5')
                    elif GetDistanceToPlayer() >= 16:
                        pass
                elif GetEventStatus(1675) == 1:
                    """ State 16 """
                    Label('L7')
                    ForceEndTalk(3)
                    Goto('L6')
                elif (not GetEventStatus(71600003) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600002) == 1 and GetEventStatus(831) == 1):
                    """ State 94 """
                    # talk:44002400:Stop!
                    TalkToPlayer(44002400, -1, -1)
                    SetEventState(71600003, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 88 """
                        Label('L8')
                        SetEventState(71600003, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71600002) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600001) == 1 and GetEventStatus(831) == 1):
                    """ State 93 """
                    # talk:44002320:Agh!
                    TalkToPlayer(44002320, -1, -1)
                    SetEventState(71600002, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 86 """
                        Label('L9')
                        SetEventState(71600002, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71600001) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600000) == 1 and GetEventStatus(831) == 1):
                    """ State 92 """
                    # talk:44002310:Hrg!
                    TalkToPlayer(44002310, -1, -1)
                    SetEventState(71600001, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 84 """
                        Label('L10')
                        SetEventState(71600001, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71600000) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(831) == 1):
                    """ State 91 """
                    # talk:44002300:Hmg!
                    TalkToPlayer(44002300, -1, -1)
                    SetEventState(71600000, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 17 """
                        Label('L11')
                        SetEventState(71600000, 1)
                        Goto('L6')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71600003) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600002) == 1 and not GetEventStatus(831)):
                    """ State 89 """
                    # talk:44002100:Stop!
                    TalkToPlayer(44002100, -1, -1)
                    SetEventState(71600003, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L8')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71600002) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600001) == 1 and not GetEventStatus(831)):
                    """ State 87 """
                    # talk:44002020:Agh!
                    TalkToPlayer(44002020, -1, -1)
                    SetEventState(71600002, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L9')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71600001) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71600000) == 1 and not GetEventStatus(831)):
                    """ State 85 """
                    # talk:44002010:Hrg!
                    TalkToPlayer(44002010, -1, -1)
                    SetEventState(71600001, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L10')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif (not GetEventStatus(71600000) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(831)):
                    """ State 18 """
                    # talk:44002000:Hmg!
                    TalkToPlayer(44002000, -1, -1)
                    SetEventState(71600000, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        Goto('L11')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif GetEventStatus(71600003) == 1:
                    Goto('L7')
                else:
                    Goto('L7')
            elif HasTalkEnded() == 1:
                """ State 104 """
                SetEventState(71600023, 1)
                SetEventState(11600590, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 20):
                pass
        elif (not GetEventStatus(71600022) and GetEventStatus(1678) == 1 and GetDistanceToPlayer() <=
              10 and not GetEventStatus(71800035) and not GetEventStatus(831) and not GetEventStatus(830)
              and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10 and not GetEventStatus(1675) and not GetEventStatus(1676)
              and not GetEventStatus(1677)):
            """ State 101 """
            DisplayOneLineHelp(-1)
            # talk:44002200:Fool...You could not be the Dark Lord.
            TalkToPlayer(44002200, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 102 """
                SetEventState(71600022, 1)
                SetEventState(11600590, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 20):
                pass
        elif (not GetEventStatus(71600017) and GetEventStatus(823) == 1 and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10 and GetEventStatus(831) == 1 and not GetEventStatus(1675)
              and not GetEventStatus(1676) and not GetEventStatus(1677)):
            """ State 82 """
            DisplayOneLineHelp(-1)
            # talk:44001010:This is Gwyn's prison.
            TalkToPlayer(44001010, -1, -1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 83 """
                SetEventState(71600017, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 20):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600011) and GetEventStatus(71600005)
              == 1 and GetEventStatus(1672) == 1 and not GetEventStatus(71600010)):
            """ State 47 """
            DisplayOneLineHelp(-1)
            # talk:44000900:Hmm...You are astonishing.
            TalkToPlayer(44000900, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 70 """
                SetEventState(71600009, 1)
                """ State 45 """
                Label('L12')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 43 """
                    Label('L13')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      12):
                    """ State 37 """
                    Label('L14')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 48 """
                    Label('L15')
                    DebugEvent('願いを聞かない')
                    SetEventState(71600011, 1)
                    """ State 49 """
                    Label('L16')
                    # talk:44001300:Nonsense!
                    TalkToPlayer(44001300, -1, -1)
                    DebugEvent('ノーを選んだあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 81 """
                        SetEventState(11600590, 1)
                        SetEventState(71600013, 1)
                        """ State 36 """
                        Label('L17')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L15')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 44 """
                    DebugEvent('話を聞く')
                    SetEventState(71600010, 1)
                    """ State 46 """
                    Label('L18')
                    # talk:44001000:Very well!
                    TalkToPlayer(44001000, -1, -1)
                    DebugEvent('イエスを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 100 """
                        SetEventState(821, 1)
                        SetEventState(71600012, 1)
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71600011) == 1 and not GetEventStatus(71600013)):
            Goto('L16')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71600010) == 1 and not GetEventStatus(71600012)):
            Goto('L18')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71600006) == 1 and not GetEventStatus(71600008)
              and GetEventStatus(11500200) == 1):
            """ State 99 """
            Label('L19')
            # talk:44000200:A wise choice, Undead warrior.
            TalkToPlayer(44000200, -1, -1)
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 80 """
                SetEventState(71600008, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71600007) == 1 and not GetEventStatus(71600006)):
            """ State 35 """
            DisplayOneLineHelp(-1)
            # talk:44000700:What is it?
            TalkToPlayer(44000700, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 40 """
                Label('L20')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L13')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      12):
                    Goto('L14')
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 39 """
                    Label('L21')
                    DebugEvent('話を聞かない')
                    SetEventState(71600007, 1)
                    """ State 42 """
                    # talk:44000400:...
                    TalkToPlayer(44000400, -1, -1)
                    DebugEvent('ノーを選んだあと1')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        Goto('L17')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 12):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L21')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 38 """
                    DebugEvent('話を聞く')
                    SetEventState(71600006, 1)
                    Goto('L19')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600016) and GetEventStatus(15)
              == 1):
            """ State 76 """
            DisplayOneLineHelp(-1)
            # talk:44001700:My Lord, bless thy safe return.
            TalkToPlayer(44001700, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 77 """
                SetEventState(71600016, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600015) and GetEventStatus(1674)
              == 1 and GetEventStatus(831) == 1):
            """ State 74 """
            DisplayOneLineHelp(-1)
            # talk:44001600:Magnificent.
            TalkToPlayer(44001600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 75 """
                SetEventState(71600015, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600014) and GetEventStatus(1673)
              == 1 and GetEventStatus(831) == 1):
            """ State 72 """
            DisplayOneLineHelp(-1)
            # talk:44001200:Very well.
            TalkToPlayer(44001200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 73 """
                SetEventState(71600014, 1)
                SetEventState(825, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1672) == 1 and GetEventStatus(71600009)
              == 1 and GetEventStatus(831) == 1):
            """ State 34 """
            DisplayOneLineHelp(-1)
            # talk:44001100:What is it? Place the Lordvessel upon the altar.
            TalkToPlayer(44001100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71600020) == 1 and GetEventStatus(831)
              == 1):
            """ State 106 """
            DisplayOneLineHelp(-1)
            # talk:44000650:What is it?
            TalkToPlayer(44000650, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 58 """
                Label('L22')
                ClearTalkActionState()
                if True:
                    """ State 51 """
                    while True:
                        # action:15000251:Ask for Covenant Item
                        AddTalkListData(6, 15000251, 854)
                        # action:15000261:Offer Humanity
                        AddTalkListData(5, 15000261, 854)
                        # action:15000200:Enter Covenant
                        AddTalkListData(2, 15000200, 71600020)
                        # action:15000150:Warp
                        AddTalkListData(1, 15000150, 71600012)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        ShowShopMessage(0, 0, 0)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 57 """
                            Label('L23')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1:
                                Goto('L3')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 53 """
                                Label('L24')
                                if GetDistanceToPlayer() >= 12:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 61 """
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 12):
                            Goto('L23')
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif GetTalkListEntryResult() == 2:
                            """ State 50 """
                            if ComparePlayerStatus(11, 0, 4) == 1:
                                """ State 7 """
                                # action:10010726:Already belong to this Covenant
                                OpenGenericDialog(7, 10010726, 1, 0, 2)
                                DebugEvent('誓約が同じ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    """ State 25 """
                                    Label('L25')
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    if CheckSelfDeath() == 1:
                                        Goto('L3')
                                    else:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone() ==
                                      1):
                                    pass
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 8 """
                                    Label('L26')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    """ State 55 """
                                    Label('L27')
                                    if True:
                                        continue
                                    elif GetDistanceToPlayer() >= 15:
                                        Continue('mainloop')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L26')
                            else:
                                """ State 6 """
                                # action:10010745:Join Covenant? (abandons former Covenant)
                                OpenGenericDialog(8, 10010745, 3, 4, 2)
                                ChangePlayerStats(31, 5, 4)
                                RequestUnlockTrophy(12)
                                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L25')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 2 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 4 """
                                    Label('L28')
                                    DebugEvent('誓約を変更しない')
                                    """ State 1 """
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　選択肢')
                                    Goto('L27')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L28')
                                elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen()
                                      and not GetEventStatus(831)):
                                    """ State 3 """
                                    ForceCloseMenu()
                                    SetTalkTime(2.5)
                                    BreakCovenantPledge()
                                    DebugEvent('誓約を変更する')
                                    ChangePlayerStats(11, 5, 4)
                                    SetEventState(71600021, 1)
                                    SetEventState(845, 1)
                                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                        or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                        > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone()
                                        == 1):
                                        pass
                                    elif not GetEventStatus(11600594) and not GetEventStatus(845):
                                        """ State 119 """
                                        Label('L29')
                                        SetEventState(11600594, 1)
                                        if GetDistanceToPlayer() >= 12:
                                            Continue('mainloop')
                                        elif not IsMenuOpen(63):
                                            """ State 127 """
                                            Label('L30')
                                            # action:10010729:Covenant established
                                            OpenGenericDialog(7, 10010729, 1, 0, 2)
                                            DebugEvent('誓約を交わした')
                                            DisplayOneLineHelp(-1)
                                            if CheckSelfDeath() == 1:
                                                Goto('L25')
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone()
                                                  == 1):
                                                pass
                                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                Goto('L26')
                                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                Goto('L26')
                                    elif not GetEventStatus(845):
                                        Goto('L30')
                                elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen()
                                      and GetEventStatus(831) == 1):
                                    """ State 128 """
                                    ForceCloseMenu()
                                    SetTalkTime(2.5)
                                    BreakCovenantPledge()
                                    DebugEvent('誓約を変更する')
                                    ChangePlayerStats(11, 5, 4)
                                    SetEventState(71600021, 1)
                                    SetEventState(846, 1)
                                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                        or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                        > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone()
                                        == 1):
                                        pass
                                    elif not GetEventStatus(11600594) and not GetEventStatus(846):
                                        Goto('L29')
                                    elif not GetEventStatus(846):
                                        Goto('L30')
                            """ State 9 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            Continue('mainloop')
                        elif GetTalkListEntryResult() == 1:
                            """ State 78 """
                            if GetEventStatus(831) == 1:
                                """ State 65 """
                                # talk:44001500:Are you ready?
                                TalkToPlayer(44001500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 66 """
                                    SetEventState(825, 1)
                                    Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12):
                                    Goto('L42')
                            elif not GetEventStatus(831):
                                """ State 67 """
                                # talk:44001400:Very well.
                                TalkToPlayer(44001400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    """ State 68 """
                                    SetEventState(821, 1)
                                    Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12):
                                    Goto('L42')
                        elif GetTalkListEntryResult() == 3:
                            """ State 63 """
                            if (GetEventStatus(71600018) == 1 and GetEventStatus(71600012) == 1 and GetEventStatus(831)
                                == 1):
                                """ State 108 """
                                # talk:44001950:They failed me, every last one of them.
                                TalkToPlayer(44001950, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Goto('L27')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12):
                                    Goto('L42')
                            elif (GetEventStatus(71600018) == 1 and GetEventStatus(71600012) == 1 and
                                  not GetEventStatus(831)):
                                """ State 64 """
                                # talk:44001900:They failed me, every last one of them.
                                TalkToPlayer(44001900, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    Goto('L27')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12):
                                    Goto('L42')
                            elif GetEventStatus(831) == 1:
                                """ State 107 """
                                # talk:44001850:Undead warrior,
                                TalkToPlayer(44001850, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12):
                                    Goto('L42')
                            elif not GetEventStatus(831):
                                """ State 54 """
                                # talk:44001800:Undead warrior,
                                TalkToPlayer(44001800, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L2')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12):
                                    Goto('L42')
                            """ State 62 """
                            SetEventState(71600018, 1)
                            Goto('L27')
                        elif GetTalkListEntryResult() == 5:
                            """ State 118 """
                            if ComparePlayerStatus(18, 0, 100) == 1:
                                """ State 121 """
                                # action:10010791:Cannot offer more. Well done.
                                OpenGenericDialog(7, 10010791, 1, 0, 2)
                                DebugEvent('MAX')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    Goto('L25')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 123 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 122 """
                                    Label('L31')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L27')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L31')
                            elif ComparePlayerStatus(10, 0, 0) == 1:
                                """ State 115 """
                                # action:10010781:No humanity
                                OpenGenericDialog(7, 10010781, 1, 0, 2)
                                DebugEvent('ない')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    Goto('L25')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 12 or IsAttackedBySomeone() ==
                                      1):
                                    pass
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 116 """
                                    Label('L32')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L27')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L32')
                            else:
                                """ State 113 """
                                # action:10020201:Offer humanity?
                                OpenGenericDialog(8, 10020201, 3, 4, 2)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 12):
                                    """ State 110 """
                                    Label('L33')
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 112 """
                                    Label('L34')
                                    DebugEvent('捧げない')
                                    Goto('L27')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L34')
                                elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen()
                                      and not GetEventStatus(831)):
                                    """ State 114 """
                                    Label('L35')
                                    DebugEvent('DECIDE_NUMBER')
                                    # action:10020201:Offer humanity?
                                    OpenGenericDialog(3, 10020201, 3, 4, 2)
                                    if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                        or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                        > 120 or GetDistanceToPlayer() > 12):
                                        Goto('L33')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        Goto('L34')
                                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                        Goto('L34')
                                    elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen()
                                          and not GetEventStatus(831)):
                                        """ State 111 """
                                        ForceCloseMenu()
                                        SetTalkTime(2.5)
                                        DebugEvent('捧げる')
                                        ChangePlayerStats(15, 0, 1)
                                        ChangePlayerStats(10, 1, 1)
                                        SetEventState(845, 1)
                                        if (DoesSelfHaveSpEffect(18, 10) == 1 and not GetEventStatus(11600595)
                                            and not GetEventStatus(845)):
                                            """ State 120 """
                                            Label('L36')
                                            SetEventState(11600595, 1)
                                            if GetDistanceToPlayer() >= 12:
                                                Continue('mainloop')
                                            elif (not IsMenuOpen(63) and DoesSelfHaveSpEffect(18, 30)
                                                  == 1 and not GetEventStatus(846) and (not GetEventStatus(11600596)
                                                  or not GetEventStatus(11600580) or not GetEventStatus(11600581)
                                                  or not GetEventStatus(11600582) or not GetEventStatus(11600583))):
                                                """ State 124 """
                                                Label('L37')
                                                SetEventState(11600596, 1)
                                                SetEventState(11600580, 1)
                                                SetEventState(11600581, 1)
                                                SetEventState(11600582, 1)
                                                SetEventState(11600583, 1)
                                                if GetDistanceToPlayer() >= 12:
                                                    Continue('mainloop')
                                                elif not IsMenuOpen(63):
                                                    """ State 130 """
                                                    Label('L38')
                                                    # action:10010797:Covenant allegiance deepened. Rank gained.
                                                    OpenGenericDialog(7, 10010797, 1, 0, 2)
                                                    DebugEvent('ランクアップ')
                                                    DisplayOneLineHelp(-1)
                                                    if CheckSelfDeath() == 1:
                                                        Goto('L25')
                                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                          or IsCharacterDisabled() or IsClientPlayer()
                                                          == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                          > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                          == 1):
                                                        pass
                                                    elif (not GetGenericDialogButtonResult() and not
                                                          IsGenericDialogOpen()):
                                                        Goto('L32')
                                                    elif (GetGenericDialogButtonResult() == 1 and not
                                                          IsGenericDialogOpen()):
                                                        Goto('L32')
                                            elif not IsMenuOpen(63):
                                                Goto('L38')
                                        elif (DoesSelfHaveSpEffect(18, 30) == 1 and not GetEventStatus(845)
                                              and (not GetEventStatus(11600596) or not GetEventStatus(11600580)
                                              or not GetEventStatus(11600581) or not GetEventStatus(11600582)
                                              or not GetEventStatus(11600583))):
                                            Goto('L37')
                                        elif DoesSelfHaveSpEffect(18, 80) == 1 and not GetEventStatus(845):
                                            Goto('L38')
                                        elif DoesSelfHaveSpEffect(18, 30) == 1 and not GetEventStatus(845):
                                            Goto('L38')
                                        elif DoesSelfHaveSpEffect(18, 10) == 1 and not GetEventStatus(845):
                                            Goto('L38')
                                        elif not GetEventStatus(845):
                                            """ State 129 """
                                            Label('L39')
                                            # action:10010796:Covenant allegiance deepened.
                                            OpenGenericDialog(7, 10010796, 1, 0, 2)
                                            DebugEvent('ポイントアップ')
                                            DisplayOneLineHelp(-1)
                                            if CheckSelfDeath() == 1:
                                                Goto('L25')
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                  == 1):
                                                pass
                                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                Goto('L32')
                                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                Goto('L32')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 12):
                                            Goto('L33')
                                    elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen()
                                          and GetEventStatus(831) == 1):
                                        """ State 131 """
                                        ForceCloseMenu()
                                        SetTalkTime(2.5)
                                        DebugEvent('捧げる')
                                        ChangePlayerStats(15, 0, 1)
                                        ChangePlayerStats(10, 1, 1)
                                        SetEventState(846, 1)
                                        if (DoesSelfHaveSpEffect(18, 10) == 1 and not GetEventStatus(11600595)
                                            and not GetEventStatus(846)):
                                            Goto('L36')
                                        elif (DoesSelfHaveSpEffect(18, 30) == 1 and not GetEventStatus(846)
                                              and (not GetEventStatus(11600596) or not GetEventStatus(11600580)
                                              or not GetEventStatus(11600581) or not GetEventStatus(11600582)
                                              or not GetEventStatus(11600583))):
                                            Goto('L37')
                                        elif DoesSelfHaveSpEffect(18, 80) == 1 and not GetEventStatus(846):
                                            Goto('L38')
                                        elif DoesSelfHaveSpEffect(18, 30) == 1 and not GetEventStatus(846):
                                            Goto('L38')
                                        elif DoesSelfHaveSpEffect(18, 10) == 1 and not GetEventStatus(846):
                                            Goto('L38')
                                        elif not GetEventStatus(846):
                                            Goto('L39')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 12):
                                            Goto('L33')
                                    elif CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                        Goto('L25')
                                elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen()
                                      and GetEventStatus(831) == 1):
                                    Goto('L35')
                                elif CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                    Goto('L25')
                            """ State 117 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            Continue('mainloop')
                        elif GetTalkListEntryResult() == 6:
                            """ State 126,125 """
                            OpenRegularShop(6100, 6199)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                """ State 56 """
                                Label('L40')
                                CloseMenu()
                                if CheckSelfDeath() == 1:
                                    Goto('L3')
                                elif IsPlayerMovingACertainDistance(1) == 1:
                                    Goto('L24')
                                elif not IsPlayerMovingACertainDistance(1):
                                    pass
                                else:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 12):
                                Goto('L40')
                            elif not IsMenuOpen(11):
                                continue
                        """ State 52 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 59 """
                    if not GetEventStatus(831):
                        """ State 60 """
                        # talk:44000800:Farewell.
                        TalkToPlayer(44000800, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 12):
                            pass
                    elif GetEventStatus(831) == 1:
                        """ State 109 """
                        # talk:44000850:Farewell.
                        TalkToPlayer(44000850, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 12):
                            pass
                    else:
                        """ State 69 """
                        ClearTalkDisabledState()
                        continue
                elif GetDistanceToPlayer() >= 15:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71600020) == 1 and not GetEventStatus(831)):
            """ State 33 """
            DisplayOneLineHelp(-1)
            # talk:44000600:What is it?
            TalkToPlayer(44000600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L22')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600020) and GetEventStatus(71600006)
              == 1 and GetEventStatus(831) == 1):
            """ State 105 """
            DisplayOneLineHelp(-1)
            # talk:44000550:Ahh...
            TalkToPlayer(44000550, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 30 """
                Label('L41')
                SetEventState(71600020, 1)
                Goto('L22')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600010) and not GetEventStatus(71600005)
              and GetEventStatus(1672) == 1 and not GetEventStatus(71600011)):
            """ State 71 """
            DisplayOneLineHelp(-1)
            # talk:44000010:Greetings, Undead warrior.
            TalkToPlayer(44000010, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 98 """
                SetEventState(71600009, 1)
                SetEventState(71600006, 1)
                SetEventState(71600007, 1)
                SetEventState(71600008, 1)
                SetEventState(71600024, 1)
                Goto('L12')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600020) and GetEventStatus(71600006)
              == 1 and not GetEventStatus(831)):
            """ State 29 """
            DisplayOneLineHelp(-1)
            # talk:44000500:Ahh...
            TalkToPlayer(44000500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L41')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71600007) and GetEventStatus(1671)
              == 1 and not GetEventStatus(71600006)):
            """ State 31 """
            DisplayOneLineHelp(-1)
            # talk:44000000:Greetings, Undead warrior.
            TalkToPlayer(44000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 32 """
                SetEventState(71600005, 1)
                Goto('L20')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 12):
                pass
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 5)):
            """ State 26 """
            DisplayOneLineHelp(-1)
            continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 5 and not GetEventStatus(1675) and not GetEventStatus(1676)
              and not GetEventStatus(1677)):
            """ State 27 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1676):
            """ State 22 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 20 """
        Label('L42')
        ClearTalkProgressData()
        if GetEventStatus(71600004) == 1:
            """ State 132 """
            SetEventState(11600590, 1)
            ForceEndTalk(0)
        else:
            """ State 21 """
            ForceEndTalk(0)
    """ State 12 """
    # talk:44002200:Fool...You could not be the Dark Lord.
    TalkToPlayer(44002200, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 15:
        Goto('L42')

