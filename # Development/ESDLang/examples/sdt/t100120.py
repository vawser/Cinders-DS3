# -*- coding: utf-8 -*-
def t100120_1():
    """ State 0,1 """
    t100120_x7(flag1=1259, flag2=6000, flag3=6000, val1=65, val2=60, val3=65, val4=60, val5=65, flag4=6000,
               val6=7001201, flag5=6000, flag6=6001, flag7=71000125, flag8=6000, val7=3, val8=1000000,
               val9=1506000, val10=1506001, mode1=1, mode2=1, mode3=0, val11=1000000, val12=1000000,
               mode4=0, flag9=6000, mode5=0)

def t100120_1000():
    """ State 0,2,3 """
    GiveSpEffectToPlayer(108900)
    def WhilePaused():
        GiveSpEffectToPlayer(108900)
    def ExitPause():
        GiveSpEffectToPlayer(108900)
    assert t100120_x29()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100120_1100():
    """ State 0,3 """
    # talk:12030700:The fire's too strong... need to find another way through.
    assert t100120_x3(text3=12030700, z3=71000111, flag16=1, mode13=1)
    """ State 2 """
    SetEventState(71000125, 0)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100120_2000():
    """ State 0,2,3,8 """
    call = t100120_x0(val6=7001201, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode6=0,
                      flag5=6000, val8=1000000, val9=1506000, val10=1506001, val11=-1, val12=-1)
    if call.Done():
        pass
    elif GetEventStatus(71000101) == 1:
        """ State 9 """
        call = t100120_x0(val6=7001203, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                          mode6=0, flag5=6000, val8=1000000, val9=1506000, val10=1506001, val11=-1, val12=-1)
        if call.Done():
            pass
        elif GetEventStatus(9302) == 1:
            """ State 7 """
            Label('L0')
            Quit()
    elif GetEventStatus(9302) == 1:
        Goto('L0')
    """ State 5 """
    GiveSpEffectToPlayer(108900)
    def WhilePaused():
        GiveSpEffectToPlayer(108900)
    def ExitPause():
        GiveSpEffectToPlayer(108900)
    if not GetEventStatus(71000102) and not f116(-1) == 1506000:
        """ State 4 """
        def WhilePaused():
            c1117(1506000, -1)
        assert GetCurrentStateElapsedFrames() > 1
        """ State 6 """
    else:
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100120_x0(val6=_, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode6=0, flag5=6000,
               val8=1000000, val9=1506000, val10=1506001, val11=_, val12=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t100120_x28(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
                           mode6=mode6, flag5=flag5)
        if call.Done():
            break
        elif (not f116(-1) == val8 and not f116(-1) == val9 and not f116(-1) == val10 and not DoesSelfHaveSpEffect(4510)
              and not val8 == -1 and not f116(-1) == val11 and not f116(-1) == val12):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val8 or f116(-1) == val9 or f116(-1) == val10 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val11 and f116(-1) == val12))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val8 and not f116(-1) == val9 and not f116(-1) == val10 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val11 and not f116(-1) == val12):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t100120_x1():
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

def t100120_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t100120_x3(text3=12030700, z3=71000111, flag16=1, mode13=1):
    """ State 0,7 """
    assert t100120_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 6 """
    if not flag16:
        """ State 1 """
        # talk:12030700:The fire's too strong... need to find another way through.
        TalkToPlayer(text3, -1, -1, flag16, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:12030700:The fire's too strong... need to find another way through.
        TalkToPlayer(text3, -1, -1, flag16, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode13:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t100120_x4(text2=_, z2=_, flag15=0, mode12=1):
    """ State 0,7 """
    assert t100120_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag15:
        """ State 1 """
        TalkToPlayer(text2, -1, -1, flag15, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text2, -1, -1, flag15, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode12:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 8 """
    return 0

