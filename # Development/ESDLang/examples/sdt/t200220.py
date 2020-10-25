# -*- coding: utf-8 -*-
def t200220_1():
    """ State 0,1 """
    t200220_x9(flag10=1059, flag11=1055, flag12=1056, val1=5, val2=10, val3=12, val4=10, val5=12, flag13=72000356,
               val6=7002200, flag14=6000, flag15=6001, flag16=72000043, flag17=6000, mode14=1, val7=1000000,
               val8=1730011, val9=1000000, mode15=0, mode16=1, mode17=0, val10=1000000, val11=1000000,
               mode18=0, flag18=6000, mode19=0)

def t200220_1000():
    """ State 0,2,3 """
    SetEventState(72000380, 1)
    assert GetEventStatus(72000381) == 1
    """ State 4 """
    SetEventState(72000381, 0)
    """ State 5 """
    # goods:9215:Holy Chapter: Infested, goods:3070:Persimmon, goods:9009:Sakura Droplet, goods:9192:Fresh Serpent Viscera, goods:9193:Dried Serpent Viscera, goods:3071:Taro Persimmon, goods:9228:Holy Chapter: Infested
    assert (t200220_x53(goods1=9215, goods2=3070, goods3=9009, goods4=9192, goods5=9193, z1=3060, z2=3080,
            z3=3081, lot1=62208, lot2=62214, goods6=3071, goods7=9228))
    """ State 1 """
    SetEventState(72000382, 1)
    def WhilePaused():
        c1119(0)

