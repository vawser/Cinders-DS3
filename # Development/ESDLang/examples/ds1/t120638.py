# -*- coding: utf-8 -*-
def t120638_1():
    """ State 0,7 """
    while True:
        DebugEvent('待機')
        SetUpdateDistance(25)
        SetEventState(11205050, 0)
        if (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
            <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1712) == 1 and not GetEventStatus(11200596)):
            """ State 36 """
            # talk:48000900:Oh, it is thee...
            TalkToPlayer(48000900, -1, -1)
            DebugEvent('裏切った')
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1:
                """ State 16 """
                Label('L0')
                ClearTalkProgressData()
                SetEventState(11205050, 0)
                def ExitPause():
                    RemoveMyAggro()
                if not GetEventStatus(71200043) and IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 20:
                    """ State 15 """
                    Label('L1')
                    # talk:48000800:Dee hee hee, dee hee hee!
                    TalkToPlayer(48000800, -1, -1)
                    SetEventState(71200043, 1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        """ State 14 """
                        SetEventState(71200043, 1)
                    elif GetDistanceToPlayer() >= 23:
                        """ State 17 """
                        Label('L2')
                        ClearTalkProgressData()
                        if ComparePlayerStatus(11, 5, 7) == 1:
                            """ State 58 """
                            ForceEndTalk(0)
                            SetEventState(11205050, 0)
                            continue
                        else:
                            """ State 18 """
                            ForceEndTalk(0)
                            continue
                elif GetEventStatus(71200043) == 1:
                    """ State 13 """
                    Label('L3')
                    ForceEndTalk(3)
                else:
                    Goto('L3')
            elif HasTalkEnded() == 1:
                """ State 37 """
                SetEventState(71200044, 1)
                SetEventState(11200596, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 20):
                Goto('L2')
        elif not GetEventStatus(71200043) and IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 20:
            Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71200037) and not GetEventStatus(71200039)
              and not GetEventStatus(71200047) and GetEventStatus(705) == 1 and ComparePlayerStatus(11,
              5, 7) == 1 and not GetEventStatus(71200035) and GetEventStatus(11200592) == 1):
            """ State 62 """
            # talk:48000103:What dost thou say? Wilt thou not join us?
            TalkToPlayer(48000103, -1, -1)
            DebugEvent('Yesあと')
            DisplayOneLineHelp(-1)
            SetEventState(11205050, 1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 63 """
                SetEventState(71200037, 1)
                SetEventState(71200039, 1)
                SetEventState(71200047, 1)
                SetEventState(71200035, 1)
                SetEventState(11206101, 1)
                """ State 24 """
                Label('L4')
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 1)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    """ State 48 """
                    Label('L5')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    if not GetEventStatus(71200043) and GetDistanceToPlayer() <= 20:
                        Goto('L1')
                    else:
                        continue
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    """ State 26 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    SetEventState(11205050, 0)
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 28 """
                    Label('L6')
                    DebugEvent('勧誘を受けない')
                    SetEventState(71200040, 1)
                    SetEventState(71200039, 1)
                    SetEventState(11205050, 0)
                    """ State 30 """
                    Label('L7')
                    # talk:48000500:Oh, I see. 'Tis a pity indeed.
                    TalkToPlayer(48000500, -1, -1)
                    DebugEvent('Yes-No')
                    if IsAttackedBySomeone() == 1:
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 25 """
                        Label('L8')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L6')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 27 """
                    DebugEvent('勧誘を受ける')
                    SetEventState(71200039, 1)
                    """ State 29 """
                    Label('L9')
                    # talk:48000200:I am very glad!
                    TalkToPlayer(48000200, -1, -1)
                    DebugEvent('Yes-Yes')
                    SetEventState(11205050, 1)
                    if IsAttackedBySomeone() == 1:
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 49 """
                        if ComparePlayerStatus(11, 0, 7) == 1:
                            """ State 44 """
                            # action:10010726:Already belong to this Covenant
                            OpenGenericDialog(7, 10010726, 1, 0, 2)
                            DebugEvent('誓約が同じ')
                            DisplayOneLineHelp(-1)
                            SetEventState(71200047, 1)
                            if CheckSelfDeath() == 1:
                                Goto('L5')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                pass
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 45 """
                                Label('L10')
                                ClearTalkDisabledState()
                                DebugEvent('会話タイマークリア　誓約同じ')
                                continue
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L10')
                        elif IsMultiplayerInProgress() == 1:
                            """ State 57 """
                            Label('L11')
                            # action:10010747:Cannot enter covenant with phantom present.
                            OpenGenericDialog(7, 10010747, 1, 0, 2)
                            DebugEvent('マルチプレイ中')
                            DisplayOneLineHelp(-1)
                            if CheckSelfDeath() == 1:
                                Goto('L5')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                pass
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                Goto('L10')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                Goto('L10')
                        else:
                            """ State 43 """
                            # action:10010745:Join Covenant? (abandons former Covenant)
                            OpenGenericDialog(8, 10010745, 3, 4, 1)
                            ChangePlayerStats(31, 5, 7)
                            RequestUnlockTrophy(11)
                            if IsMultiplayerInProgress() == 1:
                                Goto('L11')
                            elif CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                Goto('L5')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                """ State 40 """
                                ForceCloseGenericDialog()
                                ForceEndTalk(0)
                                ClearTalkProgressData()
                                SetEventState(11205050, 0)
                                continue
                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                """ State 42 """
                                Label('L12')
                                DebugEvent('誓約を変更しない')
                                SetEventState(71200048, 1)
                                SetEventState(71200040, 1)
                                SetEventState(11205050, 0)
                                Goto('L7')
                            elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                Goto('L12')
                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                """ State 41 """
                                ForceCloseMenu()
                                SetTalkTime(2.5)
                                BreakCovenantPledge()
                                DebugEvent('誓約を変更する')
                                ChangePlayerStats(11, 5, 7)
                                SetEventState(71200047, 1)
                                SetEventState(848, 1)
                                if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                    or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                    > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() == 1):
                                    pass
                                elif not GetEventStatus(848):
                                    """ State 55 """
                                    # action:10010729:Covenant established
                                    OpenGenericDialog(7, 10010729, 1, 0, 2)
                                    DebugEvent('誓約を交わしました')
                                    DisplayOneLineHelp(-1)
                                    if CheckSelfDeath() == 1:
                                        Goto('L5')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                          == 1):
                                        pass
                                    elif (GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen()
                                          and GetEventStatus(11200592) == 1):
                                        """ State 59 """
                                        Label('L13')
                                        # talk:48000221:If mine senses reveal intruders, then I will summon thee.
                                        TalkToPlayer(48000221, -1, -1)
                                        SetEventState(11205050, 1)
                                        if IsAttackedBySomeone() == 1:
                                            Goto('L0')
                                        elif HasTalkEnded() == 1:
                                            """ State 31 """
                                            Label('L14')
                                            SetEventState(71200037, 1)
                                            SetEventState(71200039, 1)
                                            Goto('L8')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5):
                                            Goto('L2')
                                        elif HasTalkEnded() == 1:
                                            """ State 39 """
                                            Label('L15')
                                            ClearTalkDisabledState()
                                            DebugEvent('会話タイマークリア　選択肢')
                                            continue
                                    elif (not GetGenericDialogButtonResult() and not IsGenericDialogOpen()
                                          and GetEventStatus(11200592) == 1):
                                        Goto('L13')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        """ State 47 """
                                        Label('L16')
                                        # talk:48000210:And here, taketh this ring.
                                        TalkToPlayer(48000210, -1, -1)
                                        DebugEvent('誓約したあと')
                                        SetEventState(11205050, 1)
                                        if IsAttackedBySomeone() == 1:
                                            Goto('L0')
                                        elif HasTalkEnded() == 1:
                                            """ State 50 """
                                            SetEventState(11200592, 1)
                                            if GetDistanceToPlayer() >= 5:
                                                continue
                                            elif not IsMenuOpen(63):
                                                """ State 54 """
                                                Label('L17')
                                                # talk:48000220:If thou weareth that ring, it allows for thine summoning.
                                                TalkToPlayer(48000220, -1, -1)
                                                SetEventState(11205050, 1)
                                                if IsAttackedBySomeone() == 1:
                                                    Goto('L0')
                                                elif HasTalkEnded() == 1:
                                                    Goto('L14')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 5):
                                                    Goto('L2')
                                        elif HasTalkEnded() == 1:
                                            Goto('L15')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 120 or GetDistanceToPlayer() > 5 or IsPlayerDead() ==
                                              1):
                                            Goto('L2')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        Goto('L16')
                        """ State 46 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71200037) and not GetEventStatus(71200039)
              and not GetEventStatus(71200047) and GetEventStatus(705) == 1 and ComparePlayerStatus(11,
              0, 7) == 1 and not GetEventStatus(71200035)):
            """ State 60 """
            # talk:48000320:Ah, thou dost cometh. How fares ye?
            TalkToPlayer(48000320, -1, -1)
            DebugEvent('Yes-Yesあと1')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 61 """
                SetEventState(71200037, 1)
                SetEventState(71200039, 1)
                SetEventState(71200047, 1)
                SetEventState(71200035, 1)
                SetEventState(11206101, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200047) == 1 and ComparePlayerStatus(11,
              5, 7) == 1):
            """ State 56 """
            # talk:48000103:What dost thou say? Wilt thou not join us?
            TalkToPlayer(48000103, -1, -1)
            DebugEvent('Yesあと')
            DisplayOneLineHelp(-1)
            SetEventState(11205050, 1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                Goto('L4')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(11200592) == 1 and not GetEventStatus(71200037)):
            Goto('L17')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200047) == 1 and not GetEventStatus(11200592)):
            Goto('L16')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200040) == 1 and not GetEventStatus(71200037)):
            """ State 35 """
            # talk:48000600:Oh, thou art here.
            TalkToPlayer(48000600, -1, -1)
            DebugEvent('Yes-Noあと')
            DisplayOneLineHelp(-1)
            SetEventState(11205050, 1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                Goto('L4')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71200048) and not GetEventStatus(71200047)
              and GetEventStatus(71200039) == 1):
            Goto('L9')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200036) == 1 and not GetEventStatus(71200039)):
            """ State 23 """
            # talk:48000100:Well indeed, thou art a strange one! Nevertheless, I feel some\nliking for thee.
            TalkToPlayer(48000100, -1, -1)
            DebugEvent('Yesあと')
            DisplayOneLineHelp(-1)
            SetEventState(11205050, 1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                Goto('L4')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200037) == 1 and GetEventStatus(11200593)
              == 1 and not GetEventStatus(11200594) and ComparePlayerStatus(14, 4, 3) == 1):
            """ State 33 """
            # talk:48000400:Oh, thou art present!
            TalkToPlayer(48000400, -1, -1)
            DebugEvent('Yes-Yesあと2')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 38 """
                SetEventState(71200045, 1)
                SetEventState(11206101, 1)
                SetEventState(11200594, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200037) == 1 and not GetEventStatus(71200038)
              and not GetEventStatus(11200593) and ComparePlayerStatus(14, 4, 1) == 1):
            """ State 32 """
            # talk:48000300:Ah, thou dost cometh. How fares ye?
            TalkToPlayer(48000300, -1, -1)
            DebugEvent('Yes-Yesあと1')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 34 """
                SetEventState(71200038, 1)
                SetEventState(11200593, 1)
                SetEventState(11400582, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11206101) and not GetEventStatus(71200046)
              and ComparePlayerStatus(14, 4, 4) == 1):
            """ State 51 """
            # talk:48001000:Perchance...
            TalkToPlayer(48001000, -1, -1)
            DebugEvent('Yes-Yesあと2')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 52 """
                SetEventState(71200046, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200037) == 1):
            """ State 53 """
            # talk:48000320:Ah, thou dost cometh. How fares ye?
            TalkToPlayer(48000320, -1, -1)
            DebugEvent('Yes-Yesあと1')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71200035) == 1 and GetEventStatus(71200042)
              == 1):
            """ State 20 """
            # talk:48000702:Be gone from here. Pernicious caitiff.
            TalkToPlayer(48000702, -1, -1)
            DebugEvent('Noあと')
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 3.5 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71200035)):
            """ State 5 """
            # talk:48000000:Is it not so that thou art new.
            TalkToPlayer(48000000, -1, -1)
            DebugEvent('初対面')
            DisplayOneLineHelp(-1)
            SetEventState(11205050, 1)
            if IsAttackedBySomeone() == 1:
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 6 """
                # action:10020040:What is your decision?
                OpenGenericDialog(8, 10020040, 3, 4, 1)
                if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                    Goto('L5')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    """ State 2 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    SetEventState(11205050, 0)
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 4 """
                    Label('L18')
                    DebugEvent('勧誘を受けない')
                    SetEventState(11205050, 0)
                    """ State 22 """
                    SetEventState(71200042, 1)
                    SetEventState(71200035, 1)
                    """ State 9 """
                    # talk:48000700:Hmm, I see. A result most heathenish and gross.
                    TalkToPlayer(48000700, -1, -1)
                    DebugEvent('No')
                    if IsAttackedBySomeone() == 1:
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 1 """
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　選択肢')
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    Goto('L18')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 3 """
                    DebugEvent('勧誘を受ける')
                    """ State 21 """
                    SetEventState(71200036, 1)
                    SetEventState(71200035, 1)
                    """ State 8 """
                    # talk:48000100:Well indeed, thou art a strange one! Nevertheless, I feel some\nliking for thee.
                    TalkToPlayer(48000100, -1, -1)
                    DebugEvent('Yes')
                    if IsAttackedBySomeone() == 1:
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L2')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                Goto('L2')
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 3.5)):
            """ State 11 """
            DisplayOneLineHelp(-1)
            continue
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 3.5 and not GetEventStatus(1711) and not GetEventStatus(11200596)):
            """ State 10 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1711):
            """ State 19 """
            DisplayOneLineHelp(-1)
            Goto('L0')
        """ State 12 """
        ClearTalkDisabledState()
        RemoveMyAggro()

