# -*- coding: utf-8 -*-
def t000001_1():
    """ State 0,1 """
    t000001_x5()

def t000001_x0(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t000001_x1():
    """ State 0,1 """
    if not CheckSpecificPersonTalkHasEnded(0):
        """ State 7 """
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """ State 6 """
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """ State 2 """
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t000001_x2(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    """ State 2 """
    while True:
        assert not IsMenuOpen(63) and GetCurrentStateElapsedTime() > 0.01
        """ State 3 """
        assert GetCurrentStateElapsedTime() > 0.01
        """ State 4 """
        if not IsMenuOpen(63):
            break
        else:
            pass
    """ State 5 """
    return 0

def t000001_x3(z28=_, flag4=6001, flag5=6000):
    """ State 0,1 """
    while True:
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 2 """
        assert CompareBonfireState(1)
        """ State 4 """
        if GetEventStatus(flag5) == 1:
            """ State 5 """
            assert GetEventStatus(flag4) == 1 and not GetEventStatus(flag5)
            """ State 6 """
            assert GetCurrentStateElapsedTime() > 1
        elif GetEventStatus(flag4) == 1 and not GetEventStatus(flag5):
            pass
        """ State 3 """
        if CompareBonfireState(0):
            pass
        elif CheckActionButtonArea(z28) and not f116(10000) == 90:
            break
        elif (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
              IsCharacterDisabled())):
            pass
        elif not GetEventStatus(flag4) or GetEventStatus(flag5) == 1:
            pass
    """ State 7 """
    return 0

def t000001_x4(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t000001_x5():
    """ State 0,1 """
    if CompareBonfireLevel(5, 0) == 1:
        """ State 2 """
        Label('L0')
        """ State 17 """
        Label('L1')
        call = t000001_x3(z28=6101, flag4=6001, flag5=6000)
        if call.Done():
            """ State 13 """
            ClearPlayerDamageInfo()
            SetEventState(8258, 1)
            """ State 12 """
            SetTalkTime(1)
            """ State 7 """
            TurnCharacterToFaceEntity(-1, 10000, -1)
            """ State 8 """
            UpdatePlayerRespawnPoint()
            """ State 15 """
            StartBonfireAnimLoop()
            # goods:2100:Bloodsmoke Ninjutsu, goods:2110:Puppeteer Ninjutsu, goods:2120:Bestowal Ninjutsu
            call = t000001_x6(goods1=2100, goods2=2110, goods3=2120)
            def WhilePaused():
                SetTalkTime(0.1)
                GiveSpEffectToPlayer(30700)
            def ExitPause():
                EndBonfireKindleAnimLoop()
                SetEventState(8258, 0)
            if call.Done():
                pass
            elif (HasPlayerBeenAttacked() == 1 or CompareBonfireState(0) or GetDistanceToPlayer() > 5
                  or f116(10000) == 90):
                """ State 16 """
                Label('L2')
                assert t000001_x7()
        elif CompareBonfireLevel(0, 0) == 1:
            """ State 18 """
            Label('L3')
            call = t000001_x3(z28=6100, flag4=6001, flag5=6000)
            if call.Done():
                """ State 5 """
                ClearPlayerDamageInfo()
                SetEventState(8258, 1)
                """ State 6 """
                def WhilePaused():
                    SetTalkTime(0.1)
                """ State 10 """
                TurnCharacterToFaceEntity(-1, 10000, -1)
                """ State 14 """
                UpdatePlayerRespawnPoint()
                """ State 9,4 """
                OfferHumanity()
                def WhilePaused():
                    SetTalkTime(0.1)
                assert CompareBonfireLevel(5, 0) == 1 and GetCurrentStateElapsedTime() > 2.6
                """ State 19 """
                # goods:2100:Bloodsmoke Ninjutsu, goods:2110:Puppeteer Ninjutsu, goods:2120:Bestowal Ninjutsu
                call = t000001_x6(goods1=2100, goods2=2110, goods3=2120)
                def WhilePaused():
                    SetTalkTime(0.1)
                    GiveSpEffectToPlayer(30700)
                def ExitPause():
                    TurnCharacterToFaceEntity(710330, 10000, -1)
                    SetEventState(8258, 0)
                if call.Done():
                    pass
                elif (HasPlayerBeenAttacked() == 1 or CompareBonfireState(0) or (GetDistanceToPlayer()
                      > 5 and f116(10000) == 90)):
                    Goto('L2')
            elif CompareBonfireLevel(5, 0) == 1:
                Goto('L1')
    else:
        """ State 3 """
        Goto('L3')
    """ State 11 """
    Goto('L0')

def t000001_x6(goods1=2100, goods2=2110, goods3=2120):
    """ State 0,8 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 17 """
    if GetEventStatus(8310) == 1:
        """ State 18 """
        assert GetCurrentStateElapsedTime() > 0.60000000000000009
        """ State 20 """
        TurnCharacterToFaceEntity(710340, 10000, -1)
        assert GetCurrentStateElapsedTime() > 3.5
    else:
        """ State 19,12 """
        c1110()
        """ State 37 """
        assert t000001_x10()
        """ State 41 """
        assert t000001_x14()
        """ State 1 """
        while True:
            ClearTalkListData()
            """ State 2 """
            # action:15000120:Rest
            AddTalkListData(2, 15000120, 6001)
            # action:15000140:Purchase Spirit Emblems
            AddTalkListDataIf(GetEventStatus(6205) == 1 or GetEventStatus(6207) == 1, 4, 15000140, 6001)
            # action:15000150:Travel
            AddTalkListDataIf(GetEventStatus(6215) == 1, 1, 15000150, 6001)
            # action:15000300:Acquire Skills
            AddTalkListDataIf(GetEventStatus(6219) == 1, 8, 15000300, 6001)
            # action:15000170:Enhance Physical Attributes
            AddTalkListDataIf(GetEventStatus(6217) == 1, 6, 15000170, 6001)
            """ State 45 """
            # goods:5200:Memory: Gyoubu Oniwa, goods:5201:Memory: Lady Butterfly, goods:5202:Memory: Genichiro, goods:5203:Memory: Screen Monkeys, goods:5204:Memory: Guardian Ape, goods:5205:Memory: Corrupted Monk, goods:5206:Memory: Great Shinobi, goods:5207:Memory: Foster Father, goods:5208:Memory: True Monk, goods:5209:Memory: Divine Dragon, goods:5210:Memory: Hatred Demon, goods:5211:Memory: Saint Isshin , goods:5212:Memory: Isshin Ashina, goods:5300:Remnant: Gyoubu, goods:5301:Remnant: Lady Butterfly , goods:5302:Remnant: Genichiro, goods:5303:Remnant: Screen Monkeys, goods:5304:Remnant: Guardian Ape, goods:5305:Remnant: Corrupted Monk, goods:5306:Remnant: Great Shinobi, goods:5307:Remnant: Foster Father, goods:5308:Remnant: True Monk, goods:5309:Remnant: Divine Dragon, goods:5310:Remnant: Hatred Demon, goods:5311:Remnant: Saint Isshin, goods:5312:Remnant: Isshin Ashina, goods:5213:Memory: Headless Ape, goods:5313:Remnant: Headless Ape
            call = t000001_x24(goods6=5200, goods7=5201, goods8=5202, goods9=5203, goods10=5204, goods11=5205,
                               goods12=5206, goods13=5207, goods14=5208, goods15=5209, goods16=5210,
                               goods17=5211, goods18=5212, goods19=5300, goods20=5301, goods21=5302,
                               goods22=5303, goods23=5304, goods24=5305, goods25=5306, goods26=5307,
                               goods27=5308, goods28=5309, goods29=5310, goods30=5311, goods31=5312,
                               goods32=5213, goods33=5313)
            if call.Get() == 0:
                """ State 31 """
                # action:15000600:Enhance Attack Power
                AddTalkListData(11, 15000600, -1)
            elif call.Done():
                pass
            """ State 30 """
            # goods:5510:Dancing Dragon Mask, action:15000601:Enhance Attack Power (Skill Points)
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, 5510, 4, 1, 0) == 1, 12, 15000601, -1)
            # goods:2930:Recovery Charm, action:15000250:Dragonrot Restoration
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2930, 4, 1, 0) == 1, 13, 15000250, -1)
            # action:15000190:Start Playthrough #<?nextLoopCount?>
            AddTalkListDataIf((GetEventStatus(11110100) == 1 or GetEventStatus(11120110) == 1) and DoesSelfHaveSpEffect(3100011) == 1,
                              10, 15000190, 6001)
            """ State 4 """
            c1115(1)
            assert not (CheckSpecificPersonMenuIsOpen(21, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 33 """
            if GetTalkListEntryResult() == 1:
                """ State 3,6 """
                StartWarpMenuInit(-1)
                assert GetCurrentStateElapsedFrames() > 1
                """ State 10 """
                if WasWarpMenuDestinationSelected() == 1:
                    break
                elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                    """ State 11 """
                    pass
            elif GetTalkListEntryResult() == 10:
                """ State 29,42 """
                assert t000001_x19() and not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            elif GetTalkListEntryResult() == 8:
                """ State 26,27 """
                c1124()
                assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            elif GetTalkListEntryResult() == 20:
                """ State 23,24 """
                SetEventState(12505781, 1)
                """ State 25 """
                assert GetCurrentStateElapsedTime() > 10
                Goto('L0')
            elif GetTalkListEntryResult() == 6:
                """ State 21,38 """
                # goods:4000:Prayer Bead
                assert t000001_x11(val1=4, goods4=4000, z5=4100)
            elif GetTalkListEntryResult() == 4:
                """ State 13,43 """
                assert t000001_x20() and not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            elif GetTalkListEntryResult() == 2:
                """ State 14 """
                assert GetCurrentStateElapsedFrames() > 1
                """ State 15 """
                TurnCharacterToFaceEntity(710340, 10000, -1)
                GiveSpEffectToPlayer(131)
                assert GetCurrentStateElapsedTime() > 2.85
            elif GetTalkListEntryResult() == 11:
                """ State 32,44 """
                # goods:5200:Memory: Gyoubu Oniwa, goods:5201:Memory: Lady Butterfly, goods:5202:Memory: Genichiro, goods:5203:Memory: Screen Monkeys, goods:5204:Memory: Guardian Ape, goods:5205:Memory: Corrupted Monk, goods:5206:Memory: Great Shinobi, goods:5207:Memory: Foster Father, goods:5208:Memory: True Monk, goods:5209:Memory: Divine Dragon, goods:5210:Memory: Hatred Demon, goods:5211:Memory: Saint Isshin , goods:5212:Memory: Isshin Ashina, goods:5213:Memory: Headless Ape
                assert (t000001_x22(goods34=5200, goods35=5201, goods36=5202, goods37=5203, goods38=5204,
                        goods39=5205, goods40=5206, goods41=5207, goods42=5208, goods43=5209, goods44=5210,
                        goods45=5211, goods46=5212, z9=5300, z10=5301, z11=5302, z12=5303, z13=5304,
                        z14=5305, z15=5306, z16=5307, z17=5308, z18=5309, z19=5310, z20=5311, z21=5312,
                        goods47=5213, z22=5313))
            elif GetTalkListEntryResult() == 12:
                """ State 34,46 """
                assert t000001_x25()
            elif GetTalkListEntryResult() == 13:
                """ State 35,47 """
                assert t000001_x30()
            else:
                """ State 5 """
                Goto('L0')
        """ State 9,7 """
        Quit()
    """ State 48 """
    Label('L0')
    return 0

def t000001_x7():
    """ State 0,1 """
    assert t000001_x1()
    """ State 2 """
    return 0

def t000001_x8(goods48=3000, goods49=4400, z27=30):
    """ State 0,1 """
    # goods:3000:Healing Gourd
    if not f109(0) > GetItemHeldNumLimit(3, goods48):
        """ State 2 """
        # goods:4400:Gourd Seed
        if ComparePlayerInventoryNumber(3, goods49, 4, 1, 0) == 1:
            """ State 4,13 """
            # action:13000001:Consume Gourd Seed to increase maximum uses of Healing Gourd?
            call = t000001_x0(action2=13000001)
            if call.Done() and GetGenericDialogButtonResult() == 1:
                """ State 6,8 """
                # goods:4400:Gourd Seed
                PlayerEquipmentQuantityChange(3, goods49, -1)
                """ State 9 """
                c1108(f109(0) + 1, 0)
                # goods:3000:Healing Gourd
                if f109(0) > GetItemHeldNumLimit(3, goods48):
                    """ State 11,10 """
                    RequestUnlockTrophy(8)
                else:
                    """ State 12 """
                    pass
                """ State 15 """
                # action:13000002:Maximum Healing Gourd uses increased.
                assert t000001_x4(action1=13000002)
            elif call.Done():
                """ State 7 """
                pass
        else:
            """ State 5,14 """
            # action:13000000:You don't have any Gourd Seeds.
            assert t000001_x4(action1=13000000)
    else:
        """ State 3,16 """
        # action:13000003:The Healing Gourd cannot be upgraded further.
        assert t000001_x4(action1=13000003)
    """ State 17 """
    return 0

def t000001_x9(flag3=_):
    """ State 0,1 """
    c5100(GetEventStatus(flag3 + 0) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 1) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 2) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 3) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 4) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 5) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 6) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 7) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 8) == 1, 0, GetWorkValue(0) + 1)
    c5100(GetEventStatus(flag3 + 9) == 1, 0, GetWorkValue(0) + 1)
    """ State 2 """
    return 0

