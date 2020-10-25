# -*- coding: utf-8 -*-
def t112111_1():
    """ State 0,1 """
    t112111_x4(flag1=6000, flag2=6000, flag3=6000, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=-1,
               val6=9850, flag5=6000, flag6=9432, flag7=6000, flag8=6000, val7=3, val8=1000000, val9=1000000,
               val10=1000000, mode1=1, mode2=1, mode3=0, val11=1000000, val12=1000000, mode4=1, flag9=6000,
               mode5=0)

def t112111_1000():
    """ State 0,3 """
    # talk:11060000:Wolf...where are you?
    assert t112111_x3(text1=11060000, flag14=0, mode11=1) and GetCurrentStateElapsedTime() > 1
    """ State 2 """
    assert t112111_x26()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112111_2000():
    """ State 0,4 """
    while True:
        call = t112111_x0(val6=9850, flag6=9432, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                          mode6=0, flag5=6000, val8=1000000, val9=1000000, val10=1000000, val11=1000000,
                          val12=1000000)
        if call.Done():
            break
        elif not GetEventStatus(9432):
            """ State 2 """
            assert GetEventStatus(9432) == 1
            """ State 3 """
            assert GetCurrentStateElapsedTime() > 0.5
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112111_x0(val6=9850, flag6=9432, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode6=0, flag5=6000,
               val8=1000000, val9=1000000, val10=1000000, val11=1000000, val12=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t112111_x25(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
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

def t112111_x1():
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

def t112111_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t112111_x3(text1=11060000, flag14=0, mode11=1):
    """ State 0,6 """
    assert t112111_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag14:
        """ State 1 """
        # talk:11060000:Wolf...where are you?
        TalkToPlayer(text1, -1, -1, flag14, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:11060000:Wolf...where are you?
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

def t112111_x4(flag1=6000, flag2=6000, flag3=6000, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=-1,
               val6=9850, flag5=6000, flag6=9432, flag7=6000, flag8=6000, val7=3, val8=1000000, val9=1000000,
               val10=1000000, mode1=1, mode2=1, mode3=0, val11=1000000, val12=1000000, mode4=1, flag9=6000,
               mode5=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t112111_x5(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, val7=val7, val8=val8, val9=val9,
                          val10=val10, mode1=mode1, mode2=mode2, mode3=mode3, val11=val11, val12=val12,
                          mode4=mode4, mode5=mode5)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t112111_x20(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t112111_x6(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t112111_x5(val1=5, val2=10, val3=12, val4=10, val5=12, flag4=-1, val6=9850, flag5=6000, flag6=9432,
               flag7=6000, flag8=6000, val7=3, val8=1000000, val9=1000000, val10=1000000, mode1=1, mode2=1,
               mode3=0, val11=1000000, val12=1000000, mode4=1, mode5=0):
    """ State 0,4 """
    while True:
        call = t112111_x22(val6=val6, flag5=flag5, flag6=flag6, val8=val8, val9=val9, val10=val10, val11=val11,
                           val12=val12)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t112111_x7(val1=val1, val7=val7, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4)
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
            call = t112111_x8(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode5 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t112111_x9(val2=val2, val3=val3)

def t112111_x6(flag1=6000, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t112111_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t112111_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t112111_x7(val1=5, val7=3, mode1=1, mode2=1, mode3=0, mode4=1):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t112111_x15(mode1=mode1, mode3=mode3)
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
        assert t112111_x12()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t112111_x11()
    """ State 4 """
    return 0

def t112111_x8(val5=12):
    """ State 0,1 """
    call = t112111_x21()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t112111_x1()
    """ State 3 """
    return 0

def t112111_x9(val2=10, val3=12):
    """ State 0,4 """
    assert t112111_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t112111_x14()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t112111_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t112111_x10(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t112111_x19()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t112111_x1()
    """ State 4 """
    return 0

def t112111_x11():
    """ State 0,1 """
    assert t112111_x1()
    """ State 2 """
    return 0

def t112111_x12():
    """ State 0,2 """
    assert t112111_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t112111_x13(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t112111_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t112111_x1()

def t112111_x14():
    """ State 0,1 """
    assert t112111_x16(z1=1101, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t112111_x15(mode1=1, mode3=0):
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
        assert t112111_x16(z1=1000, mode7=0, mode8=0, mode9=0, mode10=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t112111_x16(z1=_, mode7=0, mode8=0, mode9=0, mode10=0):
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

def t112111_x17():
    """ State 0,1 """
    call = t112111_x16(z1=1103, mode7=0, mode8=0, mode9=0, mode10=0)
    if call.Get() == 1:
        """ State 2 """
        assert t112111_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t112111_x18():
    """ State 0,2 """
    call = t112111_x16(z1=1102, mode7=0, mode8=0, mode9=0, mode10=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t112111_x19():
    """ State 0,1 """
    assert t112111_x16(z1=1001, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t112111_x20(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t112111_x13(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t112111_x23(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t112111_x10(val2=val2, val3=val3)

def t112111_x21():
    """ State 0,1 """
    assert t112111_x16(z1=1100, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t112111_x22(val6=9850, flag5=6000, flag6=9432, val8=1000000, val9=1000000, val10=1000000, val11=1000000,
                val12=1000000):
    """ State 0,1 """
    call = t112111_x16(z1=2000, mode7=0, mode8=0, mode9=0, mode10=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t112111_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode6=0, flag5=flag5, val8=val8, val9=val9, val10=val10, val11=val11, val12=val12))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t112111_x23(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t112111_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t112111_x1()
    """ State 4 """
    return 0

def t112111_x24():
    """ State 0,1 """
    assert t112111_x16(z1=1002, mode7=0, mode8=0, mode9=0, mode10=0)
    """ State 2 """
    return 0

def t112111_x25(val6=9850, flag6=9432, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode6=0, flag5=6000):
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

def t112111_x26():
    """ State 0,13 """
    if GetEventStatus(71110757) == 1:
        pass
    elif GetEventStatus(71110756) == 1:
        """ State 6 """
        Label('L0')
        """ State 9 """
        SetEventState(11125708, 1)
        SetEventState(71110756, 1)
        RequestSave(0)
        Quit()
    elif GetEventStatus(71110755) == 1:
        """ State 5 """
        Label('L1')
        """ State 8 """
        SetEventState(11125707, 1)
        SetEventState(71110755, 1)
        RequestSave(0)
        Quit()
    else:
        """ State 12 """
        c1110()
        """ State 1 """
        ClearTalkListData()
        """ State 2 """
        # action:14000100:Give Divine Dragon's Tears
        AddTalkListData(1, 14000100, -1)
        # goods:2503:Aromatic Flower, action:14000101:Give Dragon's Tears and Everblossom 
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2503, 2, 0, 0) == 1, 2, 14000101, -1)
        # goods:9091:Frozen Tears, action:14000102:Give Dragon Tears and Frozen Tears
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9091, 2, 0, 0) == 1, 3, 14000102, -1)
        """ State 3 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 4 """
        if GetTalkListEntryResult() == 1:
            Goto('L1')
        elif GetTalkListEntryResult() == 2:
            Goto('L0')
        elif GetTalkListEntryResult() == 3:
            pass
        else:
            """ State 11,14 """
            return 0
    """ State 7,10 """
    SetEventState(11125709, 1)
    SetEventState(71110757, 1)
    RequestSave(0)

