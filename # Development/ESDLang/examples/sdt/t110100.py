# -*- coding: utf-8 -*-
def t110100_1():
    """ State 0,1 """
    while True:
        call = t110100_x9(flag4=1019, flag5=1015, flag6=1016, val2=5, val3=10, val4=12, val5=10, val6=12,
                          flag7=6001, val7=7001000, flag8=6000, flag9=6001, flag10=6000, flag11=6000,
                          val8=2, val9=1000000, val10=1701001, val11=1701002, mode12=1, mode13=1, mode14=0,
                          val12=1701003, val13=1000000, mode15=0, flag12=6000, mode16=0)
        assert GetEventStatus(71100405) == 1
        """ State 2 """
        call = t110100_x59()
        assert not GetEventStatus(71100405)

def t110100_1000():
    """ State 0,3 """
    assert t110100_x61()
    """ State 2 """
    # goods:2910:Mechanical Barrel, goods:9500:Rot Essence: Sculptor, goods:9790:Slender Finger
    assert t110100_x42(goods1=2910, goods2=9550, goods3=9500, z1=9104, goods4=9790)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110100_2000():
    """ State 0,2 """
    if not GetEventStatus(1001):
        """ State 3,5 """
        call = t110100_x1(val1=7001000, flag9=6001, flag13=6001, flag14=6001, flag15=6001, flag16=6001,
                          mode17=0, flag8=6000, val9=1000000, val10=1701001, val11=1701002, val12=1701003,
                          val13=-1)
        def WhilePaused():
            c511(GetEventStatus(71100128) == 1 and (IsPlayerMovingACertainDistance(0.1) == 1 or GetDistanceToPlayer() > 1.5),
                 71100127, 1)
        if call.Done():
            pass
        elif GetEventStatus(1001) == 1:
            """ State 6 """
            Label('L0')
            assert (t110100_x1(val1=7001020, flag9=6001, flag13=6001, flag14=6001, flag15=6001, flag16=6001,
                    mode17=0, flag8=6000, val9=-1, val10=-1, val11=-1, val12=-1, val13=-1))
    else:
        """ State 4 """
        Goto('L0')
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110100_x0(action2=_):
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

def t110100_x1(val1=_, flag9=6001, flag13=_, flag14=_, flag15=_, flag16=_, mode17=0, flag8=6000, val9=_,
               val10=_, val11=_, val12=_, val13=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110100_x38(val1=val1, flag9=flag9, flag13=flag13, flag14=flag14, flag15=flag15, flag16=flag16,
                           mode17=mode17, flag8=flag8)
        if call.Done():
            break
        elif (not f116(-1) == val9 and not f116(-1) == val10 and not f116(-1) == val11 and not DoesSelfHaveSpEffect(4510)
              and not val9 == -1 and not f116(-1) == val12 and not f116(-1) == val13):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val9 or f116(-1) == val10 or f116(-1) == val11 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val12 and f116(-1) == val13))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val9 and not f116(-1) == val10 and not f116(-1) == val11 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val12 and not f116(-1) == val13):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t110100_x2():
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

def t110100_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110100_x4(text3=_, flag18=_, flag28=0, mode26=1):
    """ State 0,7 """
    assert t110100_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag28:
        """ State 1 """
        TalkToPlayer(text3, -1, -1, flag28, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text3, -1, -1, flag28, 1)
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
    SetEventState(flag18, 1)
    """ State 8 """
    return 0

def t110100_x5(text2=_, flag27=0, mode25=1):
    """ State 0,6 """
    assert t110100_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag27:
        """ State 1 """
        TalkToPlayer(text2, -1, -1, flag27, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text2, -1, -1, flag27, 1)
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

def t110100_x6(lot1=_):
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

def t110100_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t110100_x8(z9=4):
    """ State 0,2 """
    if not CompareRNGValue(0, 0) != -1:
        """ State 1,4 """
        ShuffleRNGSeed(z9)
    else:
        """ State 3 """
        pass
    """ State 5 """
    SetRNGSeed()
    """ State 6 """
    return 0

def t110100_x9(flag4=1019, flag5=1015, flag6=1016, val2=5, val3=10, val4=12, val5=10, val6=12, flag7=6001,
               val7=7001000, flag8=6000, flag9=6001, flag10=6000, flag11=6000, val8=2, val9=1000000,
               val10=1701001, val11=1701002, mode12=1, mode13=1, mode14=0, val12=1701003, val13=1000000,
               mode15=0, flag12=6000, mode16=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110100_x10(val2=val2, val3=val3, val4=val4, val5=val5, val6=val6, flag7=flag7, val7=val7,
                           flag8=flag8, flag9=flag9, flag10=flag10, flag11=flag11, val8=val8, val9=val9,
                           val10=val10, val11=val11, mode12=mode12, mode13=mode13, mode14=mode14, val12=val12,
                           val13=val13, mode15=mode15, mode16=mode16)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag4) == 1) and not GetEventStatus(flag12):
            pass
        elif GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1:
            """ State 3 """
            call = t110100_x25(val3=val3, val4=val4)
            if CheckSelfDeath() == 1 or GetEventStatus(flag4) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag5) and not GetEventStatus(flag6):
                continue
        """ State 2 """
        call = t110100_x11(flag4=flag4, val3=val3, val4=val4)
        assert not CheckSelfDeath() and not GetEventStatus(flag4) and not DoesSelfHaveSpEffect(30100)

def t110100_x10(val2=5, val3=10, val4=12, val5=10, val6=12, flag7=6001, val7=7001000, flag8=6000, flag9=6001,
                flag10=6000, flag11=6000, val8=2, val9=1000000, val10=1701001, val11=1701002, mode12=1,
                mode13=1, mode14=0, val12=1701003, val13=1000000, mode15=0, mode16=0):
    """ State 0,4 """
    while True:
        call = t110100_x27(val7=val7, flag8=flag8, flag9=flag9, val9=val9, val10=val10, val11=val11,
                           val12=val12, val13=val13)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110100_x12(val2=val2, val8=val8, mode12=mode12, mode13=mode13, mode14=mode14, mode15=mode15)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode16 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode16 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag11) == 1:
            Goto('L0')
        elif not GetEventStatus(flag7) and GetEventStatus(flag10) == 1 and GetDistanceToPlayer() < val5:
            """ State 3 """
            call = t110100_x13(val6=val6)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode16 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110100_x14(val3=val3, val4=val4)