def t000001_x10():
    """ State 0,1 """
    if not GetEventStatus(6215):
        """ State 2 """
        SetWorkValue(0, 0)
        """ State 11 """
        call = t000001_x9(flag3=11000000)
        if call.Done():
            """ State 5 """
            call = t000001_x9(flag3=11100000)
            if call.Done():
                """ State 6 """
                call = t000001_x9(flag3=11110000)
                if call.Done():
                    """ State 10 """
                    call = t000001_x9(flag3=11300000)
                    if call.Done():
                        """ State 7 """
                        call = t000001_x9(flag3=11500000)
                        if call.Done():
                            """ State 8 """
                            call = t000001_x9(flag3=11700000)
                            if call.Done():
                                """ State 9 """
                                call = t000001_x9(flag3=12000000)
                                if call.Done():
                                    """ State 12 """
                                    call = t000001_x9(flag3=12500000)
                                    if call.Done():
                                        """ State 13 """
                                        call = t000001_x9(flag3=11120000)
                                        if call.Done():
                                            """ State 4 """
                                            Goto('L0')
                                        elif GetWorkValue(0) > 2:
                                            pass
                                    elif GetWorkValue(0) > 2:
                                        pass
                                elif GetWorkValue(0) > 2:
                                    pass
                            elif GetWorkValue(0) > 2:
                                pass
                        elif GetWorkValue(0) > 2:
                            pass
                    elif GetWorkValue(0) > 2:
                        pass
                elif GetWorkValue(0) > 2:
                    pass
            elif GetWorkValue(0) > 2:
                pass
        elif GetWorkValue(0) > 2:
            pass
        """ State 3 """
        SetEventState(6215, 1)
    else:
        pass
    """ State 14 """
    Label('L0')
    return 0

