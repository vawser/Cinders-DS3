# -*- coding: utf-8 -*-
def t110130_1():
    """ State 0,1 """
    t110130_x6(flag1=1079, flag2=1075, flag3=1076, val2=5, val3=15, val4=40, val5=10, val6=10, flag4=71100200,
               val7=7001300, flag5=6000, flag6=6001, flag7=11105754, flag8=6000, mode8=1, val8=1000000,
               val9=1000000, val10=1000000, mode9=1, mode10=1, mode11=0, val11=1000000, val12=1000000,
               mode12=0, flag9=6000, mode13=0)

def t110130_1000():
    """ State 0,10 """
    assert t110130_x38()
    """ State 1 """
    if GetEventStatus(1060) == 1:
        """ State 4 """
        if not GetEventStatus(11100273):
            """ State 6 """
            if GetEventStatus(71100215) == 1:
                """ State 11 """
                SetEventState(71100208, 1)
                # talk:13000001:Your name?
                def ExitPause():
                    SetEventState(71100208, 0)
                assert t110130_x4(text1=13000001, flag14=0, mode20=1)
            else:
                """ State 8 """
                SetEventState(71100208, 1)
                # talk:13000000:Hmm? ...Never seen you before.
                def ExitPause():
                    SetEventState(71100208, 0)
                assert t110130_x4(text1=13000000, flag14=0, mode20=1)
            """ State 3 """
            SetEventState(11105273, 1)
            SetEventState(1076, 1)
        else:
            """ State 7 """
            assert t110130_x29()
    elif GetEventStatus(1061) == 1:
        """ State 5,9 """
        SetEventState(71100208, 1)
        # talk:13001100:I can finally die.
        def ExitPause():
            SetEventState(71100208, 0)
        assert t110130_x4(text1=13001100, flag14=0, mode20=1)
        """ State 12 """
        assert t110130_x25(z4=-1, z5=1101000, val13=1101000, mode15=1, val14=5)
    """ State 2 """
    def WhilePaused():
        c1119(0)

