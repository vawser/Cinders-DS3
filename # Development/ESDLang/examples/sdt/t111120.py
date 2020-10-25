# -*- coding: utf-8 -*-
def t111120_1():
    """ State 0 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 1 """
    t111120_x6(flag1=1359, flag2=11115851, flag3=6000, val1=5, val2=40, val3=45, val4=10, val5=12, flag4=6001,
               val6=7001200, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1506002,
               val9=1506004, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0, flag9=6000,
               mode7=0)

def t111120_1000():
    """ State 0,2 """
    assert t111120_x31()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111120_1001():
    """ State 0,2 """
    if DoesSelfHaveSpEffect(3506080) == 1:
        pass
    else:
        """ State 3 """
        # talk:12130500:No more than a stray dog after all.
        call = t111120_x5(text1=12130500, flag14=1, mode14=1)
        if call.Done():
            pass
        elif DoesSelfHaveSpEffect(3506080) == 1:
            """ State 4 """
            assert t111120_x1()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111120_1002():
    """ State 0,6 """
    if DoesSelfHaveSpEffect(3506080) == 1:
        pass
    else:
        """ State 2 """
        if not GetEventStatus(71110032):
            """ State 3,8 """
            # talk:12130200:One...!
            call = t111120_x3(text3=12130200, z5=71110032, flag16=1, mode16=1)
            if call.Done():
                pass
            elif DoesSelfHaveSpEffect(3506080) == 1:
                """ State 11 """
                Label('L0')
                assert t111120_x1()
                Goto('L1')
        elif not GetEventStatus(71110033):
            """ State 4,9 """
            # talk:12130300:Two...!
            call = t111120_x3(text3=12130300, z5=71110033, flag16=1, mode16=1)
            if call.Done():
                pass
            elif DoesSelfHaveSpEffect(3506080) == 1:
                Goto('L0')
        elif not GetEventStatus(71110034):
            """ State 5,10 """
            # talk:12130400:Three...!
            call = t111120_x3(text3=12130400, z5=71110034, flag16=1, mode16=1)
            if call.Done():
                pass
            elif DoesSelfHaveSpEffect(3506080) == 1:
                Goto('L0')
        """ State 1 """
        def WhilePaused():
            c1119(0)
        Quit()
    """ State 7 """
    Label('L1')

def t111120_1102():
    """ State 0,2 """
    call = t111120_x30()
    assert f120() - f121() == 1
    """ State 3 """
    assert t111120_x1()
    """ State 4 """
    call = t111120_x30()
    assert f120() - f121() == 2
    """ State 5 """
    t111120_x1()