def t000001_x11(val1=4, goods4=4000, z5=4100):
    """ State 0,10 """
    SetWorkValue(0, 0)
    SetWorkValue(0, GetWorkValue(0) - val1)
    """ State 1 """
    # goods:4109:Final Prayer Necklace
    if ComparePlayerInventoryNumber(3, 4109, 4, 1, 0) == 1:
        """ State 2,13 """
        # action:13000013:Physical attributes cannot be enhanced any further.
        assert t000001_x4(action1=13000013)
    else:
        """ State 3,4 """
        # goods:4000:Prayer Bead
        if ComparePlayerInventoryNumber(3, goods4, 1, val1, 0) == 1:
            """ State 5,14 """
            SetMessageTagValue(0, val1)
            # action:13000010:You don't have the <?evntAcquittalPrice?> Prayer Beads required.
            assert t000001_x4(action1=13000010)
        else:
            """ State 6,15 """
            SetMessageTagValue(0, val1)
            # action:13000011:Consume <?evntAcquittalPrice?> Prayer Beads to Enhance Physical Attributes?
            call = t000001_x0(action2=13000011)
            if call.Done() and GetGenericDialogButtonResult() == 1:
                """ State 8,12 """
                assert GetCurrentStateElapsedTime() > 1
                """ State 9 """
                # goods:4000:Prayer Bead
                PlayerEquipmentQuantityChange(3, goods4, GetWorkValue(0))
                """ State 17 """
                assert t000001_x29()
                """ State 11 """
                assert GetCurrentStateElapsedTime() > 1
                """ State 16 """
                # action:13000012:Physical attributes enhanced.  \nMaximum Vitality and Posture have increased.
                assert t000001_x4(action1=13000012)
            elif call.Done():
                """ State 7 """
                pass
    """ State 18 """
    return 0

def t000001_x12(z23=5, z24=10, z25=15, z26=20):
    """ State 0,15 """
    assert t000001_x18(z23=z23, z24=z24, z25=z25)
    """ State 6 """
    if not ComparePlayerInventoryNumber(3, 500, 0, GetItemHeldNumLimit(3, 500), 0):
        """ State 7,1 """
        if not f119() < GetStatus(8):
            """ State 2,10 """
            SetMessageTagValue(0, f119())
            # action:13000020:Not enough sen to suppress stagnation.  \n<?evntAcquittalPrice?> sen is required.
            assert t000001_x4(action1=13000020)
        else:
            """ State 3,9 """
            SetMessageTagValue(0, f119())
            # action:13000021:Spend <?evntAcquittalPrice?> sen to suppress stagnation?
            call = t000001_x0(action2=13000021)
            if call.Done() and GetGenericDialogButtonResult() == 1:
                """ State 4,13 """
                ChangePlayerStats(8, 1, f119())
                assert t000001_x15(z23=z23, z24=z24, z25=z25, z26=z26)
                """ State 14 """
                assert t000001_x2(lot1=60000)
                """ State 11 """
                # action:13000022:Stagnation has been suppressed
                assert t000001_x4(action1=13000022)
            elif call.Done():
                """ State 5 """
                pass
    else:
        """ State 8,12 """
        # action:13000023:The Dragon's Blood is not currently stagnated
        assert t000001_x4(action1=13000023)
    """ State 16 """
    return 0