def t110130_1100():
    """ State 0,2 """
    SetEventState(71100200, 1)
    if (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        and not DoesPlayerHaveSpEffect(30700)):
        """ State 5 """
        SetEventState(71100208, 1)
        ClearPlayerDamageInfo()
        call = t110130_x43()
        def WhilePaused():
            c1117(1, 10000)
            c1117(1000000, -1)
            SetTalkTime(0.01)
            c1128(0.1)
        def ExitPause():
            SetEventState(71100208, 0)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1):
            """ State 4 """
            assert t110130_x14()
    else:
        """ State 3 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110130_1101():
    """ State 0,2 """
    RemoveMyAggro()
    if (not GetEventStatus(71100215) and not GetEventStatus(71100201) and not GetEventStatus(11100273)
        and not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        and not DoesPlayerHaveSpEffect(30700)):
        """ State 4 """
        ClearPlayerDamageInfo()
        call = t110130_x42()
        def WhilePaused():
            c1117(1, 10000)
            c1117(1000000, -1)
            SetTalkTime(0.01)
            c1128(0.1)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1):
            """ State 3 """
            assert t110130_x14()
    else:
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110130_1102():
    """ State 0,2 """
    if GetEventStatus(11105181) == 1:
        """ State 3 """
        assert t110130_x32(z1=310000, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105182) == 1:
        """ State 4 """
        assert t110130_x32(z1=310100, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105183) == 1:
        """ State 5 """
        assert t110130_x32(z1=310020, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105184) == 1:
        """ State 6 """
        assert t110130_x32(z1=310101, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105185) == 1:
        """ State 7 """
        assert t110130_x32(z1=310050, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105188) == 1:
        """ State 10 """
        assert t110130_x32(z1=310080, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105186) == 1:
        """ State 8 """
        assert t110130_x32(z1=310030, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105187) == 1:
        """ State 9 """
        assert t110130_x32(z1=310031, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105189) == 1:
        """ State 11 """
        assert t110130_x32(z1=310060, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105195) == 1:
        """ State 12 """
        assert t110130_x32(z1=310010, mode1=1, mode2=1, mode3=1)
    elif GetEventStatus(11105196) == 1:
        """ State 13 """
        assert t110130_x32(z1=310040, mode1=1, mode2=1, mode3=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110130_1103():
    """ State 0 """
    assert GetEventStatus(1061) == 1
    """ State 2 """
    # talk:13001200:  
    t110130_x4(text1=13001200, flag14=1, mode20=1)

def t110130_2000():
    """ State 0,4 """
    while True:
        call = t110130_x0(val7=7001300, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                          mode14=0, flag5=6000, val8=1000000, val9=1000000, val10=1000000, val11=1000000,
                          val12=1000000)
        if call.Done():
            break
        elif GetEventStatus(71100209) == 1:
            """ State 2 """
            SetEventState(71100209, 0)
            SetWorkValue(0, 1)
            def WhilePaused():
                c1117(1, 10000)
            if f116(10000) == 1:
                pass
            elif GetCurrentStateElapsedTime() > 10 and f116(10000) == 90:
                continue
        """ State 1 """
        Label('L0')
        def WhilePaused():
            c1119(0)
        Quit()
    """ State 3 """
    SetWorkValue(0, 0)
    Goto('L0')

def t110130_x0(val7=7001300, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode14=0,
               flag5=6000, val8=1000000, val9=1000000, val10=1000000, val11=1000000, val12=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110130_x28(val7=val7, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
                           mode14=mode14, flag5=flag5)
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

def t110130_x1():
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

def t110130_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110130_x3(text4=_, z7=_, flag15=0, mode21=1):
    """ State 0,7 """
    assert t110130_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag15:
        """ State 1 """
        TalkToPlayer(text4, -1, -1, flag15, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text4, -1, -1, flag15, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode21:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z7, 1)
    """ State 8 """
    return 0

def t110130_x4(text1=_, flag14=_, mode20=1):
    """ State 0,6 """
    assert t110130_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode20:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110130_x5(action1=_):
    """ State 0,1 """
    OpenGenericDialog(1, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t110130_x6(flag1=1079, flag2=1075, flag3=1076, val2=5, val3=15, val4=40, val5=10, val6=10, flag4=71100200,
               val7=7001300, flag5=6000, flag6=6001, flag7=11105754, flag8=6000, mode8=1, val8=1000000,
               val9=1000000, val10=1000000, mode9=1, mode10=1, mode11=0, val11=1000000, val12=1000000,
               mode12=0, flag9=6000, mode13=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110130_x7(val2=val2, val3=val3, val4=val4, val5=val5, val6=val6, flag4=flag4, val7=val7,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode8=mode8, val8=val8,
                          val9=val9, val10=val10, mode9=mode9, mode10=mode10, mode11=mode11, val11=val11,
                          val12=val12, mode12=mode12, mode13=mode13)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t110130_x22(val3=val3, val4=val4)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t110130_x8(flag1=flag1, val3=val3, val4=val4)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t110130_x7(val2=5, val3=15, val4=40, val5=10, val6=10, flag4=71100200, val7=7001300, flag5=6000,
               flag6=6001, flag7=11105754, flag8=6000, mode8=1, val8=1000000, val9=1000000, val10=1000000,
               mode9=1, mode10=1, mode11=0, val11=1000000, val12=1000000, mode12=0, mode13=0):
    """ State 0,4 """
    while True:
        call = t110130_x24(val7=val7, flag5=flag5, flag6=flag6, val8=val8, val9=val9, val10=val10, val11=val11,
                           val12=val12)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110130_x9(val2=val2, mode8=mode8, mode9=mode9, mode10=mode10, mode11=mode11, mode12=mode12)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode13 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode13 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag8) == 1:
            Goto('L0')
        elif not GetEventStatus(flag4) and GetEventStatus(flag7) == 1 and GetDistanceToPlayer() < val5:
            """ State 3 """
            call = t110130_x10(val6=val6)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode13 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110130_x11(val3=val3, val4=val4)

def t110130_x8(flag1=1079, val3=15, val4=40):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val3:
            """ State 4,6 """
            call = t110130_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val4:
                """ State 7 """
                assert t110130_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110130_x9(val2=5, mode8=1, mode9=1, mode10=1, mode11=0, mode12=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110130_x17(mode9=mode9, mode11=mode11)
    def WhilePaused():
        c1117(mode8, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode10 == 1, 0.1)
        c5120(val2 == 1 and not mode8 and mode12 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t110130_x14()
    elif GetDistanceToPlayer() > val2:
        """ State 3 """
        assert t110130_x13()
    """ State 4 """
    return 0

def t110130_x10(val6=10):
    """ State 0,1 """
    call = t110130_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 2 """
        assert t110130_x1()
    """ State 3 """
    return 0

def t110130_x11(val3=15, val4=40):
    """ State 0,4 """
    assert t110130_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110130_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110130_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110130_x12(val3=15, val4=40):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 2 """
    call = t110130_x21()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 3 """
        assert t110130_x1()
    """ State 4 """
    return 0

def t110130_x13():
    """ State 0,1 """
    assert t110130_x1()
    """ State 2 """
    return 0

