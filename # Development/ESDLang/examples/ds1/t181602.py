# -*- coding: utf-8 -*-
def t181602_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if (CheckSelfDeath() == 1 and not GetEventStatus(1073) and not GetEventStatus(1062) and not GetEventStatus(1061)
            and not GetEventStatus(1074) and GetDistanceToPlayer() <= 5):
            """ State 13 """
            Label('L0')
            # talk:12000300:Hrggkt...
            TalkToPlayer(12000300, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71810052) == 1):
            """ State 12 """
            DisplayOneLineHelp(-1)
            # talk:12000203:...Please, leave me be...
            TalkToPlayer(12000203, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    Goto('L0')
                elif GetEventStatus(1072) == 1:
                    """ State 8 """
                    Label('L2')
                    ForceEndTalk(3)
                    """ State 9 """
                    ClearTalkDisabledState()
                    RemoveMyAggro()
                    continue
                elif GetEventStatus(71020013) == 1:
                    Goto('L2')
                else:
                    Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71810053) == 1):
            """ State 25 """
            DisplayOneLineHelp(-1)
            # talk:12000140:...Now I must bid farewell...
            TalkToPlayer(12000140, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11810591) == 1 and not GetEventStatus(71810053)
              and GetEventStatus(705) == 1):
            """ State 30 """
            Label('L3')
            DisplayOneLineHelp(-1)
            # talk:12000520:...Now I must bid farewell...
            TalkToPlayer(12000520, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 24 """
                Label('L4')
                SetEventState(71810053, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11810591) == 1 and not GetEventStatus(71810053)):
            """ State 28 """
            Label('L5')
            DisplayOneLineHelp(-1)
            # talk:12000140:...Now I must bid farewell...
            TalkToPlayer(12000140, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L4')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11810590) == 1 and not GetEventStatus(11810591)):
            """ State 14 """
            Label('L6')
            DisplayOneLineHelp(-1)
            # talk:12000120:...Oh, and this...
            TalkToPlayer(12000120, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 27 """
                Label('L7')
                DebugEvent('アイテムを渡す2')
                SetEventState(11810591, 1)
                if GetDistanceToPlayer() >= 8:
                    continue
                elif not IsMenuOpen(63) and GetDistanceToPlayer() <= 5 and GetEventStatus(705) == 1:
                    Goto('L3')
                elif not IsMenuOpen(63) and GetDistanceToPlayer() <= 5:
                    Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71810051) == 1 and not GetEventStatus(11810590)
              and GetEventStatus(705) == 1):
            """ State 29 """
            Label('L8')
            # talk:12000500:...Regrettably, I have failed in my mission...
            TalkToPlayer(12000500, -1, -1)
            DebugEvent('イエスを選んだ二週目')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L7')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71810051) == 1 and not GetEventStatus(11810590)):
            """ State 21 """
            Label('L9')
            # talk:12000100:...Regrettably, I have failed in my mission...
            TalkToPlayer(12000100, -1, -1)
            DebugEvent('イエスを選んだあと')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 18 """
                DebugEvent('アイテムを渡す1')
                SetEventState(11810590, 1)
                if GetDistanceToPlayer() >= 8:
                    continue
                elif not IsMenuOpen(63) and GetDistanceToPlayer() <= 5:
                    Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71810050) == 1 and not GetEventStatus(71810051)
              and not GetEventStatus(71810052)):
            """ State 26 """
            DisplayOneLineHelp(-1)
            TalkToPlayer(12000009, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 20 """
                Label('L10')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 1)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 17 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L0')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 16 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult():
                    """ State 22 """
                    Label('L11')
                    DebugEvent('願いを聞かない')
                    SetEventState(71810052, 1)
                    SetEventState(11810592, 1)
                    """ State 23 """
                    # talk:12000200:...Yes, I see...
                    TalkToPlayer(12000200, -1, -1)
                    DebugEvent('ノーを選んだあと2')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 15 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2:
                    Goto('L11')
                elif GetGenericDialogButtonResult() == 1:
                    """ State 19 """
                    DebugEvent('話を聞く')
                    SetEventState(71810051, 1)
                    if GetEventStatus(705) == 1:
                        Goto('L8')
                    else:
                        Goto('L9')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71810050)):
            """ State 10 """
            DisplayOneLineHelp(-1)
            # talk:12000000:...Oh, you... You're no Hollow, eh?
            TalkToPlayer(12000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 11 """
                SetEventState(71810050, 1)
                Goto('L10')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1074) and not GetEventStatus(1073)
              and not GetEventStatus(1062) and not GetEventStatus(1061)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1073):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