def t000001_x13(goods1=2100, goods2=2110, goods3=2120):
    """ State 0,1 """
    ClearTalkListData()
    """ State 2 """
    # goods:2100:Bloodsmoke Ninjutsu, action:15000401: Equip <?gdsparam@2100?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1, 100, 15000401, 6001)
    # goods:2110:Puppeteer Ninjutsu, action:15000402: Equip <?gdsparam@2110?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1, 101, 15000402, 6001)
    # goods:2120:Bestowal Ninjutsu, action:15000403: Equip <?gdsparam@2120?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1, 102, 15000403, 6001)
    # action:15000006:Leave
    AddTalkListData(199, 15000006, 6001)
    assert GetCurrentStateElapsedFrames() > 1
    """ State 3 """
    c1115(0)
    if GetTalkListEntryResult() == 100:
        """ State 4,8 """
        c1125(goods1)
        """ State 11 """
        # action:13000030:You equipped the <?gdsparam@2100?>
        assert t000001_x4(action1=13000030)
    elif GetTalkListEntryResult() == 101:
        """ State 5,9 """
        c1125(goods2)
        """ State 12 """
        # action:13000031:You equipped the <?gdsparam@2110?>
        assert t000001_x4(action1=13000031)
    elif GetTalkListEntryResult() == 102:
        """ State 6,10 """
        c1125(goods3)
        """ State 13 """
        # action:13000032:You equipped the <?gdsparam@2120?>
        assert t000001_x4(action1=13000032)
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 7 """
        pass
    """ State 14 """
    return 0

def t000001_x14():
    """ State 0,1 """
    if (GetEventStatus(6225) == 1 or GetEventStatus(6226) == 1 or GetEventStatus(6227) == 1 or GetEventStatus(6228)
        == 1 or GetEventStatus(6229) == 1):
        """ State 2,3 """
        SetEventState(6219, 1)
    else:
        """ State 4 """
        pass
    """ State 5 """
    return 0

def t000001_x15(z23=5, z24=10, z25=15, z26=20):
    """ State 0,1 """
    if (GetEventStatus(9802) == 1 or GetEventStatus(51) == 1 or GetEventStatus(52) == 1 or GetEventStatus(53)
        == 1 or GetEventStatus(54) == 1 or GetEventStatus(55) == 1 or GetEventStatus(56) == 1 or GetEventStatus(57)
        == 1 or GetEventStatus(58) == 1):
        """ State 5,8 """
        assert t000001_x16(z23=z26)
    elif GetEventStatus(9801) == 1:
        """ State 4,9 """
        assert t000001_x16(z23=z25)
    elif GetEventStatus(9800) == 1:
        """ State 3,7 """
        assert t000001_x16(z23=z24)
    else:
        """ State 2,6 """
        assert t000001_x16(z23=z23)
    """ State 10 """
    return 0

def t000001_x16(z23=_):
    """ State 0,2 """
    if ComparePlayerStatus(39, 1, z23) == 1:
        """ State 3,1 """
        ChangePlayerStats(39, 0, 1)
    else:
        """ State 4 """
        pass
    """ State 5 """
    return 0

def t000001_x17(z23=_):
    """ State 0,1 """
    if ComparePlayerStatus(39, 1, z23) == 1:
        """ State 2,3 """
        ChangePlayerStats(39, 5, z23)
    else:
        pass
    """ State 4 """
    return 0

def t000001_x18(z23=5, z24=10, z25=15):
    """ State 0,1 """
    if (GetEventStatus(9802) == 1 or GetEventStatus(51) == 1 or GetEventStatus(52) == 1 or GetEventStatus(53)
        == 1 or GetEventStatus(54) == 1 or GetEventStatus(55) == 1 or GetEventStatus(56) == 1 or GetEventStatus(57)
        == 1 or GetEventStatus(58) == 1):
        """ State 5,8 """
        assert t000001_x17(z23=z25)
    elif GetEventStatus(9801) == 1:
        """ State 4,7 """
        assert t000001_x17(z23=z24)
    elif GetEventStatus(9800) == 1:
        """ State 3,6 """
        assert t000001_x17(z23=z23)
    else:
        """ State 2,9 """
        assert t000001_x17(z23=1)
    """ State 10 """
    return 0

def t000001_x19():
    """ State 0,3 """
    # action:12090000:You will be unable to return to the current playthrough #(<?loopCount?>) \nafter starting the next playthrough (<?nextLoopCount?>).\nAre you sure you want to start the next playthrough #(<?nextLoopCount?>)?
    call = t000001_x0(action2=12090000)
    if call.Get() == 1:
        """ State 4 """
        return 0
    elif call.Done():
        """ State 2 """
        SetEventState(9520, 1)
        """ State 1 """

def t000001_x20():
    """ State 0,1 """
    if (GetEventStatus(9802) == 1 or GetEventStatus(51) == 1 or GetEventStatus(52) == 1 or GetEventStatus(53)
        == 1 or GetEventStatus(54) == 1 or GetEventStatus(55) == 1 or GetEventStatus(56) == 1 or GetEventStatus(57)
        == 1 or GetEventStatus(58) == 1):
        """ State 5,9 """
        OpenRegularShop(1030, 1039)
    elif GetEventStatus(9801) == 1:
        """ State 4,8 """
        OpenRegularShop(1020, 1029)
    elif GetEventStatus(9800) == 1:
        """ State 3,7 """
        OpenRegularShop(1010, 1019)
    else:
        """ State 2,6 """
        OpenRegularShop(1000, 1009)
    """ State 10 """
    return 0

def t000001_x21(goods34=5200, goods35=5201, goods36=5202, goods37=5203, goods38=5204, goods39=5205, goods40=5206,
                goods41=5207, goods42=5208, goods43=5209, goods44=5210, goods45=5211, goods46=5212, z9=5300,
                z10=5301, z11=5302, z12=5303, z13=5304, z14=5305, z15=5306, z16=5307, z17=5308, z18=5309,
                z19=5310, z20=5311, z21=5312, goods47=5213, z22=5313):
    """ State 0,1 """
    # goods:5200:Memory: Gyoubu Oniwa
    if ComparePlayerInventoryNumber(3, goods34, 4, 1, 0) == 1:
        pass
    else:
        """ State 2 """
        # goods:5201:Memory: Lady Butterfly
        if ComparePlayerInventoryNumber(3, goods35, 4, 1, 0) == 1:
            pass
        else:
            """ State 3 """
            # goods:5202:Memory: Genichiro
            if ComparePlayerInventoryNumber(3, goods36, 4, 1, 0) == 1:
                pass
            else:
                """ State 4 """
                # goods:5203:Memory: Screen Monkeys
                if ComparePlayerInventoryNumber(3, goods37, 4, 1, 0) == 1:
                    pass
                else:
                    """ State 5 """
                    # goods:5204:Memory: Guardian Ape
                    if ComparePlayerInventoryNumber(3, goods38, 4, 1, 0) == 1:
                        pass
                    else:
                        """ State 6 """
                        # goods:5205:Memory: Corrupted Monk
                        if ComparePlayerInventoryNumber(3, goods39, 4, 1, 0) == 1:
                            pass
                        else:
                            """ State 7 """
                            # goods:5206:Memory: Great Shinobi
                            if ComparePlayerInventoryNumber(3, goods40, 4, 1, 0) == 1:
                                pass
                            else:
                                """ State 8 """
                                # goods:5207:Memory: Foster Father
                                if ComparePlayerInventoryNumber(3, goods41, 4, 1, 0) == 1:
                                    pass
                                else:
                                    """ State 9 """
                                    # goods:5208:Memory: True Monk
                                    if ComparePlayerInventoryNumber(3, goods42, 4, 1, 0) == 1:
                                        pass
                                    else:
                                        """ State 10 """
                                        # goods:5209:Memory: Divine Dragon
                                        if ComparePlayerInventoryNumber(3, goods43, 4, 1, 0) == 1:
                                            pass
                                        else:
                                            """ State 11 """
                                            # goods:5210:Memory: Hatred Demon
                                            if ComparePlayerInventoryNumber(3, goods44, 4, 1, 0) == 1:
                                                pass
                                            else:
                                                """ State 12 """
                                                # goods:5211:Memory: Saint Isshin 
                                                if ComparePlayerInventoryNumber(3, goods45, 4, 1, 0) == 1:
                                                    pass
                                                else:
                                                    """ State 13 """
                                                    # goods:5212:Memory: Isshin Ashina
                                                    if (ComparePlayerInventoryNumber(3, goods46, 4, 1,
                                                        0) == 1):
                                                        pass
                                                    else:
                                                        """ State 14 """
                                                        # goods:5213:Memory: Headless Ape
                                                        if (ComparePlayerInventoryNumber(3, goods47,
                                                            4, 1, 0) == 1):
                                                            pass
                                                        else:
                                                            """ State 16 """
                                                            return 1
    """ State 15 """
    return 0

def t000001_x22(goods34=5200, goods35=5201, goods36=5202, goods37=5203, goods38=5204, goods39=5205, goods40=5206,
                goods41=5207, goods42=5208, goods43=5209, goods44=5210, goods45=5211, goods46=5212, z9=5300,
                z10=5301, z11=5302, z12=5303, z13=5304, z14=5305, z15=5306, z16=5307, z17=5308, z18=5309,
                z19=5310, z20=5311, z21=5312, goods47=5213, z22=5313):
    """ State 0,19 """
    # goods:5100:Memory
    if ComparePlayerInventoryNumber(3, 5100, 0, 98, 0) == 1:
        """ State 22 """
        # action:13000041:Attack Power cannot be enhanced further.
        assert t000001_x4(action1=13000041)
    else:
        """ State 36 """
        call = t000001_x21(goods34=goods34, goods35=goods35, goods36=goods36, goods37=goods37, goods38=goods38,
                           goods39=goods39, goods40=goods40, goods41=goods41, goods42=goods42, goods43=goods43,
                           goods44=goods44, goods45=goods45, goods46=goods46, z9=z9, z10=z10, z11=z11,
                           z12=z12, z13=z13, z14=z14, z15=z15, z16=z16, z17=z17, z18=z18, z19=z19, z20=z20,
                           z21=z21, goods47=goods47, z22=z22)
        if call.Get() == 1:
            """ State 37 """
            # action:13000042:You don't have any Battle Memories.
            assert t000001_x4(action1=13000042)
            Goto('L0')
        elif call.Done():
            pass
        """ State 1 """
        while True:
            ClearTalkListData()
            """ State 2 """
            # goods:5200:Memory: Gyoubu Oniwa, action:15000710:Confront Memory: Gyoubu
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods34, 4, 1, 0) == 1, 1, 15000710, -1)
            # goods:5201:Memory: Lady Butterfly, action:15000711:Confront Memory: Butterfly
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods35, 4, 1, 0) == 1, 2, 15000711, -1)
            # goods:5202:Memory: Genichiro, action:15000712:Confront Memory: Genichiro 
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods36, 4, 1, 0) == 1, 3, 15000712, -1)
            # goods:5203:Memory: Screen Monkeys, action:15000713:Confront Memory: Screen Monkeys
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods37, 4, 1, 0) == 1, 4, 15000713, -1)
            # goods:5204:Memory: Guardian Ape, action:15000714:Confront Memory: Guardian Ape
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods38, 4, 1, 0) == 1, 5, 15000714, -1)
            # goods:5213:Memory: Headless Ape, action:15000723:Confront Memory: Headless Ape
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods47, 4, 1, 0) == 1, 14, 15000723, -1)
            # goods:5205:Memory: Corrupted Monk, action:15000715:Confront Memory: Corrupted Monk
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods39, 4, 1, 0) == 1, 6, 15000715, -1)
            # goods:5208:Memory: True Monk, action:15000718:Confront Memory: True Monk
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods42, 4, 1, 0) == 1, 9, 15000718, -1)
            # goods:5206:Memory: Great Shinobi, action:15000716:Confront Memory: Great Shinobi, Owl
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods40, 4, 1, 0) == 1, 7, 15000716, -1)
            # goods:5207:Memory: Foster Father, action:15000717:Confront Memory: Owl (Father)
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods41, 4, 1, 0) == 1, 8, 15000717, -1)
            # goods:5209:Memory: Divine Dragon, action:15000719:Confront Memory: Divine Dragon
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods43, 4, 1, 0) == 1, 10, 15000719, -1)
            # goods:5212:Memory: Isshin Ashina, action:15000722:Confront Memory: Isshin Ashina
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods46, 4, 1, 0) == 1, 13, 15000722, -1)
            # goods:5211:Memory: Saint Isshin , action:15000721:Confront Memory: Saint Isshin
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods45, 4, 1, 0) == 1, 12, 15000721, -1)
            # goods:5210:Memory: Hatred Demon, action:15000720:Confront Memory: Hate Demon
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods44, 4, 1, 0) == 1, 11, 15000720, -1)
            """ State 3 """
            c1127(0)
            assert not (CheckSpecificPersonMenuIsOpen(21, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 4 """
            if GetTalkListEntryResult() == 1:
                """ State 6,23 """
                assert t000001_x23(goods34=goods34, lot2=60210)
            elif GetTalkListEntryResult() == 2:
                """ State 7,24 """
                assert t000001_x23(goods34=goods35, lot2=60220)
            elif GetTalkListEntryResult() == 3:
                """ State 8,25 """
                assert t000001_x23(goods34=goods36, lot2=60230)
            elif GetTalkListEntryResult() == 4:
                """ State 9,26 """
                assert t000001_x23(goods34=goods37, lot2=60240)
            elif GetTalkListEntryResult() == 5:
                """ State 10,27 """
                assert t000001_x23(goods34=goods38, lot2=60250)
            elif GetTalkListEntryResult() == 6:
                """ State 11,28 """
                assert t000001_x23(goods34=goods39, lot2=60260)
            elif GetTalkListEntryResult() == 7:
                """ State 12,29 """
                assert t000001_x23(goods34=goods40, lot2=60270)
            elif GetTalkListEntryResult() == 8:
                """ State 13,30 """
                assert t000001_x23(goods34=goods41, lot2=60280)
            elif GetTalkListEntryResult() == 9:
                """ State 14,31 """
                assert t000001_x23(goods34=goods42, lot2=60290)
            elif GetTalkListEntryResult() == 10:
                """ State 15,32 """
                assert t000001_x23(goods34=goods43, lot2=60300)
            elif GetTalkListEntryResult() == 11:
                """ State 16,33 """
                assert t000001_x23(goods34=goods44, lot2=60310)
            elif GetTalkListEntryResult() == 12:
                """ State 17,34 """
                assert t000001_x23(goods34=goods45, lot2=60320)
            elif GetTalkListEntryResult() == 13:
                """ State 18,35 """
                assert t000001_x23(goods34=goods46, lot2=60330)
            elif GetTalkListEntryResult() == 14:
                """ State 21,39 """
                assert t000001_x23(goods34=goods47, lot2=60340)
            else:
                """ State 5 """
                break
            """ State 20 """
            # goods:5100:Memory
            if ComparePlayerInventoryNumber(3, 5100, 0, 98, 0) == 1:
                break
            else:
                """ State 38 """
                call = t000001_x21(goods34=goods34, goods35=goods35, goods36=goods36, goods37=goods37,
                                   goods38=goods38, goods39=goods39, goods40=goods40, goods41=goods41,
                                   goods42=goods42, goods43=goods43, goods44=goods44, goods45=goods45,
                                   goods46=goods46, z9=z9, z10=z10, z11=z11, z12=z12, z13=z13, z14=z14,
                                   z15=z15, z16=z16, z17=z17, z18=z18, z19=z19, z20=z20, z21=z21, goods47=goods47,
                                   z22=z22)
                if call.Get() == 1:
                    break
                elif call.Done():
                    pass
    """ State 40 """
    Label('L0')
    return 0

