# -*- coding: utf-8 -*-
def t100700_1():
    """ State 0,1 """
    t100700_x5(flag1=70009049, flag2=70009045, flag3=70009046, val1=5, val2=10, val3=12, val4=10, val5=12,
               flag4=6001, val6=7007000, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000,
               val8=1145000, val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0,
               flag9=71009014, mode7=0)

def t100700_1000():
    """ State 0,2 """
    if CheckSelfDeath() == 1:
        """ State 6 """
        # talk:70001105:The Dragonspring pilgrimage...
        assert t100700_x4(text1=70001105, flag14=0, mode13=1)
    else:
        """ State 5 """
        call = t100700_x27(mode1=1)
        if call.Get() == 1:
            """ State 3 """
            # talk:70000000:(Groan...)
            assert t100700_x4(text1=70000000, flag14=0, mode13=1)
            """ State 4 """
            assert t100700_x27(mode1=0)
        elif call.Done():
            pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100700_2000():
    """ State 0,2 """
    call = t100700_x0(val6=7007000, flag6=6001, flag10=6001, flag11=6001, flag12=6001, flag13=6001, mode8=0,
                      flag5=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000)
    if call.Done():
        pass
    elif CheckSelfDeath() == 1:
        """ State 3 """
        assert (t100700_x0(val6=7007001, flag6=6001, flag10=6001, flag11=6001, flag12=6001, flag13=6001,
                mode8=0, flag5=6000, val7=1145000, val8=1145000, val9=1145000, val10=1145000, val11=1145000))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100700_x0(val6=_, flag6=6001, flag10=_, flag11=_, flag12=_, flag13=_, mode8=0, flag5=6000, val7=_,
               val8=_, val9=_, val10=_, val11=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t100700_x26(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
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

def t100700_x1():
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

def t100700_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t100700_x3(text2=_, z2=_, flag15=0, mode14=1):
    """ State 0,7 """
    assert t100700_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode14:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 8 """
    return 0

def t100700_x4(text1=_, flag14=0, mode13=1):
    """ State 0,6 """
    assert t100700_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode13:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t100700_x5(flag1=70009049, flag2=70009045, flag3=70009046, val1=5, val2=10, val3=12, val4=10, val5=12,
               flag4=6001, val6=7007000, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000,
               val8=1145000, val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0,
               flag9=71009014, mode7=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t100700_x6(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode2=mode2, val7=val7,
                          val8=val8, val9=val9, mode3=mode3, mode4=mode4, mode5=mode5, val10=val10, val11=val11,
                          mode6=mode6, mode7=mode7)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t100700_x21(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t100700_x7(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t100700_x6(val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001, val6=7007000, flag5=6000, flag6=6001,
               flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1145000, val9=1000000, mode3=1, mode4=1,
               mode5=0, val10=1000000, val11=1000000, mode6=0, mode7=0):
    """ State 0,4 """
    while True:
        call = t100700_x23(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t100700_x8(val1=val1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6)
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
            call = t100700_x9(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t100700_x10(val2=val2, val3=val3)

def t100700_x7(flag1=70009049, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t100700_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t100700_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t100700_x8(val1=5, mode2=1, mode3=1, mode4=1, mode5=0, mode6=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t100700_x16(mode3=mode3, mode5=mode5)
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
        assert t100700_x13()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t100700_x12()
    """ State 4 """
    return 0

def t100700_x9(val5=12):
    """ State 0,1 """
    call = t100700_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t100700_x1()
    """ State 3 """
    return 0

def t100700_x10(val2=10, val3=12):
    """ State 0,4 """
    assert t100700_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t100700_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t100700_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t100700_x11(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t100700_x20()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t100700_x1()
    """ State 4 """
    return 0

def t100700_x12():
    """ State 0,1 """
    assert t100700_x1()
    """ State 2 """
    return 0

def t100700_x13():
    """ State 0,2 """
    assert t100700_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t100700_x14(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t100700_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t100700_x1()

def t100700_x15():
    """ State 0,1 """
    assert t100700_x17(z1=1101, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t100700_x16(mode3=1, mode5=0):
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
        assert t100700_x17(z1=1000, mode9=0, mode10=0, mode11=0, mode12=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t100700_x17(z1=_, mode9=0, mode10=0, mode11=0, mode12=0):
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

def t100700_x18():
    """ State 0,1 """
    call = t100700_x17(z1=1103, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert t100700_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t100700_x19():
    """ State 0,2 """
    call = t100700_x17(z1=1102, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t100700_x20():
    """ State 0,1 """
    assert t100700_x17(z1=1001, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t100700_x21(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t100700_x14(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t100700_x24(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t100700_x11(val2=val2, val3=val3)

def t100700_x22():
    """ State 0,1 """
    assert t100700_x17(z1=1100, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t100700_x23(val6=7007000, flag5=6000, flag6=6001, val7=1000000, val8=1145000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t100700_x17(z1=2000, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t100700_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode8=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t100700_x24(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t100700_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t100700_x1()
    """ State 4 """
    return 0

def t100700_x25():
    """ State 0,1 """
    assert t100700_x17(z1=1002, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t100700_x26(val6=_, flag6=6001, flag10=_, flag11=_, flag12=_, flag13=_, mode8=0, flag5=6000):
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

def t100700_x27(mode1=_):
    """ State 0,9 """
    if mode1 == 1:
        """ State 14 """
        if GetEventStatus(71009010) == 1:
            """ State 8,4 """
            Label('L0')
            """ State 18 """
            if GetEventStatus(71009013) == 1:
                """ State 22 """
                SetEventState(71009014, 1)
                # talk:70001000:What happened?
                def ExitPause():
                    c511(not f116(-1) == 1145000, 71009014, 0)
                assert t100700_x3(text2=70001000, z2=71009012, flag15=0, mode14=1)
                """ State 13 """
                Label('L1')
                SetEventState(71009010, 0)
                SetEventState(71009011, 0)
                """ State 16 """
                if not mode1:
                    """ State 17 """
                    if GetEventStatus(71009012) == 1 and GetEventStatus(71009013) == 1:
                        pass
                    else:
                        """ State 1 """
                        Label('L2')
                        ClearTalkListData()
                        """ State 2 """
                        # action:14070000:Ask what happened
                        AddTalkListData(1, 14070000, 6001)
                        # action:14070001:Ask what year it is
                        AddTalkListData(2, 14070001, 6001)
                        """ State 3 """
                        OpenConversationChoicesMenu(0)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 15 """
                        if GetTalkListEntryResult() == 1:
                            """ State 7 """
                            SetEventState(71009010, 1)
                            Goto('L0')
                        elif GetTalkListEntryResult() == 2:
                            """ State 12 """
                            SetEventState(71009011, 1)
                            """ State 5 """
                            Label('L3')
                            """ State 19 """
                            if GetEventStatus(71009012) == 1:
                                """ State 23 """
                                SetEventState(71009014, 1)
                                # talk:70001100:... What year is it?
                                def ExitPause():
                                    c511(not f116(-1) == 1145000, 71009014, 0)
                                assert t100700_x3(text2=70001100, z2=71009013, flag15=0, mode14=1)
                                Goto('L1')
                            else:
                                """ State 21 """
                                # talk:70001150:... What year is it?
                                assert t100700_x3(text2=70001150, z2=71009013, flag15=0, mode14=1)
                                Goto('L1')
                        else:
                            """ State 6 """
                            pass
                else:
                    pass
            else:
                """ State 20 """
                # talk:70001050:What happened?
                assert t100700_x3(text2=70001050, z2=71009012, flag15=0, mode14=1)
                Goto('L1')
        elif GetEventStatus(71009011) == 1:
            """ State 11 """
            Goto('L3')
        else:
            """ State 25 """
            return 1
    else:
        """ State 10 """
        Goto('L2')
    """ State 24 """
    return 0

