# -*- coding: utf-8 -*-
def t110350_1():
    """ State 0,1 """
    t110350_x6(flag1=1559, flag2=11105803, flag3=6000, val1=5, val2=65, val3=68, val4=10, val5=12, flag4=6000,
               val6=-1, flag5=6000, flag6=6000, flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000,
               val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, flag9=6000,
               mode6=0)

def t110350_1001():
    """ State 0,2 """
    # talk:35060600:The castle gate remains closed.
    assert t110350_x4(text1=35060600, flag14=1, mode8=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110350_1002():
    """ State 0,2 """
    if not GetEventStatus(71100457):
        """ State 3,6 """
        SetEventState(71100457, 1)
    elif not GetEventStatus(71100458):
        """ State 4,7 """
        SetEventState(71100458, 1)
    else:
        """ State 5 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110350_1102():
    """ State 0,3 """
    while True:
        """ State 2 """
        if not GetEventStatus(71100450) and GetEventStatus(11105803) == 1:
            """ State 8 """
            assert t110350_x30()
        elif DoesSelfHaveSpEffect(30001) == 1 and not GetEventStatus(71100453):
            """ State 9 """
            assert t110350_x29()
        elif f120() - f121() == 1 and not GetEventStatus(71100454):
            """ State 4 """
            assert GetCurrentStateElapsedTime() > 3
            """ State 12 """
            # talk:35060500:You will not take this Gyoubu's head!
            assert t110350_x3(text6=35060500, z3=71100454, flag15=1, mode13=1)
        elif not GetEventStatus(71100459) and GetEventStatus(71100457) == 1:
            """ State 5,10 """
            # talk:35060300:Oh ho, you're still standing?
            assert t110350_x3(text6=35060300, z3=71100459, flag15=1, mode13=1)
        elif not GetEventStatus(71100460) and GetEventStatus(71100458) == 1:
            """ State 6,11 """
            # talk:35060400:Still you stand?
            assert t110350_x3(text6=35060400, z3=71100460, flag15=1, mode13=1)
        elif DoesSelfHaveSpEffect(30004) == 1 and not GetEventStatus(71100461):
            """ State 7,13 """
            # talk:35060200:   
            assert t110350_x3(text6=35060200, z3=71100461, flag15=1, mode13=1)

def t110350_1103():
    """ State 0,2 """
    assert DoesSelfHaveSpEffect(30002) == 1
    """ State 3 """
    # talk:35060700:Forgive me...!
    assert t110350_x4(text1=35060700, flag14=1, mode8=1) and DoesSelfHaveSpEffect(30003) == 1
    """ State 4 """
    # talk:35060710:Genichiro... forgive... me...
    assert t110350_x4(text1=35060710, flag14=1, mode8=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110350_x0(val6=-1, flag6=6000, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0, flag5=6000,
               val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110350_x28(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
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

def t110350_x1():
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

def t110350_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110350_x3(text6=_, z3=_, flag15=1, mode13=1):
    """ State 0,7 """
    assert t110350_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 6 """
    if not flag15:
        """ State 1 """
        TalkToPlayer(text6, -1, -1, flag15, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text6, -1, -1, flag15, 1)
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

def t110350_x4(text1=_, flag14=1, mode8=1):
    """ State 0,6 """
    assert t110350_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag14:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag14, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag14, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode8:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110350_x5(z2=_):
    """ State 0,1 """
    ShuffleRNGSeed(z2)
    """ State 2 """
    SetRNGSeed()
    """ State 3 """
    return 0

def t110350_x6(flag1=1559, flag2=11105803, flag3=6000, val1=5, val2=65, val3=68, val4=10, val5=12, flag4=6000,
               val6=-1, flag5=6000, flag6=6000, flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000,
               val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, flag9=6000,
               mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110350_x7(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t110350_x22(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t110350_x8(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t110350_x7(val1=5, val2=65, val3=68, val4=10, val5=12, flag4=6000, val6=-1, flag5=6000, flag6=6000,
               flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1, mode3=1,
               mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t110350_x24(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110350_x9(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
            call = t110350_x10(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110350_x11(val2=val2, val3=val3)

def t110350_x8(flag1=1559, val2=65, val3=68):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110350_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110350_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110350_x9(val1=5, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110350_x17(mode2=mode2, mode4=mode4)
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
        assert t110350_x14()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110350_x13()
    """ State 4 """
    return 0

def t110350_x10(val5=12):
    """ State 0,1 """
    call = t110350_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110350_x1()
    """ State 3 """
    return 0

def t110350_x11(val2=65, val3=68):
    """ State 0,4 """
    assert t110350_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110350_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110350_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110350_x12(val2=65, val3=68):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110350_x21()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110350_x1()
    """ State 4 """
    return 0

def t110350_x13():
    """ State 0,1 """
    assert t110350_x1()
    """ State 2 """
    return 0

def t110350_x14():
    """ State 0,2 """
    assert t110350_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110350_x15(val2=65, val3=68):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110350_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110350_x1()

def t110350_x16():
    """ State 0,1 """
    assert t110350_x18(z1=1101, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110350_x17(mode2=1, mode4=0):
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
        assert t110350_x18(z1=1000, mode9=0, mode10=0, mode11=0, mode12=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110350_x18(z1=_, mode9=0, mode10=0, mode11=0, mode12=0):
    """ State 0,4 """
    if f118(z1) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z1)
        assert f117() == mode9 or f117() == mode10 or f117() == mode11 or f117() == mode12
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110350_x19():
    """ State 0,1 """
    call = t110350_x18(z1=1103, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110350_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110350_x20():
    """ State 0,2 """
    call = t110350_x18(z1=1102, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110350_x21():
    """ State 0,1 """
    assert t110350_x18(z1=1001, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110350_x22(val2=65, val3=68):
    """ State 0,1 """
    while True:
        call = t110350_x15(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110350_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110350_x12(val2=val2, val3=val3)

def t110350_x23():
    """ State 0,1 """
    assert t110350_x18(z1=1100, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110350_x24(val6=-1, flag5=6000, flag6=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t110350_x18(z1=2000, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110350_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode7=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110350_x25(text1=35030200, text2=35030300, text3=-1, text4=-1, text5=-1, flag14=1, mode8=1):
    """ State 0,3 """
    if not text5 == -1:
        """ State 4,17 """
        call = t110350_x5(z2=5)
        if call.Done() and CompareRNGValue(0, 0) == 1:
            """ State 8 """
            Label('L0')
            """ State 13 """
            assert t110350_x4(text1=text1, flag14=flag14, mode8=mode8)
        elif call.Done() and CompareRNGValue(0, 1) == 1:
            """ State 9 """
            Label('L1')
            """ State 18 """
            assert t110350_x4(text1=text2, flag14=flag14, mode8=mode8)
        elif call.Done() and CompareRNGValue(0, 2) == 1:
            """ State 10 """
            Label('L2')
            """ State 19 """
            assert t110350_x4(text1=text3, flag14=flag14, mode8=mode8)
        elif call.Done() and CompareRNGValue(0, 3) == 1:
            """ State 11 """
            Label('L3')
            """ State 20 """
            assert t110350_x4(text1=text4, flag14=flag14, mode8=mode8)
        elif call.Done():
            """ State 12,21 """
            assert t110350_x4(text1=text5, flag14=flag14, mode8=mode8)
    elif not text4 == -1:
        """ State 5,16 """
        call = t110350_x5(z2=4)
        if call.Done() and CompareRNGValue(0, 0) == 1:
            Goto('L0')
        elif call.Done() and CompareRNGValue(0, 2) == 1:
            Goto('L2')
        elif call.Done() and CompareRNGValue(0, 1) == 1:
            Goto('L1')
        elif call.Done():
            Goto('L3')
    elif not text3 == -1:
        """ State 6,15 """
        call = t110350_x5(z2=3)
        if call.Done() and CompareRNGValue(0, 0) == 1:
            Goto('L0')
        elif call.Done() and CompareRNGValue(0, 1) == 1:
            Goto('L1')
        elif call.Done():
            Goto('L2')
    elif not text2 == -1:
        """ State 2,14 """
        call = t110350_x5(z2=2)
        if call.Done() and CompareRNGValue(0, 0) == 1:
            Goto('L0')
        elif call.Done():
            Goto('L1')
    elif not text1 == -1:
        """ State 7 """
        Goto('L0')
    else:
        """ State 1 """
        pass
    """ State 22 """
    return 0

def t110350_x26(val2=65, val3=68):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110350_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110350_x1()
    """ State 4 """
    return 0

def t110350_x27():
    """ State 0,1 """
    assert t110350_x18(z1=1002, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110350_x28(val6=-1, flag6=6000, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0, flag5=6000):
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

def t110350_x29():
    """ State 0,1 """
    if not GetEventStatus(71100451):
        """ State 3 """
        # talk:35060800:Onikage, Charge!!
        assert t110350_x3(text6=35060800, z3=71100451, flag15=1, mode13=1)
    elif not GetEventStatus(71100452):
        """ State 4 """
        # talk:35060100:Boy, allow me to show you the wrath of a man...
        assert t110350_x3(text6=35060100, z3=71100452, flag15=1, mode13=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t110350_x30():
    """ State 0,2 """
    assert GetCurrentStateElapsedTime() > 0.5
    """ State 4 """
    call = t110350_x31()
    if call.Done():
        pass
    elif IsAttackedBySomeone() == 1:
        """ State 1,3 """
        # talk:35030200:   , talk:35030300:Move in haste and die, brat.
        assert t110350_x25(text1=35030200, text2=35030300, text3=-1, text4=-1, text5=-1, flag14=1, mode8=1)
    """ State 5 """
    return 0

def t110350_x31():
    """ State 0,2 """
    SetWorkValue(0, 0)
    # talk:35060000:My name... is Gyoubu Masataka Oniwa!
    call = t110350_x3(text6=35060000, z3=71100450, flag15=1, mode13=1)
    def WhilePaused():
        c5100(DoesSelfHaveSpEffect(30000) == 1, 0, 1)
    if call.Done() and GetWorkValue(0) > 1:
        """ State 1 """
        # talk:35060010:As I breathe, you will not pass the castle gate!
        assert t110350_x4(text1=35060010, flag14=1, mode8=1)
    elif call.Done() and GetCurrentStateElapsedTime() > 10:
        pass
    """ State 3 """
    return 0