def t000001_x23(goods34=_, lot2=_):
    """ State 0,3 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 1 """
    PlayerEquipmentQuantityChange(3, goods34, -1)
    # goods:5400:Memory
    PlayerEquipmentQuantityChange(3, 5400, -1)
    """ State 6 """
    def ExitPause():
        GiveSpEffectToPlayer(130)
    assert t000001_x2(lot1=lot2)
    """ State 2 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 4 """
    # goods:5100:Memory
    if ComparePlayerInventoryNumber(3, 5100, 0, 98, 0) == 1:
        """ State 7 """
        # action:13000052:Attack Power has been increased to maximum possible value.
        assert t000001_x4(action1=13000052)
    else:
        """ State 5 """
        # action:13000040:Attack Power has been enhanced.
        assert t000001_x4(action1=13000040)
    """ State 8 """
    return 0

def t000001_x24(goods6=5200, goods7=5201, goods8=5202, goods9=5203, goods10=5204, goods11=5205, goods12=5206,
                goods13=5207, goods14=5208, goods15=5209, goods16=5210, goods17=5211, goods18=5212, goods19=5300,
                goods20=5301, goods21=5302, goods22=5303, goods23=5304, goods24=5305, goods25=5306, goods26=5307,
                goods27=5308, goods28=5309, goods29=5310, goods30=5311, goods31=5312, goods32=5213, goods33=5313):
    """ State 0,1 """
    # goods:5200:Memory: Gyoubu Oniwa, goods:5300:Remnant: Gyoubu
    if (ComparePlayerInventoryNumber(3, goods6, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3, goods19,
        4, 1, 0) == 1):
        pass
    else:
        """ State 2 """
        # goods:5201:Memory: Lady Butterfly, goods:5301:Remnant: Lady Butterfly 
        if (ComparePlayerInventoryNumber(3, goods7, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
            goods20, 4, 1, 0) == 1):
            pass
        else:
            """ State 3 """
            # goods:5202:Memory: Genichiro, goods:5302:Remnant: Genichiro
            if (ComparePlayerInventoryNumber(3, goods8, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                goods21, 4, 1, 0) == 1):
                pass
            else:
                """ State 4 """
                # goods:5203:Memory: Screen Monkeys, goods:5303:Remnant: Screen Monkeys
                if (ComparePlayerInventoryNumber(3, goods9, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                    goods22, 4, 1, 0) == 1):
                    pass
                else:
                    """ State 5 """
                    # goods:5204:Memory: Guardian Ape, goods:5304:Remnant: Guardian Ape
                    if (ComparePlayerInventoryNumber(3, goods10, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                        goods23, 4, 1, 0) == 1):
                        pass
                    else:
                        """ State 6 """
                        # goods:5205:Memory: Corrupted Monk, goods:5305:Remnant: Corrupted Monk
                        if (ComparePlayerInventoryNumber(3, goods11, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                            goods24, 4, 1, 0) == 1):
                            pass
                        else:
                            """ State 7 """
                            # goods:5206:Memory: Great Shinobi, goods:5306:Remnant: Great Shinobi
                            if (ComparePlayerInventoryNumber(3, goods12, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                                goods25, 4, 1, 0) == 1):
                                pass
                            else:
                                """ State 8 """
                                # goods:5207:Memory: Foster Father, goods:5307:Remnant: Foster Father
                                if (ComparePlayerInventoryNumber(3, goods13, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                                    goods26, 4, 1, 0) == 1):
                                    pass
                                else:
                                    """ State 9 """
                                    # goods:5208:Memory: True Monk, goods:5308:Remnant: True Monk
                                    if (ComparePlayerInventoryNumber(3, goods14, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                                        goods27, 4, 1, 0) == 1):
                                        pass
                                    else:
                                        """ State 10 """
                                        # goods:5209:Memory: Divine Dragon, goods:5309:Remnant: Divine Dragon
                                        if (ComparePlayerInventoryNumber(3, goods15, 4, 1, 0) == 1 or
                                            ComparePlayerInventoryNumber(3, goods28, 4, 1, 0) == 1):
                                            pass
                                        else:
                                            """ State 11 """
                                            # goods:5210:Memory: Hatred Demon, goods:5310:Remnant: Hatred Demon
                                            if (ComparePlayerInventoryNumber(3, goods16, 4, 1, 0) ==
                                                1 or ComparePlayerInventoryNumber(3, goods29, 4, 1, 0)
                                                == 1):
                                                pass
                                            else:
                                                """ State 12 """
                                                # goods:5211:Memory: Saint Isshin , goods:5311:Remnant: Saint Isshin
                                                if (ComparePlayerInventoryNumber(3, goods17, 4, 1, 0)
                                                    == 1 or ComparePlayerInventoryNumber(3, goods30,
                                                    4, 1, 0) == 1):
                                                    pass
                                                else:
                                                    """ State 13 """
                                                    # goods:5212:Memory: Isshin Ashina, goods:5312:Remnant: Isshin Ashina
                                                    if (ComparePlayerInventoryNumber(3, goods18, 4, 1,
                                                        0) == 1 or ComparePlayerInventoryNumber(3, goods31,
                                                        4, 1, 0) == 1):
                                                        pass
                                                    else:
                                                        """ State 14 """
                                                        # goods:5213:Memory: Headless Ape, goods:5313:Remnant: Headless Ape
                                                        if (ComparePlayerInventoryNumber(3, goods32,
                                                            4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                                                            goods33, 4, 1, 0) == 1):
                                                            pass
                                                        else:
                                                            """ State 16 """
                                                            return 1
    """ State 15 """
    return 0

