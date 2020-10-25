# -*- coding: utf-8 -*-
def t121674_1():
    """ State 0,40 """
    SetEventState(71210028, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1864) and GetDistanceToPlayer() <= 5:
            """ State 14 """
            Label('L0')
            # talk:60005300:But, how...
            TalkToPlayer(60005300, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (GetEventStatus(1863) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71210028) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 39 """
            # talk:60005200:Hmph, such conceit...
            TalkToPlayer(60005200, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71210028, 1)
            assert HasTalkEnded() == 1
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11210590) == 1):
            """ State 35 """
            Label('L1')
            DisplayOneLineHelp(-1)
            # talk:60000210:May the Lord guide thee.
            TalkToPlayer(60000210, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L2')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 16 """
                    Label('L3')
                    # talk:60005300:But, how...
                    TalkToPlayer(60005300, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71210089)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:60005000:Hmph, you humans...
                    TalkToPlayer(60005000, -1, -1)
                    SetEventState(71210089, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 17 """
                        Label('L4')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71210089, 1)
                        """ State 11 """
                        Label('L5')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1863) == 1:
                    """ State 10 """
                    Label('L6')
                    ForceEndTalk(3)
                    Goto('L5')
                elif (not GetEventStatus(71210088) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71210087) == 1):
                    """ State 24 """
                    # talk:60005100:Hrk!
                    TalkToPlayer(60005100, -1, -1)
                    SetEventState(71210088, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 25 """
                        SetEventState(71210088, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71210087) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71210086) == 1):
                    """ State 22 """
                    # talk:60005120:Ooh!
                    TalkToPlayer(60005120, -1, -1)
                    SetEventState(71210087, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        SetEventState(71210087, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71210086) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71210085) == 1):
                    """ State 20 """
                    # talk:60005110:Erg!
                    TalkToPlayer(60005110, -1, -1)
                    SetEventState(71210086, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 21 """
                        SetEventState(71210086, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71210085) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:60005100:Hrk!
                    TalkToPlayer(60005100, -1, -1)
                    SetEventState(71210085, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L4')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71210085, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71210088) == 1:
                    Goto('L6')
                else:
                    Goto('L6')
            elif HasTalkEnded() == 1:
                """ State 36 """
                SetEventState(71210029, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:710:Soul of Artorias
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71210021) == 1 and not GetEventStatus(71210023)
              and IsEquipmentIDObtained(3, 710) == 1):
            """ State 31 """
            Label('L7')
            DebugEvent('イエスを選んだあと')
            DisplayOneLineHelp(-1)
            # talk:60000200:Thank you. You are very kind.
            TalkToPlayer(60000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 34 """
                SetEventState(71210023, 1)
                SetEventState(11210590, 1)
                # goods:710:Soul of Artorias
                PlayerEquipmentQuantityChange(3, 710, -1)
                if GetDistanceToPlayer() >= 5:
                    continue
                elif not IsMenuOpen(63):
                    Goto('L1')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:710:Soul of Artorias
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210021) and GetEventStatus(71210022)
              == 1 and IsEquipmentIDObtained(3, 710) == 1):
            """ State 18 """
            DisplayOneLineHelp(-1)
            # talk:60000400:What is it? Something else?
            TalkToPlayer(60000400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 30 """
                Label('L8')
                # action:10020080:Give <?gdsparam@710?>?
                OpenGenericDialog(8, 10020080, 3, 4, 2)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 33 """
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
                    """ State 27 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 29 """
                    Label('L9')
                    DebugEvent('あげない')
                    SetEventState(71210022, 1)
                    if GetEventStatus(71210024) == 1:
                        """ State 15 """
                        DisplayOneLineHelp(-1)
                        # talk:60000500:...Then you have no business with me...
                        TalkToPlayer(60000500, -1, -1)
                        SetEventState(71210027, 1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 42 """
                            SetEventState(71210027, 1)
                            SetEventState(11210591, 1)
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    elif not GetEventStatus(71210024):
                        """ State 32 """
                        # talk:60000300:Yes, of course...
                        TalkToPlayer(60000300, -1, -1)
                        DebugEvent('ノーを選んだあと1')
                        SetEventState(71210024, 1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L2')
                        elif HasTalkEnded() == 1:
                            """ State 41 """
                            SetEventState(71210024, 1)
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 5):
                            Goto('L10')
                    """ State 26 """
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　選択肢')
                    continue
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L9')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 28 """
                    DebugEvent('YES')
                    SetEventState(71210021, 1)
                    Goto('L7')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:710:Soul of Artorias
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71210021) and not GetEventStatus(71210022)
              and IsEquipmentIDObtained(3, 710) == 1):
            """ State 38 """
            DisplayOneLineHelp(-1)
            # talk:60000700:...You, is that not...
            TalkToPlayer(60000700, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                Goto('L8')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        # goods:710:Soul of Artorias
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11210590) and not IsEquipmentIDObtained(3,
              710)):
            """ State 19 """
            DisplayOneLineHelp(-1)
            # talk:60000600:...Are you human?
            TalkToPlayer(60000600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 37 """
                SetEventState(71210050, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1863) and not GetEventStatus(1864)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1864):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 3 """
        Label('L10')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

