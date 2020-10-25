# -*- coding: utf-8 -*-
def t102630_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1575) and GetDistanceToPlayer() <= 5:
            """ State 18 """
            Label('L0')
            # talk:40010500:You despicable...
            TalkToPlayer(40010500, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1572) == 1 and GetEventStatus(71500040)
              == 1 and not GetEventStatus(71500041) and GetPlayerChrType() == 8):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:40010020:By the Lords...Your face...
            TalkToPlayer(40010020, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 46 """
                    Label('L2')
                    # talk:40010500:You despicable...
                    TalkToPlayer(40010500, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71500054)
                      and GetSelfHP() <= 90 and not GetEventStatus(11010190)):
                    """ State 56 """
                    # talk:40010410:You leave me no choice.
                    TalkToPlayer(40010410, -1, -1)
                    SetEventState(71500054, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 47 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        Label('L4')
                        SetEventState(71500054, 1)
                        """ State 11 """
                        Label('L5')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71500054)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:40010400:You leave me no choice.
                    TalkToPlayer(40010400, -1, -1)
                    SetEventState(71500054, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1574) == 1:
                    """ State 10 """
                    Label('L6')
                    ForceEndTalk(3)
                    Goto('L5')
                elif (not GetEventStatus(71500051) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71500050) == 1):
                    """ State 36 """
                    # talk:40010360:Keh keh keh. Are you sure about this?
                    TalkToPlayer(40010360, -1, -1)
                    SetEventState(71500051, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 37 """
                        SetEventState(71500051, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71500050) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:40010340:Well, what have we here?
                    TalkToPlayer(40010340, -1, -1)
                    SetEventState(71500050, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71500050, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71500053) == 1:
                    Goto('L6')
                else:
                    Goto('L6')
            elif HasTalkEnded() == 1:
                """ State 20 """
                SetEventState(71500041, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(2) == 1 and GetEventStatus(71500057)
              == 1):
            """ State 23 """
            DisplayOneLineHelp(-1)
            # talk:40010120:Oh, hello.
            TalkToPlayer(40010120, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 24 """
                SetEventState(71500046, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1572) == 1 and GetEventStatus(71500042)
              == 1 and not GetEventStatus(71500043)):
            """ State 34 """
            DisplayOneLineHelp(-1)
            # talk:40010260:Hm? That tip I gave you?
            TalkToPlayer(40010260, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 35 """
                SetEventState(71500043, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1572) == 1 and GetEventStatus(71500055)
              == 1 and not GetEventStatus(71500042)):
            """ State 43 """
            Label('L7')
            # talk:40010220:A wise choice, indeed.
            TalkToPlayer(40010220, -1, -1)
            DebugEvent('イエスを選んだあと')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 45 """
                SetEventState(71500042, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1193) == 1 and not GetEventStatus(71500055)
              and GetEventStatus(71500057) == 1 and not GetEventStatus(11026104)):
            """ State 33 """
            DisplayOneLineHelp(-1)
            # talk:40010200:Ahh, you certainly are keeping busy.
            TalkToPlayer(40010200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 42 """
                # action:10020051:Pay for intelligence? Required souls: <?evntAcquittalPrice?>
                OpenGenericDialog(8, 10020051, 3, 4, 2)
                SetAquittalCostMessageTag(100, 1)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 48 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                        Goto('L2')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    """ State 39 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 41 """
                    Label('L8')
                    DebugEvent('情報を買わない')
                    SetEventState(71500056, 1)
                    SetEventState(11026104, 1)
                    """ State 44 """
                    # talk:40010240:Oh, really?
                    TalkToPlayer(40010240, -1, -1)
                    DebugEvent('ノーを選んだあと')
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 38 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L8')
                elif (GetGenericDialogButtonResult() == 1 and ComparePlayerAcquittalPrice(100, 1, 2)
                      == 1 and not IsGenericDialogOpen()):
                    """ State 50 """
                    # action:10010754:Insufficient souls
                    OpenGenericDialog(7, 10010754, 1, 0, 2)
                    DebugEvent('ソウルがたりない')
                    DisplayOneLineHelp(-1)
                    if CheckSelfDeath() == 1:
                        """ State 49 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        Quit()
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 15 or IsAttackedBySomeone() == 1):
                        """ State 52 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult():
                        """ State 51 """
                        Label('L9')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　誓約同じ')
                        continue
                    elif GetGenericDialogButtonResult() == 1:
                        Goto('L9')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 40 """
                    DebugEvent('情報を買う')
                    SetEventState(71500055, 1)
                    SubtractAcquittalCostFromPlayerSouls(100, 1)
                    SetEventState(11026104, 1)
                    SetEventState(11020608, 1)
                    Goto('L7')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1577) == 1 and GetEventStatus(71500038)
              == 1 and GetEventStatus(71500047) == 1):
            """ State 27 """
            DisplayOneLineHelp(-1)
            # talk:40010142:I have nothing to say. Be gone from my sight.
            TalkToPlayer(40010142, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 28 """
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1577) == 1 and GetEventStatus(71500038)
              == 1 and not GetEventStatus(71500047)):
            """ State 25 """
            DisplayOneLineHelp(-1)
            # talk:40010140:...You...
            TalkToPlayer(40010140, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 26 """
                SetEventState(71500047, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1577) == 1 and not GetEventStatus(71500038)
              and GetEventStatus(71500048) == 1):
            """ State 31 """
            DisplayOneLineHelp(-1)
            # talk:40010180:Hmm, what business do you have?
            TalkToPlayer(40010180, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 32 """
                SetEventState(71500049, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1577) == 1 and not GetEventStatus(71500038)
              and not GetEventStatus(71500048)):
            """ State 29 """
            DisplayOneLineHelp(-1)
            # talk:40010160:Hello...I don't think we've met.
            TalkToPlayer(40010160, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 30 """
                SetEventState(71500048, 1)
                SetEventState(71500057, 1)
                SetEventState(11026104, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1572) == 1 and GetEventStatus(71500040)
              == 1 and not GetEventStatus(71500044) and not GetEventStatus(11026104)):
            """ State 17 """
            DisplayOneLineHelp(-1)
            # talk:40010080:Well, where have you been?
            TalkToPlayer(40010080, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71500044, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1572) == 1 and GetEventStatus(71500040)
              == 1 and not GetEventStatus(71500058) and not GetEventStatus(11026104)):
            """ State 54 """
            DisplayOneLineHelp(-1)
            # talk:40010600:Have you heard of Trusty Patches?
            TalkToPlayer(40010600, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 55 """
                SetEventState(71500058, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1572) == 1 and GetEventStatus(71500040)
              == 1):
            """ State 21 """
            DisplayOneLineHelp(-1)
            # talk:40010100:Hm, you again? What is it?
            TalkToPlayer(40010100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 22 """
                SetEventState(71500045, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1572) == 1 and not GetEventStatus(71500040)):
            """ State 15 """
            DisplayOneLineHelp(-1)
            # talk:40010000:Ahh, hello there.
            TalkToPlayer(40010000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 16 """
                SetEventState(71500040, 1)
                SetEventState(11020607, 1)
                SetEventState(11026104, 1)
                SetEventState(71500057, 1)
                if GetDistanceToPlayer() >= 5:
                    continue
                elif not IsMenuOpen(63):
                    """ State 53 """
                    # talk:40010010:I am grateful to you. For freeing me...
                    TalkToPlayer(40010010, -1, -1)
                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1574) and not GetEventStatus(1575)
              and not GetEventStatus(1573)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1575):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

