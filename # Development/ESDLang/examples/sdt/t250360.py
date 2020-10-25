# -*- coding: utf-8 -*-
def t250360_1():
    """ State 0,1 """
    t250360_x7(flag5=6000, flag6=6000, flag7=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6000,
               val6=7008000, flag9=6000, flag10=6001, flag11=72500061, flag12=6000, mode2=1, val7=1000000,
               val8=1000000, val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0,
               flag13=6000, mode7=0)

def t250360_1000():
    """ State 0,2 """
    if GetEventStatus(1640) == 1:
        """ State 3 """
        if GetEventStatus(72500066) == 1:
            """ State 5 """
            # talk:36101000:.........
            assert t250360_x5(text5=36101000, flag21=0, mode15=1)
        else:
            """ State 6 """
            def WhilePaused():
                c1117(1130000, -1)
            assert t250360_x34()
    else:
        """ State 4,7 """
        def WhilePaused():
            c1117(1132000, -1)
        assert t250360_x34()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250360_1100():
    """ State 0,2 """
    SetEventState(72500061, 0)
    """ State 3 """
    call = t250360_x33()
    if call.Done():
        pass
    elif call.Done() and GetDistanceToPlayer() < 3:
        """ State 4 """
        assert t250360_x1()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250360_1101():
    """ State 0,2 """
    if GetEventStatus(1640) == 1:
        """ State 3,5 """
        SetEventState(72500066, 1)
        """ State 6 """
        # talk:36130000:   , talk:36130100:   , talk:36130200:I-It's going to break!, talk:36130300:Stop, you'll break the pot!
        assert (t250360_x31(text1=36130000, flag1=72500062, text2=36130100, flag2=72500063, text3=36130200,
                flag3=72500064, text4=36130300, flag4=72500065))
    else:
        """ State 4,7 """
        # talk:36130500:   , talk:36130600:   
        assert (t250360_x31(text1=36130500, flag1=72500062, text2=36130600, flag2=72500063, text3=-1,
                flag3=72500064, text4=-1, flag4=72500065))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250360_1103():
    """ State 0,2 """
    if GetEventStatus(1640) == 1:
        """ State 3,5 """
        if not GetEventStatus(50006365):
            """ State 6 """
            # talk:36130400:   
            assert t250360_x5(text5=36130400, flag21=0, mode15=1)
        else:
            """ State 8 """
            # talk:36130410:   
            assert t250360_x5(text5=36130410, flag21=0, mode15=1)
    else:
        """ State 4,7 """
        # talk:36130700:To kill one as precious as I...
        assert t250360_x5(text5=36130700, flag21=0, mode15=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250360_2000():
    """ State 0,2 """
    if GetEventStatus(1640) == 1:
        """ State 3,6 """
        assert (t250360_x0(val6=7003650, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode8=0, flag9=6000, val7=-1, val8=-1, val9=-1, val10=-1, val11=-1))
    elif GetEventStatus(1641) == 1:
        """ State 4,7 """
        assert (t250360_x0(val6=7003651, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode8=0, flag9=6000, val7=-1, val8=-1, val9=-1, val10=-1, val11=-1))
        """ State 5 """
        TurnCharacterToFaceEntity(-1, -1, 10000)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t250360_x0(val6=_, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode8=0, flag9=6000,
               val7=_, val8=_, val9=_, val10=_, val11=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t250360_x30(val6=val6, flag10=flag10, flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17,
                           mode8=mode8, flag9=flag9)
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

def t250360_x1():
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

def t250360_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t250360_x3(text1=_, flag1=_, flag23=1, mode17=1):
    """ State 0,7 """
    assert t250360_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
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
    """ State 4 """
    if not mode17:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t250360_x4(text6=_, flag19=_, flag22=0, mode16=1):
    """ State 0,7 """
    assert t250360_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag22:
        """ State 1 """
        TalkToPlayer(text6, -1, -1, flag22, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text6, -1, -1, flag22, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode16:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag19, 1)
    """ State 8 """
    return 0

def t250360_x5(text5=_, flag21=0, mode15=1):
    """ State 0,6 """
    assert t250360_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag21:
        """ State 1 """
        TalkToPlayer(text5, -1, -1, flag21, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text5, -1, -1, flag21, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode15:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t250360_x6(lot1=63650):
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

def t250360_x7(flag5=6000, flag6=6000, flag7=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6000,
               val6=7008000, flag9=6000, flag10=6001, flag11=72500061, flag12=6000, mode2=1, val7=1000000,
               val8=1000000, val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0,
               flag13=6000, mode7=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t250360_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag8=flag8, val6=val6,
                          flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12, mode2=mode2, val7=val7,
                          val8=val8, val9=val9, mode3=mode3, mode4=mode4, mode5=mode5, val10=val10, val11=val11,
                          mode6=mode6, mode7=mode7)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1) and not GetEventStatus(flag13):
            pass
        elif GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1:
            """ State 3 """
            call = t250360_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag6) and not GetEventStatus(flag7):
                continue
        """ State 2 """
        call = t250360_x9(flag5=flag5, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag5) and not DoesSelfHaveSpEffect(30100)

def t250360_x8(val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6000, val6=7008000, flag9=6000, flag10=6001,
               flag11=72500061, flag12=6000, mode2=1, val7=1000000, val8=1000000, val9=1000000, mode3=1,
               mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0, mode7=0):
    """ State 0,4 """
    while True:
        call = t250360_x25(val6=val6, flag9=flag9, flag10=flag10, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t250360_x10(val1=val1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag12) == 1:
            Goto('L0')
        elif not GetEventStatus(flag8) and GetEventStatus(flag11) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t250360_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t250360_x12(val2=val2, val3=val3)

def t250360_x9(flag5=6000, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t250360_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t250360_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t250360_x10(val1=12, mode2=1, mode3=1, mode4=1, mode5=0, mode6=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t250360_x18(mode3=mode3, mode5=mode5)
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
        assert t250360_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t250360_x14()
    """ State 4 """
    return 0

def t250360_x11(val5=12):
    """ State 0,1 """
    call = t250360_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t250360_x1()
    """ State 3 """
    return 0

def t250360_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t250360_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t250360_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t250360_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t250360_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t250360_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t250360_x1()
    """ State 4 """
    return 0

def t250360_x14():
    """ State 0,1 """
    assert t250360_x1()
    """ State 2 """
    return 0

def t250360_x15():
    """ State 0,2 """
    assert t250360_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t250360_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t250360_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t250360_x1()

def t250360_x17():
    """ State 0,1 """
    assert t250360_x19(z4=1101, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t250360_x18(mode3=1, mode5=0):
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
        assert t250360_x19(z4=1000, mode11=0, mode12=0, mode13=0, mode14=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t250360_x19(z4=_, mode11=0, mode12=0, mode13=0, mode14=0):
    """ State 0,4 """
    if f118(z4) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z4)
        assert f117() == mode11 or f117() == mode12 or f117() == mode13 or f117() == mode14
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t250360_x20():
    """ State 0,1 """
    call = t250360_x19(z4=1103, mode11=0, mode12=0, mode13=0, mode14=0)
    if call.Get() == 1:
        """ State 2 """
        assert t250360_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t250360_x21():
    """ State 0,2 """
    call = t250360_x19(z4=1102, mode11=0, mode12=0, mode13=0, mode14=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t250360_x22():
    """ State 0,1 """
    assert t250360_x19(z4=1001, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t250360_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t250360_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t250360_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t250360_x13(val2=val2, val3=val3)

def t250360_x24():
    """ State 0,1 """
    assert t250360_x19(z4=1100, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t250360_x25(val6=7008000, flag9=6000, flag10=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t250360_x19(z4=2000, mode11=0, mode12=0, mode13=0, mode14=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t250360_x0(val6=val6, flag10=flag10, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode8=0, flag9=flag9, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t250360_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t250360_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t250360_x1()
    """ State 4 """
    return 0

def t250360_x27():
    """ State 0,1 """
    assert t250360_x19(z4=1002, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t250360_x28(z1=2500000, z2=2500099, mode10=1, z3=3, flag20=1640):
    """ State 0,2 """
    def ExitPause():
        c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 3 """
        # action:15036000:Purchase items with scales
        AddTalkListData(1, 15036000, 6001)
        # action:15000000:Talk
        AddTalkListDataIf(((ComparePlayerStatus(42, 4, z3) == 1 and not mode10) or (ComparePlayerStatus(43, 4, z3) == 1 and mode10 == 1) or (ComparePlayerStatus(44, 4, z3) == 1 and mode10 == 2)) and GetEventStatus(flag20) == 1,
                          2, 15000000, 6001)
        """ State 4 """
        ShowShopMessage(1)
        """ State 6 """
        if GetTalkListEntryResult() == 1:
            """ State 5 """
            c1122(z1, z2, mode10)
            assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 8 """
        elif GetTalkListEntryResult() == 2:
            """ State 9,11 """
            return 1
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,10 """
            return 0

def t250360_x29(text5=36110000, text6=36110010, lot1=63650, flag18=72500057, flag19=72500058, mode9=_):
    """ State 0,3 """
    if not mode9:
        """ State 4,8 """
        assert t250360_x5(text5=text5, flag21=0, mode15=1)
        """ State 2 """
        SetEventState(flag18, 1)
        """ State 10 """
        assert t250360_x6(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag18) == 1 and not GetEventStatus(flag19):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t250360_x4(text6=text6, flag19=flag19, flag22=0, mode16=1)
    """ State 11 """
    return 0

def t250360_x30(val6=_, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode8=0, flag9=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag10) == 1 or GetEventStatus(flag14) == 1 or GetEventStatus(flag15)
                == 1 or GetEventStatus(flag16) == 1 or GetEventStatus(flag17) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag9)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag10) and not GetEventStatus(flag14) and not GetEventStatus(flag15)
                  and not GetEventStatus(flag16) and not GetEventStatus(flag17)):
                Continue('mainloop')
            elif GetEventStatus(flag9) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode8) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t250360_x31(text1=_, flag1=72500062, text2=_, flag2=72500063, text3=_, flag3=72500064, text4=_, flag4=72500065):
    """ State 0,3 """
    if ((text1 == -1 or GetEventStatus(flag1) == 1) and (text2 == -1 or GetEventStatus(flag2) == 1) and
        (text3 == -1 or GetEventStatus(flag3) == 1) and (text4 == -1 or GetEventStatus(flag4) == 1)):
        """ State 2 """
        SetEventState(flag1, 0)
        SetEventState(flag2, 0)
        SetEventState(flag3, 0)
        SetEventState(flag4, 0)
    else:
        pass
    """ State 1 """
    if not text1 == -1 and not GetEventStatus(flag1):
        """ State 4 """
        assert t250360_x3(text1=text1, flag1=flag1, flag23=1, mode17=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t250360_x3(text1=text2, flag1=flag2, flag23=1, mode17=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t250360_x3(text1=text3, flag1=flag3, flag23=1, mode17=1)
    else:
        """ State 7 """
        assert t250360_x3(text1=text4, flag1=flag4, flag23=1, mode17=1)
    """ State 8 """
    return 0

def t250360_x32(mode1=_):
    """ State 0,20 """
    # talk:36110000:Sure., talk:36110010:Do that, and I'll bestow upon you the palace's secret treasure.
    call = t250360_x29(text5=36110000, text6=36110010, lot1=63650, flag18=72500057, flag19=72500058,
                       mode9=1)
    if call.Get() == 1:
        """ State 13 """
        if not mode1:
            """ State 14,2 """
            def ExitPause():
                c1110()
            """ State 1 """
            ClearTalkListData()
            """ State 3 """
            # action:14036000:Listen to his secret
            AddTalkListData(1, 14036000, 6001)
            # action:14036001:Not interested
            AddTalkListData(2, 14036001, 6001)
            """ State 4 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 5 """
            if GetTalkListEntryResult() == 1:
                pass
            elif GetTalkListEntryResult() == 2:
                """ State 7 """
                Label('L0')
                """ State 10 """
                SetEventState(72500056, 1)
                """ State 11 """
                if not GetEventStatus(72500059):
                    """ State 18 """
                    # talk:36110100:...
                    assert t250360_x4(text6=36110100, flag19=72500059, flag22=0, mode16=1)
                    Goto('L1')
                else:
                    """ State 19 """
                    # talk:36110200:...
                    assert t250360_x5(text5=36110200, flag21=0, mode15=1)
                    Goto('L1')
            else:
                """ State 8,22 """
                return 1
        else:
            """ State 15 """
            if GetEventStatus(72500055) == 1:
                pass
            elif GetEventStatus(72500056) == 1:
                Goto('L0')
            else:
                """ State 23 """
                return 2
        """ State 6,9 """
        SetEventState(72500055, 1)
        """ State 17 """
        # talk:36110000:Sure., talk:36110010:Do that, and I'll bestow upon you the palace's secret treasure.
        assert (t250360_x29(text5=36110000, text6=36110010, lot1=63650, flag18=72500057, flag19=72500058,
                mode9=0))
    elif call.Done():
        pass
    """ State 12 """
    Label('L1')
    SetEventState(72500054, 1)
    """ State 16 """
    SetEventState(72500056, 0)
    SetEventState(72500055, 0)
    """ State 21 """
    return 0

def t250360_x33():
    """ State 0,1 """
    if not GetEventStatus(72500060):
        """ State 2 """
        # talk:36160000:Hello... Hello...
        assert t250360_x3(text1=36160000, flag1=72500060, flag23=1, mode17=1)
    else:
        """ State 3 """
        # talk:36160010:You there... Hello...
        assert t250360_x3(text1=36160010, flag1=72500067, flag23=1, mode17=1)
    """ State 4 """
    return 0

def t250360_x34():
    """ State 0,1 """
    if GetEventStatus(1640) == 1:
        """ State 2 """
        if GetEventStatus(72500066) == 1:
            """ State 42 """
            # talk:36101000:.........
            assert t250360_x5(text5=36101000, flag21=0, mode15=1)
        else:
            """ State 39 """
            call = t250360_x32(mode1=1)
            if call.Get() == 2:
                """ State 4 """
                if not GetEventStatus(72500050):
                    """ State 25 """
                    # talk:36100000:Do you know about carp scales?
                    assert t250360_x4(text6=36100000, flag19=72500050, flag22=0, mode16=1)
                    """ State 16 """
                    Label('L0')
                    SetWorkValue(0, GetPlayerStatus(43))
                    """ State 6 """
                    while True:
                        """ State 24 """
                        call = t250360_x28(z1=2500000, z2=2500099, mode10=1, z3=3, flag20=1640)
                        if call.Get() == 1:
                            """ State 7,8 """
                            if not GetEventStatus(50006365):
                                """ State 10,13 """
                                if ComparePlayerStatus(43, 4, 9) == 1 and GetEventStatus(72500053) == 1:
                                    """ State 21 """
                                    if not GetEventStatus(72500054):
                                        """ State 22,37 """
                                        # talk:36100400:You there.
                                        assert t250360_x5(text5=36100400, flag21=0, mode15=1)
                                    else:
                                        """ State 23,38 """
                                        # talk:36100500:You there.
                                        assert t250360_x5(text5=36100500, flag21=0, mode15=1)
                                    """ State 35 """
                                    call = t250360_x32(mode1=0)
                                    if call.Get() == 1:
                                        break
                                    elif call.Done():
                                        pass
                                elif ComparePlayerStatus(43, 4, 6) == 1 and GetEventStatus(72500052) == 1:
                                    """ State 15,41 """
                                    # talk:36100300:Most of my scales have returned.
                                    assert t250360_x4(text6=36100300, flag19=72500053, flag22=0, mode16=1)
                                else:
                                    """ State 14,40 """
                                    # talk:36100200:You there.
                                    assert t250360_x4(text6=36100200, flag19=72500052, flag22=0, mode16=1)
                            else:
                                """ State 9,11 """
                                if GetEventStatus(50006360) == 1:
                                    """ State 29 """
                                    # talk:36100700:Even if things take a turn for the worse...
                                    assert t250360_x5(text5=36100700, flag21=0, mode15=1)
                                else:
                                    """ State 36 """
                                    # talk:36100600:Hello again. Take care with that bait.
                                    assert t250360_x5(text5=36100600, flag21=0, mode15=1)
                        elif call.Get() == 0:
                            """ State 12,18 """
                            if GetEventStatus(1640) == 1:
                                """ State 19 """
                                if GetEventStatus(50006365) == 1:
                                    """ State 32 """
                                    # talk:36120200:Hello again. Take care with that bait.
                                    assert t250360_x5(text5=36120200, flag21=0, mode15=1)
                                    break
                                else:
                                    """ State 17 """
                                    if ComparePlayerStatus(43, 0, GetWorkValue(0)):
                                        """ State 30 """
                                        # talk:36120100:Bring me some scales next time...
                                        assert t250360_x5(text5=36120100, flag21=0, mode15=1)
                                        break
                                    else:
                                        """ State 31 """
                                        # talk:36120000:A well-bred man, you are.
                                        assert t250360_x5(text5=36120000, flag21=0, mode15=1)
                                        break
                            else:
                                """ State 20 """
                                if ComparePlayerStatus(43, 0, GetWorkValue(0)):
                                    """ State 33 """
                                    # talk:36120400:Precious... Much more precious...
                                    assert t250360_x5(text5=36120400, flag21=0, mode15=1)
                                    break
                                else:
                                    """ State 34 """
                                    # talk:36120300:Ohh, splendid, splendid...
                                    assert t250360_x5(text5=36120300, flag21=0, mode15=1)
                                    break
                else:
                    """ State 26 """
                    # talk:36100100:Did you bring me any scales?
                    assert t250360_x5(text5=36100100, flag21=0, mode15=1)
                    Goto('L0')
            elif call.Done():
                pass
    else:
        """ State 3,5 """
        if not GetEventStatus(72500051):
            """ State 27 """
            # talk:36100800:Precious... Much more precious...
            assert t250360_x4(text6=36100800, flag19=72500051, flag22=0, mode16=1)
            Goto('L0')
        else:
            """ State 28 """
            # talk:36100900:Give me more scales...
            assert t250360_x5(text5=36100900, flag21=0, mode15=1)
            Goto('L0')
    """ State 43 """
    return 0