def t110130_x14():
    """ State 0,2 """
    assert t110130_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110130_x15(val3=15, val4=40):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val3
        """ State 3 """
        call = t110130_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val4:
            """ State 4 """
            assert t110130_x1()

def t110130_x16():
    """ State 0,1 """
    assert t110130_x18(z6=1101, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110130_x17(mode9=1, mode11=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode9 == 1 and not mode11, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode9 == 1 and mode11 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t110130_x18(z6=1000, mode16=0, mode17=0, mode18=0, mode19=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110130_x18(z6=_, mode16=0, mode17=0, mode18=0, mode19=0):
    """ State 0,4 """
    if f118(z6) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z6)
        assert f117() == mode16 or f117() == mode17 or f117() == mode18 or f117() == mode19
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110130_x19():
    """ State 0,1 """
    call = t110130_x18(z6=1103, mode16=0, mode17=0, mode18=0, mode19=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110130_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110130_x20():
    """ State 0,2 """
    call = t110130_x18(z6=1102, mode16=0, mode17=0, mode18=0, mode19=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110130_x21():
    """ State 0,1 """
    assert t110130_x18(z6=1001, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110130_x22(val3=15, val4=40):
    """ State 0,1 """
    while True:
        call = t110130_x15(val3=val3, val4=val4)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110130_x26(val3=val3, val4=val4)
            assert not IsPlayerDead()
    """ State 2 """
    t110130_x12(val3=val3, val4=val4)

def t110130_x23():
    """ State 0,1 """
    assert t110130_x18(z6=1100, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110130_x24(val7=7001300, flag5=6000, flag6=6001, val8=1000000, val9=1000000, val10=1000000, val11=1000000,
                val12=1000000):
    """ State 0,1 """
    call = t110130_x18(z6=2000, mode16=0, mode17=0, mode18=0, mode19=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110130_x0(val7=val7, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode14=0, flag5=flag5, val8=val8, val9=val9, val10=val10, val11=val11, val12=val12))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110130_x25(z4=-1, z5=1101000, val13=1101000, mode15=1, val14=5):
    """ State 0,1 """
    def WhilePaused():
        c1117(z5, z4)
    if f116(z4) == val13 and mode15 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val14:
        """ State 3 """
        return 1

def t110130_x26(val3=15, val4=40):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 3 """
    call = t110130_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 2 """
        assert t110130_x1()
    """ State 4 """
    return 0

def t110130_x27():
    """ State 0,1 """
    assert t110130_x18(z6=1002, mode16=0, mode17=0, mode18=0, mode19=0)
    """ State 2 """
    return 0

def t110130_x28(val7=7001300, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode14=0,
                flag5=6000):
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
            elif CheckActionButtonArea(val7 + mode14) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t110130_x29():
    """ State 0,27,43 """
    call = t110130_x34(mode7=1)
    if call.Get() == 2:
        """ State 45 """
        call = t110130_x35(mode6=1)
        if call.Get() == 2:
            """ State 49 """
            call = t110130_x36(mode5=1)
            if call.Get() == 1:
                """ State 48 """
                call = t110130_x37(mode4=1)
                if call.Get() == 1:
                    """ State 8 """
                    if not GetEventStatus(71100207) and GetEventStatus(71100225) == 1:
                        """ State 21 """
                        SetEventState(71100209, 0)
                        SetWorkValue(0, 0)
                        """ State 12,35 """
                        SetEventState(71100208, 1)
                        # talk:13000400:About our training...\nI think it's about time we tried something closer to a real fight, don't you?
                        def ExitPause():
                            SetEventState(71100208, 0)
                        assert t110130_x3(text4=13000400, z7=71100207, flag15=0, mode21=1)
                        """ State 50 """
                        Label('L0')
                        assert t110130_x40()
                        """ State 2 """
                        def ExitPause():
                            c1110()
                        """ State 1 """
                        while True:
                            ClearTalkListData()
                            """ State 28 """
                            SetEventState(71100204, 1)
                            """ State 3 """
                            # action:15013000:Training
                            AddTalkListData(1, 15013000, 6001)
                            # action:15013001:Free Combat
                            AddTalkListDataIf(GetEventStatus(71100225) == 1, 2, 15013001, 6001)
                            # action:15013002:Tell him of the Mortal Blade
                            AddTalkListDataIf(not GetEventStatus(71100242) and GetEventStatus(71100243) == 1,
                                              3, 15013002, 6001)
                            # action:15013003:Discuss the Mortal Blade
                            AddTalkListDataIf(GetEventStatus(71100242) == 1 and not GetEventStatus(71100240),
                                              4, 15013003, 6001)
                            # action:15000000:Talk
                            AddTalkListData(5, 15000000, 6001)
                            """ State 5 """
                            ShowShopMessage(1)
                            if GetTalkListEntryResult() == 1:
                                """ State 6,29 """
                                call = t110130_x30()
                                if call.Get() == 0:
                                    break
                                elif call.Get() == 1:
                                    pass
                            elif GetTalkListEntryResult() == 2:
                                """ State 7,31 """
                                call = t110130_x31()
                                if call.Get() == 0:
                                    break
                                elif call.Get() == 1:
                                    pass
                            elif GetTalkListEntryResult() == 3:
                                """ State 19,37 """
                                SetEventState(71100208, 1)
                                # talk:13010500:Feel like talking about that sword on your back now?
                                def ExitPause():
                                    SetEventState(71100208, 0)
                                assert t110130_x4(text1=13010500, flag14=0, mode20=1)
                                """ State 47 """
                                Label('L1')
                                call = t110130_x37(mode4=0)
                                if call.Get() == 3:
                                    """ State 46 """
                                    Label('L2')
                                    call = t110130_x36(mode5=0)
                                    if call.Get() == 2:
                                        break
                                    elif call.Done():
                                        Goto('L0')
                                elif call.Get() == 0:
                                    Goto('L0')
                                elif call.Done():
                                    break
                            elif GetTalkListEntryResult() == 4:
                                """ State 20,38 """
                                SetEventState(71100208, 1)
                                # talk:13010600:So...
                                def ExitPause():
                                    SetEventState(71100208, 0)
                                assert t110130_x4(text1=13010600, flag14=0, mode20=1)
                                Goto('L2')
                            elif GetTalkListEntryResult() == 5:
                                """ State 24 """
                                if not GetEventStatus(71100220):
                                    """ State 25,40 """
                                    SetEventState(71100208, 1)
                                    # talk:13001400:Have you noticed...
                                    def ExitPause():
                                        SetEventState(71100208, 0)
                                    assert t110130_x3(text4=13001400, z7=71100220, flag15=0, mode21=1)
                                else:
                                    """ State 26,41 """
                                    SetEventState(71100208, 1)
                                    # talk:13001500:This temple attracts those with nowhere else to go.
                                    def ExitPause():
                                        SetEventState(71100208, 0)
                                    assert t110130_x4(text1=13001500, flag14=0, mode20=1)
                            elif (not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                                  or GetTalkListEntryResult() == 99):
                                """ State 4,30 """
                                SetEventState(71100208, 1)
                                # talk:13020000:Come back whenever you like.
                                def ExitPause():
                                    SetEventState(71100208, 0)
                                assert t110130_x4(text1=13020000, flag14=0, mode20=1)
                                break
                    elif (not GetEventStatus(71100203) and GetEventStatus(11100195) == 1 and GetEventStatus(11100196)
                          == 1):
                        """ State 22 """
                        SetEventState(71100209, 0)
                        SetWorkValue(0, 0)
                        """ State 17,42 """
                        call = t110130_x34(mode7=0)
                        if call.Get() == 1:
                            pass
                        elif call.Done():
                            Goto('L0')
                    elif GetWorkValue(0) > 1 or GetEventStatus(71100209) == 1:
                        """ State 10,11 """
                        SetEventState(71100209, 0)
                        SetWorkValue(0, 0)
                        """ State 13 """
                        Goto('L0')
                    elif not GetEventStatus(71100202):
                        """ State 14 """
                        if not GetEventStatus(71100201):
                            """ State 15 """
                            if not GetEventStatus(71100205):
                                """ State 51 """
                                SetEventState(71100208, 1)
                                # talk:13000250:Hmm...
                                def ExitPause():
                                    SetEventState(71100208, 0)
                                assert t110130_x3(text4=13000250, z7=71100205, flag15=0, mode21=1)
                            else:
                                """ State 33 """
                                SetEventState(71100208, 1)
                                # talk:13000200:That swordsmanship...
                                def ExitPause():
                                    SetEventState(71100208, 0)
                                assert t110130_x4(text1=13000200, flag14=0, mode20=1)
                        else:
                            """ State 16,34 """
                            SetEventState(71100208, 1)
                            # talk:13000300:Oh, it's you.
                            def ExitPause():
                                SetEventState(71100208, 0)
                            assert t110130_x4(text1=13000300, flag14=0, mode20=1)
                        """ State 44 """
                        call = t110130_x35(mode6=0)
                        if call.Get() == 1:
                            pass
                        elif call.Done():
                            Goto('L0')
                    # goods:2400:Mortal Blade
                    elif (not GetEventStatus(71100243) and ComparePlayerInventoryNumber(3, 2400, 2, 0,
                          0) == 1):
                        """ State 18,36 """
                        SetEventState(71100208, 1)
                        # talk:13001000:That sword on your back...
                        def ExitPause():
                            SetEventState(71100208, 0)
                        assert t110130_x4(text1=13001000, flag14=0, mode20=1)
                        Goto('L1')
                    elif GetEventStatus(71100240) == 1:
                        """ State 23,39 """
                        SetEventState(71100208, 1)
                        # talk:13001300:I will prepare for the beyond. The next time you see me, I'll be ready.
                        def ExitPause():
                            SetEventState(71100208, 0)
                        assert t110130_x4(text1=13001300, flag14=0, mode20=1)
                    else:
                        """ State 9,32 """
                        SetEventState(71100208, 1)
                        # talk:13000600:Oh, it’s you.
                        def ExitPause():
                            SetEventState(71100208, 0)
                        assert t110130_x4(text1=13000600, flag14=0, mode20=1)
                        Goto('L0')
                elif call.Get() == 3:
                    Goto('L2')
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 52 """
    return 0

def t110130_x30():
    """ State 0,1 """
    while True:
        ClearTalkListData()
        """ State 13,2 """
        # action:15013020:Attacks
        AddTalkListData(20, 15013020, 6001)
        # action:15013021:Deflect
        AddTalkListData(21, 15013021, 6001)
        # action:15013022:Step Dodge
        AddTalkListData(22, 15013022, 6001)
        # action:15013023:Consecutive Deflections
        AddTalkListDataIf(GetEventStatus(71100222) == 1, 23, 15013023, 6001)
        # action:15013024:Vitality and Posture
        AddTalkListDataIf(GetEventStatus(71100222) == 1, 24, 15013024, 6001)
        # action:15013025:Countering Thrust Attacks
        AddTalkListDataIf(GetEventStatus(71100222) == 1, 25, 15013025, 6001)
        # action:15013026:Countering Sweep Attacks
        AddTalkListDataIf(GetEventStatus(71100222) == 1, 26, 15013026, 6001)
        # action:15013027:Mikiri Counter
        AddTalkListDataIf(GetEventStatus(71100223) == 1, 27, 15013027, 6001)
        # action:15013028:Vault Over
        AddTalkListDataIf(GetEventStatus(71100224) == 1, 29, 15013028, 6001)
        """ State 17 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 18 """
        c1126(0)
        assert CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)
        """ State 3 """
        ShowShopMessage(0)
        if GetTalkListEntryResult() == 20:
            """ State 6,20 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105181, flag15=0, mode21=1)
        elif GetTalkListEntryResult() == 21:
            """ State 7,21 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105182, flag15=0, mode21=1)
        elif GetTalkListEntryResult() == 22:
            """ State 8,22 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105183, flag15=0, mode21=1)
        elif GetTalkListEntryResult() == 23:
            """ State 9,23 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105184, flag15=0, mode21=1)
        elif GetTalkListEntryResult() == 24:
            break
        elif GetTalkListEntryResult() == 10:
            """ State 4 """
            continue
        elif GetTalkListEntryResult() == 11:
            """ State 12 """
            continue
        elif GetTalkListEntryResult() == 25:
            """ State 14,25 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105186, flag15=0, mode21=1)
        elif GetTalkListEntryResult() == 26:
            """ State 15,26 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105187, flag15=0, mode21=1)
        elif GetTalkListEntryResult() == 27:
            """ State 16,27 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105188, flag15=0, mode21=1)
        elif GetTalkListEntryResult() == 29:
            """ State 19,28 """
            SetEventState(71100208, 1)
            # talk:13010000:In that case, I stand as your opponent.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010000, z7=11105189, flag15=0, mode21=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 5,30 """
            return 1
        """ State 11 """
        Label('L0')
        SetEventState(11105271, 1)
        SetEventState(11105272, 0)
        SetEventState(1076, 1)
        """ State 29 """
        return 0
    """ State 10,24 """
    SetEventState(71100208, 1)
    # talk:13010000:In that case, I stand as your opponent.
    def ExitPause():
        SetEventState(71100208, 0)
    assert t110130_x3(text4=13010000, z7=11105185, flag15=0, mode21=1)
    Goto('L0')

def t110130_x31():
    """ State 0,1 """
    ClearTalkListData()
    """ State 2 """
    # action:15013010:Free Combat (Fundamentals)
    AddTalkListData(90, 15013010, 6001)
    # action:15013011:Free Combat (Applied)
    AddTalkListDataIf(GetEventStatus(71100226) == 1, 92, 15013011, 6001)
    """ State 7 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 9 """
    c1126(0)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 3 """
    if GetTalkListEntryResult() == 90:
        """ State 5,11 """
        SetEventState(71100208, 1)
        # talk:13000700:Now, let's begin.
        def ExitPause():
            SetEventState(71100208, 0)
        assert t110130_x3(text4=13000700, z7=11105195, flag15=0, mode21=1)
    elif GetTalkListEntryResult() == 92:
        """ State 8,13 """
        SetEventState(71100208, 1)
        # talk:13000700:Now, let's begin.
        def ExitPause():
            SetEventState(71100208, 0)
        assert t110130_x3(text4=13000700, z7=11105196, flag15=0, mode21=1)
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 4,15 """
        return 1
    """ State 10 """
    SetEventState(11105271, 1)
    SetEventState(11105272, 0)
    SetEventState(1076, 1)
    """ State 14 """
    return 0

def t110130_x32(z1=_, mode1=1, mode2=1, mode3=1):
    """ State 0 """
    assert DoesSelfHaveSpEffect(z1) == 1
    """ State 1 """
    while True:
        if not DoesSelfHaveSpEffect(z1) and 1 == mode3:
            break
        elif DoesSelfHaveSpEffect(310009) == 1 and 1 == mode1:
            pass
        elif (GetCurrentStateElapsedTime() > 20 and mode2 == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)
              and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))):
            Goto('L0')
        """ State 5,6 """
        if not DoesSelfHaveSpEffect(z1) and 1 == mode3:
            continue
        elif GetCurrentStateElapsedTime() > 2:
            """ State 8 """
            # talk:13030300:Again!, talk:13030500:Face me again. 
            call = t110130_x33(z3=2, text1=13030300, text2=13030500, text3=-1)
            if call.Done():
                continue
            elif not DoesSelfHaveSpEffect(z1) and 1 == mode3:
                continue
        """ State 2 """
        Label('L0')
        """ State 9 """
        call = t110130_x41(val1=3)
        if call.Done():
            pass
        elif DoesSelfHaveSpEffect(310009) == 1 and 1 == mode1:
            pass
    """ State 3 """
    assert f116(-1) == 1000010
    """ State 4,7 """
    # talk:13030000:Excellent... I expected no less of you., talk:13030100:A satisfying match., talk:13030200:Yes, splendidly done.
    assert t110130_x33(z3=3, text1=13030000, text2=13030100, text3=13030200)
    """ State 10 """
    return 0