def t111120_1103():
    """ State 0,2 """
    # talk:12161000:Death of a shadow...
    assert t111120_x5(text1=12161000, flag14=1, mode14=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111120_2000():
    """ State 0,6 """
    assert (t111120_x0(val6=7001200, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
            mode8=0, flag5=6000, val7=1000000, val8=1506002, val9=1506004, val10=-1, val11=-1))
    """ State 3 """
    if (not GetEventStatus(8300) and not GetEventStatus(71110049) and not GetEventStatus(71110006) and
        not GetEventStatus(71110005) and not GetEventStatus(71110008) and not GetEventStatus(71110007)
        and f116(-1) == 1506002):
        """ State 4 """
        pass
    elif f116(-1) == 1506002:
        """ State 7 """
        assert t111120_x25(z1=-1, z2=1506003, val12=1506003, mode9=1, val13=3)
    elif f116(-1) == 1000000:
        """ State 2 """
        SetEventState(71110040, 1)
    else:
        """ State 5 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111120_x0(val6=7001200, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode8=0,
               flag5=6000, val7=1000000, val8=1506002, val9=1506004, val10=_, val11=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t111120_x28(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
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

def t111120_x1():
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

def t111120_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111120_x3(text3=_, z5=_, flag16=1, mode16=1):
    """ State 0,7 """
    assert t111120_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z5, 1)
    """ State 6 """
    if not flag16:
        """ State 1 """
        TalkToPlayer(text3, -1, -1, flag16, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text3, -1, -1, flag16, 1)
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

def t111120_x4(text2=_, z4=_, flag15=0, mode15=1):
    """ State 0,7 """
    assert t111120_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode15:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z4, 1)
    """ State 8 """
    return 0

def t111120_x5(text1=_, flag14=_, mode14=1):
    """ State 0,6 """
    assert t111120_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode14:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t111120_x6(flag1=1359, flag2=11115851, flag3=6000, val1=5, val2=40, val3=45, val4=10, val5=12, flag4=6001,
               val6=7001200, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1506002,
               val9=1506004, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0, flag9=6000,
               mode7=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t111120_x7(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode2=mode2, val7=val7,
                          val8=val8, val9=val9, mode3=mode3, mode4=mode4, mode5=mode5, val10=val10, val11=val11,
                          mode6=mode6, mode7=mode7)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t111120_x22(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t111120_x8(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t111120_x7(val1=5, val2=40, val3=45, val4=10, val5=12, flag4=6001, val6=7001200, flag5=6000, flag6=6001,
               flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1506002, val9=1506004, mode3=1, mode4=1,
               mode5=0, val10=1000000, val11=1000000, mode6=0, mode7=0):
    """ State 0,4 """
    while True:
        call = t111120_x24(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t111120_x9(val1=val1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6)
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
            call = t111120_x10(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t111120_x11(val2=val2, val3=val3)

def t111120_x8(flag1=1359, val2=40, val3=45):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t111120_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t111120_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t111120_x9(val1=5, mode2=1, mode3=1, mode4=1, mode5=0, mode6=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t111120_x17(mode3=mode3, mode5=mode5)
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
        assert t111120_x14()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t111120_x13()
    """ State 4 """
    return 0

def t111120_x10(val5=12):
    """ State 0,1 """
    call = t111120_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t111120_x1()
    """ State 3 """
    return 0

def t111120_x11(val2=40, val3=45):
    """ State 0,4 """
    assert t111120_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t111120_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t111120_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t111120_x12(val2=40, val3=45):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t111120_x21()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t111120_x1()
    """ State 4 """
    return 0

def t111120_x13():
    """ State 0,1 """
    assert t111120_x1()
    """ State 2 """
    return 0

def t111120_x14():
    """ State 0,2 """
    assert t111120_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t111120_x15(val2=40, val3=45):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t111120_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t111120_x1()

def t111120_x16():
    """ State 0,1 """
    assert t111120_x18(z3=1101, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t111120_x17(mode3=1, mode5=0):
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
        assert t111120_x18(z3=1000, mode10=0, mode11=0, mode12=0, mode13=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t111120_x18(z3=_, mode10=0, mode11=0, mode12=0, mode13=0):
    """ State 0,4 """
    if f118(z3) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z3)
        assert f117() == mode10 or f117() == mode11 or f117() == mode12 or f117() == mode13
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t111120_x19():
    """ State 0,1 """
    call = t111120_x18(z3=1103, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert t111120_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t111120_x20():
    """ State 0,2 """
    call = t111120_x18(z3=1102, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t111120_x21():
    """ State 0,1 """
    assert t111120_x18(z3=1001, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t111120_x22(val2=40, val3=45):
    """ State 0,1 """
    while True:
        call = t111120_x15(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t111120_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t111120_x12(val2=val2, val3=val3)

def t111120_x23():
    """ State 0,1 """
    assert t111120_x18(z3=1100, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t111120_x24(val6=7001200, flag5=6000, flag6=6001, val7=1000000, val8=1506002, val9=1506004, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t111120_x18(z3=2000, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t111120_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode8=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t111120_x25(z1=-1, z2=1506003, val12=1506003, mode9=1, val13=3):
    """ State 0,1 """
    def WhilePaused():
        c1117(z2, z1)
    if f116(z1) == val12 and mode9 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val13:
        """ State 3 """
        return 1

def t111120_x26(val2=40, val3=45):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t111120_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t111120_x1()
    """ State 4 """
    return 0

def t111120_x27():
    """ State 0,1 """
    assert t111120_x18(z3=1002, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t111120_x28(val6=7001200, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode8=0,
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

def t111120_x29(mode1=_):
    """ State 0,15 """
    if not mode1:
        """ State 16,7 """
        c1110()
        ClearTalkListData()
        """ State 2 """
        # action:14012000:Obey the Iron Code, forsake Kuro
        AddTalkListData(1, 14012000, 6001)
        # action:14012001:Break the Iron Code, stay loyal to Kuro
        AddTalkListData(2, 14012001, 6001)
        """ State 3 """
        OpenConversationChoicesMenu(0)
        """ State 1 """
        if GetTalkListEntryResult() == 1:
            """ State 6 """
            Label('L0')
            """ State 18 """
            SetEventState(71110005, 1)
            """ State 31 """
            # talk:12100200:...As you command.
            assert t111120_x5(text1=12100200, flag14=0, mode14=1)
            """ State 10 """
            c1110()
            ClearTalkListData()
            """ State 8 """
            # action:14012010:Obey the Iron Code, forsake Kuro
            AddTalkListData(1, 14012010, 6001)
            # action:14012011:Change your mind.  Stay loyal to Kuro
            AddTalkListData(2, 14012011, 6001)
            """ State 9 """
            OpenConversationChoicesMenu(0)
            """ State 11 """
            if GetTalkListEntryResult() == 1:
                """ State 14 """
                Label('L1')
                """ State 19 """
                SetEventState(71110007, 1)
                """ State 32 """
                # talk:12100500:... Yes. The code is absolute.
                assert t111120_x4(text2=12100500, z4=8300, flag15=0, mode15=1)
                """ State 27 """
                SetEventState(71110020, 1)
            elif GetTalkListEntryResult() == 2:
                """ State 12 """
                Label('L2')
                """ State 21 """
                SetEventState(71110008, 1)
                if not f116(-1) == 1506004:
                    """ State 33 """
                    # talk:12100700:...No, I cannot.
                    assert t111120_x4(text2=12100700, z4=71110049, flag15=0, mode15=1)
                else:
                    """ State 35 """
                    # talk:12100703:Ugh...
                    assert t111120_x4(text2=12100703, z4=71110049, flag15=0, mode15=1)
                """ State 28 """
                SetEventState(71110021, 1)
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 13 """
                pass
        elif GetTalkListEntryResult() == 2:
            """ State 4 """
            Label('L3')
            """ State 20 """
            SetEventState(71110006, 1)
            if not f116(-1) == 1506004:
                """ State 30 """
                # talk:12100300:...I cannot do as you ask.
                assert t111120_x4(text2=12100300, z4=71110049, flag15=0, mode15=1)
            else:
                """ State 34 """
                # talk:12100303:Ugh...
                assert t111120_x4(text2=12100303, z4=71110049, flag15=0, mode15=1)
            """ State 29 """
            SetEventState(71110021, 1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 5 """
            pass
    else:
        """ State 17 """
        if GetEventStatus(71110007) == 1:
            """ State 23 """
            Goto('L1')
        elif GetEventStatus(71110008) == 1:
            """ State 25 """
            Goto('L2')
        elif GetEventStatus(71110005) == 1:
            """ State 22 """
            Goto('L0')
        elif GetEventStatus(71110006) == 1:
            """ State 24 """
            Goto('L3')
        else:
            """ State 26,37 """
            return 1
    """ State 36 """
    return 0

def t111120_x30():
    """ State 0,1 """
    while True:
        if not GetEventStatus(71110030):
            """ State 2,7 """
            # talk:12130000:...Enough talk!
            call = t111120_x3(text3=12130000, z5=71110030, flag16=1, mode16=1)
            if call.Done():
                continue
            elif DoesSelfHaveSpEffect(30001) == 1 and not GetEventStatus(71110035):
                """ State 9 """
                Label('L0')
                # talk:12160000:WAIT... wait, please!
                call = t111120_x3(text3=12160000, z5=71110035, flag16=1, mode16=1)
                if call.Done():
                    continue
                elif DoesSelfHaveSpEffect(30003) == 1 and not GetEventStatus(71110036):
                    pass
                elif DoesSelfHaveSpEffect(30004) == 1 and not GetEventStatus(71110031):
                    """ State 8 """
                    Label('L1')
                    # talk:12130100:...it warms my heart, Wolf.
                    assert t111120_x3(text3=12130100, z5=71110031, flag16=1, mode16=1)
                    continue
                elif DoesSelfHaveSpEffect(30005) == 1 and not GetEventStatus(71110037):
                    """ State 11 """
                    Label('L2')
                    # talk:12160800:   
                    assert t111120_x3(text3=12160800, z5=71110037, flag16=1, mode16=1)
                    continue
        elif DoesSelfHaveSpEffect(30001) == 1 and not GetEventStatus(71110035):
            """ State 4 """
            Goto('L0')
        elif DoesSelfHaveSpEffect(30003) == 1 and not GetEventStatus(71110036):
            """ State 5 """
            pass
        elif not GetEventStatus(71110031) and DoesSelfHaveSpEffect(30004) == 1:
            """ State 3 """
            Goto('L1')
        elif DoesSelfHaveSpEffect(30005) == 1 and not GetEventStatus(71110037):
            """ State 6 """
            Goto('L2')
        """ State 10 """
        # talk:12160200:You fool!
        assert t111120_x3(text3=12160200, z5=71110036, flag16=1, mode16=1)

def t111120_x31():
    """ State 0,11 """
    if (GetEventStatus(71110008) == 1 or GetEventStatus(71110006) == 1) and not GetEventStatus(71110049):
        """ State 8 """
        while True:
            assert f116(-1) == 1000000 or f116(-1) == 1506004
            """ State 9 """
            assert GetCurrentStateElapsedTime() > 0.01
            """ State 10 """
            if f116(-1) == 1000000 or f116(-1) == 1506004:
                break
            else:
                pass
    else:
        pass
    """ State 3 """
    if not GetEventStatus(71110049) and not GetEventStatus(8300):
        """ State 4,14 """
        call = t111120_x29(mode1=1)
        if call.Get() == 1:
            """ State 1,12 """
            # talk:12100000:Father...
            assert t111120_x5(text1=12100000, flag14=0, mode14=1)
            """ State 13 """
            assert t111120_x29(mode1=0)
        elif call.Done():
            """ State 2 """
            pass
    else:
        """ State 6 """
        if GetEventStatus(8300) == 1:
            """ State 5,15 """
            # talk:12100550:I hereby forsake my master... the Divine Heir.
            assert t111120_x4(text2=12100550, z4=71110020, flag15=0, mode15=1)
        else:
            """ State 7,16 """
            # talk:12100350:Unthinkable... such a miserable display.
            assert t111120_x4(text2=12100350, z4=71110021, flag15=0, mode15=1)
    """ State 17 """
    return 0

