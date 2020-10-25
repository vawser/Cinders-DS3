# -*- coding: utf-8 -*-
def t200320_1():
    """ State 0,1 """
    t200320_x7(flag1=1499, flag2=1495, flag3=1496, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7003200, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1000000,
               val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0, flag9=6000,
               mode7=0)

def t200320_1000():
    """ State 0,6 """
    if GetEventStatus(1480) == 1:
        """ State 7,5,14 """
        call = t200320_x31(mode1=1)
        if call.Get() == 1:
            """ State 2 """
            if not GetEventStatus(72000052):
                """ State 3,13 """
                assert t200320_x31(mode1=0)
            else:
                """ State 4 """
                if not GetEventStatus(72000051) and GetEventStatus(71110100) == 1:
                    """ State 9,15 """
                    assert t200320_x31(mode1=0)
                else:
                    """ State 10,11 """
                    # talk:32000300:Is there...something else?
                    assert t200320_x5(text1=32000300, flag19=0, mode14=1)
        elif call.Done():
            pass
    else:
        """ State 8,12 """
        # talk:32000500:.........
        assert t200320_x5(text1=32000500, flag19=0, mode14=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200320_1101():
    """ State 0,2 """
    if GetEventStatus(1480) == 1:
        """ State 3,5 """
        # talk:32030000:   , talk:32030100:   , talk:32030200:I must... return the child to her home..., talk:32030300:She must be so lonely... so lonely...
        assert (t200320_x26(text3=32030000, flag16=72000055, text4=32030100, flag17=72000056, text5=32030200,
                flag18=72000057, text6=32030300))
    else:
        """ State 4 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200320_x0(val6=7003200, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode8=0,
               flag5=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t200320_x30(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
                           mode8=mode8, flag5=flag5)
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

def t200320_x1():
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

def t200320_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t200320_x3(text3=_, flag16=_, flag21=1, mode16=1):
    """ State 0,7 """
    assert t200320_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag16, 1)
    """ State 6 """
    if not flag21:
        """ State 1 """
        TalkToPlayer(text3, -1, -1, flag21, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text3, -1, -1, flag21, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode16:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t200320_x4(text2=32010050, flag15=72000051, flag20=0, mode15=1):
    """ State 0,7 """
    assert t200320_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag20:
        """ State 1 """
        # talk:32010050:All right.
        TalkToPlayer(text2, -1, -1, flag20, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:32010050:All right.
        TalkToPlayer(text2, -1, -1, flag20, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode15:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag15, 1)
    """ State 8 """
    return 0

def t200320_x5(text1=_, flag19=_, mode14=1):
    """ State 0,6 """
    assert t200320_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
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
    """ State 3 """
    if not mode14:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t200320_x6(lot1=63200):
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

def t200320_x7(flag1=1499, flag2=1495, flag3=1496, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7003200, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1000000,
               val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0, flag9=6000,
               mode7=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t200320_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode2=mode2, val7=val7,
                          val8=val8, val9=val9, mode3=mode3, mode4=mode4, mode5=mode5, val10=val10, val11=val11,
                          mode6=mode6, mode7=mode7)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t200320_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t200320_x9(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t200320_x8(val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001, val6=7003200, flag5=6000, flag6=6001,
               flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1000000, val9=1000000, mode3=1, mode4=1,
               mode5=0, val10=1000000, val11=1000000, mode6=0, mode7=0):
    """ State 0,4 """
    while True:
        call = t200320_x25(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t200320_x10(val1=val1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag8) == 1:
            Goto('L0')
        elif not GetEventStatus(flag4) and GetEventStatus(flag7) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t200320_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t200320_x12(val2=val2, val3=val3)

def t200320_x9(flag1=1499, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t200320_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t200320_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t200320_x10(val1=5, mode2=1, mode3=1, mode4=1, mode5=0, mode6=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t200320_x18(mode3=mode3, mode5=mode5)
    def WhilePaused():
        c1117(mode2, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode4 == 1, 0.1)
        c5120(val1 == 1 and not mode2 and mode6 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t200320_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t200320_x14()
    """ State 4 """
    return 0

def t200320_x11(val5=12):
    """ State 0,1 """
    call = t200320_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t200320_x1()
    """ State 3 """
    return 0

def t200320_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t200320_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t200320_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t200320_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t200320_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t200320_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t200320_x1()
    """ State 4 """
    return 0

def t200320_x14():
    """ State 0,1 """
    assert t200320_x1()
    """ State 2 """
    return 0

def t200320_x15():
    """ State 0,2 """
    assert t200320_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t200320_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t200320_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t200320_x1()

def t200320_x17():
    """ State 0,1 """
    assert t200320_x19(z1=1101, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t200320_x18(mode3=1, mode5=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode3 == 1 and not mode5, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode3 == 1 and mode5 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t200320_x19(z1=1000, mode10=0, mode11=0, mode12=0, mode13=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t200320_x19(z1=_, mode10=0, mode11=0, mode12=0, mode13=0):
    """ State 0,4 """
    if f118(z1) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z1)
        assert f117() == mode10 or f117() == mode11 or f117() == mode12 or f117() == mode13
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t200320_x20():
    """ State 0,1 """
    call = t200320_x19(z1=1103, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert t200320_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t200320_x21():
    """ State 0,2 """
    call = t200320_x19(z1=1102, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t200320_x22():
    """ State 0,1 """
    assert t200320_x19(z1=1001, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t200320_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t200320_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t200320_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t200320_x13(val2=val2, val3=val3)

def t200320_x24():
    """ State 0,1 """
    assert t200320_x19(z1=1100, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t200320_x25(val6=7003200, flag5=6000, flag6=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t200320_x19(z1=2000, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t200320_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode8=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t200320_x26(text3=32030000, flag16=72000055, text4=32030100, flag17=72000056, text5=32030200, flag18=72000057,
                text6=32030300):
    """ State 0,1 """
    if not text3 == -1 and not GetEventStatus(flag16):
        """ State 3 """
        assert t200320_x3(text3=text3, flag16=flag16, flag21=1, mode16=1)
    elif not text4 == -1 and not GetEventStatus(flag17):
        """ State 4 """
        assert t200320_x3(text3=text4, flag16=flag17, flag21=1, mode16=1)
    elif not text5 == -1 and not GetEventStatus(flag18):
        """ State 5 """
        assert t200320_x3(text3=text5, flag16=flag18, flag21=1, mode16=1)
    else:
        """ State 2 """
        SetEventState(flag16, 0)
        SetEventState(flag17, 0)
        SetEventState(flag18, 0)
        """ State 6 """
        assert t200320_x5(text1=text6, flag19=1, mode14=1)
    """ State 7 """
    return 0

def t200320_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t200320_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t200320_x1()
    """ State 4 """
    return 0

def t200320_x28():
    """ State 0,1 """
    assert t200320_x19(z1=1002, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t200320_x29(text1=32010000, text2=32010050, lot1=63200, flag14=72000050, flag15=72000051, mode9=_):
    """ State 0,3 """
    if not mode9:
        """ State 4,8 """
        assert t200320_x5(text1=text1, flag19=0, mode14=1)
        """ State 2 """
        SetEventState(flag14, 1)
        """ State 10 """
        assert t200320_x6(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag14) == 1 and not GetEventStatus(flag15):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t200320_x4(text2=text2, flag15=flag15, flag20=0, mode15=1)
    """ State 11 """
    return 0

def t200320_x30(val6=7003200, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode8=0,
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
            elif CheckActionButtonArea(val6 + mode8) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t200320_x31(mode1=_):
    """ State 0,10 """
    if not mode1:
        """ State 12 """
        if not GetEventStatus(72000052):
            """ State 18,20 """
            # talk:32000200:Children of the Rejuvenating Waters... forgive me!
            assert t200320_x5(text1=32000200, flag19=0, mode14=1)
        else:
            """ State 19,25 """
            # talk:32000350:Is there...something else?
            assert t200320_x5(text1=32000350, flag19=0, mode14=1)
        """ State 1 """
        ClearTalkListData()
        c1110()
        """ State 2 """
        # action:14032000:Ask about the "special holy person"
        AddTalkListDataIf(GetEventStatus(71110100) == 1, 1, 14032000, 6001)
        # action:14032001:Say nothing
        AddTalkListData(2, 14032001, 6001)
        """ State 3 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 4 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 8 """
            SetEventState(72000060, 1)
            """ State 6 """
            Label('L0')
            """ State 21 """
            # talk:32010000:I'm told that a special holy person lives here., talk:32010050:All right.
            assert (t200320_x29(text1=32010000, text2=32010050, lot1=63200, flag14=72000050, flag15=72000051,
                    mode9=0))
            """ State 14 """
            Label('L1')
            SetEventState(72000060, 0)
            SetEventState(72000061, 0)
            """ State 15 """
            SetEventState(72000052, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 9 """
            SetEventState(72000061, 1)
            """ State 7 """
            Label('L2')
            if not GetEventStatus(72000052):
                """ State 16,23 """
                # talk:32010100:.........
                assert t200320_x5(text1=32010100, flag19=0, mode14=1)
                Goto('L1')
            else:
                """ State 17,24 """
                # talk:32010100:.........
                assert t200320_x5(text1=32010100, flag19=0, mode14=1)
                Goto('L1')
        else:
            """ State 11 """
            pass
    else:
        """ State 22 """
        # talk:32010000:I'm told that a special holy person lives here., talk:32010050:All right.
        call = t200320_x29(text1=32010000, text2=32010050, lot1=63200, flag14=72000050, flag15=72000051,
                           mode9=1)
        if call.Get() == 1:
            """ State 13 """
            if GetEventStatus(72000060) == 1:
                Goto('L0')
            elif GetEventStatus(72000061) == 1:
                Goto('L2')
            else:
                """ State 27 """
                return 1
        elif call.Done():
            Goto('L1')
    """ State 26 """
    return 0