def t000001_x25():
    """ State 0,1 """
    # goods:5100:Memory
    if ComparePlayerInventoryNumber(3, 5100, 0, 98, 0) == 1:
        """ State 2 """
        # action:13000041:Attack Power cannot be enhanced further.
        assert t000001_x4(action1=13000041)
    else:
        """ State 3 """
        assert t000001_x26(val2=5, z6=14, val3=5, z7=26, val4=6, z8=51, val5=7)
    """ State 4 """
    return 0

def t000001_x26(val2=5, z6=14, val3=5, z7=26, val4=6, z8=51, val5=7):
    """ State 0,1,2,6 """
    assert t000001_x27(val2=val2)
    """ State 10 """
    return 0

def t000001_x27(val2=_):
    """ State 0,1 """
    SetMessageTagValue(0, val2)
    """ State 7 """
    # action:12001000:Spend Skill Points to enhance Attack Power?
    call = t000001_x0(action2=12001000)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 2 """
        # goods:1200:Skill Point
        if ComparePlayerInventoryNumber(3, 1200, 4, val2, 0) == 1:
            """ State 5 """
            assert GetCurrentStateElapsedTime() > 1
            """ State 3 """
            # goods:1200:Skill Point
            PlayerEquipmentQuantityChange(3, 1200, -1 * val2)
            """ State 10 """
            def ExitPause():
                GiveSpEffectToPlayer(130)
            assert t000001_x2(lot1=60200)
            """ State 4 """
            assert GetCurrentStateElapsedTime() > 1
            """ State 6 """
            # goods:5100:Memory
            if ComparePlayerInventoryNumber(3, 5100, 0, 98, 0) == 1:
                """ State 11 """
                # action:13000052:Attack Power has been increased to maximum possible value.
                assert t000001_x4(action1=13000052)
            else:
                """ State 9 """
                # action:13000051:Skill Points spent, Attack Power enhanced.
                assert t000001_x4(action1=13000051)
        else:
            """ State 8 """
            # action:13000050:Not enough Skill Points.
            assert t000001_x4(action1=13000050)
    """ State 12 """
    return 0

def t000001_x28(goods5=_, lot1=_):
    """ State 0,1 """
    if ComparePlayerInventoryNumber(3, goods5, 4, 1, 0) == 1:
        """ State 4 """
        return 1
    else:
        """ State 2 """
        def ExitPause():
            GiveSpEffectToPlayer(130)
        assert t000001_x2(lot1=lot1)
        """ State 3 """
        return 0

def t000001_x29():
    """ State 0,2 """
    # goods:4100:First Prayer Necklace
    call = t000001_x28(goods5=4100, lot1=60100)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 3 """
        # goods:4101:Second Prayer Necklace
        call = t000001_x28(goods5=4101, lot1=60110)
        if call.Get() == 0:
            pass
        elif call.Done():
            """ State 4 """
            # goods:4102:Third Prayer Necklace
            call = t000001_x28(goods5=4102, lot1=60120)
            if call.Get() == 0:
                pass
            elif call.Done():
                """ State 5 """
                # goods:4103:Fourth Prayer Necklace
                call = t000001_x28(goods5=4103, lot1=60130)
                if call.Get() == 0:
                    pass
                elif call.Done():
                    """ State 6 """
                    # goods:4104:Fifth Prayer Necklace
                    call = t000001_x28(goods5=4104, lot1=60140)
                    if call.Get() == 0:
                        pass
                    elif call.Done():
                        """ State 7 """
                        # goods:4105:Sixth Prayer Necklace
                        call = t000001_x28(goods5=4105, lot1=60150)
                        if call.Get() == 0:
                            pass
                        elif call.Done():
                            """ State 8 """
                            # goods:4106:Seventh Prayer Necklace
                            call = t000001_x28(goods5=4106, lot1=60160)
                            if call.Get() == 0:
                                pass
                            elif call.Done():
                                """ State 9 """
                                # goods:4107:Eighth Prayer Necklace
                                call = t000001_x28(goods5=4107, lot1=60170)
                                if call.Get() == 0:
                                    pass
                                elif call.Done():
                                    """ State 11 """
                                    # goods:4108:Ninth Prayer Necklace
                                    call = t000001_x28(goods5=4108, lot1=60180)
                                    if call.Get() == 0:
                                        pass
                                    elif call.Done():
                                        """ State 1 """
                                        RequestUnlockTrophy(7)
                                        """ State 10 """
                                        def ExitPause():
                                            GiveSpEffectToPlayer(130)
                                        assert t000001_x2(lot1=60190)
    """ State 12 """
    return 0