def t200220_1100():
    """ State 0,2 """
    # talk:22001800:(Pant, pant, pant...)
    assert t200220_x4(text17=22001800, z17=72000356, flag25=1, mode27=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200220_2000():
    """ State 0,2 """
    if GetEventStatus(72000383) == 1:
        """ State 4,6 """
        Label('L0')
        assert (t200220_x1(val6=7002204, flag15=6001, flag19=6000, flag20=6000, flag21=6000, flag22=6000,
                mode20=0, flag14=6000, val7=1000000, val8=1730011, val9=1000000, val10=1000000, val11=1000000))
    else:
        """ State 3,5 """
        call = t200220_x1(val6=7002200, flag15=6001, flag19=6000, flag20=6000, flag21=6000, flag22=6000,
                          mode20=0, flag14=6000, val7=1000000, val8=1730011, val9=1000000, val10=1000000,
                          val11=1000000)
        if call.Done():
            pass
        elif GetEventStatus(72000383) == 1:
            Goto('L0')
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200220_x0(action9=_):
    """ State 0,1 """
    OpenGenericDialog(8, action9, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t200220_x1(val6=_, flag15=6001, flag19=6000, flag20=6000, flag21=6000, flag22=6000, mode20=0, flag14=6000,
               val7=1000000, val8=1730011, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t200220_x30(val6=val6, flag15=flag15, flag19=flag19, flag20=flag20, flag21=flag21, flag22=flag22,
                           mode20=mode20, flag14=flag14)
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

def t200220_x2():
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

def t200220_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t200220_x4(text17=22001800, z17=72000356, flag25=1, mode27=1):
    """ State 0,7 """
    assert t200220_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z17, 1)
    """ State 6 """
    if not flag25:
        """ State 1 """
        # talk:22001800:(Pant, pant, pant...)
        TalkToPlayer(text17, -1, -1, flag25, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:22001800:(Pant, pant, pant...)
        TalkToPlayer(text17, -1, -1, flag25, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode27:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t200220_x5(text2=_, flag3=_, flag24=0, mode26=1):
    """ State 0,7 """
    assert t200220_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag24:
        """ State 1 """
        TalkToPlayer(text2, -1, -1, flag24, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text2, -1, -1, flag24, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode26:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag3, 1)
    """ State 8 """
    return 0

def t200220_x6(text1=_, flag23=0, mode25=1):
    """ State 0,6 """
    assert t200220_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag23:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag23, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag23, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode25:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t200220_x7(lot3=_):
    """ State 0,1 """
    GetItemFromItemLot(lot3)
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

def t200220_x8(action8=_):
    """ State 0,1 """
    OpenGenericDialog(7, action8, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t200220_x9(flag10=1059, flag11=1055, flag12=1056, val1=5, val2=10, val3=12, val4=10, val5=12, flag13=72000356,
               val6=7002200, flag14=6000, flag15=6001, flag16=72000043, flag17=6000, mode14=1, val7=1000000,
               val8=1730011, val9=1000000, mode15=0, mode16=1, mode17=0, val10=1000000, val11=1000000,
               mode18=0, flag18=6000, mode19=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t200220_x10(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag13=flag13, val6=val6,
                           flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17, mode14=mode14,
                           val7=val7, val8=val8, val9=val9, mode15=mode15, mode16=mode16, mode17=mode17,
                           val10=val10, val11=val11, mode18=mode18, mode19=mode19)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag10) == 1) and not GetEventStatus(flag18):
            pass
        elif GetEventStatus(flag11) == 1 or GetEventStatus(flag12) == 1:
            """ State 3 """
            call = t200220_x25(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag10) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag11) and not GetEventStatus(flag12):
                continue
        """ State 2 """
        call = t200220_x11(flag10=flag10, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag10) and not DoesSelfHaveSpEffect(30100)

def t200220_x10(val1=5, val2=10, val3=12, val4=10, val5=12, flag13=72000356, val6=7002200, flag14=6000,
                flag15=6001, flag16=72000043, flag17=6000, mode14=1, val7=1000000, val8=1730011, val9=1000000,
                mode15=0, mode16=1, mode17=0, val10=1000000, val11=1000000, mode18=0, mode19=0):
    """ State 0,4 """
    while True:
        call = t200220_x27(val6=val6, flag14=flag14, flag15=flag15, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t200220_x12(val1=val1, mode14=mode14, mode15=mode15, mode16=mode16, mode17=mode17,
                               mode18=mode18)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode19 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode19 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag17) == 1:
            Goto('L0')
        elif not GetEventStatus(flag13) and GetEventStatus(flag16) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t200220_x13(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode19 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t200220_x14(val2=val2, val3=val3)

def t200220_x11(flag10=1059, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag10) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t200220_x22()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t200220_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t200220_x12(val1=5, mode14=1, mode15=0, mode16=1, mode17=0, mode18=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t200220_x20(mode15=mode15, mode17=mode17)
    def WhilePaused():
        c1117(mode14, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode16 == 1, 0.1)
        c5120(val1 == 1 and not mode14 and mode18 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t200220_x17()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t200220_x16()
    """ State 4 """
    return 0

def t200220_x13(val5=12):
    """ State 0,1 """
    call = t200220_x26()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t200220_x2()
    """ State 3 """
    return 0

def t200220_x14(val2=10, val3=12):
    """ State 0,4 """
    assert t200220_x2() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t200220_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t200220_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t200220_x15(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t200220_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t200220_x2()
    """ State 4 """
    return 0

def t200220_x16():
    """ State 0,1 """
    assert t200220_x2()
    """ State 2 """
    return 0

def t200220_x17():
    """ State 0,2 """
    assert t200220_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t200220_x18(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t200220_x23()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t200220_x2()

def t200220_x19():
    """ State 0,1 """
    assert t200220_x21(z16=1101, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t200220_x20(mode15=0, mode17=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode15 == 1 and not mode17, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode15 == 1 and mode17 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t200220_x21(z16=1000, mode21=0, mode22=0, mode23=0, mode24=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t200220_x21(z16=_, mode21=0, mode22=0, mode23=0, mode24=0):
    """ State 0,4 """
    if f118(z16) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z16)
        assert f117() == mode21 or f117() == mode22 or f117() == mode23 or f117() == mode24
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t200220_x22():
    """ State 0,1 """
    call = t200220_x21(z16=1103, mode21=0, mode22=0, mode23=0, mode24=0)
    if call.Get() == 1:
        """ State 2 """
        assert t200220_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t200220_x23():
    """ State 0,2 """
    call = t200220_x21(z16=1102, mode21=0, mode22=0, mode23=0, mode24=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t200220_x24():
    """ State 0,1 """
    assert t200220_x21(z16=1001, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t200220_x25(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t200220_x18(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t200220_x28(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t200220_x15(val2=val2, val3=val3)

def t200220_x26():
    """ State 0,1 """
    assert t200220_x21(z16=1100, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t200220_x27(val6=7002200, flag14=6000, flag15=6001, val7=1000000, val8=1730011, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t200220_x21(z16=2000, mode21=0, mode22=0, mode23=0, mode24=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t200220_x1(val6=val6, flag15=flag15, flag19=6000, flag20=6000, flag21=6000, flag22=6000,
                mode20=0, flag14=flag14, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t200220_x28(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t200220_x29()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t200220_x2()
    """ State 4 """
    return 0

def t200220_x29():
    """ State 0,1 """
    assert t200220_x21(z16=1002, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t200220_x30(val6=_, flag15=6001, flag19=6000, flag20=6000, flag21=6000, flag22=6000, mode20=0, flag14=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag15) == 1 or GetEventStatus(flag19) == 1 or GetEventStatus(flag20)
                == 1 or GetEventStatus(flag21) == 1 or GetEventStatus(flag22) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag14)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag15) and not GetEventStatus(flag19) and not GetEventStatus(flag20)
                  and not GetEventStatus(flag21) and not GetEventStatus(flag22)):
                Continue('mainloop')
            elif GetEventStatus(flag14) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode20) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t200220_x31(z14=1044, z15=1042, flag9=72000351, text12=22004500, text13=22004400, text14=22020700,
                text15=22020600, text16=22020500, goods10=9000):
    """ State 0,1 """
    if GetEventStatus(1044) == 1:
        """ State 4,8 """
        # goods:9000:Divine Dragon's Tears
        if ComparePlayerInventoryNumber(3, goods10, 4, 1, 0) == 1:
            """ State 9,14 """
            assert t200220_x6(text1=text12, flag23=0, mode25=1)
        else:
            """ State 10,15 """
            assert t200220_x6(text1=text13, flag23=0, mode25=1)
    elif GetEventStatus(1042) == 1:
        """ State 3,13 """
        assert t200220_x6(text1=text14, flag23=0, mode25=1)
    else:
        """ State 2,5 """
        if GetEventStatus(flag9) == 1:
            """ State 7,12 """
            assert t200220_x6(text1=text15, flag23=0, mode25=1)
        else:
            """ State 6,11 """
            assert t200220_x6(text1=text16, flag23=0, mode25=1)
    """ State 16 """
    return 0

def t200220_x32(goods1=9215, goods2=3070, goods3=9009, goods6=3071, goods7=9228):
    """ State 0,8 """
    c1110()
    """ State 4 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # action:15022004:Request Rice
        AddTalkListData(1, 15022004, 6001)
        # goods:9215:Holy Chapter: Infested, goods:9228:Holy Chapter: Infested, action:15022005:Give Holy Chapter: Infested
        AddTalkListDataIf((ComparePlayerInventoryNumber(3, goods1, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3, goods7, 4, 1, 0) == 1) and not GetEventStatus(72000362),
                          2, 15022005, 6001)
        # action:15022006:Give Persimmon
        AddTalkListDataIf(GetEventStatus(72000353) == 1 and GetEventStatus(72000350) == 1, 3, 15022006,
                          6001)
        # goods:3071:Taro Persimmon, action:15022009:Give Taro Persimmon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3071, 2, 0, 0) == 1 and not GetEventStatus(72000372) and GetEventStatus(72000353) == 1 and GetEventStatus(72000350) == 1,
                          6, 15022009, 6001)
        # goods:9009:Sakura Droplet, action:15022007:Present Sakura Droplet
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods3, 4, 1, 0) == 1, 4, 15022007, 6001)
        # action:15000000:Talk
        AddTalkListDataIf(GetEventStatus(1042) == 1 or GetEventStatus(1044) == 1, 5, 15000000, 6001)
        """ State 3 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        if GetTalkListEntryResult() == 1:
            """ State 6,15 """
            assert t200220_x37(lot1=62208, lot2=62214, z2=3080, z3=3081, mode8=0)
        elif GetTalkListEntryResult() == 2:
            """ State 9,16 """
            assert t200220_x38(goods1=goods1, mode12=1, mode13=0, goods7=goods7)
        elif GetTalkListEntryResult() == 3:
            """ State 10,17 """
            assert t200220_x39(goods2=goods2, mode11=0)
        elif GetTalkListEntryResult() == 4:
            """ State 11,18 """
            assert t200220_x41(goods3=goods3, mode10=0)
        elif GetTalkListEntryResult() == 5:
            """ State 12,19 """
            # talk:22003000:Shinobi of the Divine Heir., talk:22003100:Shinobi of the Divine Heir., talk:22003800:If you wish to return the dragon's heritage to its rightful place, give him the frozen tears together with the dragon tears., talk:22004000:If you wish to return the dragon's heritage to its rightful place, give him the frozen tears together with the dragon tears., goods:9192:Fresh Serpent Viscera, goods:9000:Divine Dragon's Tears
            assert (t200220_x42(text5=22003000, text6=22003100, text7=22003800, text8=22004000, flag6=1044,
                    goods8=9192, goods9=9000))
        elif GetTalkListEntryResult() == 6:
            """ State 13,20 """
            assert t200220_x54(goods6=goods6, mode7=0)
        else:
            """ State 7,14 """
            # talk:22004500:Shinobi of the Divine Heir., talk:22004400:Shinobi of the Divine Heir., talk:22020700:So you will take your leave?, talk:22020600:Thank you for visiting., talk:22020500:Farewell, Shinobi of the Divine Heir., goods:9000:Divine Dragon's Tears
            assert (t200220_x31(z14=1044, z15=1042, flag9=72000351, text12=22004500, text13=22004400,
                    text14=22020700, text15=22020600, text16=22020500, goods10=9000))
            """ State 21 """
            return 0

def t200220_x33(z1=3060, goods1=9215, flag1=72000361, goods2=3070, goods3=9009, goods6=3071, goods7=9228):
    """ State 0,5 """
    if not GetEventStatus(72000000):
        """ State 6,9 """
        if not GetEventStatus(72000014) and GetEventStatus(72000013) == 1:
            """ State 11 """
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            # talk:22001400:I see you serve the Divine Heir of the Dragon's Heritage., talk:22001430:This is... rice...?
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert (t200220_x45(text3=22001400, text4=22001430, lot1=62208, flag5=72000013, z5=72000014,
                    mode9=1))
        else:
            """ State 10 """
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            # talk:22001400:I see you serve the Divine Heir of the Dragon's Heritage., talk:22001430:This is... rice...?
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert (t200220_x45(text3=22001400, text4=22001430, lot1=62208, flag5=72000013, z5=72000014,
                    mode9=0))
        """ State 8 """
        SetEventState(72000350, 1)
        SetEventState(72000000, 1)
        SetEventState(72000367, 1)
    else:
        """ State 7,1 """
        if GetEventStatus(72000352) == 1:
            """ State 4,14 """
            def WhilePaused():
                c1117(1155001, -1)
            assert t200220_x50(goods2=goods2, goods6=goods6)
        elif GetEventStatus(72000351) == 1:
            """ State 3,13 """
            assert t200220_x49(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, goods7=goods7)
        else:
            """ State 2,12 """
            assert (t200220_x48(z1=z1, goods1=goods1, flag1=flag1, goods2=goods2, goods3=goods3, goods6=goods6,
                    goods7=goods7))
    """ State 15 """
    return 0

def t200220_x34(flag4=72000016, goods4=9192, goods5=9193, goods1=9215, goods2=3070, goods3=9009, goods6=3071,
                mode6=_, goods7=9228):
    """ State 0,17 """
    if not mode6:
        """ State 18,1 """
        if not GetEventStatus(flag4):
            """ State 2,24 """
            # talk:22002600:Shinobi of the Divine Heir.
            assert t200220_x5(text2=22002600, flag3=flag4, flag24=0, mode26=1)
            """ State 23 """
            SetEventState(72000041, 1)
        else:
            """ State 3,14 """
            if GetEventStatus(72000017) == 1:
                """ State 16,33 """
                # talk:22005100:I will eat the two persimmons,\nand become the cradle to return the Dragon's Heritage to its rightful place.
                assert t200220_x6(text1=22005100, flag23=0, mode25=1)
            else:
                """ State 15,4 """
                # goods:9192:Fresh Serpent Viscera, goods:9193:Dried Serpent Viscera
                if (ComparePlayerInventoryNumber(3, goods4, 4, 1, 0) == 1 and ComparePlayerInventoryNumber(3,
                    goods5, 4, 1, 0) == 1):
                    """ State 5,25 """
                    # talk:22003200:Shinobi of the Divine Heir.\nHave you acquired both persimmons of the serpent?
                    def WhilePaused():
                        c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t200220_x6(text1=22003200, flag23=0, mode25=1)
                    """ State 26 """
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    # action:14022007:Give Persimmons of the Serpent, action:14022008:Keep Persimmons of the Serpent
                    call = t200220_x36(action6=14022007, action7=14022008, z12=72000027, z13=72000028)
                    def WhilePaused():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    def ExitPause():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    if call.Get() == 0:
                        """ State 19 """
                        # goods:9192:Fresh Serpent Viscera
                        PlayerEquipmentQuantityChange(3, goods4, -1)
                        # goods:9193:Dried Serpent Viscera
                        PlayerEquipmentQuantityChange(3, goods5, -1)
                        """ State 11 """
                        Label('L0')
                        """ State 27 """
                        # talk:22011300:Yes, I've found them.
                        assert t200220_x5(text2=22011300, flag3=72000017, flag24=0, mode26=1)
                        """ State 20 """
                        SetEventState(72000027, 0)
                        SetEventState(72000042, 1)
                    elif call.Get() == 1:
                        """ State 12 """
                        Label('L1')
                        """ State 28 """
                        # talk:22011400:... Not yet.
                        assert t200220_x5(text2=22011400, flag3=72000018, flag24=0, mode26=1)
                        """ State 21 """
                        SetEventState(72000028, 0)
                    elif call.Get() == 2:
                        """ State 13 """
                        pass
                else:
                    """ State 6,9 """
                    # goods:9192:Fresh Serpent Viscera
                    if ComparePlayerInventoryNumber(3, goods4, 4, 1, 0) == 1 and not GetEventStatus(72000363):
                        """ State 7,29 """
                        # talk:22002800:Shinobi of the Divine Heir.
                        def WhilePaused():
                            c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                        assert t200220_x5(text2=22002800, flag3=72000363, flag24=0, mode26=1)
                    # goods:9193:Dried Serpent Viscera
                    elif ComparePlayerInventoryNumber(3, goods5, 4, 1, 0) == 1 and not GetEventStatus(72000364):
                        """ State 10,30 """
                        # talk:22002900:Shinobi of the Divine Heir.
                        def WhilePaused():
                            c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                        assert t200220_x5(text2=22002900, flag3=72000364, flag24=0, mode26=1)
                    else:
                        """ State 8,31 """
                        # talk:22002700:Shinobi of the Divine Heir.
                        def WhilePaused():
                            c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                        assert t200220_x6(text1=22002700, flag23=0, mode25=1)
                    """ State 32 """
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    def WhilePaused():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    def ExitPause():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t200220_x32(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, goods7=goods7)
    else:
        """ State 22 """
        if GetEventStatus(72000027) == 1:
            Goto('L0')
        elif GetEventStatus(72000028) == 1:
            Goto('L1')
        else:
            """ State 35 """
            return 1
    """ State 34 """
    return 0

def t200220_x35(goods1=9215, goods2=3070, goods3=9009, goods6=3071, mode3=_, goods7=9228):
    """ State 0,7 """
    if not mode3:
        """ State 9,1 """
        if not GetEventStatus(72000020):
            """ State 2,13 """
            # talk:22003400:........., talk:22003420:Frozen tears... does this mean...?
            assert (t200220_x56(text1=22003400, text2=22003420, lot3=62212, flag2=72000366, flag3=72000020,
                    mode4=0))
        else:
            """ State 3,4 """
            # goods:9000:Divine Dragon's Tears
            if not GetEventStatus(72000039) and ComparePlayerInventoryNumber(3, 9000, 4, 1, 0) == 1:
                """ State 6,10 """
                # talk:22003700:Shinobi of the Divine Heir.
                def WhilePaused():
                    c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                assert t200220_x5(text2=22003700, flag3=72000039, flag24=0, mode26=1)
            else:
                """ State 5,12 """
                # talk:22003500:Shinobi of the Divine Heir.
                def WhilePaused():
                    c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                assert t200220_x6(text1=22003500, flag23=0, mode25=1)
            """ State 11 """
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t200220_x32(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, goods7=goods7)
    else:
        """ State 8 """
        if GetEventStatus(72000366) == 1:
            """ State 14 """
            # talk:22003400:........., talk:22003420:Frozen tears... does this mean...?
            assert (t200220_x56(text1=22003400, text2=22003420, lot3=62212, flag2=72000366, flag3=72000020,
                    mode4=1))
        else:
            """ State 16 """
            return 1
    """ State 15 """
    return 0

def t200220_x36(action6=_, action7=_, z12=_, z13=_):
    """ State 0,4 """
    c1110()
    ClearTalkListData()
    """ State 2 """
    AddTalkListData(1, action6, 6001)
    AddTalkListData(2, action7, 6001)
    """ State 3 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 5 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetTalkListEntryResult() == 1:
        """ State 6,9 """
        SetEventState(z12, 1)
        """ State 11 """
        return 0
    elif GetTalkListEntryResult() == 2:
        """ State 7,10 """
        SetEventState(z13, 1)
        """ State 12 """
        return 1
    else:
        """ State 8,13 """
        return 2

def t200220_x37(lot1=62208, lot2=62214, z2=3080, z3=3081, mode8=_):
    """ State 0,18 """
    if 0 == mode8:
        """ State 19,1 """
        if GetEventStatus(1044) == 1:
            """ State 3,13 """
            if GetEventStatus(72000368) == 1:
                """ State 11,34 """
                # talk:22004300:I apologize... Shinobi of the Divine Heir.
                assert t200220_x6(text1=22004300, flag23=0, mode25=1)
                Goto('L4')
            else:
                """ State 12,14 """
                if GetEventStatus(72000049) == 1:
                    """ State 16,38 """
                    # talk:22004200:Shinobi of the Divine Heir., talk:22004210:It's cold...
                    assert (t200220_x45(text3=22004200, text4=22004210, lot1=lot2, flag5=72000357, z5=72000358,
                            mode9=0))
                else:
                    """ State 15,37 """
                    # talk:22004100:(giggles), talk:22004120:I accept.
                    assert (t200220_x45(text3=22004100, text4=22004120, lot1=lot2, flag5=72000360, z5=72000049,
                            mode9=0))
                """ State 17 """
                SetEventState(72000368, 1)
                Goto('L4')
            """ State 10 """
            Label('L0')
            SetEventState(72000354, 1)
            SetEventState(72000367, 1)
            Goto('L4')
        else:
            """ State 2,4 """
            if GetEventStatus(72000367) == 1:
                """ State 6,33 """
                # talk:22001500:I apologize... Shinobi of the Divine Heir.
                assert t200220_x6(text1=22001500, flag23=0, mode25=1)
                Goto('L4')
            else:
                """ State 5,7 """
                if GetEventStatus(72000351) == 1:
                    """ State 9,36 """
                    # talk:22011700:Please take this rice., talk:22011710:... you have my gratitude.
                    assert (t200220_x45(text3=22011700, text4=22011710, lot1=lot1, flag5=72000359, z5=72000024,
                            mode9=0))
                    Goto('L0')
                else:
                    """ State 8,35 """
                    # talk:22001600:Shinobi of the Divine Heir., talk:22001610:I thank you.
                    assert (t200220_x45(text3=22001600, text4=22001610, lot1=lot1, flag5=72000359, z5=72000024,
                            mode9=0))
                    Goto('L0')
        """ State 26 """
        Label('L1')
        """ State 44 """
        return 1
    else:
        """ State 20,21 """
        if GetEventStatus(1044) == 1:
            """ State 23,24 """
            if GetEventStatus(72000360) == 1:
                """ State 27,41 """
                # talk:22004100:(giggles), talk:22004120:I accept.
                assert (t200220_x45(text3=22004100, text4=22004120, lot1=lot2, flag5=72000360, z5=72000049,
                        mode9=1))
                """ State 31 """
                Label('L2')
                SetEventState(72000368, 1)
            elif GetEventStatus(72000357) == 1:
                """ State 28,42 """
                # talk:22004200:Shinobi of the Divine Heir., talk:22004210:It's cold...
                assert (t200220_x45(text3=22004200, text4=22004210, lot1=lot2, flag5=72000357, z5=72000358,
                        mode9=1))
                Goto('L2')
            else:
                Goto('L1')
        else:
            """ State 22,25 """
            if GetEventStatus(72000359) == 1 and GetEventStatus(72000350) == 1:
                """ State 29,39 """
                # talk:22001600:Shinobi of the Divine Heir., talk:22001610:I thank you.
                assert (t200220_x45(text3=22001600, text4=22001610, lot1=lot1, flag5=72000359, z5=72000024,
                        mode9=1))
                """ State 32 """
                Label('L3')
                SetEventState(72000354, 1)
                SetEventState(72000367, 1)
            elif GetEventStatus(72000359) == 1 and GetEventStatus(72000351) == 1:
                """ State 30,40 """
                # talk:22011700:Please take this rice., talk:22011710:... you have my gratitude.
                assert (t200220_x45(text3=22011700, text4=22011710, lot1=lot1, flag5=72000359, z5=72000024,
                        mode9=1))
                Goto('L3')
            else:
                Goto('L1')
    """ State 43 """
    Label('L4')
    return 0

def t200220_x38(goods1=9215, mode12=_, mode13=_, goods7=9228):
    """ State 0,11 """
    if not mode13:
        """ State 13,4 """
        if 0 == mode12:
            """ State 5 """
            pass
        else:
            """ State 6,22 """
            # action:12022000:Give Scriptures of the Senpou Temple High Priest?
            assert t200220_x0(action9=12022000)
            """ State 7 """
            if GetGenericDialogButtonResult() == 1:
                """ State 8 """
                pass
            else:
                """ State 9 """
                Goto('L3')
        """ State 1 """
        # goods:9215:Holy Chapter: Infested
        if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
            """ State 2,14 """
            # goods:9215:Holy Chapter: Infested
            PlayerEquipmentQuantityChange(3, goods1, -1)
            """ State 16 """
            SetEventState(72000374, 1)
            """ State 17 """
            Label('L0')
            """ State 20 """
            # talk:22011500:This is for you.
            assert t200220_x5(text2=22011500, flag3=72000362, flag24=0, mode26=1)
            """ State 10 """
            Label('L1')
            SetEventState(72000374, 0)
            SetEventState(72000379, 0)
        # goods:9228:Holy Chapter: Infested
        elif ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1:
            """ State 3,15 """
            # goods:9228:Holy Chapter: Infested
            PlayerEquipmentQuantityChange(3, goods7, -1)
            """ State 19 """
            SetEventState(72000379, 1)
            """ State 18 """
            Label('L2')
            """ State 21 """
            # talk:22011600:This is for you.
            assert t200220_x5(text2=22011600, flag3=72000362, flag24=0, mode26=1)
            Goto('L1')
    else:
        """ State 12 """
        if GetEventStatus(72000374) == 1:
            Goto('L0')
        elif GetEventStatus(72000379) == 1:
            Goto('L2')
        else:
            """ State 24 """
            return 1
    """ State 23 """
    Label('L3')
    return 0

def t200220_x39(goods2=3070, mode11=_):
    """ State 0,9 """
    if not mode11:
        """ State 10,4 """
        # goods:3070:Persimmon
        if ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1:
            """ State 5,13 """
            # action:12022001:Give persimmon?
            assert t200220_x0(action9=12022001)
            """ State 1 """
            if GetGenericDialogButtonResult() == 1:
                """ State 2,7 """
                # goods:3070:Persimmon
                PlayerEquipmentQuantityChange(3, goods2, -1)
                """ State 8 """
                SetEventState(72000375, 1)
                """ State 15 """
                Label('L0')
                # talk:22011900:I've brought a persimmon., talk:22011910:I've brought a persimmon., talk:22011920:I've brought a persimmon.
                assert (t200220_x40(text9=22011900, text10=22011910, text11=22011920, flag7=72000370,
                        flag8=72000371, z11=72000373))
                """ State 12 """
                SetEventState(72000375, 0)
            else:
                """ State 3 """
                pass
        else:
            """ State 6,14 """
            # action:13022000:You don't have any persimmons.
            assert t200220_x8(action8=13022000)
    else:
        """ State 11 """
        if GetEventStatus(72000375) == 1:
            Goto('L0')
        else:
            """ State 17 """
            return 1
    """ State 16 """
    return 0

def t200220_x40(text9=22011900, text10=22011910, text11=22011920, flag7=72000370, flag8=72000371, z11=72000373):
    """ State 0,1 """
    if not text9 == -1 and not GetEventStatus(flag7):
        """ State 3 """
        assert t200220_x5(text2=text9, flag3=flag7, flag24=0, mode26=1)
    elif not text10 == -1 and not GetEventStatus(flag8):
        """ State 4 """
        assert t200220_x5(text2=text10, flag3=flag8, flag24=0, mode26=1)
    else:
        """ State 5 """
        assert t200220_x5(text2=text11, flag3=z11, flag24=0, mode26=1)
        """ State 2 """
        SetEventState(flag7, 0)
        SetEventState(flag8, 0)
        SetEventState(z11, 0)
    """ State 6 """
    return 0

def t200220_x41(goods3=9009, mode10=_):
    """ State 0,12 """
    if not mode10:
        """ State 8,16 """
        if not GetEventStatus(72000401):
            """ State 22 """
            # talk:22012000:Do you know what this is?
            assert t200220_x6(text1=22012000, flag23=0, mode25=1)
            """ State 17 """
            SetEventState(72000401, 1)
        else:
            """ State 18,28 """
            # talk:22012008:... Shinobi of the Divine Heir.
            assert t200220_x6(text1=22012008, flag23=0, mode25=1)
        """ State 19,23 """
        # action:14022009:Give Sakura Droplet, action:14022010:Keep Sakura Droplet
        call = t200220_x36(action6=14022009, action7=14022010, z12=72000036, z13=72000037)
        if call.Get() == 0:
            """ State 1 """
            Label('L0')
            """ State 25 """
            # talk:22012100:Please do.
            assert (t200220_x5(text2=22012100, flag3=72000021, flag24=0, mode26=1) and GetCurrentStateElapsedTime()
                    > 0.1)
            """ State 4,5 """
            # goods:9009:Sakura Droplet
            PlayerEquipmentQuantityChange(3, goods3, -1)
            """ State 6 """
            ChangePlayerStats(41, 0, 1)
            """ State 15 """
            SetEventState(72000376, 1)
            """ State 27 """
            # action:13011120:Additional Resurrective Power granted.
            assert t200220_x8(action8=13011120)
            """ State 7 """
            Label('L1')
            """ State 26 """
            # talk:22012110:It appears the Sakura Droplet's power now resides within you.
            assert t200220_x5(text2=22012110, flag3=72000022, flag24=0, mode26=1)
            """ State 14 """
            Label('L2')
            SetEventState(72000036, 0)
            SetEventState(72000037, 0)
            SetEventState(72000376, 0)
        elif call.Get() == 1:
            """ State 2 """
            Label('L3')
            """ State 24 """
            # talk:22012200:I'd rather not.
            assert t200220_x5(text2=22012200, flag3=72000023, flag24=0, mode26=1)
            Goto('L2')
        elif call.Get() == 2:
            """ State 3 """
            pass
    else:
        """ State 13 """
        if GetEventStatus(72000376) == 1:
            """ State 11 """
            Goto('L1')
        elif GetEventStatus(72000036) == 1:
            """ State 9 """
            # goods:9009:Sakura Droplet
            if ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1:
                Goto('L0')
            else:
                """ State 20,21 """
                SetEventState(72000036, goods3)
        elif GetEventStatus(72000037) == 1:
            """ State 10 """
            Goto('L3')
        else:
            pass
        """ State 30 """
        return 1
    """ State 29 """
    return 0

def t200220_x42(text5=22003000, text6=22003100, text7=22003800, text8=22004000, flag6=1044, goods8=9192,
                goods9=9000):
    """ State 0,1 """
    if GetEventStatus(flag6) == 1:
        """ State 3,4 """
        # goods:9000:Divine Dragon's Tears
        if ComparePlayerInventoryNumber(3, goods9, 4, 1, 0) == 1:
            """ State 6,13 """
            assert t200220_x6(text1=text8, flag23=0, mode25=1)
        else:
            """ State 5,12 """
            assert t200220_x6(text1=text7, flag23=0, mode25=1)
    else:
        """ State 2,7 """
        # goods:9192:Fresh Serpent Viscera
        if ComparePlayerInventoryNumber(3, goods8, 4, 1, 0) == 1:
            """ State 9,11 """
            assert t200220_x6(text1=text6, flag23=0, mode25=1)
        else:
            """ State 8,10 """
            assert t200220_x6(text1=text5, flag23=0, mode25=1)
    """ State 14 """
    return 0

def t200220_x43(action3=14022004, action4=14022005, action5=14022006, z8=72000033, z9=72000034, z10=72000035,
                goods1=9215, goods7=9228):
    """ State 0,4 """
    c1110()
    ClearTalkListData()
    """ State 2 """
    # action:14022004:Greet her
    AddTalkListData(1, action3, 6001)
    # goods:9215:Holy Chapter: Infested, goods:9228:Holy Chapter: Infested, action:14022005:Give Holy Chapter: Infested
    AddTalkListDataIf(not GetEventStatus(72000362) and (ComparePlayerInventoryNumber(3, goods1, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3, goods7, 4, 1, 0) == 1),
                      2, action4, 6001)
    # action:14022006:Leave
    AddTalkListData(3, action5, 6001)
    """ State 3 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 5 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetTalkListEntryResult() == 1:
        """ State 6,9 """
        SetEventState(z8, 1)
        """ State 13 """
        return 0
    elif GetTalkListEntryResult() == 2:
        """ State 7,10 """
        SetEventState(z9, 1)
        """ State 14 """
        return 1
    elif GetTalkListEntryResult() == 3:
        """ State 11,12 """
        SetEventState(z10, 1)
        """ State 15 """
        return 2
    else:
        """ State 8,16 """
        return 3

def t200220_x44(action1=14022002, action2=14022003, z6=_, z7=_, goods2=3070, goods6=3071):
    """ State 0,4 """
    c1110()
    ClearTalkListData()
    """ State 2 """
    # goods:3070:Persimmon, goods:3071:Taro Persimmon, action:14022002:Give Persimmon
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods2, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3, goods6, 4, 1, 0) == 1,
                      1, action1, 6001)
    # action:14022003:Keep Persimmon
    AddTalkListData(2, action2, 6001)
    """ State 3 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 5 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetTalkListEntryResult() == 1:
        """ State 6,9 """
        SetEventState(z6, 1)
        """ State 11 """
        return 0
    elif GetTalkListEntryResult() == 2:
        """ State 7,10 """
        SetEventState(z7, 1)
        """ State 12 """
        return 1
    else:
        """ State 8,13 """
        return 2

def t200220_x45(text3=_, text4=_, lot1=_, flag5=_, z5=_, mode9=_):
    """ State 0,3 """
    if not mode9:
        """ State 4,10 """
        assert t200220_x6(text1=text3, flag23=0, mode25=1)
        """ State 8 """
        assert not DoesSelfHaveSpEffect(3730000)
        """ State 2 """
        SetEventState(flag5, 1)
        """ State 12 """
        assert t200220_x7(lot3=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag5) == 1:
            """ State 6 """
            pass
        else:
            """ State 7,14 """
            return 1
    """ State 1,11 """
    assert t200220_x5(text2=text4, flag3=z5, flag24=0, mode26=1)
    """ State 9 """
    SetEventState(flag5, 0)
    """ State 13 """
    return 0

def t200220_x46():
    """ State 0,9 """
    if not GetEventStatus(72000002) and GetEventStatus(72000025) == 1:
        """ State 4 """
        Label('L0')
        """ State 13 """
        # talk:22010400:I do.
        assert t200220_x5(text2=22010400, flag3=72000002, flag24=0, mode26=1)
        """ State 8 """
        assert GetCurrentStateElapsedTime() > 0.1
    elif not GetEventStatus(72000003) and GetEventStatus(72000026) == 1:
        """ State 5 """
        Label('L1')
        """ State 14 """
        # talk:22010500:.........
        assert t200220_x5(text2=22010500, flag3=72000003, flag24=0, mode26=1)
    else:
        """ State 1 """
        if not GetEventStatus(72000038):
            """ State 3,10 """
            # talk:22001200:Why do you seek this place?
            assert t200220_x5(text2=22001200, flag3=72000038, flag24=0, mode26=1)
        else:
            """ State 2,11 """
            # talk:22001300:It is so-called, for not one who has drawn it has ever survived.\n
            assert t200220_x6(text1=22001300, flag23=0, mode25=1)
        """ State 7,12 """
        # action:14022000:I do, action:14022001:Never mind
        call = t200220_x36(action6=14022000, action7=14022001, z12=72000025, z13=72000026)
        if call.Get() == 0:
            Goto('L0')
        elif call.Get() == 1:
            Goto('L1')
        elif call.Get() == 2:
            """ State 6 """
            pass
    """ State 15 """
    return 0

def t200220_x47(goods2=3070, goods1=9215, goods3=9009, z1=3060, goods6=3071, goods7=9228):
    """ State 0,1 """
    if GetEventStatus(12000700) == 1:
        """ State 2 """
        assert (t200220_x33(z1=z1, goods1=goods1, flag1=72000361, goods2=goods2, goods3=goods3, goods6=goods6,
                goods7=goods7))
    else:
        """ State 3 """
        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        def ExitPause():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200220_x46()
    """ State 4 """
    return 0

def t200220_x48(z1=3060, goods1=9215, flag1=72000361, goods2=3070, goods3=9009, goods6=3071, goods7=9228):
    """ State 0,7 """
    if not GetEventStatus(72000383):
        """ State 8,1 """
        if not GetEventStatus(50006114):
            """ State 2 """
            pass
        else:
            """ State 3,10 """
            if GetEventStatus(flag1) == 1:
                """ State 11 """
                pass
            else:
                """ State 4 """
                if not GetEventStatus(71120147):
                    """ State 5,14 """
                    # talk:22002150:Did you give the rice to the Divine Heir?
                    assert t200220_x5(text2=22002150, flag3=flag1, flag24=0, mode26=1)
                    Goto('L0')
                else:
                    """ State 6,15 """
                    # talk:22002100:Did you give the rice to the Divine Heir?
                    assert t200220_x5(text2=22002100, flag3=flag1, flag24=0, mode26=1)
                    Goto('L0')
        """ State 12 """
        # talk:22004700:Shinobi of the Divine Heir.
        def WhilePaused():
            c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200220_x6(text1=22004700, flag23=0, mode25=1)
        """ State 13 """
        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        def ExitPause():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200220_x32(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, goods7=goods7)
    else:
        """ State 9,16 """
        assert t200220_x55(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, mode5=0, goods7=goods7)
    """ State 17 """
    Label('L0')
    return 0

def t200220_x49(goods1=9215, goods2=3070, goods3=9009, goods6=3071, goods7=9228):
    """ State 0,1 """
    if not GetEventStatus(72000004) and f116(-1) == 1730011:
        """ State 2,4 """
        # talk:22001700:(Soft snoring)
        def WhilePaused():
            c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200220_x5(text2=22001700, flag3=72000004, flag24=0, mode26=1)
    else:
        """ State 3,6 """
        # talk:22001710:Shinobi of the Divine Heir...
        def WhilePaused():
            c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200220_x6(text1=22001710, flag23=0, mode25=1)
    """ State 5 """
    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
    def WhilePaused():
        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
    def ExitPause():
        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
    assert t200220_x32(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, goods7=goods7)
    """ State 7 """
    return 0

def t200220_x50(goods2=3070, goods6=3071):
    """ State 0,1 """
    if GetEventStatus(72000353) == 1:
        """ State 2,4 """
        assert t200220_x52(goods2=goods2, mode1=0, goods6=goods6)
    else:
        """ State 3,5 """
        assert t200220_x51(goods2=goods2, mode2=0, goods6=goods6)
    """ State 6 """
    return 0

def t200220_x51(goods2=3070, mode2=_, goods6=3071):
    """ State 0,15 """
    if not mode2:
        """ State 14,1 """
        if not GetEventStatus(72000040):
            """ State 2,20 """
            # talk:22001810:  
            assert t200220_x5(text2=22001810, flag3=72000040, flag24=0, mode26=1)
        else:
            """ State 3,10,11,4 """
            # goods:3070:Persimmon, goods:3071:Taro Persimmon
            if (ComparePlayerInventoryNumber(3, goods2, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3,
                goods6, 4, 1, 0) == 1):
                """ State 6,22 """
                # talk:22002000:You've come to visit... Shinobi of the Divine Heir.
                def WhilePaused():
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                assert t200220_x6(text1=22002000, flag23=0, mode25=1)
                """ State 23 """
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                # action:14022002:Give Persimmon, action:14022003:Keep Persimmon
                call = t200220_x44(action1=14022002, action2=14022003, z6=72000031, z7=72000032, goods2=goods2,
                                   goods6=goods6)
                def WhilePaused():
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                def ExitPause():
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                if call.Get() == 0:
                    """ State 28 """
                    assert t200220_x57(goods2=goods2, goods6=goods6)
                    """ State 7 """
                    Label('L0')
                    """ State 24 """
                    # talk:22010600:I found a persimmon.
                    def WhilePaused():
                        c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t200220_x5(text2=22010600, flag3=72000009, flag24=0, mode26=1)
                    """ State 13 """
                    SetEventState(72000378, 1)
                    """ State 26 """
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    def WhilePaused():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    def ExitPause():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t200220_x7(lot3=62208)
                    """ State 17 """
                    Label('L1')
                    """ State 27 """
                    # talk:22010650:I thank you, Shinobi of the Divine Heir.
                    def WhilePaused():
                        c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t200220_x6(text1=22010650, flag23=0, mode25=1)
                    """ State 29 """
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    def WhilePaused():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    def ExitPause():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t200220_x7(lot3=62210)
                    """ State 18 """
                    SetEventState(72000031, 0)
                    SetEventState(72000378, 0)
                    """ State 19 """
                    SetEventState(72000043, 0)
                    SetEventState(72000352, 0)
                    SetEventState(72000350, 1)
                    SetEventState(72000004, 0)
                    SetEventState(72000353, 1)
                    SetEventState(72000367, 1)
                elif call.Get() == 1:
                    """ State 8 """
                    Label('L2')
                    """ State 25 """
                    # talk:22010700:.........
                    assert t200220_x5(text2=22010700, flag3=72000010, flag24=0, mode26=1)
                    """ State 16 """
                    SetEventState(72000032, 0)
                elif call.Get() == 2:
                    """ State 9 """
                    pass
            else:
                """ State 5,21 """
                # talk:22001900:I am sorry I am unable... to give you any rice...
                assert t200220_x6(text1=22001900, flag23=0, mode25=1)
    else:
        """ State 12 """
        if GetEventStatus(72000378) == 1:
            Goto('L1')
        elif GetEventStatus(72000031) == 1:
            Goto('L0')
        elif GetEventStatus(72000032) == 1:
            Goto('L2')
        else:
            """ State 31 """
            return 1
    """ State 30 """
    return 0

def t200220_x52(goods2=3070, mode1=_, goods6=3071):
    """ State 0,6 """
    if not mode1:
        """ State 5,9,10,15 """
        # talk:22004800:  
        call = t200220_x6(text1=22004800, flag23=0, mode25=1)
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        # goods:3070:Persimmon, goods:3071:Taro Persimmon
        if (call.Done() and (ComparePlayerInventoryNumber(3, goods2, 0, 0, 0) == 1 and ComparePlayerInventoryNumber(3,
            goods6, 0, 0, 0) == 1)):
            """ State 12,20 """
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            call = t200220_x58(z4=72000410)
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            if call.Get() == 1:
                pass
            elif call.Done():
                """ State 14 """
                Label('L0')
                """ State 21 """
                # talk:22010700:.........
                assert t200220_x6(text1=22010700, flag23=0, mode25=1)
                """ State 13 """
                SetEventState(72000410, 0)
                Goto('L3')
        elif call.Done():
            """ State 16 """
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            # action:14022002:Give Persimmon, action:14022003:Keep Persimmon
            call = t200220_x44(action1=14022002, action2=14022003, z6=72000029, z7=72000030, goods2=goods2,
                               goods6=goods6)
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            if call.Get() == 0:
                """ State 19 """
                assert t200220_x57(goods2=goods2, goods6=goods6)
                """ State 1 """
                Label('L1')
                """ State 17 """
                # talk:22011800:I've brought a persimmon.  Eat.
                assert t200220_x5(text2=22011800, flag3=72000011, flag24=0, mode26=1)
                """ State 7 """
                SetEventState(72000029, 0)
                """ State 11 """
                SetEventState(72000043, 0)
                SetEventState(72000352, 0)
                SetEventState(72000350, 1)
                SetEventState(72000004, 0)
                Goto('L3')
            elif call.Get() == 1:
                """ State 2 """
                Label('L2')
                """ State 18 """
                # talk:22010700:.........
                assert t200220_x5(text2=22010700, flag3=72000012, flag24=0, mode26=1)
                """ State 8 """
                SetEventState(72000030, 0)
                Goto('L3')
            elif call.Get() == 2:
                pass
        """ State 3 """
    else:
        """ State 4 """
        if GetEventStatus(72000029) == 1:
            Goto('L1')
        elif GetEventStatus(72000030) == 1:
            Goto('L2')
        elif GetEventStatus(72000410) == 1:
            Goto('L0')
        else:
            """ State 23 """
            return 1
    """ State 22 """
    Label('L3')
    return 0

def t200220_x53(goods1=9215, goods2=3070, goods3=9009, goods4=9192, goods5=9193, z1=3060, z2=3080, z3=3081,
                lot1=62208, lot2=62214, goods6=3071, goods7=9228):
    """ State 0,8 """
    call = t200220_x37(lot1=lot1, lot2=lot2, z2=z2, z3=z3, mode8=1)
    if call.Get() == 1:
        """ State 9 """
        call = t200220_x38(goods1=goods1, mode12=0, mode13=1, goods7=goods7)
        if call.Get() == 1:
            """ State 10 """
            call = t200220_x39(goods2=goods2, mode11=1)
            if call.Get() == 1:
                """ State 11 """
                call = t200220_x41(goods3=goods3, mode10=1)
                if call.Get() == 1:
                    """ State 12 """
                    call = t200220_x54(goods6=goods6, mode7=1)
                    if call.Get() == 1:
                        """ State 13 """
                        call = t200220_x55(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6,
                                           mode5=1, goods7=goods7)
                        if call.Get() == 1:
                            """ State 15 """
                            call = t200220_x51(goods2=goods2, mode2=1, goods6=goods6)
                            def WhilePaused():
                                c1117(1155001, -1)
                            if call.Get() == 1:
                                """ State 14 """
                                call = t200220_x52(goods2=goods2, mode1=1, goods6=goods6)
                                def WhilePaused():
                                    c1117(1155001, -1)
                                if call.Get() == 1:
                                    """ State 16 """
                                    call = t200220_x34(flag4=72000016, goods4=goods4, goods5=goods5,
                                                       goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6,
                                                       mode6=1, goods7=goods7)
                                    if call.Get() == 1:
                                        """ State 17 """
                                        call = t200220_x35(goods1=goods1, goods2=goods2, goods3=goods3,
                                                           goods6=goods6, mode3=1, goods7=goods7)
                                        if call.Get() == 1:
                                            """ State 1 """
                                            if GetEventStatus(1040) == 1:
                                                """ State 2,7 """
                                                assert (t200220_x47(goods2=goods2, goods1=goods1, goods3=goods3,
                                                        z1=z1, goods6=goods6, goods7=goods7))
                                            elif GetEventStatus(1042) == 1:
                                                """ State 3,5 """
                                                assert (t200220_x34(flag4=72000016, goods4=goods4, goods5=goods5,
                                                        goods1=goods1, goods2=goods2, goods3=goods3,
                                                        goods6=goods6, mode6=0, goods7=goods7))
                                            elif GetEventStatus(1044) == 1:
                                                """ State 4,6 """
                                                assert (t200220_x35(goods1=goods1, goods2=goods2, goods3=goods3,
                                                        goods6=goods6, mode3=0, goods7=goods7))
                                        elif call.Done():
                                            pass
                                    elif call.Done():
                                        pass
                                elif call.Done():
                                    pass
                            elif call.Done():
                                pass
                        elif call.Done():
                            pass
                    elif call.Done():
                        pass
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 18 """
    return 0

def t200220_x54(goods6=3071, mode7=_):
    """ State 0,7 """
    if not mode7:
        """ State 8,11 """
        # action:12022002:Give Taro Persimmon?
        assert t200220_x0(action9=12022002)
        """ State 1 """
        if GetGenericDialogButtonResult() == 1:
            """ State 2,4 """
            # goods:3071:Taro Persimmon
            PlayerEquipmentQuantityChange(3, 3071, -1)
            """ State 5 """
            SetEventState(72000377, 1)
            """ State 10 """
            Label('L0')
            """ State 12 """
            # talk:22011930:I've brought a persimmon.
            assert t200220_x5(text2=22011930, flag3=72000372, flag24=0, mode26=1)
            """ State 6 """
            SetEventState(72000377, 0)
        else:
            """ State 3 """
            pass
    else:
        """ State 9 """
        if GetEventStatus(72000377) == 1:
            Goto('L0')
        else:
            """ State 14 """
            return 1
    """ State 13 """
    return 0

def t200220_x55(goods1=9215, goods2=3070, goods3=9009, goods6=3071, mode5=_, goods7=9228):
    """ State 0,9 """
    if not mode5:
        """ State 10,6 """
        if GetEventStatus(72000005) == 1 or GetEventStatus(72000362) == 1:
            """ State 8,20 """
            # talk:22004700:Shinobi of the Divine Heir.
            def WhilePaused():
                c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t200220_x6(text1=22004700, flag23=0, mode25=1)
            """ State 21 """
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t200220_x32(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, goods7=goods7)
        else:
            """ State 7,14 """
            # talk:22002200:My friends... What should I do...?
            def WhilePaused():
                c5120(GetCurrentStateElapsedTime() > 0.5, 1, 10, 9, 9, 9, 9, 9, 9, 9)
            assert t200220_x6(text1=22002200, flag23=0, mode25=1)
            """ State 15 """
            c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
            # action:14022004:Greet her, action:14022005:Give Holy Chapter: Infested, action:14022006:Leave
            call = t200220_x43(action3=14022004, action4=14022005, action5=14022006, z8=72000033, z9=72000034,
                               z10=72000035, goods1=goods1, goods7=goods7)
            def WhilePaused():
                c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
            def ExitPause():
                c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
            if call.Get() == 0:
                """ State 1 """
                Label('L0')
                """ State 16 """
                # talk:22010800:... Hello.
                def WhilePaused():
                    c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
                assert t200220_x5(text2=22010800, flag3=72000005, flag24=0, mode26=1)
                """ State 11 """
                SetEventState(72000033, 0)
                """ State 19 """
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                def WhilePaused():
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                def ExitPause():
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                assert t200220_x32(goods1=goods1, goods2=goods2, goods3=goods3, goods6=goods6, goods7=goods7)
            elif call.Get() == 1:
                """ State 2,17 """
                assert t200220_x38(goods1=goods1, mode12=0, mode13=0, goods7=goods7)
                """ State 12 """
                SetEventState(72000034, 0)
            elif call.Get() == 2:
                """ State 3 """
                Label('L1')
                """ State 18 """
                # talk:22010900:.........
                assert t200220_x5(text2=22010900, flag3=72000008, flag24=0, mode26=1)
                """ State 13 """
                SetEventState(72000035, 0)
            elif call.Get() == 3:
                """ State 4 """
                pass
    else:
        """ State 5 """
        if GetEventStatus(72000033) == 1:
            Goto('L0')
        elif GetEventStatus(72000035) == 1:
            Goto('L1')
        else:
            """ State 23 """
            return 1
    """ State 22 """
    return 0

def t200220_x56(text1=22003400, text2=22003420, lot3=62212, flag2=72000366, flag3=72000020, mode4=_):
    """ State 0,3 """
    if not mode4:
        """ State 4,8 """
        def WhilePaused():
            c5120(GetCurrentStateElapsedTime() > 0.5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200220_x6(text1=text1, flag23=0, mode25=1)
        """ State 2 """
        SetEventState(flag2, 1)
        """ State 10 """
        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        def ExitPause():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200220_x7(lot3=lot3)
    else:
        """ State 5 """
        if GetEventStatus(flag2) == 1 and not GetEventStatus(flag3):
            pass
        else:
            """ State 6,12 """
            return 1
    """ State 1,9 """
    assert t200220_x5(text2=text2, flag3=flag3, flag24=0, mode26=1)
    """ State 7 """
    SetEventState(flag2, 0)
    """ State 11 """
    return 0

def t200220_x57(goods2=3070, goods6=3071):
    """ State 0,1 """
    # goods:3070:Persimmon, goods:3071:Taro Persimmon
    if (ComparePlayerInventoryNumber(3, goods2, 4, 1, 0) == 1 and ComparePlayerInventoryNumber(3, goods6,
        4, 1, 0) == 1):
        """ State 2,5 """
        # goods:3070:Persimmon
        PlayerEquipmentQuantityChange(3, goods2, -1)
    # goods:3071:Taro Persimmon
    elif ComparePlayerInventoryNumber(3, goods6, 4, 1, 0) == 1:
        """ State 3,6 """
        # goods:3071:Taro Persimmon
        PlayerEquipmentQuantityChange(3, goods6, -1)
    else:
        """ State 4,7 """
        # goods:3070:Persimmon
        PlayerEquipmentQuantityChange(3, goods2, -1)
    """ State 8 """
    return 0

def t200220_x58(z4=72000410):
    """ State 0,4 """
    c1110()
    ClearTalkListData()
    """ State 2 """
    # action:14000003:Do nothing
    AddTalkListData(1, 14000003, 6001)
    """ State 3 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 5 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetTalkListEntryResult() == 1:
        """ State 6,8 """
        SetEventState(z4, 1)
        """ State 9 """
        return 0
    else:
        """ State 7,10 """
        return 1