def t110100_x11(flag4=1019, val3=10, val4=12):
    """ State 0,1 """
    if GetEventStatus(flag4) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val3:
            """ State 4,6 """
            call = t110100_x22()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val4:
                """ State 7 """
                assert t110100_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110100_x12(val2=5, val8=2, mode12=1, mode13=1, mode14=0, mode15=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110100_x20(mode12=mode12, mode14=mode14)
    def WhilePaused():
        c1117(val8, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode13 == 1, 0.1)
        c5120(val2 == 1 and not val8 and mode15 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t110100_x17()
    elif GetDistanceToPlayer() > val2:
        """ State 3 """
        assert t110100_x16()
    """ State 4 """
    return 0

def t110100_x13(val6=12):
    """ State 0,1 """
    call = t110100_x26()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 2 """
        assert t110100_x2()
    """ State 3 """
    return 0

def t110100_x14(val3=10, val4=12):
    """ State 0,4 """
    assert t110100_x2() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110100_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110100_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110100_x15(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 2 """
    call = t110100_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 3 """
        assert t110100_x2()
    """ State 4 """
    return 0

def t110100_x16():
    """ State 0,1 """
    assert t110100_x2()
    """ State 2 """
    return 0

def t110100_x17():
    """ State 0,2 """
    assert t110100_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110100_x18(val3=10, val4=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val3
        """ State 3 """
        call = t110100_x23()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val4:
            """ State 4 """
            assert t110100_x2()

def t110100_x19():
    """ State 0,1 """
    assert t110100_x21(z8=1101, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t110100_x20(mode12=1, mode14=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode12 == 1 and not mode14, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode12 == 1 and mode14 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t110100_x21(z8=1000, mode21=0, mode22=0, mode23=0, mode24=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110100_x21(z8=_, mode21=0, mode22=0, mode23=0, mode24=0):
    """ State 0,4 """
    if f118(z8) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z8)
        assert f117() == mode21 or f117() == mode22 or f117() == mode23 or f117() == mode24
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110100_x22():
    """ State 0,1 """
    call = t110100_x21(z8=1103, mode21=0, mode22=0, mode23=0, mode24=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110100_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110100_x23():
    """ State 0,2 """
    call = t110100_x21(z8=1102, mode21=0, mode22=0, mode23=0, mode24=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110100_x24():
    """ State 0,1 """
    assert t110100_x21(z8=1001, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t110100_x25(val3=10, val4=12):
    """ State 0,1 """
    while True:
        call = t110100_x18(val3=val3, val4=val4)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110100_x31(val3=val3, val4=val4)
            assert not IsPlayerDead()
    """ State 2 """
    t110100_x15(val3=val3, val4=val4)

def t110100_x26():
    """ State 0,1 """
    assert t110100_x21(z8=1100, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t110100_x27(val7=7001000, flag8=6000, flag9=6001, val9=1000000, val10=1701001, val11=1701002, val12=1701003,
                val13=1000000):
    """ State 0,1 """
    call = t110100_x21(z8=2000, mode21=0, mode22=0, mode23=0, mode24=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110100_x1(val1=val7, flag9=flag9, flag13=6000, flag14=6000, flag15=6000, flag16=6000,
                mode17=0, flag8=flag8, val9=val9, val10=val10, val11=val11, val12=val12, val13=val13))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110100_x28(val1=_, z4=_, text1=_):
    """ State 0,1 """
    while True:
        """ State 3 """
        assert (t110100_x1(val1=val1, flag9=6001, flag13=6001, flag14=6001, flag15=6001, flag16=6001,
                mode17=0, flag8=6000, val9=-1, val10=-1, val11=-1, val12=-1, val13=-1))
        """ State 2 """
        ClearPlayerDamageInfo()
        """ State 4 """
        call = t110100_x30(text1=text1, z4=z4)
        def WhilePaused():
            c1117(10, 10000)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1):
            """ State 5 """
            assert t110100_x17()

def t110100_x29(z6=-1, z7=_, val14=_, mode20=1, val15=0.5):
    """ State 0,1 """
    def WhilePaused():
        c1117(z7, z6)
    if f116(z6) == val14 and mode20 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val15:
        """ State 3 """
        return 1

def t110100_x30(text1=_, z4=_):
    """ State 0,1 """
    if f116(10000) == 10:
        """ State 3 """
        call = t110100_x4(text3=text1, flag18=z4, flag28=0, mode26=1)
        if call.Done():
            pass
        elif not f116(10000) == 10:
            pass
    elif not f116(10000) == 10 and GetCurrentStateElapsedTime() > 0.5:
        """ State 2 """
        pass
    """ State 4 """
    return 0

def t110100_x31(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 3 """
    call = t110100_x32()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 2 """
        assert t110100_x2()
    """ State 4 """
    return 0

def t110100_x32():
    """ State 0,1 """
    assert t110100_x21(z8=1002, mode21=0, mode22=0, mode23=0, mode24=0)
    """ State 2 """
    return 0

def t110100_x33(flag23=71100575, flag24=71100576, flag25=71100577, flag26=71100578, z5=71100580):
    """ State 0,3 """
    # goods:9100:Ashina Sake
    call = t110100_x34(flag19=flag23, goods7=9100)
    if call.Get() == 0:
        """ State 1 """
        Label('L0')
        SetEventState(z5, 1)
    elif call.Done():
        """ State 4 """
        # goods:9104:Ashina Sake
        call = t110100_x34(flag19=flag23, goods7=9104)
        if call.Get() == 0:
            Goto('L0')
        elif call.Done():
            """ State 5 """
            # goods:9101:Unrefined Sake
            call = t110100_x34(flag19=flag24, goods7=9101)
            if call.Get() == 0:
                Goto('L0')
            elif call.Done():
                """ State 6 """
                # goods:9105:Unrefined Sake
                call = t110100_x34(flag19=flag24, goods7=9105)
                if call.Get() == 0:
                    Goto('L0')
                elif call.Done():
                    """ State 7 """
                    # goods:9102:Monkey Booze
                    call = t110100_x34(flag19=flag25, goods7=9102)
                    if call.Get() == 0:
                        Goto('L0')
                    elif call.Done():
                        """ State 8 """
                        # goods:9103:Dragonspring Sake
                        call = t110100_x34(flag19=flag26, goods7=9103)
                        if call.Get() == 0:
                            Goto('L0')
                        elif call.Done():
                            """ State 2 """
                            SetEventState(z5, 0)
    """ State 9 """
    return 0

def t110100_x34(flag19=_, goods7=_):
    """ State 0,1 """
    if ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1 and not GetEventStatus(flag19):
        """ State 2,4 """
        return 0
    else:
        """ State 3,5 """
        return 1

def t110100_x35(flag19=71100575, flag20=71100576, flag21=71100577, flag22=71100578):
    """ State 0,1,9 """
    # goods:9100:Ashina Sake
    call = t110100_x34(flag19=flag19, goods7=9100)
    if call.Get() == 1:
        """ State 10 """
        # goods:9104:Ashina Sake
        call = t110100_x34(flag19=flag19, goods7=9104)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 2 """
            Label('L0')
            # action:15000500:Treat to Ashina Sake
            AddTalkListData(50, 15000500, 6001)
    elif call.Done():
        Goto('L0')
    """ State 6,11 """
    # goods:9101:Unrefined Sake
    call = t110100_x34(flag19=flag20, goods7=9101)
    if call.Get() == 1:
        """ State 12 """
        # goods:9105:Unrefined Sake
        call = t110100_x34(flag19=flag20, goods7=9105)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 3 """
            Label('L1')
            # action:15000501:Treat to Unrefined Sake
            AddTalkListData(51, 15000501, 6001)
    elif call.Done():
        Goto('L1')
    """ State 7,13 """
    # goods:9102:Monkey Booze
    call = t110100_x34(flag19=flag21, goods7=9102)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 4 """
        # action:15000502:Treat to Monkey Booze
        AddTalkListData(52, 15000502, 6001)
    """ State 8,14 """
    # goods:9103:Dragonspring Sake
    call = t110100_x34(flag19=flag22, goods7=9103)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 5 """
        # action:15000503:Treat to Dragonspring Sake
        AddTalkListData(53, 15000503, 6001)
    """ State 15 """
    return 0

def t110100_x36(goods5=_, goods6=_, mode19=_):
    """ State 0,2 """
    if mode19 == 1:
        """ State 3 """
        Label('L0')
        if ComparePlayerInventoryNumber(3, goods5, 2, 0, 0) == 1:
            """ State 1 """
            PlayerEquipmentQuantityChange(3, goods5, -1)
        else:
            """ State 4 """
            Label('L1')
            if ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1:
                """ State 5 """
                PlayerEquipmentQuantityChange(3, goods6, -1)
            else:
                Goto('L0')
    else:
        Goto('L1')
    """ State 6 """
    return 0

def t110100_x37(text2=10003100, text3=10003150, lot1=61000, flag17=71100590, flag18=71100112, mode18=_):
    """ State 0,3 """
    if not mode18:
        """ State 4,8 """
        assert t110100_x5(text2=text2, flag27=0, mode25=1)
        """ State 2 """
        SetEventState(flag17, 1)
        """ State 10 """
        assert t110100_x6(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag17) == 1 and not GetEventStatus(flag18):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t110100_x4(text3=text3, flag18=flag18, flag28=0, mode26=1)
    """ State 11 """
    return 0

def t110100_x38(val1=_, flag9=6001, flag13=_, flag14=_, flag15=_, flag16=_, mode17=0, flag8=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag9) == 1 or GetEventStatus(flag13) == 1 or GetEventStatus(flag14) ==
                1 or GetEventStatus(flag15) == 1 or GetEventStatus(flag16) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag8)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag9) and not GetEventStatus(flag13) and not GetEventStatus(flag14)
                  and not GetEventStatus(flag15) and not GetEventStatus(flag16)):
                Continue('mainloop')
            elif GetEventStatus(flag8) == 1:
                pass
            elif CheckActionButtonArea(val1 + mode17) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t110100_x39():
    """ State 0,9,11 """
    assert DoesPlayerHaveSpEffect(30510) == 1 or GetCurrentStateElapsedTime() > 10
    """ State 1 """
    c1111(1101000, 1101009)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 3 """
    if GetEventStatus(1001) == 1:
        """ State 4 """
        pass
    else:
        """ State 5,6 """
        if not GetEventStatus(6706) and GetEventStatus(71100144) == 1:
            """ State 7,12 """
            SetEventState(71100125, 0)
            assert t110100_x62(mode2=0)
            """ State 14 """
            return 1
        else:
            """ State 8 """
            pass
    """ State 13 """
    return 0

def t110100_x40():
    """ State 0,3,5 """
    assert DoesPlayerHaveSpEffect(30510) == 1 or GetCurrentStateElapsedTime() > 10
    """ State 1 """
    c1123()
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 6 """
    return 0

def t110100_x41(mode11=_):
    """ State 0,10 """
    if not mode11:
        """ State 11,18 """
        # talk:10012600:I've held onto this charm of yours.
        assert t110100_x5(text2=10012600, flag27=0, mode25=1)
        """ State 4 """
        ClearTalkListData()
        """ State 5 """
        # action:14010010:Take Kuro's Charm back
        AddTalkListData(1, 14010010, 6001)
        # action:14010011:Let him keep Kuro's Charm
        AddTalkListData(2, 14010011, 6001)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 15 """
        if GetTalkListEntryResult() == 1:
            """ State 21 """
            # action:12010100:Are you sure you want to take back the charm,\nand avoid the path of additional hardships? \n(This decision cannot be undone for this playthrough.)
            call = t110100_x0(action2=12010100)
            if call.Get() == 0:
                """ State 1 """
                Label('L0')
                """ State 8 """
                SetEventState(71100593, 1)
                """ State 20 """
                # talk:10012700:Yes, I'll take it.
                assert t110100_x5(text2=10012700, flag27=0, mode25=1)
                """ State 13 """
                SetEventState(71100593, 0)
                """ State 3 """
                c1121(0)
                """ State 17 """
                assert t110100_x6(lot1=61006)
                """ State 16 """
                # action:13010100:You will not experience additional hardships in this playthrough.
                assert t110100_x7(action1=13010100)
            elif call.Done():
                """ State 2 """
                Label('L1')
                """ State 7 """
                SetEventState(71100594, 1)
                """ State 19 """
                # talk:10012800:.........
                assert t110100_x5(text2=10012800, flag27=0, mode25=1)
                """ State 14 """
                SetEventState(71100594, 0)
        elif GetTalkListEntryResult() == 2:
            Goto('L1')
        else:
            """ State 9 """
            pass
    else:
        """ State 12 """
        if GetEventStatus(71100593) == 1:
            Goto('L0')
        elif GetEventStatus(71100594) == 1:
            Goto('L1')
        else:
            """ State 23 """
            return 1
    """ State 22 """
    return 0

def t110100_x42(goods1=2910, goods2=9550, goods3=9500, z1=9104, goods4=9790):
    """ State 0,1 """
    if GetEventStatus(1001) == 1:
        """ State 2,79 """
        Label('L0')
        assert t110100_x43(goods2=goods2, goods3=goods3, goods1=goods1)
    else:
        """ State 43,80 """
        call = t110100_x51(mode9=1)
        if call.Get() == 1:
            """ State 81 """
            call = t110100_x52(mode8=1)
            if call.Get() == 1:
                """ State 82 """
                call = t110100_x53(mode7=1)
                if call.Get() == 1:
                    """ State 83 """
                    call = t110100_x54(mode6=1)
                    if call.Get() == 1:
                        """ State 92 """
                        call = t110100_x62(mode2=1)
                        if call.Get() == 1:
                            """ State 85 """
                            call = t110100_x58(mode3=1, goods2=goods2, goods3=goods3)
                            if call.Get() == 1:
                                """ State 84 """
                                call = t110100_x41(mode11=1)
                                if call.Get() == 1:
                                    """ State 86 """
                                    # talk:10003100:........., talk:10003150:What is it...?
                                    call = t110100_x37(text2=10003100, text3=10003150, lot1=61000, flag17=71100590,
                                                       flag18=71100112, mode18=1)
                                    if call.Get() == 1:
                                        """ State 91 """
                                        call = t110100_x56(z2=10001900, z3=10002000, flag1=71100591,
                                                           flag2=71100592, flag3=71100102, mode4=1)
                                        if call.Get() == 1:
                                            """ State 53 """
                                            if not GetEventStatus(71100100):
                                                """ State 54,95 """
                                                # talk:10000900:What do you call yourself?
                                                assert (t110100_x4(text3=10000900, flag18=71100100, flag28=0,
                                                        mode26=1))
                                                Goto('L0')
                                            else:
                                                """ State 18 """
                                                if GetEventStatus(6010) == 1 and not GetEventStatus(6705):
                                                    """ State 19,64 """
                                                    # talk:10003100:........., talk:10003150:What is it...?
                                                    assert (t110100_x37(text2=10003100, text3=10003150,
                                                            lot1=61000, flag17=71100590, flag18=71100112,
                                                            mode18=0))
                                                else:
                                                    """ State 16 """
                                                    if not GetEventStatus(6012):
                                                        """ State 78 """
                                                        call = t110100_x57()
                                                        if call.Get() == 1:
                                                            """ State 15,61 """
                                                            # talk:10001300:I've found one...
                                                            assert (t110100_x4(text3=10001300, flag18=71100119,
                                                                    flag28=0, mode26=1))
                                                            """ State 52 """
                                                            SetEventState(6012, 1)
                                                            Goto('L0')
                                                        elif call.Done():
                                                            pass
                                                    elif (GetEventStatus(71100119) == 1 and GetEventStatus(6740)
                                                          == 1 and not GetEventStatus(6013)):
                                                        """ State 17,62 """
                                                        # talk:10002100:Ohhh... I see you've acquired something quite interesting.
                                                        assert t110100_x5(text2=10002100, flag27=0, mode25=1)
                                                        """ State 63 """
                                                        def ExitPause():
                                                            SetEventState(71100125, 0)
                                                            SetEventState(71100126, 0)
                                                        assert t110100_x55(goods1=goods1, mode5=1)
                                                        Goto('L0')
                                                    else:
                                                        pass
                                                    """ State 3 """
                                                    if (GetEventStatus(70002000) == 1 and not GetEventStatus(1268)
                                                        and not GetEventStatus(71100449)):
                                                        """ State 4 """
                                                        if GetEventStatus(71100447) == 1:
                                                            """ State 44,87 """
                                                            # talk:10003300:(Cough, cough...)
                                                            assert t110100_x5(text2=10003300, flag27=0, mode25=1)
                                                            Goto('L0')
                                                        elif not GetEventStatus(71100109):
                                                            """ State 5,55 """
                                                            # talk:10080000:(coughing)
                                                            assert (t110100_x4(text3=10080000, flag18=71100109,
                                                                    flag28=0, mode26=1))
                                                            Goto('L2')
                                                        elif GetEventStatus(71100148) == 1:
                                                            """ State 6 """
                                                            if not GetEventStatus(71100110):
                                                                """ State 7,56 """
                                                                # talk:10080600:...Well? Need something else?
                                                                assert (t110100_x4(text3=10080600, flag18=71100110,
                                                                        flag28=0, mode26=1))
                                                                Goto('L0')
                                                            else:
                                                                """ State 8,57 """
                                                                # talk:10080700:.........
                                                                assert t110100_x5(text2=10080700, flag27=0, mode25=1)
                                                                Goto('L0')
                                                        else:
                                                            """ State 9 """
                                                            if not GetEventStatus(71110177):
                                                                """ State 10,58 """
                                                                # talk:10080100:Ask Emma... about the rest...
                                                                assert t110100_x5(text2=10080100, flag27=0, mode25=1)
                                                                Goto('L0')
                                                            else:
                                                                """ State 11,59 """
                                                                # talk:10080200:(Cough, cough...)
                                                                assert t110100_x5(text2=10080200, flag27=0, mode25=1)
                                                                Goto('L0')
                                                        """ State 26 """
                                                        Label('L1')
                                                        SetEventState(71100101, -1)
                                                        Goto('L0')
                                                    else:
                                                        """ State 12 """
                                                        if GetEventStatus(71100145) == 1:
                                                            """ State 13,60 """
                                                            # talk:10080800:.........
                                                            assert t110100_x5(text2=10080800, flag27=0, mode25=1)
                                                            """ State 14 """
                                                            SetEventState(71100145, 0)
                                                            Goto('L0')
                                                        else:
                                                            """ State 20 """
                                                            # goods:9010:Young Lord's Bell Charm
                                                            if (not GetEventStatus(132) and ComparePlayerInventoryNumber(3,
                                                                9010, 2, 0, 0) == 1):
                                                                """ State 21 """
                                                                if not GetEventStatus(71100101):
                                                                    """ State 23 """
                                                                    if GetEventStatus(71100155) == 1:
                                                                        """ State 24,65 """
                                                                        # talk:10001400:I can... hear the ring-ring of a bell chime.
                                                                        assert t110100_x5(text2=10001400, flag27=0, mode25=1)
                                                                        Goto('L1')
                                                                    else:
                                                                        """ State 25,66 """
                                                                        # talk:10001500:I can... hear the ring-ring of a bell chime.
                                                                        assert t110100_x5(text2=10001500, flag27=0, mode25=1)
                                                                        Goto('L1')
                                                                else:
                                                                    """ State 22,67 """
                                                                    # talk:10001600:I've gone and said much too much.
                                                                    assert t110100_x5(text2=10001600, flag27=0, mode25=1)
                                                                    Goto('L0')
                                                            else:
                                                                """ State 27 """
                                                                if (GetEventStatus(132) == 1 and not GetEventStatus(71100103)
                                                                    and not GetEventStatus(9302)):
                                                                    """ State 28,68 """
                                                                    # talk:10001700:... So you're back.
                                                                    assert (t110100_x4(text3=10001700, flag18=71100103,
                                                                            flag28=0, mode26=1))
                                                                    Goto('L0')
                                                                else:
                                                                    """ State 29 """
                                                                    if GetEventStatus(9302) == 1 and not GetEventStatus(71100620):
                                                                        """ State 30,51 """
                                                                        if not GetEventStatus(71100102):
                                                                            """ State 70 """
                                                                            # talk:10001800:It appears...
                                                                            assert t110100_x5(text2=10001800, flag27=0, mode25=1)
                                                                        else:
                                                                            """ State 94 """
                                                                            # talk:10001850:It appears...
                                                                            assert t110100_x5(text2=10001850, flag27=0, mode25=1)
                                                                        """ State 69 """
                                                                        call = t110100_x56(z2=10001900, z3=10002000, flag1=71100591,
                                                                                           flag2=71100592, flag3=71100102, mode4=0)
                                                                        if call.Get() == 2:
                                                                            pass
                                                                        elif call.Done():
                                                                            Goto('L0')
                                                                    elif (not GetEventStatus(71100104) and GetEventStatus(9303)
                                                                          == 1 and not GetEventStatus(8301)):
                                                                        """ State 32,71 """
                                                                        # talk:10002200:Oh, you're here? Need something?
                                                                        assert (t110100_x4(text3=10002200, flag18=71100104,
                                                                                flag28=0, mode26=1))
                                                                        Goto('L0')
                                                                    else:
                                                                        """ State 31 """
                                                                        if GetEventStatus(9308) == 1 and not GetEventStatus(71100106):
                                                                            """ State 33,72 """
                                                                            # talk:10002500:.........
                                                                            assert (t110100_x4(text3=10002500, flag18=71100106,
                                                                                    flag28=0, mode26=1))
                                                                            Goto('L0')
                                                                        elif GetEventStatus(9317) == 1 and not GetEventStatus(71100107):
                                                                            """ State 34,73 """
                                                                            # talk:10002700:You have a slightly different air about you now.
                                                                            assert (t110100_x4(text3=10002700, flag18=71100107,
                                                                                    flag28=0, mode26=1))
                                                                            Goto('L0')
                                                                        else:
                                                                            """ State 35 """
                                                                            if (not GetEventStatus(71100105) and GetEventStatus(50006230)
                                                                                == 1 and not GetEventStatus(71100575)):
                                                                                """ State 36,74 """
                                                                                # talk:10002300:I brought tea.
                                                                                assert (t110100_x4(text3=10002300, flag18=71100105,
                                                                                        flag28=0, mode26=1))
                                                                                Goto('L0')
                                                                            else:
                                                                                """ State 37 """
                                                                                # goods:9790:Slender Finger
                                                                                if (not GetEventStatus(71100108) and ComparePlayerInventoryNumber(3,
                                                                                    goods4, 2, 0, 0) == 1):
                                                                                    """ State 38,75 """
                                                                                    # talk:10002800:What's that you have there...
                                                                                    assert (t110100_x4(text3=10002800, flag18=71100108,
                                                                                            flag28=0, mode26=1))
                                                                                    Goto('L0')
                                                                                else:
                                                                                    """ State 39 """
                                                                                    if GetEventStatus(71100449) == 1:
                                                                                        """ State 45,90 """
                                                                                        # talk:10003700:I see you're here, too...
                                                                                        assert t110100_x5(text2=10003700, flag27=0, mode25=1)
                                                                                        Goto('L0')
                                                                                    elif GetEventStatus(1268) == 1:
                                                                                        """ State 46 """
                                                                                        if not GetEventStatus(9317):
                                                                                            """ State 47,88 """
                                                                                            # talk:10003400:.........
                                                                                            assert t110100_x5(text2=10003400, flag27=0, mode25=1)
                                                                                            Goto('L0')
                                                                                        else:
                                                                                            """ State 48,89 """
                                                                                            # talk:10003600:.........
                                                                                            assert t110100_x5(text2=10003600, flag27=0, mode25=1)
                                                                                            Goto('L0')
                                                                                    else:
                                                                                        """ State 49 """
                                                                                        if GetEventStatus(71100562) == 1 and not GetEventStatus(71100111):
                                                                                            """ State 50,93 """
                                                                                            # talk:10002400:Listen...
                                                                                            assert (t110100_x4(text3=10002400, flag18=71100111,
                                                                                                    flag28=0, mode26=1))
                                                                                            Goto('L0')
                                                                                        else:
                                                                                            """ State 40 """
                                                                                            if not GetEventStatus(71100119):
                                                                                                """ State 41,76 """
                                                                                                # talk:10001000:You again?
                                                                                                assert t110100_x5(text2=10001000, flag27=0, mode25=1)
                                                                                                Goto('L0')
                                                                                            else:
                                                                                                """ State 42,77 """
                                                                                                # talk:10002900:You... Need something?
                                                                                                assert t110100_x5(text2=10002900, flag27=0, mode25=1)
                                                                                                Goto('L0')
                                        elif call.Get() == 2:
                                            pass
                                        elif call.Done():
                                            Goto('L0')
                                    elif call.Done():
                                        Goto('L0')
                                elif call.Done():
                                    Goto('L0')
                            elif call.Done():
                                Goto('L0')
                        elif call.Done():
                            Goto('L0')
                    elif call.Done():
                        Goto('L0')
                elif call.Done():
                    Goto('L0')
            elif call.Done():
                Goto('L0')
        elif call.Done():
            Goto('L0')
    """ State 96 """
    Label('L2')
    return 0

def t110100_x43(goods2=9550, goods3=9500, goods1=2910):
    """ State 0,5 """
    if not GetEventStatus(1001):
        """ State 1,9 """
        call = t110100_x60()
        if call.Get() == 1 and (not GetEventStatus(9303) and not GetEventStatus(70002000)):
            """ State 3,6 """
            assert t110100_x44(mode10=0)
        elif call.Done():
            """ State 4,7 """
            assert t110100_x46(goods2=goods2, goods3=goods3, goods1=goods1)
    else:
        """ State 2,8 """
        assert t110100_x48(mode1=0, goods1=goods1)
    """ State 10 """
    return 0

def t110100_x44(mode10=_):
    """ State 0,3 """
    while True:
        ClearTalkListData()
        """ State 4 """
        # action:15010300:Ask how you got here
        AddTalkListData(20, 15010300, 6001)
        # action:15010301:Ask about your new left arm
        AddTalkListData(21, 15010301, 6001)
        # action:15010302:Ask about the Divine Heir's blood
        AddTalkListDataIf(GetEventStatus(71100115) == 1, 22, 15010302, 6001)
        if not mode10:
            """ State 8,10 """
            ShowShopMessage(1)
        else:
            """ State 9,11 """
            c1126(0)
        """ State 2 """
        if GetTalkListEntryResult() == 20:
            """ State 1 """
            if not GetEventStatus(71100115):
                """ State 15 """
                # talk:10011200:Why am I here?
                assert t110100_x4(text3=10011200, flag18=71100115, flag28=0, mode26=1)
            else:
                """ State 16 """
                # talk:10011300:Some time has passed since I found you...
                assert t110100_x5(text2=10011300, flag27=0, mode25=1)
        elif GetTalkListEntryResult() == 21:
            """ State 5 """
            if not GetEventStatus(71100116):
                """ State 17 """
                # talk:10011400:My left arm... What did you do to me?
                assert t110100_x4(text3=10011400, flag18=71100116, flag28=0, mode26=1)
            else:
                """ State 18 """
                # talk:10011500:That is what I call the Shinobi Prosthetic.  
                assert t110100_x5(text2=10011500, flag27=0, mode25=1)
        elif GetTalkListEntryResult() == 22:
            """ State 6 """
            if not GetEventStatus(71100117):
                """ State 19 """
                # talk:10011600:What did you mean when you said they'll make use of his bloodline?
                assert t110100_x4(text3=10011600, flag18=71100117, flag28=0, mode26=1)
            else:
                """ State 20 """
                # talk:10011700:The Dragon's Heritage.
                assert t110100_x5(text2=10011700, flag27=0, mode25=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7 """
            if not mode10:
                """ State 21 """
                assert t110100_x45()
                break
            else:
                break
        """ State 12,14 """
    """ State 22 """
    return 0

def t110100_x45():
    """ State 0,1 """
    if GetEventStatus(70002000) == 1 and not GetEventStatus(1268) and not GetEventStatus(71100449):
        """ State 3,14 """
        # talk:10080300:......... (Wheeze...)
        assert t110100_x5(text2=10080300, flag27=0, mode25=1)
    else:
        """ State 2 """
        if not GetEventStatus(71100135) and not GetEventStatus(71100245):
            """ State 5,16 """
            # talk:10020100:You're quite the strange one, yet...
            assert t110100_x4(text3=10020100, flag18=71100135, flag28=0, mode26=1)
        elif not GetEventStatus(71100136) and not GetEventStatus(71100146):
            """ State 6,17 """
            # talk:10020200:Yes, right... that kind-faced Buddha you see over there...?
            assert t110100_x4(text3=10020200, flag18=71100136, flag28=0, mode26=1)
        elif not GetEventStatus(71100137) and GetEventStatus(71100119) == 1:
            """ State 7,18 """
            # talk:10020400:If you want more forms for that fang of yours...
            assert t110100_x4(text3=10020400, flag18=71100137, flag28=0, mode26=1)
        elif not GetEventStatus(71100138) and GetEventStatus(71100120) == 1:
            """ State 8,19 """
            # talk:10020300:With the mechanical barrel... so many possibliites...
            assert t110100_x4(text3=10020300, flag18=71100138, flag28=0, mode26=1)
        # weapon:79200:Malcontent
        elif not GetEventStatus(6011) and ComparePlayerInventoryNumber(0, 79200, 2, 0, 0) == 1:
            """ State 9,20 """
            # talk:10020500:... Listen.
            assert t110100_x4(text3=10020500, flag18=71100139, flag28=0, mode26=1)
            """ State 13 """
            SetEventState(6011, 1)
        else:
            """ State 4 """
            if GetEventStatus(9317) == 1 and GetEventStatus(1268) == 1:
                """ State 11,22 """
                # talk:10020800:... Hey.
                assert t110100_x5(text2=10020800, flag27=0, mode25=1)
            elif GetEventStatus(1268) == 1 and not GetEventStatus(71110189):
                """ State 10,21 """
                # talk:10020700:......... Say...
                assert t110100_x5(text2=10020700, flag27=0, mode25=1)
            else:
                """ State 12,15 """
                # talk:10020600:Another time, then.
                assert t110100_x5(text2=10020600, flag27=0, mode25=1)
    """ State 23 """
    return 0

def t110100_x46(goods2=9550, goods3=9500, goods1=2910):
    """ State 0,4 """
    c1110()
    """ State 3 """
    while True:
        ClearTalkListData()
        """ State 21 """
        assert t110100_x60()
        """ State 8 """
        ShowShopMessage(1)
        """ State 2 """
        if GetTalkListEntryResult() == 1:
            """ State 1,17 """
            assert t110100_x49()
            continue
        elif GetTalkListEntryResult() == 2:
            """ State 5,14 """
            def ExitPause():
                SetEventState(71100125, 0)
            assert t110100_x39()
        elif GetTalkListEntryResult() == 3:
            """ State 6,15 """
            assert t110100_x48(mode1=1, goods1=goods1)
        elif GetTalkListEntryResult() == 4:
            """ State 11,19 """
            assert t110100_x50()
            continue
        elif GetTalkListEntryResult() == 5:
            """ State 10,20 """
            assert t110100_x58(mode3=0, goods2=goods2, goods3=goods3)
            continue
        elif GetTalkListEntryResult() == 6:
            """ State 9,16 """
            assert t110100_x41(mode11=0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,13,18 """
            assert t110100_x45()
            """ State 22 """
            return 0
        """ State 12 """

def t110100_x47(mode1=_, goods1=2910):
    """ State 0,13 """
    if not GetEventStatus(1001):
        """ State 14 """
        pass
    else:
        """ State 12 """
        if GetEventStatus(6740) == 1 and not GetEventStatus(6013):
            """ State 15,19 """
            assert t110100_x55(goods1=goods1, mode5=0)
        else:
            pass
    """ State 11 """
    c1110()
    """ State 3 """
    while True:
        ClearTalkListData()
        """ State 4 """
        # action:15010000:Fit New Prosthetic Tool
        AddTalkListData(10, 15010000, 6001)
        # action:15010001:Upgrade Prosthetic Tool
        AddTalkListDataIf(GetEventStatus(6013) == 1, 11, 15010001, 6001)
        # action:15010900:Avoid additional hardships
        AddTalkListDataIf(GetEventStatus(6911) == 1 and GetEventStatus(1001) == 1, 16, 15010900, 6001)
        if mode1 == 1:
            """ State 7 """
            assert GetCurrentStateElapsedFrames() > 1
            """ State 10 """
            c1126(1)
        else:
            """ State 9,8 """
            ShowShopMessage(1)
        """ State 2 """
        if GetTalkListEntryResult() == 10:
            """ State 1,17 """
            call = t110100_x39()
            if call.Get() == 1:
                break
            elif call.Done():
                pass
        elif GetTalkListEntryResult() == 11:
            """ State 5,18 """
            assert t110100_x40()
        elif GetTalkListEntryResult() == 16:
            """ State 16,20 """
            assert t110100_x63()
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6 """
            break
    """ State 21 """
    return 0

def t110100_x48(mode1=_, goods1=2910):
    """ State 0,1 """
    SetEventState(71100125, 1)
    def ExitPause():
        SetEventState(71100125, 0)
    assert t110100_x47(mode1=mode1, goods1=goods1)
    """ State 2 """
    return 0

def t110100_x49():
    """ State 0,1 """
    if GetEventStatus(70002000) == 1 and GetEventStatus(71100109) == 1:
        """ State 2,6 """
        # talk:10080400:(Cough, cough...)
        assert t110100_x5(text2=10080400, flag27=0, mode25=1)
    else:
        """ State 3 """
        if not GetEventStatus(9303):
            """ State 4,7 """
            # talk:10001100:No matter what I do, any Buddha I carve is an incarnation of wrath. 
            assert t110100_x5(text2=10001100, flag27=0, mode25=1)
            """ State 8 """
            assert t110100_x44(mode10=1)
        else:
            """ State 5,9 """
            call = t110100_x8(z9=4)
            if call.Done() and CompareRNGValue(0, 0) == 1:
                """ State 10 """
                # talk:10012200:Idols are all I can carve.
                assert t110100_x5(text2=10012200, flag27=0, mode25=1)
            elif call.Done() and CompareRNGValue(0, 1) == 1:
                """ State 11 """
                # talk:10012300:I've abandoned the path of the Shinobi.
                assert t110100_x5(text2=10012300, flag27=0, mode25=1)
            elif call.Done() and CompareRNGValue(0, 2) == 1:
                """ State 12 """
                # talk:10012400:.........
                assert t110100_x5(text2=10012400, flag27=0, mode25=1)
            elif call.Done():
                """ State 13 """
                # talk:10012500:Ahh.. I'm parched.
                assert t110100_x5(text2=10012500, flag27=0, mode25=1)
    """ State 14 """
    return 0

def t110100_x50():
    """ State 0,3 """
    while True:
        ClearTalkListData()
        assert GetCurrentStateElapsedFrames() > 1
        """ State 9 """
        assert t110100_x35(flag19=71100575, flag20=71100576, flag21=71100577, flag22=71100578)
        """ State 2 """
        c1126(0)
        if GetTalkListEntryResult() == 50:
            """ State 1,10 """
            assert t110100_x51(mode9=0)
            """ State 14 """
            Label('L0')
            assert t110100_x33(flag23=71100575, flag24=71100576, flag25=71100577, flag26=71100578, z5=71100580)
            """ State 8 """
            if GetEventStatus(71100580) == 1:
                pass
            else:
                break
        elif GetTalkListEntryResult() == 51:
            """ State 4,11 """
            assert t110100_x52(mode8=0)
            Goto('L0')
        elif GetTalkListEntryResult() == 52:
            """ State 5,12 """
            assert t110100_x53(mode7=0)
            Goto('L0')
        elif GetTalkListEntryResult() == 53:
            """ State 7,13 """
            assert t110100_x54(mode6=0)
            Goto('L0')
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6 """
            break
    """ State 15 """
    return 0

def t110100_x51(mode9=_):
    """ State 0,5 """
    if not mode9:
        """ State 7,16 """
        # action:12095000:Give Ashina Sake?
        call = t110100_x0(action2=12095000)
        if call.Get() == 0:
            """ State 10,13 """
            # goods:9100:Ashina Sake, goods:9104:Ashina Sake
            assert t110100_x36(goods5=9100, goods6=9104, mode19=0)
            """ State 1 """
            Label('L0')
            SetEventState(71100575, 1)
            assert not GetEventStatus(71100126)
            """ State 12 """
            if GetEventStatus(71100573) == 1:
                """ State 3,14 """
                # talk:10011850:I brought some tea.
                def WhilePaused():
                    c1117(1701000, -1)
                assert t110100_x5(text2=10011850, flag27=0, mode25=1)
            else:
                """ State 4,15 """
                # talk:10011800:I brought some tea.
                def WhilePaused():
                    c1117(1701000, -1)
                assert t110100_x5(text2=10011800, flag27=0, mode25=1)
            """ State 2 """
            SetEventState(71100570, 1)
        elif call.Done():
            """ State 11 """
            pass
    else:
        """ State 6 """
        if GetEventStatus(71100575) == 1 and not GetEventStatus(71100570):
            """ State 9 """
            Goto('L0')
        else:
            """ State 8,18 """
            return 1
    """ State 17 """
    return 0

def t110100_x52(mode8=_):
    """ State 0,3 """
    if not mode8:
        """ State 5,13 """
        # action:12095001:Give Unrefined Sake?
        call = t110100_x0(action2=12095001)
        if call.Get() == 0:
            """ State 8,11 """
            # goods:9101:Unrefined Sake, goods:9105:Unrefined Sake
            assert t110100_x36(goods5=9101, goods6=9105, mode19=1)
            """ State 1 """
            Label('L0')
            SetEventState(71100576, 1)
            assert not GetEventStatus(71100126)
            """ State 10,12 """
            # talk:10011900:I brought some sake.
            def WhilePaused():
                c1117(1701000, -1)
            assert t110100_x5(text2=10011900, flag27=0, mode25=1)
            """ State 2 """
            SetEventState(71100571, 1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(71100576) == 1 and not GetEventStatus(71100571):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,15 """
            return 1
    """ State 14 """
    return 0

def t110100_x53(mode7=_):
    """ State 0,3 """
    if not mode7:
        """ State 5,13 """
        # action:12095002:Give Monkey Booze?
        call = t110100_x0(action2=12095002)
        if call.Get() == 0:
            """ State 8,11 """
            # goods:9102:Monkey Booze
            assert t110100_x36(goods5=9102, goods6=9102, mode19=1)
            """ State 1 """
            Label('L0')
            SetEventState(71100577, 1)
            assert not GetEventStatus(71100126)
            """ State 10,12 """
            # talk:10012000:I brought something for you.
            def WhilePaused():
                c1117(1701000, -1)
            assert t110100_x5(text2=10012000, flag27=0, mode25=1)
            """ State 2 """
            SetEventState(71100572, 1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(71100577) == 1 and not GetEventStatus(71100572):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,15 """
            return 1
    """ State 14 """
    return 0

def t110100_x54(mode6=_):
    """ State 0,3 """
    if not mode6:
        """ State 5,13 """
        # action:12095003:Give Dragonspring Sake?
        call = t110100_x0(action2=12095003)
        if call.Get() == 0:
            """ State 8,11 """
            # goods:9103:Dragonspring Sake
            assert t110100_x36(goods5=9103, goods6=9103, mode19=1)
            """ State 1 """
            Label('L0')
            SetEventState(71100578, 1)
            assert not GetEventStatus(71100126)
            """ State 10,12 """
            # talk:10012100:I brought sake.
            def WhilePaused():
                c1117(1701000, -1)
            assert t110100_x5(text2=10012100, flag27=0, mode25=1)
            """ State 2 """
            SetEventState(71100573, 1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(71100578) == 1 and not GetEventStatus(71100573):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,15 """
            return 1
    """ State 14 """
    return 0

def t110100_x55(goods1=2910, mode5=_):
    """ State 0,1 """
    SetEventState(71100125, 1)
    assert GetEventStatus(71100126) == 1
    """ State 5 """
    if mode5 == 1:
        """ State 3,8 """
        # talk:10002150:What difference does the barrel make?
        assert t110100_x5(text2=10002150, flag27=0, mode25=1)
    else:
        """ State 4 """
        pass
    """ State 2 """
    # goods:2910:Mechanical Barrel
    PlayerEquipmentQuantityChange(3, goods1, -1)
    """ State 6 """
    SetEventState(71100120, 1)
    SetEventState(6013, 1)
    if True:
        """ State 9 """
        # action:13010102:Mechanical Barrel fitted to Shinobi Prosthetic.
        assert t110100_x7(action1=13010102)
    else:
        """ State 7 """
        # action:13010101:Gave Mechanical Barrel.
        assert t110100_x7(action1=13010101)
    """ State 10 """
    return 0

def t110100_x56(z2=10001900, z3=10002000, flag1=71100591, flag2=71100592, flag3=71100102, mode4=_):
    """ State 0,11 """
    if not mode4:
        """ State 12,2 """
        c1110()
        """ State 1 """
        ClearTalkListData()
        """ State 3 """
        # action:14010000:Ask what the Buddha showed him
        AddTalkListData(1, 14010000, 6001)
        # action:14010001:Say nothing
        AddTalkListData(2, 14010001, 6001)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 5 """
            Label('L0')
            """ State 8 """
            SetEventState(flag1, 1)
            SetEventState(71100630, 1)
            """ State 15 """
            # talk:10001900:Sculptor...
            assert t110100_x5(text2=10001900, flag27=0, mode25=1)
            """ State 14 """
            SetEventState(71100620, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 6 """
            Label('L1')
            """ State 9 """
            SetEventState(flag2, 1)
            SetEventState(71100631, 1)
            """ State 16 """
            # talk:10002000:I understand.
            assert t110100_x5(text2=10002000, flag27=0, mode25=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,19 """
            return 2
    else:
        """ State 13 """
        if (GetEventStatus(flag1) == 1 and not GetEventStatus(71100620)) or GetEventStatus(71100630) == 1:
            Goto('L0')
        elif (GetEventStatus(flag2) == 1 and not GetEventStatus(flag3)) or GetEventStatus(71100631) == 1:
            Goto('L1')
        else:
            """ State 18 """
            return 1
    """ State 10 """
    SetEventState(flag3, 1)
    SetEventState(71100630, 0)
    SetEventState(71100631, 0)
    """ State 17 """
    return 0

def t110100_x57():
    """ State 0,1 """
    if (not GetEventStatus(6500) and not GetEventStatus(6501) and not GetEventStatus(6502) and not GetEventStatus(6503)
        and not GetEventStatus(6504)):
        """ State 2 """
        if (not GetEventStatus(6505) and not GetEventStatus(6506) and not GetEventStatus(6507) and not
            GetEventStatus(6508) and not GetEventStatus(6509)):
            """ State 4,5 """
            return 0
        else:
            pass
    else:
        pass
    """ State 3,6 """
    return 1

def t110100_x58(mode3=_, goods2=9550, goods3=9500):
    """ State 0,3 """
    if not mode3:
        """ State 5,13 """
        # action:12095010:Give Dragonrot Pellet?
        call = t110100_x0(action2=12095010)
        if call.Get() == 0:
            """ State 8,10 """
            PlayerEquipmentQuantityChange(3, goods2, -1)
            """ State 11 """
            # goods:9500:Rot Essence: Sculptor
            PlayerEquipmentQuantityChange(3, goods3, -1)
            """ State 1 """
            Label('L0')
            SetEventState(71100148, 1)
            """ State 12 """
            # talk:10080500:(Cough, cough...)
            assert t110100_x5(text2=10080500, flag27=0, mode25=1)
            """ State 2 """
            SetEventState(71100118, 1)
        elif call.Done():
            """ State 9 """
            pass
    else:
        """ State 4 """
        if GetEventStatus(71100148) == 1 and not GetEventStatus(71100118):
            """ State 7 """
            Goto('L0')
        else:
            """ State 6,15 """
            return 1
    """ State 14 """
    return 0

def t110100_x59():
    """ State 0,1 """
    assert not GetEventStatus(1001)
    """ State 6 """
    if GetEventStatus(9317) == 1 and GetEventStatus(1268) == 1:
        """ State 3,8 """
        # talk:10090300:... Emma.
        t110100_x28(val1=7001006, z4=71100561, text1=10090300)
    elif GetEventStatus(1268) == 1 and not GetEventStatus(71110189):
        """ State 2,7 """
        # talk:10090200:Emma...
        t110100_x28(val1=7001005, z4=71100560, text1=10090200)
    elif GetEventStatus(71100449) == 1:
        """ State 4,9 """
        # talk:10090100:Orangutan... The Central Forces are here.
        t110100_x28(val1=7001007, z4=71100562, text1=10090100)
    elif GetEventStatus(71100447) == 1:
        """ State 5,10 """
        # talk:10090000:(Cough, cough...)
        t110100_x28(val1=7001008, z4=71100563, text1=10090000)

def t110100_x60():
    """ State 0,13 """
    assert t110100_x33(flag23=71100575, flag24=71100576, flag25=71100577, flag26=71100578, z5=71100580)
    """ State 3 """
    SetWorkValue(0, 0)
    """ State 2,5 """
    if GetEventStatus(6013) == 1 or GetEventStatus(6012) == 1:
        """ State 6 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15010003:Present Shinobi Prosthetic
        AddTalkListData(3, 15010003, 6001)
    else:
        pass
    """ State 7 """
    if (GetEventStatus(71100580) == 1 and not GetEventStatus(70002000) and (GetEventStatus(71110150)
        == 1 or GetEventStatus(71110160) == 1 or GetEventStatus(71110163) == 1)):
        """ State 8 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15000510:Give Drink
        AddTalkListData(4, 15000510, 6001)
    else:
        pass
    """ State 11 """
    if (GetEventStatus(70002000) == 1 and ComparePlayerInventoryNumber(3, 9550, 2, 0, 0) == 1 and not
        GetEventStatus(71100148)):
        """ State 12 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15000520:Give Dragonrot Pellet
        AddTalkListData(5, 15000520, 6001)
    else:
        pass
    """ State 9 """
    if GetEventStatus(6911) == 1:
        """ State 10 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15010900:Avoid additional hardships
        AddTalkListData(6, 15010900, 6001)
    else:
        pass
    """ State 1 """
    # action:15000000:Talk
    AddTalkListData(1, 15000000, 6001)
    if GetWorkValue(0) > 1:
        """ State 14 """
        return 0
    else:
        """ State 15 """
        return 1

def t110100_x61():
    """ State 0,1 """
    if f116(-1) == 1701001:
        """ State 4,6 """
        assert t110100_x29(z6=-1, z7=1701004, val14=1701004, mode20=1, val15=0.5)
    elif f116(-1) == 1701002:
        """ State 3,7 """
        assert t110100_x29(z6=-1, z7=1701005, val14=1701005, mode20=1, val15=0.5)
    elif f116(-1) == 1701003:
        """ State 2,8 """
        assert t110100_x29(z6=-1, z7=1701006, val14=1701006, mode20=1, val15=0.5)
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t110100_x62(mode2=_):
    """ State 0,3 """
    if not mode2:
        """ State 4,8 """
        SetEventState(71100596, 1)
        """ State 11 """
        Label('L0')
        """ State 12 """
        # talk:10003200:The Shinobi prosthetic...
        assert t110100_x5(text2=10003200, flag27=0, mode25=1)
        """ State 2 """
        SetEventState(71100595, 1)
        SetEventState(71100596, 0)
        """ State 14 """
        assert t110100_x6(lot1=61004)
    else:
        """ State 5 """
        if GetEventStatus(71100596) == 1:
            """ State 10 """
            Goto('L0')
        elif GetEventStatus(71100595) == 1:
            """ State 6 """
            pass
        else:
            """ State 7,16 """
            return 1
    """ State 1,13 """
    # talk:10003250:What is it...?
    assert t110100_x4(text3=10003250, flag18=71100113, flag28=0, mode26=1)
    """ State 9 """
    SetEventState(71100595, 0)
    """ State 15 """
    return 0

def t110100_x63():
    """ State 0,6 """
    # action:12010100:Are you sure you want to take back the charm,\nand avoid the path of additional hardships? \n(This decision cannot be undone for this playthrough.)
    call = t110100_x0(action2=12010100)
    if call.Get() == 0:
        """ State 1,3 """
        c1121(0)
        """ State 5 """
        assert t110100_x6(lot1=61006)
        """ State 4 """
        # action:13010100:You will not experience additional hardships in this playthrough.
        assert t110100_x7(action1=13010100)
    elif call.Done():
        """ State 2 """
        pass
    """ State 7 """
    return 0