def t110130_x33(z3=_, text1=_, text2=_, text3=_):
    """ State 0,1 """
    ShuffleRNGSeed(z3)
    """ State 2 """
    SetRNGSeed()
    if CompareRNGValue(0, 0) == 1:
        """ State 3 """
        SetEventState(71100208, 1)
        def ExitPause():
            SetEventState(71100208, 0)
        assert t110130_x4(text1=text1, flag14=1, mode20=1)
    elif CompareRNGValue(0, 1) == 1:
        """ State 4 """
        SetEventState(71100208, 1)
        def ExitPause():
            SetEventState(71100208, 0)
        assert t110130_x4(text1=text2, flag14=1, mode20=1)
    else:
        """ State 5 """
        SetEventState(71100208, 1)
        def ExitPause():
            SetEventState(71100208, 0)
        assert t110130_x4(text1=text3, flag14=1, mode20=1)
    """ State 6 """
    return 0

def t110130_x34(mode7=_):
    """ State 0,9 """
    if not mode7:
        """ State 10,15 """
        SetEventState(71100208, 1)
        # talk:13000800:Once again, a satisfying match.
        def ExitPause():
            SetEventState(71100208, 0)
        assert t110130_x4(text1=13000800, flag14=0, mode20=1)
        """ State 1 """
        ClearTalkListData()
        """ State 2 """
        def ExitPause():
            c1110()
        """ State 3 """
        # action:14013002:Apologize
        AddTalkListData(1, 14013002, 6001)
        # action:14013003:Give thanks
        AddTalkListData(2, 14013003, 6001)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 12 """
            SetEventState(71100210, 1)
            """ State 5 """
            Label('L0')
            """ State 17 """
            SetEventState(71100208, 1)
            # talk:13010300:I'm sorry.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x4(text1=13010300, flag14=0, mode20=1)
        elif GetTalkListEntryResult() == 2:
            """ State 13 """
            SetEventState(71100211, 1)
            """ State 6 """
            Label('L1')
            """ State 16 """
            SetEventState(71100208, 1)
            # talk:13010400:You have my gratitude.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x4(text1=13010400, flag14=0, mode20=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,19 """
            return 1
    else:
        """ State 11 """
        if GetEventStatus(71100210) == 1:
            Goto('L0')
        elif GetEventStatus(71100211) == 1:
            Goto('L1')
        else:
            """ State 20 """
            return 2
    """ State 8 """
    SetEventState(71100203, 1)
    """ State 14 """
    SetEventState(71100210, 0)
    SetEventState(71100211, 0)
    """ State 18 """
    return 0