def t000001_x30():
    """ State 0,11 """
    call = t000001_x31()
    if call.Get() == 1:
        """ State 7 """
        # action:13000080:No one is afflicted with Dragonrot.
        assert t000001_x4(action1=13000080)
    elif call.Done():
        """ State 8 """
        # action:12001010:Restore those afflicted with Dragonrot?
        call = t000001_x0(action2=12001010)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 1 """
            # goods:5600:Dragon's Blood Droplet
            if ComparePlayerInventoryNumber(3, 5600, 0, 0, 0) == 1:
                """ State 9 """
                # action:13000070:You do not have any <?gdsparam@5600?>s.
                assert t000001_x4(action1=13000070)
            else:
                """ State 4 """
                TurnCharacterToFaceEntity(710370, 10000, -1)
                assert GetCurrentStateElapsedTime() > 2.5
                """ State 3 """
                # goods:5600:Dragon's Blood Droplet
                PlayerEquipmentQuantityChange(3, 5600, -1)
                """ State 6 """
                SetEventState(627, 1)
                """ State 10 """
                assert t000001_x32()
                """ State 2 """
                assert GetEventStatus(624) == 1
                """ State 5 """
                SetEventState(624, 0)
                """ State 12 """
                # action:13000060:All afflicted with Dragonrot have been restored to health.
                assert t000001_x4(action1=13000060)
    """ State 13 """
    return 0

def t000001_x31():
    """ State 0,1 """
    call = t000001_x33(flag1=70002000)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 2 """
        call = t000001_x33(flag1=70002005)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 3 """
            call = t000001_x33(flag1=70002010)
            if call.Get() == 1:
                pass
            elif call.Done():
                """ State 4 """
                call = t000001_x33(flag1=70002015)
                if call.Get() == 1:
                    pass
                elif call.Done():
                    """ State 5 """
                    call = t000001_x33(flag1=70002020)
                    if call.Get() == 1:
                        pass
                    elif call.Done():
                        """ State 6 """
                        call = t000001_x33(flag1=70002025)
                        if call.Get() == 1:
                            pass
                        elif call.Done():
                            """ State 7 """
                            call = t000001_x33(flag1=70002030)
                            if call.Get() == 1:
                                pass
                            elif call.Done():
                                """ State 8 """
                                call = t000001_x33(flag1=70002035)
                                if call.Get() == 1:
                                    pass
                                elif call.Done():
                                    """ State 9 """
                                    call = t000001_x33(flag1=70002040)
                                    if call.Get() == 1:
                                        pass
                                    elif call.Done():
                                        """ State 10 """
                                        call = t000001_x33(flag1=70002045)
                                        if call.Get() == 1:
                                            pass
                                        elif call.Done():
                                            """ State 11 """
                                            call = t000001_x33(flag1=70002050)
                                            if call.Get() == 1:
                                                pass
                                            elif call.Done():
                                                """ State 12 """
                                                call = t000001_x33(flag1=70002055)
                                                if call.Get() == 1:
                                                    pass
                                                elif call.Done():
                                                    """ State 13 """
                                                    call = t000001_x33(flag1=70002060)
                                                    if call.Get() == 1:
                                                        pass
                                                    elif call.Done():
                                                        """ State 14 """
                                                        call = t000001_x33(flag1=70002065)
                                                        if call.Get() == 1:
                                                            pass
                                                        elif call.Done():
                                                            """ State 15 """
                                                            call = t000001_x33(flag1=70002070)
                                                            if call.Get() == 1:
                                                                pass
                                                            elif call.Done():
                                                                """ State 16 """
                                                                call = t000001_x33(flag1=70002075)
                                                                if call.Get() == 1:
                                                                    pass
                                                                elif call.Done():
                                                                    """ State 17 """
                                                                    call = t000001_x33(flag1=70002080)
                                                                    if call.Get() == 1:
                                                                        pass
                                                                    elif call.Done():
                                                                        """ State 19 """
                                                                        return 1
    """ State 18 """
    return 0

def t000001_x32():
    """ State 0,17 """
    assert t000001_x35(flag1=70002000, z1=70003300, z2=9500)
    """ State 1 """
    assert t000001_x34(flag2=70002005, z3=70003301, z4=9515)
    """ State 2 """
    assert t000001_x34(flag2=70002010, z3=70003302, z4=9510)
    """ State 3 """
    assert t000001_x34(flag2=70002015, z3=70003303, z4=9501)
    """ State 4 """
    assert t000001_x34(flag2=70002020, z3=70003304, z4=9516)
    """ State 5 """
    assert t000001_x34(flag2=70002025, z3=70003305, z4=9503)
    """ State 6 """
    assert t000001_x34(flag2=70002030, z3=70003306, z4=9504)
    """ State 7 """
    assert t000001_x34(flag2=70002035, z3=70003307, z4=9505)
    """ State 8 """
    assert t000001_x34(flag2=70002040, z3=70003308, z4=9511)
    """ State 9 """
    assert t000001_x34(flag2=70002045, z3=70003309, z4=9502)
    """ State 10 """
    assert t000001_x34(flag2=70002050, z3=70003310, z4=9520)
    """ State 11 """
    assert t000001_x34(flag2=70002055, z3=70003311, z4=9521)
    """ State 12 """
    assert t000001_x34(flag2=70002060, z3=70003312, z4=9522)
    """ State 13 """
    assert t000001_x34(flag2=70002065, z3=70003313, z4=9523)
    """ State 14 """
    assert t000001_x34(flag2=70002070, z3=70003314, z4=9524)
    """ State 15 """
    assert t000001_x34(flag2=70002075, z3=70003315, z4=9525)
    """ State 16 """
    assert t000001_x34(flag2=70002080, z3=70003316, z4=9526)
    """ State 18 """
    return 0

def t000001_x33(flag1=_):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 3 """
        return 1
    else:
        """ State 2 """
        return 0

def t000001_x34(flag2=_, z3=_, z4=_):
    """ State 0,2 """
    call = t000001_x33(flag1=flag2)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 1 """
        SetEventState(flag2, 0)
        c511(not GetEventStatus(9803), z3, 1)
    """ State 3 """
    return 0

def t000001_x35(flag1=70002000, z1=70003300, z2=9500):
    """ State 0,2 """
    call = t000001_x33(flag1=flag1)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 1 """
        SetEventState(flag1, 0)
        c511(not GetEventStatus(9803), z1, 1)
        SetEventState(71100147, 1)
    """ State 3 """
    return 0