def t100120_x5(text1=12000100, flag14=0, mode11=1):
    """ State 0,6 """
    assert t100120_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag14:
        """ State 1 """
        # talk:12000100:.........
        TalkToPlayer(text1, -1, -1, flag14, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:12000100:.........
        TalkToPlayer(text1, -1, -1, flag14, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode11:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t100120_x6(lot1=61200):
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

def t100120_x7(flag1=1259, flag2=6000, flag3=6000, val1=65, val2=60, val3=65, val4=60, val5=65, flag4=6000,
               val6=7001201, flag5=6000, flag6=6001, flag7=71000125, flag8=6000, val7=3, val8=1000000,
               val9=1506000, val10=1506001, mode1=1, mode2=1, mode3=0, val11=1000000, val12=1000000,
               mode4=0, flag9=6000, mode5=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t100120_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, val7=val7, val8=val8, val9=val9,
                          val10=val10, mode1=mode1, mode2=mode2, mode3=mode3, val11=val11, val12=val12,
                          mode4=mode4, mode5=mode5)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t100120_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t100120_x9(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t100120_x8(val1=65, val2=60, val3=65, val4=60, val5=65, flag4=6000, val6=7001201, flag5=6000, flag6=6001,
               flag7=71000125, flag8=6000, val7=3, val8=1000000, val9=1506000, val10=1506001, mode1=1,
               mode2=1, mode3=0, val11=1000000, val12=1000000, mode4=0, mode5=0):
    """ State 0,4 """
    while True:
        call = t100120_x25(val6=val6, flag5=flag5, flag6=flag6, val8=val8, val9=val9, val10=val10, val11=val11,
                           val12=val12)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t100120_x10(val1=val1, val7=val7, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode5 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode5 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag8) == 1:
            Goto('L0')
        elif not GetEventStatus(flag4) and GetEventStatus(flag7) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t100120_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode5 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t100120_x12(val2=val2, val3=val3)

def t100120_x9(flag1=1259, val2=60, val3=65):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t100120_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t100120_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t100120_x10(val1=65, val7=3, mode1=1, mode2=1, mode3=0, mode4=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t100120_x18(mode1=mode1, mode3=mode3)
    def WhilePaused():
        c1117(val7, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode2 == 1, 0.1)
        c5120(val1 == 1 and not val7 and mode4 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t100120_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t100120_x14()
    """ State 4 """
    return 0

def t100120_x11(val5=65):
    """ State 0,1 """
    call = t100120_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t100120_x1()
    """ State 3 """
    return 0

def t100120_x12(val2=60, val3=65):
    """ State 0,4 """
    assert t100120_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t100120_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t100120_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t100120_x13(val2=60, val3=65):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t100120_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t100120_x1()
    """ State 4 """
    return 0

def t100120_x14():
    """ State 0,1 """
    assert t100120_x1()
    """ State 2 """
    return 0

def t100120_x15():
    """ State 0,2 """
    assert t100120_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t100120_x16(val2=60, val3=65):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t100120_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t100120_x1()

def t100120_x17():
    """ State 0,1 """
    assert t100120_x19(z1=1101, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t100120_x18(mode1=1, mode3=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode1 == 1 and not mode3, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode1 == 1 and mode3 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t100120_x19(z1=1000, mode7=0, mode8=0, mode9=0, mode10=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t100120_x19(z1=_, mode7=0, mode8=0, mode9=0, mode10=0):
    """ State 0,4 """
    if f118(z1) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z1)
        assert f117() == mode7 or f117() == mode8 or f117() == mode9 or f117() == mode10
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t100120_x20():
    """ State 0,1 """
    call = t100120_x19(z1=1103, mode7=0, mode8=0, mode9=0, mode10=0)
    if call.Get() == 1:
        """ State 2 """
        assert t100120_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t100120_x21():
    """ State 0,2 """
    call = t100120_x19(z1=1102, mode7=0, mode8=0, mode9=0, mode10=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t100120_x22():
    """ State 0,1 """
    assert t100120_x19(z1=1001, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t100120_x23(val2=60, val3=65):
    """ State 0,1 """
    while True:
        call = t100120_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t100120_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t100120_x13(val2=val2, val3=val3)

def t100120_x24():
    """ State 0,1 """
    assert t100120_x19(z1=1100, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t100120_x25(val6=7001201, flag5=6000, flag6=6001, val8=1000000, val9=1506000, val10=1506001, val11=1000000,
                val12=1000000):
    """ State 0,1 """
    call = t100120_x19(z1=2000, mode7=0, mode8=0, mode9=0, mode10=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t100120_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode6=0, flag5=flag5, val8=val8, val9=val9, val10=val10, val11=val11, val12=val12))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t100120_x26(val2=60, val3=65):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t100120_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t100120_x1()
    """ State 4 """
    return 0

def t100120_x27():
    """ State 0,1 """
    assert t100120_x19(z1=1002, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t100120_x28(val6=_, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode6=0, flag5=6000):
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
            elif CheckActionButtonArea(val6 + mode6) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t100120_x29():
    """ State 0,1 """
    if not GetEventStatus(71000102):
        """ State 2,7 """
        # talk:12000000:Father...
        assert t100120_x4(text2=12000000, z2=71000102, flag15=0, mode12=1)
        """ State 6 """
        def ExitPause():
            SetEventState(1240, 1)
        assert t100120_x6(lot1=61200)
        """ State 9 """
        Label('L0')
        # talk:12000020:This is...
        assert t100120_x4(text2=12000020, z2=71000100, flag15=0, mode12=1)
        """ State 4 """
        Label('L1')
        SetEventState(71000101, 1)
    elif not GetEventStatus(71000100):
        """ State 5 """
        if f116(-1) == 1506001:
            """ State 10 """
            # talk:12000034:Father...
            assert t100120_x4(text2=12000034, z2=71000100, flag15=0, mode12=1)
            Goto('L1')
        else:
            Goto('L0')
    else:
        """ State 3,8 """
        # talk:12000100:.........
        assert t100120_x5(text1=12000100, flag14=0, mode11=1)
    """ State 11 """
    return 0