def t110130_x35(mode6=_):
    """ State 0,10 """
    if not mode6:
        """ State 11,2 """
        ClearTalkListData()
        """ State 3 """
        def ExitPause():
            c1110()
        """ State 4 """
        # action:14013000:Accept
        AddTalkListData(1, 14013000, 6001)
        # action:14013001:Refuse
        AddTalkListData(2, 14013001, 6001)
        """ State 5 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            pass
        elif GetTalkListEntryResult() == 2:
            """ State 7 """
            Label('L0')
            """ State 14 """
            SetEventState(71100213, 1)
            """ State 17 """
            SetEventState(71100208, 1)
            # talk:13010200:No.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x4(text1=13010200, flag14=0, mode20=1)
            """ State 1 """
            SetEventState(71100201, 1)
            """ State 16 """
            SetEventState(71100212, 0)
            SetEventState(71100213, 0)
            """ State 20 """
            Label('L1')
            return 1
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 8 """
            Goto('L1')
    else:
        """ State 12 """
        if GetEventStatus(71100212) == 1:
            pass
        elif GetEventStatus(71100213) == 1:
            Goto('L0')
        else:
            """ State 21 """
            return 2
    """ State 6,13 """
    SetEventState(71100212, 1)
    """ State 18 """
    SetEventState(71100208, 1)
    # talk:13010100:Very well.
    def ExitPause():
        SetEventState(71100208, 0)
    assert t110130_x3(text4=13010100, z7=71100202, flag15=0, mode21=1)
    """ State 9 """
    SetEventState(71100201, 1)
    """ State 15 """
    SetEventState(71100212, 0)
    SetEventState(71100213, 0)
    """ State 19 """
    return 0

