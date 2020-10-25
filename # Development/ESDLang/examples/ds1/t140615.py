# -*- coding: utf-8 -*-
def t140615_1():
    """ State 0,25 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if (CheckSelfDeath() == 1 and not GetEventStatus(1272) and IsEquipmentIDEquipped(2, 137) == 1
            and GetDistanceToPlayer() <= 8):
            break
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and not IsEquipmentIDEquipped(2, 137)):
            """ State 213 """
            # talk:25001900:...?
            TalkToPlayer(25001900, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71400012, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 24 """
                Label('L1')
                ClearTalkProgressData()
                ForceEndTalk(3)
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and IsEquipmentIDEquipped(2, 137) == 1 and GetDistanceToPlayer() <= 8:
                    """ State 73 """
                    Label('L2')
                    # talk:25001200:Quelaag...
                    TalkToPlayer(25001200, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 8:
                        pass
                elif GetEventStatus(1271) == 1:
                    """ State 18 """
                    Label('L3')
                    ForceEndTalk(3)
                    """ State 17 """
                    Label('L4')
                    ClearTalkDisabledState()
                    RemoveMyAggro()
                    continue
                elif (not GetEventStatus(71400010) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 8 and GetEventStatus(71400009) == 1 and IsEquipmentIDEquipped(2, 137) == 1):
                    """ State 57 """
                    # talk:25001040:Eek!
                    TalkToPlayer(25001040, -1, -1)
                    SetEventState(71400010, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 74 """
                        Label('L5')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        if (CheckSelfDeath() == 1 and IsEquipmentIDEquipped(2, 137) == 1 and GetDistanceToPlayer()
                            <= 8):
                            break
                        else:
                            continue
                    elif HasTalkEnded() == 1:
                        """ State 56 """
                        SetEventState(71400010, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 8):
                        pass
                elif (not GetEventStatus(71400009) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 8 and GetEventStatus(71400008) == 1 and IsEquipmentIDEquipped(2, 137) == 1):
                    """ State 55 """
                    # talk:25001020:Ahh!
                    TalkToPlayer(25001020, -1, -1)
                    SetEventState(71400009, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 16 """
                        SetEventState(71400009, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 8):
                        pass
                elif (not GetEventStatus(71400008) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 8 and IsEquipmentIDEquipped(2, 137) == 1):
                    """ State 20 """
                    # talk:25001000:Ah...
                    TalkToPlayer(25001000, -1, -1)
                    SetEventState(71400008, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L5')
                    elif HasTalkEnded() == 1:
                        """ State 19 """
                        SetEventState(71400008, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 8):
                        pass
                elif GetEventStatus(71400010) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
            elif HasTalkEnded() == 1:
                """ State 32 """
                Label('L6')
                ClearTalkActionState()
                if True:
                    """ State 13 """
                    while True:
                        # action:15000265:Offer Humanity
                        AddTalkListData(2, 15000265, 859)
                        # action:15000230:Reinforce <?gdsparam@200?>
                        AddTalkListData(4, 15000230, 716)
                        # action:15000200:Enter Covenant
                        AddTalkListData(3, 15000200, -1)
                        # action:15000000:Talk
                        AddTalkListData(7, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(8, 15000005, -1)
                        ShowShopMessage(0, 0, 0)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 29 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if (CheckSelfDeath() == 1 and IsEquipmentIDEquipped(2, 137) == 1 and GetDistanceToPlayer()
                                <= 8):
                                Goto('L2')
                            elif (IsPlayerMovingACertainDistance(1) == 1 and IsEquipmentIDEquipped(2,
                                  137) == 1):
                                """ State 15 """
                                Label('L8')
                                # talk:25000500:Why, Quelaag!
                                TalkToPlayer(25000500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif GetDistanceToPlayer() >= 15:
                                    pass
                                elif HasTalkEnded() == 1:
                                    """ State 38 """
                                    SetEventState(11405020, 1)
                                    Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                pass
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 7:
                            """ State 40 """
                            if not IsEquipmentIDEquipped(2, 137):
                                """ State 214 """
                                # talk:25001900:...?
                                TalkToPlayer(25001900, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 23 """
                                    Label('L9')
                                    if True:
                                        continue
                                    elif GetDistanceToPlayer() >= 8:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
                                    Goto('L27')
                            elif not GetEventStatus(11406101) and GetEventStatus(71400004) == 1:
                                """ State 52 """
                                # talk:25001600:Quelaag?
                                TalkToPlayer(25001600, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 53 """
                                    SetEventState(71400005, 1)
                                    SetEventState(11406101, 1)
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
                                    Goto('L27')
                            elif not GetEventStatus(11406101) and GetEventStatus(71400003) == 1:
                                """ State 50 """
                                # talk:25001400:Quelaag, my dear sister...
                                TalkToPlayer(25001400, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 51 """
                                    SetEventState(71400004, 1)
                                    SetEventState(11406101, 1)
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
                                    Goto('L27')
                            elif not GetEventStatus(11406101) and not GetEventStatus(71400003):
                                """ State 22 """
                                # talk:25001300:Quelaag, my dear sister...
                                TalkToPlayer(25001300, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 49 """
                                    SetEventState(71400003, 1)
                                    SetEventState(11406101, 1)
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
                                    Goto('L27')
                            elif GetEventStatus(11406101) == 1:
                                """ State 54 """
                                # talk:25001500:I'll be fine, I have you, dear sister.
                                TalkToPlayer(25001500, -1, -1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    Goto('L9')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
                                    Goto('L27')
                        elif GetTalkListEntryResult() == 8:
                            break
                        elif GetTalkListEntryResult() == 3:
                            """ State 44 """
                            if ComparePlayerStatus(11, 0, 9) == 1:
                                """ State 7 """
                                # action:10010726:Already belong to this Covenant
                                OpenGenericDialog(7, 10010726, 1, 0, 2)
                                DebugEvent('誓約が同じ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    """ State 75 """
                                    Label('L10')
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    if (CheckSelfDeath() == 1 and IsEquipmentIDEquipped(2, 137) == 1
                                        and GetDistanceToPlayer() <= 8):
                                        Goto('L2')
                                    else:
                                        Continue('mainloop')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 9 """
                                    Label('L11')
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    pass
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    pass
                            elif IsEquipmentIDEquipped(2, 137) == 1:
                                """ State 5 """
                                # talk:25000700:Enter a Covenant? Again?
                                TalkToPlayer(25000700, -1, -1)
                                DebugEvent('誓約結ぶ前会話')
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 6 """
                                    Label('L12')
                                    # action:10010745:Join Covenant? (abandons former Covenant)
                                    OpenGenericDialog(8, 10010745, 3, 4, 2)
                                    ChangePlayerStats(31, 5, 9)
                                    RequestUnlockTrophy(15)
                                    if CheckSelfDeath() == 1 or IsAttackedBySomeone() == 1:
                                        Goto('L10')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 8):
                                        """ State 2 """
                                        Label('L13')
                                        ForceCloseGenericDialog()
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        if IsEquipmentIDEquipped(2, 137) == 1:
                                            Goto('L8')
                                        else:
                                            Continue('mainloop')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        """ State 4 """
                                        Label('L14')
                                        DebugEvent('誓約を変更しない')
                                        """ State 1 """
                                        ClearTalkDisabledState()
                                        DebugEvent('会話タイマークリア　選択肢')
                                        Goto('L9')
                                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                        Goto('L14')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        """ State 3 """
                                        ForceCloseMenu()
                                        SetTalkTime(2.5)
                                        BreakCovenantPledge()
                                        DebugEvent('誓約を変更する')
                                        ChangePlayerStats(11, 5, 9)
                                        SetEventState(849, 1)
                                        if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                            or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                            > 120 or GetDistanceToPlayer() > 8 or IsAttackedBySomeone()
                                            == 1):
                                            Goto('L11')
                                        elif not GetEventStatus(11400596) and not GetEventStatus(849):
                                            """ State 76 """
                                            SetEventState(11400596, 1)
                                            if GetDistanceToPlayer() >= 12:
                                                Continue('mainloop')
                                            elif not IsMenuOpen(63):
                                                """ State 207 """
                                                Label('L15')
                                                # action:10010729:Covenant established
                                                OpenGenericDialog(7, 10010729, 1, 0, 2)
                                                DebugEvent('誓約を交わした')
                                                DisplayOneLineHelp(-1)
                                                if CheckSelfDeath() == 1:
                                                    Goto('L10')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 8 or IsAttackedBySomeone()
                                                      == 1):
                                                    Goto('L11')
                                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                    pass
                                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                    pass
                                        elif not GetEventStatus(849):
                                            Goto('L15')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
                                    Goto('L27')
                            else:
                                """ State 215 """
                                # talk:25001900:...?
                                TalkToPlayer(25001900, -1, -1)
                                DebugEvent('誓約結ぶ前会話')
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    Goto('L12')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 8):
                                    Goto('L27')
                            """ State 8 """
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　誓約同じ')
                            Goto('L9')
                        elif GetTalkListEntryResult() == 2:
                            """ State 58 """
                            if GetStatus(10) <= 1:
                                """ State 65 """
                                # action:10010785:No humanity
                                OpenGenericDialog(7, 10010785, 1, 0, 2)
                                DebugEvent('人間性がない　リストから')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    Goto('L10')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 180 or GetDistanceToPlayer() > 8 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 66 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    """ State 67 """
                                    Label('L16')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア')
                                    ClearTalkActionState()
                                    ForceCloseGenericDialog()
                                    Goto('L9')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    Goto('L16')
                            else:
                                """ State 59 """
                                # action:10020205:Offer humanity?
                                OpenGenericDialog(8, 10020205, 3, 4, 2)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L10')
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 180 or GetDistanceToPlayer() > 8):
                                    Goto('L13')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 63 """
                                    Label('L17')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　リストへ')
                                    ClearTalkActionState()
                                    ForceCloseGenericDialog()
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    """ State 61 """
                                    DebugEvent('DECIDE_NUMBER')
                                    # action:10020205:Offer humanity?
                                    OpenGenericDialog(3, 10020205, 3, 4, 2)
                                    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                        Goto('L10')
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 180 or GetDistanceToPlayer() > 8):
                                        Goto('L13')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        Goto('L17')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        """ State 62 """
                                        ForceCloseMenu()
                                        SetTalkTime(2.5)
                                        DebugEvent('人間性を捧げた')
                                        ChangePlayerStats(10, 1, 1)
                                        ChangePlayerStats(15, 0, 1)
                                        AddIzalithRankingPoints()
                                        SetEventState(849, 1)
                                        if (DoesSelfHaveSpEffect(23, 30) == 1 and not GetEventStatus(11400598)
                                            and not GetEventStatus(849)):
                                            """ State 78 """
                                            SetEventState(11400598, 1)
                                            if GetDistanceToPlayer() >= 12:
                                                Continue('mainloop')
                                            elif not IsMenuOpen(63):
                                                """ State 216 """
                                                Label('L18')
                                                if IsEquipmentIDEquipped(2, 137) == 1:
                                                    """ State 70 """
                                                    DebugEvent('人間性を捧げた会話')
                                                    # talk:25001700:...Ooh!
                                                    TalkToPlayer(25001700, -1, -1)
                                                    if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                        == 1):
                                                        Goto('L1')
                                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                          or IsCharacterDisabled() or IsClientPlayer()
                                                          == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                          > 120 or GetDistanceToPlayer() > 8):
                                                        Goto('L27')
                                                    elif HasTalkEnded() == 1:
                                                        pass
                                                else:
                                                    pass
                                                """ State 209 """
                                                # action:10010797:Covenant allegiance deepened. Rank gained.
                                                OpenGenericDialog(7, 10010797, 1, 0, 2)
                                                DebugEvent('ランクアップ')
                                                DisplayOneLineHelp(-1)
                                                if CheckSelfDeath() == 1:
                                                    Goto('L10')
                                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or
                                                      IsCharacterDisabled() or IsClientPlayer() == 1
                                                      or GetRelativeAngleBetweenPlayerAndSelf() > 120
                                                      or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                      == 1):
                                                    Goto('L11')
                                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                    """ State 210 """
                                                    Label('L19')
                                                    if (DoesSelfHaveSpEffect(23, 100) == 1 and not GetEventStatus(71400011)
                                                        and IsEquipmentIDEquipped(2, 137) == 1 and not
                                                        GetEventStatus(849)):
                                                        """ State 211 """
                                                        Label('L20')
                                                        DebugEvent('人間性を捧げた最後')
                                                        # talk:25001800:Ahh...
                                                        TalkToPlayer(25001800, -1, -1)
                                                        if (IsAttackedBySomeone() == 1 or CheckSelfDeath()
                                                            == 1):
                                                            Goto('L1')
                                                        elif HasTalkEnded() == 1:
                                                            """ State 212 """
                                                            SetEventState(71400011, 1)
                                                            Goto('L9')
                                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath()
                                                              or IsCharacterDisabled() or IsClientPlayer()
                                                              == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                              > 120 or GetDistanceToPlayer() > 8):
                                                            Goto('L27')
                                                    else:
                                                        Goto('L17')
                                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                    Goto('L19')
                                        elif DoesSelfHaveSpEffect(23, 80) == 1 and not GetEventStatus(849):
                                            Goto('L18')
                                        elif (DoesSelfHaveSpEffect(23, 100) == 1 and not GetEventStatus(71400011)
                                              and IsEquipmentIDEquipped(2, 137) == 1 and not GetEventStatus(849)):
                                            Goto('L20')
                                        elif DoesSelfHaveSpEffect(23, 30) == 1 and not GetEventStatus(849):
                                            Goto('L18')
                                        elif DoesSelfHaveSpEffect(23, 10) == 1 and not GetEventStatus(849):
                                            Goto('L18')
                                        elif not GetEventStatus(849):
                                            """ State 208 """
                                            # action:10010796:Covenant allegiance deepened.
                                            OpenGenericDialog(7, 10010796, 1, 0, 2)
                                            DebugEvent('ポイントアップ')
                                            DisplayOneLineHelp(-1)
                                            if CheckSelfDeath() == 1:
                                                Goto('L10')
                                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                                  > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                                  == 1):
                                                Goto('L11')
                                            elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                                Goto('L17')
                                            elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                                Goto('L17')
                                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                              > 180 or GetDistanceToPlayer() > 8):
                                            Goto('L13')
                                    elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                        """ State 60 """
                                        Label('L21')
                                        DebugEvent('人間性を捧げない')
                                        Goto('L17')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L21')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8):
                            Goto('L7')
                        elif GetTalkListEntryResult() == 4:
                            """ State 87 """
                            # goods:215:Estus Flask+7, goods:214:Estus Flask+7
                            if IsEquipmentIDObtained(3, 215) == 1 or IsEquipmentIDObtained(3, 214) == 1:
                                """ State 200 """
                                # action:10010762:Cannot reinforce further
                                OpenGenericDialog(7, 10010762, 1, 0, 2)
                                DebugEvent('誓約が同じ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 202 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 201 """
                                    Label('L22')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L22')
                            # goods:390:Fire Keeper Soul, goods:391:Fire Keeper Soul, goods:392:Fire Keeper Soul, goods:393:Fire Keeper Soul, goods:394:Fire Keeper Soul, goods:395:Fire Keeper Soul, goods:396:Fire Keeper Soul
                            elif (not IsEquipmentIDObtained(3, 390) and not IsEquipmentIDObtained(3,
                                  391) and not IsEquipmentIDObtained(3, 392) and not IsEquipmentIDObtained(3,
                                  393) and not IsEquipmentIDObtained(3, 394) and not IsEquipmentIDObtained(3,
                                  395) and not IsEquipmentIDObtained(3, 396)):
                                """ State 84 """
                                # action:10010760:Fire Keeper Soul required to reinforce Estus Flask
                                OpenGenericDialog(7, 10010760, 1, 0, 2)
                                DebugEvent('誓約が同じ')
                                DisplayOneLineHelp(-1)
                                if CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone() ==
                                      1):
                                    """ State 86 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 85 """
                                    Label('L23')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L9')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L23')
                            # goods:390:Fire Keeper Soul, goods:391:Fire Keeper Soul, goods:392:Fire Keeper Soul, goods:393:Fire Keeper Soul, goods:394:Fire Keeper Soul, goods:395:Fire Keeper Soul, goods:396:Fire Keeper Soul
                            elif (IsEquipmentIDObtained(3, 390) == 1 or IsEquipmentIDObtained(3, 391)
                                  == 1 or IsEquipmentIDObtained(3, 392) == 1 or IsEquipmentIDObtained(3,
                                  393) == 1 or IsEquipmentIDObtained(3, 394) == 1 or IsEquipmentIDObtained(3,
                                  395) == 1 or IsEquipmentIDObtained(3, 396) == 1):
                                """ State 83 """
                                # action:10010890:Use Fire Keeper Soul to reinforce Estus Flask?
                                OpenGenericDialog(8, 10010890, 3, 4, 2)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    """ State 80 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 82 """
                                    Label('L24')
                                    DebugEvent('強化しない')
                                    """ State 79 """
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　選択肢')
                                    Continue('mainloop')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L24')
                                # goods:390:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      390) == 1 and not IsGenericDialogOpen()):
                                    """ State 89 """
                                    # goods:390:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 390, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 81 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 90 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 91 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 92 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 93 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 94 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 95 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 96 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 97 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 98 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 99 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 100 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 101 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 102 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 103,203 """
                                    Label('L25')
                                    # action:10010891:Estus Flask reinforced
                                    OpenGenericDialog(7, 10010891, 1, 0, 2)
                                    DebugEvent('エスト瓶強化しました')
                                    DisplayOneLineHelp(-1)
                                    if CheckSelfDeath() == 1:
                                        pass
                                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                          or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                          > 120 or GetDistanceToPlayer() > 5 or IsAttackedBySomeone()
                                          == 1):
                                        """ State 205 """
                                        ForceCloseGenericDialog()
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        Continue('mainloop')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        """ State 204 """
                                        Label('L26')
                                        ClearTalkDisabledState()
                                        DebugEvent('会話タイマークリア　誓約同じ')
                                        Goto('L9')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        Goto('L26')
                                # goods:391:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      391) == 1 and not IsGenericDialogOpen()):
                                    """ State 105 """
                                    # goods:391:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 391, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 104 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 106 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 107 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 108 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 109 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 110 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 111 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 112 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 113 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 114 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 115 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 116 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 117 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 118 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 119 """
                                    Goto('L25')
                                # goods:392:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      392) == 1 and not IsGenericDialogOpen()):
                                    """ State 121 """
                                    # goods:392:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 392, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 120 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 122 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 123 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 124 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 125 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 126 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 127 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 128 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 129 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 130 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 131 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 132 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 133 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 134 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 135 """
                                    Goto('L25')
                                # goods:393:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      393) == 1 and not IsGenericDialogOpen()):
                                    """ State 137 """
                                    # goods:393:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 393, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 136 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 138 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 139 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 140 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 141 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 142 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 143 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 144 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 145 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 146 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 147 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 148 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 149 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 150 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 151 """
                                    Goto('L25')
                                # goods:394:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      394) == 1 and not IsGenericDialogOpen()):
                                    """ State 153 """
                                    # goods:394:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 394, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 152 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 154 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 155 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 156 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 157 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 158 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 159 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 160 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 161 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 162 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 163 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 164 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 165 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 166 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 167 """
                                    Goto('L25')
                                # goods:395:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      395) == 1 and not IsGenericDialogOpen()):
                                    """ State 169 """
                                    # goods:395:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 395, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 168 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 170 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 171 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 172 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 173 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 174 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 175 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 176 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 177 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 178 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 179 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 180 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 181 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 182 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 183 """
                                    Goto('L25')
                                # goods:396:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      396) == 1 and not IsGenericDialogOpen()):
                                    """ State 185 """
                                    # goods:396:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 396, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 184 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 186 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 187 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 188 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 189 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 190 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 191 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 192 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 193 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 194 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 195 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 196 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 197 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 198 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 199 """
                                    Goto('L25')
                            """ State 88 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            if (CheckSelfDeath() == 1 and IsEquipmentIDEquipped(2, 137) == 1 and GetDistanceToPlayer()
                                <= 8):
                                Goto('L2')
                            else:
                                Continue('mainloop')
                        """ State 14 """
                        ForceEndTalk(0)
                        Continue('mainloop')
                    """ State 34 """
                    if IsEquipmentIDEquipped(2, 137) == 1 and ComparePlayerStatus(11, 0, 9) == 1:
                        """ State 11 """
                        DebugEvent('買って立ち去る')
                        """ State 37 """
                        # talk:25000400:Good-bye, Quelaag.
                        TalkToPlayer(25000400, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8):
                            pass
                    elif IsEquipmentIDEquipped(2, 137) == 1:
                        """ State 12 """
                        DebugEvent('買わず立ち去る')
                        """ State 10 """
                        # talk:25000300:Good-bye, Quelaag.
                        TalkToPlayer(25000300, -1, -1)
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            Goto('L1')
                        elif HasTalkEnded() == 1:
                            continue
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 8):
                            pass
                    else:
                        continue
                elif GetDistanceToPlayer() >= 8:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 8):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(11405020) == 1 and GetEventStatus(71400000)
              == 1):
            """ State 42 """
            # talk:25000600:Quelaag, what was that?
            TalkToPlayer(25000600, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 41 """
                SetEventState(11405020, 0)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 8):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71400001) == 1 and not GetEventStatus(71400002)):
            """ State 21 """
            # talk:25000150:Oh, my dear sister.
            TalkToPlayer(25000150, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 39 """
                SetEventState(71400002, 1)
                SetEventState(71400001, 0)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 8):
                pass
        elif (not GetEventStatus(71400001) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 5 and GetOneLineHelpStatus() == 1 and GetEventStatus(71400000)
              == 1):
            """ State 35 """
            # talk:25000100:Quelaag, what is it?
            TalkToPlayer(25000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 36 """
                SetEventState(71400001, 1)
                SetEventState(71400002, 0)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 8):
                pass
        elif (not GetEventStatus(71400000) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 5 and GetOneLineHelpStatus() == 1):
            """ State 47 """
            # talk:25000000:Quelaag?
            TalkToPlayer(25000000, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71400012, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 48 """
                SetEventState(71400000, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 8):
                pass
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1272):
            """ State 33 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (not GetOneLineHelpStatus() and not GetEventStatus(1271) and not GetEventStatus(1272) and
              HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and RelativeAngleBetweenTwoPlayers_SpecifyAxis(-20)
              <= 40 and GetDistanceToPlayer() <= 5 and GetRelativeAngleBetweenPlayerAndSelf() <= 40):
            """ State 71 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            ChangeMotionOffsetID(0)
            DebugEvent('向かって右')
            continue
        elif (not GetOneLineHelpStatus() and not GetEventStatus(1271) and not GetEventStatus(1272) and
              HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and RelativeAngleBetweenTwoPlayers_SpecifyAxis(20)
              <= 40 and GetDistanceToPlayer() <= 5 and GetRelativeAngleBetweenPlayerAndSelf() <= 40):
            """ State 26 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            ChangeMotionOffsetID(1)
            DebugEvent('向かって左')
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 80 or GetDistanceToPlayer()
              > 5)):
            """ State 27 """
            DisplayOneLineHelp(-1)
            continue
        """ State 30 """
        Label('L27')
        ClearTalkProgressData()
        """ State 31 """
        ForceEndTalk(0)
    """ State 43 """
    # talk:25001200:Quelaag...
    TalkToPlayer(25001200, -1, -1)
    DisplayOneLineHelp(-1)
    ForceCloseMenu()
    if HasTalkEnded() == 1:
        Goto('L0')
    elif GetDistanceToPlayer() >= 8:
        Goto('L27')

