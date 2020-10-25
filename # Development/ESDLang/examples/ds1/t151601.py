# -*- coding: utf-8 -*-
def t151601_1():
    """ State 0,47 """
    SetEventState(71510090, 0)
    SetEventState(71510091, 0)
    """ State 9 """
    Label('L0')
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1034) and GetDistanceToPlayer() <= 5:
            break
        elif (GetEventStatus(1033) == 1 and IsPlayerDead() == 1 and GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed()
              == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath() and not IsCharacterDisabled()
              and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf() <= 180 and GetDistanceToPlayer()
              <= 5):
            """ State 44 """
            if (not GetEventStatus(71510091) and (not GetEventStatus(1230) or GetEventStatus(1241) ==
                1 or GetEventStatus(1242) == 1)):
                """ State 43 """
                # talk:11001000:What you saw under light of the Darkmoon shall haunt you forever.
                TalkToPlayer(11001000, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71510091, 1)
                assert HasTalkEnded() == 1
                continue
            elif not GetEventStatus(1232) and not GetEventStatus(71510090):
                """ State 26 """
                # talk:11000800:Tis a pity...To think I saw potential in you...
                TalkToPlayer(11000800, -1, -1)
                DisplayOneLineHelp(-1)
                SetEventState(71510090, 1)
                assert HasTalkEnded() == 1
                continue
        elif (not GetEventStatus(71510087) and (not GetEventStatus(1230) or GetEventStatus(1241) == 1
              or GetEventStatus(1242) == 1) and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10 and GetDistanceToPlayer() <= 10):
            """ State 38 """
            # talk:11000900:So...It was you, was it?
            TalkToPlayer(11000900, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(11510591, 1)
            SetEventState(71510087, 1)
            ForceCloseMenu()
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 8 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    break
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71510079)
                      and GetSelfHP() <= 90 and not GetEventStatus(11510591)):
                    """ State 2 """
                    # talk:11000600:Very well. So be it.
                    TalkToPlayer(11000600, -1, -1)
                    SetEventState(71510079, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 25 """
                        Label('L2')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        break
                    elif HasTalkEnded() == 1:
                        """ State 1 """
                        SetEventState(71510079, 1)
                        """ State 3 """
                        Label('L3')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1033) == 1:
                    """ State 4 """
                    Label('L4')
                    ForceEndTalk(3)
                    Goto('L3')
                elif (not GetEventStatus(71510078) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510077) == 1):
                    """ State 34 """
                    # talk:11000530:Rrgh!
                    TalkToPlayer(11000530, -1, -1)
                    SetEventState(71510078, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 33 """
                        SetEventState(71510078, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71510077) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510076) == 1):
                    """ State 32 """
                    # talk:11000520:Hrk!
                    TalkToPlayer(11000520, -1, -1)
                    SetEventState(71510077, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 31 """
                        SetEventState(71510077, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71510076) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510075) == 1):
                    """ State 30 """
                    # talk:11000510:How dare you!
                    TalkToPlayer(11000510, -1, -1)
                    SetEventState(71510076, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 29 """
                        SetEventState(71510076, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif (not GetEventStatus(71510075) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 6 """
                    # talk:11000500:What!
                    TalkToPlayer(11000500, -1, -1)
                    SetEventState(71510075, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 5 """
                        SetEventState(71510075, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71510078) == 1:
                    Goto('L4')
                else:
                    Goto('L4')
            elif HasTalkEnded() == 1:
                """ State 39 """
                SetEventState(71510087, 1)
                SetEventState(11510591, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 15):
                pass
        elif (GetEventStatus(71510080) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and ComparePlayerStatus(11,
              0, 8) == 1 and not GetEventStatus(71510088)):
            """ State 37 """
            # talk:11001200:Oh...You are one of us.
            TalkToPlayer(11001200, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 40 """
                SetEventState(71510088, 1)
                SetEventState(11516100, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71510089) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1031)
              == 1):
            """ State 41 """
            # talk:11001100:Will you be departing soon,
            TalkToPlayer(11001100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 42 """
                SetEventState(71510089, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71510082) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1036)
              == 1 and GetEventStatus(11516100) == 1 and GetEventStatus(71510080) == 1):
            """ State 61 """
            # talk:11000340:Go ahead, you may rest here.
            TalkToPlayer(11000340, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 62 """
                SetEventState(11516100, 1)
                """ State 55 """
                Label('L5')
                ClearTalkActionState()
                if True:
                    """ State 49 """
                    while True:
                        # action:15000230:Reinforce <?gdsparam@200?>
                        AddTalkListData(3, 15000230, 716)
                        # action:15000000:Talk
                        AddTalkListData(1, 15000000, -1)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        ShowShopMessage(0, 0, 0)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 54 """
                            Label('L6')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Break('mainloop')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 51 """
                                if GetDistanceToPlayer() >= 25:
                                    pass
                                else:
                                    """ State 57 """
                                    Continue('mainloop')
                                """ State 50 """
                                Label('L7')
                                ForceEndTalk(0)
                                Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L7')
                        elif not GetTalkListEntryResult():
                            break
                        elif GetTalkListEntryResult() == 1:
                            """ State 48 """
                            if not GetEventStatus(71510085) and GetEventStatus(1036) == 1:
                                """ State 7 """
                                # talk:11001300:Have you heard of Seath the Scaleless?
                                TalkToPlayer(11001300, -1, -1)
                                DisplayOneLineHelp(-1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 28 """
                                    SetEventState(71510085, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L15')
                            elif GetEventStatus(71510084) == 1 and not GetEventStatus(71510086):
                                """ State 27 """
                                # talk:11001400:The bonfires attended by the Keepers are special.
                                TalkToPlayer(11001400, -1, -1)
                                DisplayOneLineHelp(-1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 46 """
                                    SetEventState(71510086, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L15')
                            elif not GetEventStatus(71510084):
                                """ State 23 """
                                # talk:11000400:Hm, what is it?
                                TalkToPlayer(11000400, -1, -1)
                                DisplayOneLineHelp(-1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    """ State 24 """
                                    SetEventState(71510084, 1)
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L15')
                            else:
                                """ State 65 """
                                # talk:11000120:If you require rest, now is the time.
                                TalkToPlayer(11000120, -1, -1)
                                DisplayOneLineHelp(-1)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    Goto('L1')
                                elif HasTalkEnded() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    Goto('L15')
                        elif GetTalkListEntryResult() == 4:
                            break
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 15):
                            Goto('L6')
                        elif GetTalkListEntryResult() == 3:
                            """ State 74 """
                            # goods:215:Estus Flask+7, goods:214:Estus Flask+7
                            if IsEquipmentIDObtained(3, 215) == 1 or IsEquipmentIDObtained(3, 214) == 1:
                                """ State 187 """
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
                                    """ State 189 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 188 """
                                    Label('L8')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L13')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L8')
                            # goods:390:Fire Keeper Soul, goods:391:Fire Keeper Soul, goods:392:Fire Keeper Soul, goods:393:Fire Keeper Soul, goods:394:Fire Keeper Soul, goods:395:Fire Keeper Soul, goods:396:Fire Keeper Soul
                            elif (not IsEquipmentIDObtained(3, 390) and not IsEquipmentIDObtained(3,
                                  391) and not IsEquipmentIDObtained(3, 392) and not IsEquipmentIDObtained(3,
                                  393) and not IsEquipmentIDObtained(3, 394) and not IsEquipmentIDObtained(3,
                                  395) and not IsEquipmentIDObtained(3, 396)):
                                """ State 71 """
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
                                    """ State 73 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 72 """
                                    Label('L9')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L13')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L9')
                            # goods:390:Fire Keeper Soul, goods:391:Fire Keeper Soul, goods:392:Fire Keeper Soul, goods:393:Fire Keeper Soul, goods:394:Fire Keeper Soul, goods:395:Fire Keeper Soul, goods:396:Fire Keeper Soul
                            elif (IsEquipmentIDObtained(3, 390) == 1 or IsEquipmentIDObtained(3, 391)
                                  == 1 or IsEquipmentIDObtained(3, 392) == 1 or IsEquipmentIDObtained(3,
                                  393) == 1 or IsEquipmentIDObtained(3, 394) == 1 or IsEquipmentIDObtained(3,
                                  395) == 1 or IsEquipmentIDObtained(3, 396) == 1):
                                """ State 70 """
                                # action:10010890:Use Fire Keeper Soul to reinforce Estus Flask?
                                OpenGenericDialog(8, 10010890, 3, 4, 2)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    """ State 67 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 69 """
                                    Label('L10')
                                    DebugEvent('強化しない')
                                    """ State 66 """
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　選択肢')
                                    Continue('mainloop')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L10')
                                # goods:390:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      390) == 1 and not IsGenericDialogOpen()):
                                    """ State 76 """
                                    # goods:390:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 390, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 68 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 77 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 78 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 79 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 80 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 81 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 82 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 83 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 84 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 85 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 86 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 87 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 88 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 89 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 90,190 """
                                    Label('L11')
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
                                        """ State 192 """
                                        ForceCloseGenericDialog()
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        Continue('mainloop')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        """ State 191 """
                                        Label('L12')
                                        ClearTalkDisabledState()
                                        DebugEvent('会話タイマークリア　誓約同じ')
                                        Goto('L13')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        Goto('L12')
                                # goods:391:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      391) == 1 and not IsGenericDialogOpen()):
                                    """ State 92 """
                                    # goods:391:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 391, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 91 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 93 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 94 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 95 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 96 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 97 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 98 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 99 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 100 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 101 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 102 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 103 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 104 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 105 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 106 """
                                    Goto('L11')
                                # goods:392:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      392) == 1 and not IsGenericDialogOpen()):
                                    """ State 108 """
                                    # goods:392:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 392, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 107 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 109 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 110 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 111 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 112 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 113 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 114 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 115 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 116 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 117 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 118 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 119 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 120 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 121 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 122 """
                                    Goto('L11')
                                # goods:393:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      393) == 1 and not IsGenericDialogOpen()):
                                    """ State 124 """
                                    # goods:393:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 393, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 123 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 125 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 126 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 127 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 128 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 129 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 130 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 131 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 132 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 133 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 134 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 135 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 136 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 137 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 138 """
                                    Goto('L11')
                                # goods:394:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      394) == 1 and not IsGenericDialogOpen()):
                                    """ State 140 """
                                    # goods:394:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 394, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 139 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 141 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 142 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 143 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 144 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 145 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 146 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 147 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 148 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 149 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 150 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 151 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 152 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 153 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 154 """
                                    Goto('L11')
                                # goods:395:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      395) == 1 and not IsGenericDialogOpen()):
                                    """ State 156 """
                                    # goods:395:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 395, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 155 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 157 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 158 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 159 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 160 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 161 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 162 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 163 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 164 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 165 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 166 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 167 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 168 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 169 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 170 """
                                    Goto('L11')
                                # goods:396:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      396) == 1 and not IsGenericDialogOpen()):
                                    """ State 172 """
                                    # goods:396:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 396, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 171 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 173 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 174 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 175 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 176 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 177 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 178 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 179 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 180 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 181 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 182 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 183 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 184 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 185 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 186 """
                                    Goto('L11')
                            """ State 75 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Break('mainloop')
                            else:
                                Continue('mainloop')
                        """ State 52 """
                        Label('L13')
                        if True:
                            pass
                        elif GetDistanceToPlayer() >= 15:
                            Continue('mainloop')
                    """ State 56 """
                    continue
                elif GetDistanceToPlayer() >= 15:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71510082) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1036)
              == 1 and not GetEventStatus(11516100) and GetEventStatus(71510080) == 1 and GetEventStatus(71510083)
              == 1):
            """ State 63 """
            # talk:11000320:Hmm. You have made it back. You were gone so long.
            TalkToPlayer(11000320, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 64 """
                SetEventState(71510083, 0)
                SetEventState(11516100, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71510082) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1036)
              == 1 and not GetEventStatus(11516100) and GetEventStatus(71510080) == 1 and not GetEventStatus(71510083)):
            """ State 21 """
            # talk:11000300:Hmm. You have made it back. Very well.
            TalkToPlayer(11000300, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 22 """
                SetEventState(71510083, 1)
                SetEventState(11516100, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71510082) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1036)
              == 1 and GetEventStatus(71510080) == 1):
            """ State 19 """
            # talk:11000200:Hmm. So, you have received a revelation?
            TalkToPlayer(11000200, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 20 """
                SetEventState(71510082, 1)
                SetEventState(11516100, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71510080) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(11516100)
              == 1 and GetEventStatus(71510092) == 1):
            """ State 60 """
            # talk:11000120:If you require rest, now is the time.
            TalkToPlayer(11000120, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 45 """
                Label('L14')
                SetEventState(71510081, 1)
                SetEventState(11516100, 1)
                if True:
                    Goto('L5')
                else:
                    Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(71510080) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11516100)
              and GetEventStatus(71510092) == 1):
            """ State 18 """
            # talk:11000100:Hmm. You have survived. Impressive.
            TalkToPlayer(11000100, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                Goto('L14')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71510080) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71510092)
              and not GetEventStatus(1030)):
            """ State 58 """
            # talk:11000020:Welcome to the lost city of Anor Londo, chosen Undead.
            TalkToPlayer(11000020, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 59 """
                SetEventState(71510092, 1)
                SetEventState(11516100, 1)
                SetEventState(71510080, 1)
                SetEventState(71510082, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71510080) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71510092)
              and not GetEventStatus(1036)):
            """ State 15 """
            # talk:11000000:Well, you are a rare visitor.
            TalkToPlayer(11000000, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 16 """
                SetEventState(71510080, 1)
                SetEventState(11516100, 1)
                SetEventState(71510092, 1)
                Goto('L5')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1033) and not GetEventStatus(1034)):
            """ State 10 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 11 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1034):
            """ State 14 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 12 """
        Label('L15')
        ClearTalkProgressData()
        """ State 13 """
        ForceEndTalk(0)
    """ State 35 """
    if ComparePlayerStatus(12, 0, 1) == 1:
        """ State 17 """
        # talk:11000700:...But, how...
        TalkToPlayer(11000700, -1, -1)
        DisplayOneLineHelp(-1)
        ForceCloseMenu()
        if HasTalkEnded() == 1:
            Goto('L0')
        elif GetDistanceToPlayer() >= 5:
            Goto('L15')
    elif ComparePlayerStatus(12, 0, 0) == 1:
        """ State 36 """
        # talk:11000750:...But, how...
        TalkToPlayer(11000750, -1, -1)
        DisplayOneLineHelp(-1)
        ForceCloseMenu()
        if HasTalkEnded() == 1:
            Goto('L0')
        elif GetDistanceToPlayer() >= 5:
            Goto('L15')