def t110130_x36(mode5=_):
    """ State 0,9 """
    if not mode5:
        """ State 10,1 """
        ClearTalkListData()
        """ State 2 """
        def ExitPause():
            c1110()
        """ State 3 """
        # action:14013006:Accept
        AddTalkListData(1, 14013006, 6001)
        # action:14013007:I do not wish to kill you
        AddTalkListData(2, 14013007, 6001)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 5 """
            Label('L0')
            """ State 12 """
            SetEventState(71100218, 1)
            """ State 16 """
            SetEventState(71100208, 1)
            # talk:13010900:I will... of course.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010900, z7=71100241, flag15=0, mode21=1)
            """ State 8 """
            SetEventState(71100240, 1)
            """ State 15 """
            SetEventState(71100219, 0)
            SetEventState(71100218, 0)
        elif GetTalkListEntryResult() == 2:
            """ State 6 """
            Label('L1')
            """ State 13 """
            SetEventState(71100219, 1)
            """ State 17 """
            SetEventState(71100208, 1)
            # talk:13011000:.........No.
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13011000, z7=71100241, flag15=0, mode21=1)
            """ State 14 """
            SetEventState(71100219, 0)
            SetEventState(71100218, 0)
            """ State 18 """
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7 """
            pass
    else:
        """ State 11 """
        if GetEventStatus(71100218) == 1:
            Goto('L0')
        elif GetEventStatus(71100219) == 1:
            Goto('L1')
        else:
            """ State 19 """
            return 1
    """ State 20 """
    return 2

