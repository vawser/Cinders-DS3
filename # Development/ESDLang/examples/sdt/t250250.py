# -*- coding: utf-8 -*-
def t250250_1():
    """ State 0,1 """
    t250250_x7(flag1=1619, flag2=1615, flag3=1616, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7002500, flag5=1616, flag6=6001, flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000,
               val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, flag9=6000,
               mode6=0)

def t250250_1000():
    """ State 0,5 """
    assert f116(-1) == 1000000
    """ State 1 """
    if GetEventStatus(1601) == 1:
        """ State 3,6 """
        # goods:9071:Great White Whisker
        assert t250250_x30(goods1=9071)
    else:
        """ State 4,7 """
        assert t250250_x31()
    """ State 2 """
    def WhilePaused():
        c1119(0)

def t250250_1001():
    """ State 0,2 """
    if GetEventStatus(1600) == 1:
        """ State 3 """
        # talk:25030500:Apologies... for the disturbance...
        assert t250250_x5(text4=25030500, flag17=1, mode12=1)
    else:
        """ State 4 """
        assert t250250_x1()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250250_1101():
    """ State 0,2 """
    # talk:25030000:Ohhh..., talk:25030100:Nnghh..., talk:25030200:Stop!, talk:25030300:Please... stop...
    assert (t250250_x26(text1=25030000, flag14=72500047, text2=25030100, flag15=72500048, text3=25030200,
            flag16=72500049, text4=25030300))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250250_1102():
    """ State 0,2 """
    assert not GetEventStatus(72500045)
    """ State 3,4 """
    # talk:25030400:Ungh...!
    assert t250250_x4(text5=25030400, z2=72500045, flag18=1, mode13=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250250_1103():
    """ State 0,2 """
    # talk:25030600:Unnggghhhh...
    assert t250250_x5(text4=25030600, flag17=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250250_2000():
    """ State 0,3 """
    assert (t250250_x0(val6=7002500, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
            mode7=0, flag5=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000))
    """ State 2 """
    c511(not DoesSelfHaveSpEffect(5450), 72500004, 1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250250_x0(val6=7002500, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0,
               flag5=_, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t250250_x29(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
                           mode7=mode7, flag5=flag5)
        if call.Done():
            break
        elif (not f116(-1) == val7 and not f116(-1) == val8 and not f116(-1) == val9 and not DoesSelfHaveSpEffect(4510)
              and not val7 == -1 and not f116(-1) == val10 and not f116(-1) == val11):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val7 or f116(-1) == val8 or f116(-1) == val9 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val10 and f116(-1) == val11))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val7 and not f116(-1) == val8 and not f116(-1) == val9 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val10 and not f116(-1) == val11):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t250250_x1():
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

def t250250_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t250250_x3(text1=_, flag14=_, flag19=1, mode14=1):
    """ State 0,7 """
    assert t250250_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag14, 1)
    """ State 6 """
    if not flag19:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag19, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag19, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode14:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t250250_x4(text5=25030400, z2=72500045, flag18=1, mode13=1):
    """ State 0,7 """
    assert t250250_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag18:
        """ State 1 """
        # talk:25030400:Ungh...!
        TalkToPlayer(text5, -1, -1, flag18, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:25030400:Ungh...!
        TalkToPlayer(text5, -1, -1, flag18, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode13:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 8 """
    return 0

def t250250_x5(text4=_, flag17=_, mode12=1):
    """ State 0,6 """
    assert t250250_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag17:
        """ State 1 """
        TalkToPlayer(text4, -1, -1, flag17, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text4, -1, -1, flag17, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode12:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t250250_x6(lot1=_):
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

def t250250_x7(flag1=1619, flag2=1615, flag3=1616, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7002500, flag5=1616, flag6=6001, flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000,
               val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, flag9=6000,
               mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t250250_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t250250_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t250250_x9(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t250250_x8(val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001, val6=7002500, flag5=1616, flag6=6001,
               flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1, mode3=1,
               mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t250250_x25(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t250250_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag8) == 1:
            Goto('L0')
        elif not GetEventStatus(flag4) and GetEventStatus(flag7) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t250250_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t250250_x12(val2=val2, val3=val3)

def t250250_x9(flag1=1619, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t250250_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t250250_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t250250_x10(val1=5, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t250250_x18(mode2=mode2, mode4=mode4)
    def WhilePaused():
        c1117(mode1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode3 == 1, 0.1)
        c5120(val1 == 1 and not mode1 and mode5 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t250250_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t250250_x14()
    """ State 4 """
    return 0

def t250250_x11(val5=12):
    """ State 0,1 """
    call = t250250_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t250250_x1()
    """ State 3 """
    return 0

def t250250_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t250250_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t250250_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t250250_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t250250_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t250250_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t250250_x1()
    """ State 4 """
    return 0

def t250250_x14():
    """ State 0,1 """
    assert t250250_x1()
    """ State 2 """
    return 0

def t250250_x15():
    """ State 0,2 """
    assert t250250_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t250250_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t250250_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t250250_x1()

def t250250_x17():
    """ State 0,1 """
    assert t250250_x19(z1=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t250250_x18(mode2=1, mode4=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode2 == 1 and not mode4, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode2 == 1 and mode4 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t250250_x19(z1=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t250250_x19(z1=_, mode8=0, mode9=0, mode10=0, mode11=0):
    """ State 0,4 """
    if f118(z1) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z1)
        assert f117() == mode8 or f117() == mode9 or f117() == mode10 or f117() == mode11
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t250250_x20():
    """ State 0,1 """
    call = t250250_x19(z1=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t250250_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t250250_x21():
    """ State 0,2 """
    call = t250250_x19(z1=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t250250_x22():
    """ State 0,1 """
    assert t250250_x19(z1=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t250250_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t250250_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t250250_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t250250_x13(val2=val2, val3=val3)

def t250250_x24():
    """ State 0,1 """
    assert t250250_x19(z1=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t250250_x25(val6=7002500, flag5=1616, flag6=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t250250_x19(z1=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t250250_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode7=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t250250_x26(text1=25030000, flag14=72500047, text2=25030100, flag15=72500048, text3=25030200, flag16=72500049,
                text4=25030300):
    """ State 0,1 """
    if not text1 == -1 and not GetEventStatus(flag14):
        """ State 3 """
        assert t250250_x3(text1=text1, flag14=flag14, flag19=1, mode14=1)
    elif not text2 == -1 and not GetEventStatus(flag15):
        """ State 4 """
        assert t250250_x3(text1=text2, flag14=flag15, flag19=1, mode14=1)
    elif not text3 == -1 and not GetEventStatus(flag16):
        """ State 5 """
        assert t250250_x3(text1=text3, flag14=flag16, flag19=1, mode14=1)
    else:
        """ State 2 """
        SetEventState(flag14, 0)
        SetEventState(flag15, 0)
        SetEventState(flag16, 0)
        """ State 6 """
        assert t250250_x5(text4=text4, flag17=1, mode12=1)
    """ State 7 """
    return 0

def t250250_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t250250_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t250250_x1()
    """ State 4 """
    return 0

def t250250_x28():
    """ State 0,1 """
    assert t250250_x19(z1=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t250250_x29(val6=7002500, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0,
                flag5=_):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag6) == 1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) ==
                1 or GetEventStatus(flag12) == 1 or GetEventStatus(flag13) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag5)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag6) and not GetEventStatus(flag10) and not GetEventStatus(flag11)
                  and not GetEventStatus(flag12) and not GetEventStatus(flag13)):
                Continue('mainloop')
            elif GetEventStatus(flag5) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t250250_x30(goods1=9071):
    """ State 0,4 """
    if GetEventStatus(72500001) == 1:
        """ State 5 """
        Label('L0')
        """ State 24 """
        # talk:25010000:Ahh... ahh... ahh...
        assert t250250_x5(text4=25010000, flag17=0, mode12=1)
        """ State 13 """
        SetEventState(72500002, 1)
        """ State 14 """
        SetEventState(72500001, 0)
        """ State 12,25 """
        assert t250250_x6(lot1=62520)
    else:
        """ State 2 """
        if not GetEventStatus(72500002):
            """ State 3,22 """
            # talk:25000400:Master, Master, Master...
            assert t250250_x5(text4=25000400, flag17=0, mode12=1)
            """ State 6 """
            c1110()
            """ State 7 """
            ClearTalkListData()
            # goods:9071:Great White Whisker
            if ComparePlayerInventoryNumber(3, goods1, 4, 1, 0) == 1:
                """ State 8 """
                # action:14025000:Give Great White Whisker
                AddTalkListData(1, 14025000, 6001)
                # action:14025001:Keep Great White Whisker
                AddTalkListData(2, 14025001, 6001)
            else:
                """ State 18 """
                # action:14025002:Do nothing
                AddTalkListData(2, 14025002, 6001)
            """ State 9 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 17 """
            if GetTalkListEntryResult() == 1:
                """ State 15 """
                # goods:9071:Great White Whisker
                PlayerEquipmentQuantityChange(3, goods1, -1)
                """ State 11 """
                SetEventState(72500001, 1)
                """ State 19 """
                def WhilePaused():
                    c1117(1502000, -1)
                assert GetCurrentStateElapsedFrames() > 2
                """ State 20 """
                SetEventState(72500004, 1)
                assert GetCurrentStateElapsedFrames() > 2
                """ State 21 """
                assert f116(-1) == 1000000
                Goto('L0')
            elif GetTalkListEntryResult() == 2:
                """ State 10 """
                pass
            else:
                """ State 16 """
                pass
        else:
            """ State 1,23 """
            # talk:25010003:At last... at last...
            assert t250250_x5(text4=25010003, flag17=0, mode12=1)
    """ State 26 """
    return 0

def t250250_x31():
    """ State 0,7 """
    if not GetEventStatus(72500000):
        """ State 8 """
        if not GetEventStatus(72500043):
            """ State 15,23 """
            # talk:25000000:This...
            assert t250250_x5(text4=25000000, flag17=0, mode12=1)
            """ State 9 """
            SetEventState(72500000, 1)
        else:
            """ State 16,24 """
            # talk:25000050:This...
            call = t250250_x5(text4=25000050, flag17=0, mode12=1)
            if call.Done() and GetEventStatus(72500044) == 1:
                """ State 11,13 """
                SetEventState(72500000, 1)
                """ State 25 """
                assert t250250_x6(lot1=62510)
            elif call.Done():
                """ State 10,12 """
                SetEventState(72500000, 1)
                """ State 26 """
                assert t250250_x6(lot1=62500)
    else:
        """ State 2 """
        if GetEventStatus(72500044) == 1 and not GetEventStatus(50006251):
            """ State 1,22 """
            # talk:25000200:Master...
            assert t250250_x5(text4=25000200, flag17=0, mode12=1)
            """ State 21 """
            assert t250250_x6(lot1=62510)
        else:
            """ State 3 """
            if GetEventStatus(72500043) == 1 and not GetEventStatus(50006250):
                """ State 4,18 """
                # talk:25000200:Master...
                assert t250250_x5(text4=25000200, flag17=0, mode12=1)
                """ State 20 """
                assert t250250_x6(lot1=62500)
            else:
                """ State 5 """
                if GetEventStatus(72500044) == 1 or GetEventStatus(9370) == 1:
                    """ State 6,19 """
                    # talk:25000300:Master...
                    assert t250250_x5(text4=25000300, flag17=0, mode12=1)
                else:
                    """ State 14,17 """
                    # talk:25000100:Master...
                    assert t250250_x5(text4=25000100, flag17=0, mode12=1)
    """ State 27 """
    return 0

