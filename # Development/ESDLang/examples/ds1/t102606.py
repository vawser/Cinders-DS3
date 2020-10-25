# -*- coding: utf-8 -*-
def t102606_1():
    """ State 0,69 """
    ShuffleRNGSeed(100)
    """ State 21 """
    while Loop('mainloop'):
        DebugEvent('待機')
        SetUpdateDistance(25)
        if CheckSelfDeath() == 1 and not GetEventStatus(1144) and GetDistanceToPlayer() <= 5:
            """ State 34 """
            Label('L0')
            # talk:16000500:Ah...
            TalkToPlayer(16000500, -1, -1)
            DisplayOneLineHelp(-1)
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (GetEventStatus(1142) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71020021)):
            """ State 36 """
            # talk:16000100:...Th, thank you...
            TalkToPlayer(16000100, -1, -1)
            DisplayOneLineHelp(-1)
            DebugEvent('人間性取り戻した')
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 20 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 38 """
                    Label('L2')
                    # talk:16000500:Ah...
                    TalkToPlayer(16000500, -1, -1)
                    DisplayOneLineHelp(-1)
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        pass
                elif (GetEventStatus(71020028) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71020029) and GetSelfHP() <= 90):
                    """ State 13 """
                    # talk:16000450:Mm...
                    TalkToPlayer(16000450, -1, -1)
                    SetEventState(71020029, 1)
                    if CheckSelfDeath() == 1:
                        """ State 39 """
                        Label('L3')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 12 """
                        SetEventState(71020029, 1)
                        """ State 14 """
                        Label('L4')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        pass
                elif GetEventStatus(1143) == 1:
                    """ State 15 """
                    Label('L5')
                    ForceEndTalk(3)
                    Goto('L4')
                elif (not GetEventStatus(71020028) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 17 """
                    # talk:16000400:Mm...
                    TalkToPlayer(16000400, -1, -1)
                    SetEventState(71020028, 1)
                    if CheckSelfDeath() == 1:
                        Goto('L3')
                    elif HasTalkEnded() == 1:
                        """ State 16 """
                        SetEventState(71020028, 1)
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        pass
                elif GetEventStatus(71020028) == 1:
                    Goto('L5')
                else:
                    Goto('L5')
            elif HasTalkEnded() == 1:
                """ State 37 """
                SetEventState(71020021, 1)
                """ State 28 """
                Label('L6')
                ClearTalkActionState()
                DisplayOneLineHelp(-1)
                if True:
                    """ State 9 """
                    while True:
                        # action:15000230:Reinforce <?gdsparam@200?>
                        AddTalkListData(1, 15000230, 716)
                        ShowShopMessage(0, 0, 0)
                        # action:15000000:Talk
                        AddTalkListData(2, 15000000, 1140)
                        # action:15000000:Talk
                        AddTalkListData(3, 15000000, 11020609)
                        # action:15000005:Leave
                        AddTalkListData(4, 15000005, -1)
                        def ExitPause():
                            ClearTalkListData()
                        if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                            """ State 25 """
                            Label('L7')
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            CloseShopMessage()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            elif IsPlayerMovingACertainDistance(1) == 1:
                                """ State 11 """
                                if GetDistanceToPlayer() >= 12:
                                    pass
                                else:
                                    """ State 32 """
                                    SetEventState(71020026, 1)
                                    SetEventState(71020027, 0)
                                    Continue('mainloop')
                                """ State 10 """
                                Label('L8')
                                ForceEndTalk(0)
                                Continue('mainloop')
                            elif not IsPlayerMovingACertainDistance(1):
                                Goto('L8')
                        elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or
                              IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or
                              GetDistanceToPlayer() > 3):
                            Goto('L7')
                        elif not GetTalkListEntryResult():
                            """ State 30 """
                            Label('L9')
                            """ State 189 """
                            ClearTalkDisabledState()
                            DebugEvent('会話タイマークリア　誓約同じ')
                            Continue('mainloop')
                        elif GetTalkListEntryResult() == 3:
                            """ State 33,18 """
                            # talk:16000200:...Forgive me...
                            TalkToPlayer(16000200, -1, -1)
                            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                Goto('L1')
                            elif HasTalkEnded() == 1:
                                """ State 19 """
                                Label('L10')
                                if True:
                                    pass
                                elif GetDistanceToPlayer() >= 3:
                                    Continue('mainloop')
                            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                  or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                  > 120 or GetDistanceToPlayer() > 5):
                                Goto('L22')
                        elif GetTalkListEntryResult() == 4:
                            Goto('L9')
                        elif GetTalkListEntryResult() == 1:
                            """ State 35 """
                            # goods:215:Estus Flask+7, goods:214:Estus Flask+7
                            if IsEquipmentIDObtained(3, 215) == 1 or IsEquipmentIDObtained(3, 214) == 1:
                                """ State 179 """
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
                                    """ State 181 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 180 """
                                    Label('L11')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L10')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L11')
                            # goods:390:Fire Keeper Soul, goods:391:Fire Keeper Soul, goods:392:Fire Keeper Soul, goods:393:Fire Keeper Soul, goods:394:Fire Keeper Soul, goods:395:Fire Keeper Soul, goods:396:Fire Keeper Soul
                            elif (not IsEquipmentIDObtained(3, 390) and not IsEquipmentIDObtained(3,
                                  391) and not IsEquipmentIDObtained(3, 392) and not IsEquipmentIDObtained(3,
                                  393) and not IsEquipmentIDObtained(3, 394) and not IsEquipmentIDObtained(3,
                                  395) and not IsEquipmentIDObtained(3, 396)):
                                """ State 6 """
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
                                    """ State 8 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 7 """
                                    Label('L12')
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　誓約同じ')
                                    Goto('L10')
                                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                    Goto('L12')
                            # goods:390:Fire Keeper Soul, goods:391:Fire Keeper Soul, goods:392:Fire Keeper Soul, goods:393:Fire Keeper Soul, goods:394:Fire Keeper Soul, goods:395:Fire Keeper Soul, goods:396:Fire Keeper Soul
                            elif (IsEquipmentIDObtained(3, 390) == 1 or IsEquipmentIDObtained(3, 391)
                                  == 1 or IsEquipmentIDObtained(3, 392) == 1 or IsEquipmentIDObtained(3,
                                  393) == 1 or IsEquipmentIDObtained(3, 394) == 1 or IsEquipmentIDObtained(3,
                                  395) == 1 or IsEquipmentIDObtained(3, 396) == 1):
                                """ State 5 """
                                # action:10010890:Use Fire Keeper Soul to reinforce Estus Flask?
                                OpenGenericDialog(8, 10010890, 3, 4, 2)
                                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                                    pass
                                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
                                      or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf()
                                      > 120 or GetDistanceToPlayer() > 5):
                                    """ State 2 """
                                    ForceCloseGenericDialog()
                                    ForceEndTalk(0)
                                    ClearTalkProgressData()
                                    Continue('mainloop')
                                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                    """ State 4 """
                                    Label('L13')
                                    DebugEvent('強化しない')
                                    """ State 1 """
                                    ClearTalkDisabledState()
                                    DebugEvent('会話タイマークリア　選択肢')
                                    Goto('L10')
                                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                                    Goto('L13')
                                # goods:390:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      390) == 1 and not IsGenericDialogOpen()):
                                    """ State 67 """
                                    # goods:390:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 390, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 3 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 68 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 70 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 71 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 72 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 73 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 74 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 75 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 76 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 77 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 78 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 79 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 80 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 81 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 82,182 """
                                    Label('L14')
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
                                        """ State 184 """
                                        ForceCloseGenericDialog()
                                        ForceEndTalk(0)
                                        ClearTalkProgressData()
                                        Continue('mainloop')
                                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                                        """ State 183 """
                                        Label('L15')
                                        ClearTalkDisabledState()
                                        DebugEvent('会話タイマークリア　誓約同じ')
                                        Goto('L10')
                                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                                        Goto('L15')
                                # goods:391:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      391) == 1 and not IsGenericDialogOpen()):
                                    """ State 84 """
                                    # goods:391:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 391, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 83 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 85 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 86 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 87 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 88 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 89 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 90 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 91 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 92 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 93 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 94 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 95 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 96 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 97 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 98 """
                                    Goto('L14')
                                # goods:392:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      392) == 1 and not IsGenericDialogOpen()):
                                    """ State 100 """
                                    # goods:392:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 392, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 99 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 101 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 102 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 103 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 104 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 105 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 106 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 107 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 108 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 109 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 110 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 111 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 112 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 113 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 114 """
                                    Goto('L14')
                                # goods:393:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      393) == 1 and not IsGenericDialogOpen()):
                                    """ State 116 """
                                    # goods:393:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 393, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 115 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 117 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 118 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 119 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 120 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 121 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 122 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 123 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 124 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 125 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 126 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 127 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 128 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 129 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 130 """
                                    Goto('L14')
                                # goods:394:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      394) == 1 and not IsGenericDialogOpen()):
                                    """ State 132 """
                                    # goods:394:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 394, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 131 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 133 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 134 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 135 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 136 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 137 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 138 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 139 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 140 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 141 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 142 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 143 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 144 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 145 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 146 """
                                    Goto('L14')
                                # goods:395:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      395) == 1 and not IsGenericDialogOpen()):
                                    """ State 148 """
                                    # goods:395:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 395, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 147 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 149 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 150 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 151 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 152 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 153 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 154 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 155 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 156 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 157 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 158 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 159 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 160 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 161 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 162 """
                                    Goto('L14')
                                # goods:396:Fire Keeper Soul
                                elif (GetGenericDialogButtonResult() == 1 and IsEquipmentIDObtained(3,
                                      396) == 1 and not IsGenericDialogOpen()):
                                    """ State 164 """
                                    # goods:396:Fire Keeper Soul
                                    PlayerEquipmentQuantityChange(3, 396, -1)
                                    # goods:200:Estus Flask
                                    if IsEquipmentIDObtained(3, 200) == 1:
                                        """ State 163 """
                                        DebugEvent('強化する')
                                        # goods:200:Estus Flask, goods:202:Estus Flask+1
                                        ReplaceTool(200, 202, 1)
                                    # goods:201:Estus Flask
                                    elif IsEquipmentIDObtained(3, 201) == 1:
                                        """ State 165 """
                                        DebugEvent('強化する')
                                        # goods:201:Estus Flask, goods:203:Estus Flask+1
                                        ReplaceTool(201, 203, 1)
                                    # goods:202:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 202) == 1:
                                        """ State 166 """
                                        DebugEvent('強化する')
                                        # goods:202:Estus Flask+1, goods:204:Estus Flask+2
                                        ReplaceTool(202, 204, 1)
                                    # goods:203:Estus Flask+1
                                    elif IsEquipmentIDObtained(3, 203) == 1:
                                        """ State 167 """
                                        DebugEvent('強化する')
                                        # goods:203:Estus Flask+1, goods:205:Estus Flask+2
                                        ReplaceTool(203, 205, 1)
                                    # goods:204:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 204) == 1:
                                        """ State 168 """
                                        DebugEvent('強化する')
                                        # goods:204:Estus Flask+2, goods:206:Estus Flask+3
                                        ReplaceTool(204, 206, 1)
                                    # goods:205:Estus Flask+2
                                    elif IsEquipmentIDObtained(3, 205) == 1:
                                        """ State 169 """
                                        DebugEvent('強化する')
                                        # goods:205:Estus Flask+2, goods:207:Estus Flask+3
                                        ReplaceTool(205, 207, 1)
                                    # goods:206:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 206) == 1:
                                        """ State 170 """
                                        DebugEvent('強化する')
                                        # goods:206:Estus Flask+3, goods:208:Estus Flask+4
                                        ReplaceTool(206, 208, 1)
                                    # goods:207:Estus Flask+3
                                    elif IsEquipmentIDObtained(3, 207) == 1:
                                        """ State 171 """
                                        DebugEvent('強化する')
                                        # goods:207:Estus Flask+3, goods:209:Estus Flask+4
                                        ReplaceTool(207, 209, 1)
                                    # goods:208:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 208) == 1:
                                        """ State 172 """
                                        DebugEvent('強化する')
                                        # goods:208:Estus Flask+4, goods:210:Estus Flask+5
                                        ReplaceTool(208, 210, 1)
                                    # goods:209:Estus Flask+4
                                    elif IsEquipmentIDObtained(3, 209) == 1:
                                        """ State 173 """
                                        DebugEvent('強化する')
                                        # goods:209:Estus Flask+4, goods:211:Estus Flask+5
                                        ReplaceTool(209, 211, 1)
                                    # goods:210:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 210) == 1:
                                        """ State 174 """
                                        DebugEvent('強化する')
                                        # goods:210:Estus Flask+5, goods:212:Estus Flask+6
                                        ReplaceTool(210, 212, 1)
                                    # goods:211:Estus Flask+5
                                    elif IsEquipmentIDObtained(3, 211) == 1:
                                        """ State 175 """
                                        DebugEvent('強化する')
                                        # goods:211:Estus Flask+5, goods:213:Estus Flask+6
                                        ReplaceTool(211, 213, 1)
                                    # goods:212:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 212) == 1:
                                        """ State 176 """
                                        DebugEvent('強化する')
                                        # goods:212:Estus Flask+6, goods:214:Estus Flask+7
                                        ReplaceTool(212, 214, 1)
                                    # goods:213:Estus Flask+6
                                    elif IsEquipmentIDObtained(3, 213) == 1:
                                        """ State 177 """
                                        DebugEvent('強化する')
                                        # goods:213:Estus Flask+6, goods:215:Estus Flask+7
                                        ReplaceTool(213, 215, 1)
                                    """ State 178 """
                                    Goto('L14')
                            """ State 40 """
                            ForceCloseGenericDialog()
                            ForceEndTalk(0)
                            ClearTalkProgressData()
                            if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                                Goto('L2')
                            else:
                                Continue('mainloop')
                        elif GetTalkListEntryResult() == 2:
                            break
                    """ State 185 """
                    Label('L16')
                    # action:10010191:No response. She cannot speak.
                    OpenGenericDialog(7, 10010191, 1, 0, 2)
                    DebugEvent('口がきけないようだ')
                    SetEventState(71020020, 1)
                    DisplayOneLineHelp(-1)
                    if CheckSelfDeath() == 1:
                        """ State 66 """
                        Label('L17')
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                            Goto('L2')
                        else:
                            continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5 or IsAttackedBySomeone() == 1):
                        """ State 187 """
                        ForceCloseGenericDialog()
                        ForceEndTalk(0)
                        ClearTalkProgressData()
                        continue
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        """ State 186 """
                        Label('L18')
                        ClearTalkDisabledState()
                        DebugEvent('会話タイマークリア　誓約同じ')
                        Goto('L6')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        Goto('L18')
                elif GetDistanceToPlayer() >= 3:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1145) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71020022)
              and GetEventStatus(1645) == 1):
            """ State 41 """
            # talk:16000300:...Frampt has told me of you...
            TalkToPlayer(16000300, -1, -1)
            DisplayOneLineHelp(-1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 42 """
                SetEventState(71020022, 1)
                Goto('L6')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (GetEventStatus(1145) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(1645)
              and not GetEventStatus(71020023)):
            break
        elif (not GetEventStatus(71020020) and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1140)
              == 1):
            Goto('L16')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1141) and not GetEventStatus(1143)
              and not GetEventStatus(1144) and not GetEventStatus(1146)):
            """ State 22 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 23 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1144):
            """ State 29 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetEventStatus(1146) == 1):
            """ State 57 """
            # action:10010100:Examine
            DisplayOneLineHelp(10010100)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 56 """
            DisplayOneLineHelp(-1)
            continue
        elif (GetEventStatus(1146) == 1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus() == 1):
            """ State 58 """
            DisplayOneLineHelp(-1)
            # goods:390:Fire Keeper Soul
            if not IsEquipmentIDObtained(3, 390):
                """ State 63 """
                # action:10010190:Dead
                OpenGenericDialog(7, 10010190, 1, 0, 2)
                DebugEvent('人間性持ってない')
                if CheckSelfDeath() == 1:
                    Goto('L17')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5 or IsAttackedBySomeone() == 1):
                    """ State 65 """
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 64 """
                    Label('L19')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　誓約同じ')
                    continue
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    Goto('L19')
            # goods:390:Fire Keeper Soul
            elif IsEquipmentIDObtained(3, 390) == 1:
                """ State 62 """
                # action:10020100:Return <?gdsparam@390?>?
                OpenGenericDialog(8, 10020100, 3, 4, 2)
                if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                    Goto('L17')
                elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                      == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() >
                      5):
                    """ State 60 """
                    Label('L20')
                    ForceCloseGenericDialog()
                    ForceEndTalk(0)
                    ClearTalkProgressData()
                    continue
                elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                    """ State 59 """
                    Label('L21')
                    ClearTalkDisabledState()
                    DebugEvent('会話タイマークリア　選択肢')
                    continue
                elif GetGenericDialogButtonResult() == 2 and not IsGenericDialogOpen():
                    """ State 61 """
                    DebugEvent('人間性を戻さない')
                    Goto('L21')
                elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                    """ State 188 """
                    # action:10020101:Returned <?gdsparam@390?> to its owner
                    OpenGenericDialog(7, 10020101, 1, 0, 2)
                    DebugEvent('人間性戻した')
                    SetEventState(11020609, 1)
                    DisplayOneLineHelp(-1)
                    # goods:390:Fire Keeper Soul
                    PlayerEquipmentQuantityChange(3, 390, -1)
                    if CheckSelfDeath() == 1:
                        Goto('L17')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5 or IsAttackedBySomeone() == 1):
                        Goto('L20')
                    elif not GetGenericDialogButtonResult() and not IsGenericDialogOpen():
                        Goto('L21')
                    elif GetGenericDialogButtonResult() == 1 and not IsGenericDialogOpen():
                        Goto('L21')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1):
            Goto('L6')
        """ State 26 """
        Label('L22')
        ClearTalkProgressData()
        """ State 27 """
        ForceEndTalk(0)
    """ State 43 """
    # talk:16000320:...That you have agreed to link the Fire.
    TalkToPlayer(16000320, -1, -1)
    DisplayOneLineHelp(-1)
    DebugEvent('人間性取り戻した')
    if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
        Goto('L1')
    elif HasTalkEnded() == 1:
        """ State 44 """
        SetEventState(71020023, 1)
        Goto('L6')
    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer() ==
          1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
        Goto('L22')