def t110130_x37(mode4=_):
    """ State 0,9 """
    if not mode4:
        """ State 10,1 """
        ClearTalkListData()
        """ State 2 """
        def ExitPause():
            c1110()
        """ State 3 """
        # action:14013004:Tell him of the Mortal Blade
        AddTalkListData(1, 14013004, 6001)
        # action:14013005:Don't tell him
        AddTalkListData(2, 14013005, 6001)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            pass
        elif GetTalkListEntryResult() == 2:
            """ State 6 """
            Label('L0')
            """ State 13 """
            SetEventState(71100217, 1)
            """ State 17 """
            SetEventState(71100208, 1)
            # talk:13010800:This...?
            def ExitPause():
                SetEventState(71100208, 0)
            assert t110130_x3(text4=13010800, z7=71100243, flag15=0, mode21=1)
            """ State 15 """
            SetEventState(71100216, 0)
            SetEventState(71100217, 0)
            """ State 18 """
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,20 """
            return 2
    else:
        """ State 11 """
        if GetEventStatus(71100216) == 1:
            pass
        elif GetEventStatus(71100217) == 1:
            Goto('L0')
        else:
            """ State 19 """
            return 1
    """ State 5,12 """
    SetEventState(71100216, 1)
    """ State 16 """
    SetEventState(71100208, 1)
    # talk:13010700:The Mortal Blade.
    def ExitPause():
        SetEventState(71100208, 0)
    assert t110130_x3(text4=13010700, z7=71100243, flag15=0, mode21=1)
    """ State 8 """
    SetEventState(71100242, 1)
    """ State 14 """
    SetEventState(71100216, 0)
    SetEventState(71100217, 0)
    """ State 21 """
    return 3

def t110130_x38():
    """ State 0,1 """
    if not GetEventStatus(71100222) and GetEventStatus(11100195) == 1 and GetEventStatus(11100648) == 1:
        """ State 6 """
        SetEventState(71100222, 1)
    else:
        pass
    """ State 2 """
    # weapon:200300:Mikiri Counter
    if (not GetEventStatus(71100223) and ComparePlayerInventoryNumber(0, 200300, 2, 0, 0) == 1 and GetEventStatus(71100204)
        == 1):
        """ State 7 """
        SetEventState(71100223, 1)
    else:
        pass
    """ State 3 """
    # weapon:200600:Vault Over
    if (not GetEventStatus(71100224) and ComparePlayerInventoryNumber(0, 200600, 2, 0, 0) == 1 and GetEventStatus(71100204)
        == 1):
        """ State 8 """
        SetEventState(71100224, 1)
    else:
        pass
    """ State 4 """
    if (not GetEventStatus(71100225) and GetEventStatus(11100181) == 1 and GetEventStatus(11100182) ==
        1 and GetEventStatus(11100183) == 1):
        """ State 9 """
        SetEventState(71100225, 1)
    else:
        pass
    """ State 5 """
    if (not GetEventStatus(71100226) and GetEventStatus(11100195) == 1 and GetEventStatus(11100184) ==
        1 and GetEventStatus(11100185) == 1 and GetEventStatus(11100186) == 1 and GetEventStatus(11100187)
        == 1):
        """ State 10 """
        SetEventState(71100226, 1)
    else:
        pass
    """ State 11 """
    return 0

def t110130_x39(z2=_, action1=_):
    """ State 0,1 """
    if GetEventStatus(71100204) == 1:
        """ State 2,5 """
        assert t110130_x5(action1=action1)
    else:
        """ State 3 """
        pass
    """ State 4 """
    SetEventState(z2, 1)
    """ State 6 """
    return 0

def t110130_x40():
    """ State 0,1 """
    if not GetEventStatus(71100229) and GetEventStatus(71100222) == 1:
        """ State 6 """
        # action:13013007:New training option available
        assert t110130_x39(z2=71100229, action1=13013007)
    else:
        pass
    """ State 2 """
    if not GetEventStatus(71100230) and GetEventStatus(71100223) == 1:
        """ State 7 """
        # action:13013008:Undying Samurai Training "Mikiri Counter" unlocked
        assert t110130_x39(z2=71100230, action1=13013008)
    else:
        pass
    """ State 3 """
    if not GetEventStatus(71100231) and GetEventStatus(71100224) == 1:
        """ State 8 """
        # action:13013009:Undying Samurai Training "Vault Over" unlocked
        assert t110130_x39(z2=71100231, action1=13013009)
    else:
        pass
    """ State 4 """
    if not GetEventStatus(71100232) and GetEventStatus(71100225) == 1:
        """ State 9 """
        # action:13013000:Free Combat is now available.
        assert t110130_x39(z2=71100232, action1=13013000)
    else:
        pass
    """ State 5 """
    if not GetEventStatus(71100233) and GetEventStatus(71100226) == 1:
        """ State 10 """
        # action:13013010:Free Combat is now available.
        assert t110130_x39(z2=71100233, action1=13013010)
    else:
        pass
    """ State 11 """
    return 0

def t110130_x41(val1=3):
    """ State 0,1 """
    while True:
        if DoesSelfHaveSpEffect(315990) == 1:
            """ State 2 """
            assert not DoesSelfHaveSpEffect(315990)
        elif GetCurrentStateElapsedTime() > val1:
            """ State 3,4 """
            SetEventState(71100235, 1)
            # talk:13030600:What's wrong?, talk:13030700:Something wrong?, talk:13030800:Attack me.  
            def ExitPause():
                SetEventState(71100235, 0)
            assert t110130_x33(z3=2, text1=13030600, text2=13030700, text3=13030800)
            """ State 5 """
            return 0

def t110130_x42():
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        # talk:13050000:Come now...
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t110130_x3(text4=13050000, z7=71100215, flag15=0, mode21=1)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110130_x43():
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        # talk:13000100:Hmm...
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t110130_x3(text4=13000100, z7=71100205, flag15=0, mode21=1)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

