# -*- coding: utf-8 -*-
def t100360_1():
    """ State 0,1 """
    t100360_x7(flag5=1639, flag6=1635, flag7=1636, val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6000,
               val6=7008000, flag9=6000, flag10=6001, flag11=71000420, flag12=6000, mode1=1, val7=1000010,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=0)

def t100360_1000():
    """ State 0,2 """
    if GetEventStatus(1620) == 1:
        """ State 3 """
        if GetEventStatus(71000405) == 1:
            """ State 5 """
            # talk:36000800:.........
            assert t100360_x5(text5=36000800, flag21=0, mode14=1)
        else:
            """ State 6 """
            def WhilePaused():
                c1117(1130000, -1)
            assert t100360_x33()
    else:
        """ State 4,7 """
        def WhilePaused():
            c1117(1132000, -1)
        assert t100360_x33()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100360_1100():
    """ State 0,2 """
    SetEventState(71000420, 0)
    """ State 4 """
    call = t100360_x32()
    if call.Done():
        pass
    elif GetDistanceToPlayer() < 3:
        """ State 3 """
        assert t100360_x1()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100360_1101():
    """ State 0,2 """
    if GetEventStatus(1620) == 1:
        """ State 3,5 """
        SetEventState(71000405, 1)
        """ State 6 """
        # talk:36030000:Ahh!, talk:36030100:Stop!, talk:36030200:Quit it!, talk:36030300:Stop!  You'll break the pot!
        assert (t100360_x31(text1=36030000, flag1=71000412, text2=36030100, flag2=71000413, text3=36030200,
                flag3=71000414, text4=36030300, flag4=71000415))
    else:
        """ State 4,7 """
        # talk:36030500:   , talk:36030600:   
        assert (t100360_x31(text1=36030500, flag1=71000412, text2=36030600, flag2=71000413, text3=-1,
                flag3=71000414, text4=-1, flag4=71000415))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100360_1103():
    """ State 0,2 """
    if GetEventStatus(1620) == 1:
        """ State 3,5 """
        # talk:36030400:   
        assert t100360_x5(text5=36030400, flag21=1, mode14=1)
    else:
        """ State 4,6 """
        # talk:36030700:I will grow... eternally...
        assert t100360_x5(text5=36030700, flag21=1, mode14=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100360_2000():
    """ State 0,2 """
    if GetEventStatus(1620) == 1:
        """ State 3,6 """
        assert (t100360_x0(val6=7003600, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode7=0, flag9=6000, val7=-1, val8=-1, val9=-1, val10=-1, val11=-1))
    else:
        """ State 4,7 """
        assert (t100360_x0(val6=7003601, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode7=0, flag9=6000, val7=-1, val8=-1, val9=-1, val10=-1, val11=-1))
        """ State 5 """
        TurnCharacterToFaceEntity(-1, -1, 10000)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t100360_x0(val6=_, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0, flag9=6000,
               val7=_, val8=_, val9=_, val10=_, val11=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t100360_x30(val6=val6, flag10=flag10, flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17,
                           mode7=mode7, flag9=flag9)
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

def t100360_x1():
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

def t100360_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t100360_x3(text1=_, flag1=_, flag23=1, mode16=1):
    """ State 0,7 """
    assert t100360_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode16:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t100360_x4(text6=_, flag19=_, flag22=0, mode15=1):
    """ State 0,7 """
    assert t100360_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode15:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag19, 1)
    """ State 8 """
    return 0

def t100360_x5(text5=_, flag21=_, mode14=1):
    """ State 0,6 """
    assert t100360_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode14:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t100360_x6(lot1=63600):
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

def t100360_x7(flag5=1639, flag6=1635, flag7=1636, val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6000,
               val6=7008000, flag9=6000, flag10=6001, flag11=71000420, flag12=6000, mode1=1, val7=1000010,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t100360_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag8=flag8, val6=val6,
                          flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1) and not GetEventStatus(flag13):
            pass
        elif GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1:
            """ State 3 """
            call = t100360_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag6) and not GetEventStatus(flag7):
                continue
        """ State 2 """
        call = t100360_x9(flag5=flag5, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag5) and not DoesSelfHaveSpEffect(30100)

def t100360_x8(val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6000, val6=7008000, flag9=6000, flag10=6001,
               flag11=71000420, flag12=6000, mode1=1, val7=1000010, val8=1000000, val9=1000000, mode2=1,
               mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t100360_x25(val6=val6, flag9=flag9, flag10=flag10, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t100360_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag12) == 1:
            Goto('L0')
        elif not GetEventStatus(flag8) and GetEventStatus(flag11) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t100360_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t100360_x12(val2=val2, val3=val3)

def t100360_x9(flag5=1639, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t100360_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t100360_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t100360_x10(val1=12, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t100360_x18(mode2=mode2, mode4=mode4)
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
        assert t100360_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t100360_x14()
    """ State 4 """
    return 0

def t100360_x11(val5=12):
    """ State 0,1 """
    call = t100360_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t100360_x1()
    """ State 3 """
    return 0

def t100360_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t100360_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t100360_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t100360_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t100360_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t100360_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t100360_x1()
    """ State 4 """
    return 0

def t100360_x14():
    """ State 0,1 """
    assert t100360_x1()
    """ State 2 """
    return 0

def t100360_x15():
    """ State 0,2 """
    assert t100360_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t100360_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t100360_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t100360_x1()

def t100360_x17():
    """ State 0,1 """
    assert t100360_x19(z4=1101, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t100360_x18(mode2=1, mode4=0):
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
        assert t100360_x19(z4=1000, mode10=0, mode11=0, mode12=0, mode13=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t100360_x19(z4=_, mode10=0, mode11=0, mode12=0, mode13=0):
    """ State 0,4 """
    if f118(z4) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z4)
        assert f117() == mode10 or f117() == mode11 or f117() == mode12 or f117() == mode13
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t100360_x20():
    """ State 0,1 """
    call = t100360_x19(z4=1103, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert t100360_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t100360_x21():
    """ State 0,2 """
    call = t100360_x19(z4=1102, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t100360_x22():
    """ State 0,1 """
    assert t100360_x19(z4=1001, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t100360_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t100360_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t100360_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t100360_x13(val2=val2, val3=val3)

def t100360_x24():
    """ State 0,1 """
    assert t100360_x19(z4=1100, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t100360_x25(val6=7008000, flag9=6000, flag10=6001, val7=1000010, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t100360_x19(z4=2000, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t100360_x0(val6=val6, flag10=flag10, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode7=0, flag9=flag9, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t100360_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t100360_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t100360_x1()
    """ State 4 """
    return 0

def t100360_x27():
    """ State 0,1 """
    assert t100360_x19(z4=1002, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t100360_x28(z1=1000000, z2=1000099, mode9=0, z3=3, flag20=1620):
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
        AddTalkListDataIf(((ComparePlayerStatus(42, 4, z3) == 1 and not mode9) or (ComparePlayerStatus(43, 4, z3) == 1 and mode9 == 1) or (ComparePlayerStatus(44, 4, z3) == 1 and mode9 == 2)) and GetEventStatus(flag20) == 1,
                          2, 15000000, 6001)
        """ State 4 """
        ShowShopMessage(1)
        """ State 6 """
        if GetTalkListEntryResult() == 1:
            """ State 5 """
            c1122(z1, z2, mode9)
            assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 8 """
        elif GetTalkListEntryResult() == 2:
            """ State 9,11 """
            return 1
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,10 """
            return 0

def t100360_x29(text5=36000300, text6=36000310, lot1=63600, flag18=71000402, flag19=71000403, mode8=_):
    """ State 0,3 """
    if not mode8:
        """ State 4,8 """
        assert t100360_x5(text5=text5, flag21=0, mode14=1)
        """ State 2 """
        SetEventState(flag18, 1)
        """ State 10 """
        assert t100360_x6(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag18) == 1 and not GetEventStatus(flag19):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t100360_x4(text6=text6, flag19=flag19, flag22=0, mode15=1)
    """ State 11 """
    return 0

def t100360_x30(val6=_, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0, flag9=6000):
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
            elif CheckActionButtonArea(val6 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t100360_x31(text1=_, flag1=71000412, text2=_, flag2=71000413, text3=_, flag3=71000414, text4=_, flag4=71000415):
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
        assert t100360_x3(text1=text1, flag1=flag1, flag23=1, mode16=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t100360_x3(text1=text2, flag1=flag2, flag23=1, mode16=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t100360_x3(text1=text3, flag1=flag3, flag23=1, mode16=1)
    else:
        """ State 7 """
        assert t100360_x3(text1=text4, flag1=flag4, flag23=1, mode16=1)
    """ State 8 """
    return 0

def t100360_x32():
    """ State 0,1 """
    if not GetEventStatus(71000404):
        """ State 2 """
        # talk:36060000:Maybe... Just maybe...
        assert t100360_x3(text1=36060000, flag1=71000404, flag23=1, mode16=1)
    else:
        """ State 3 """
        # talk:36060010:Hey, you there. Do you, perhaps...
        assert t100360_x3(text1=36060010, flag1=71000411, flag23=1, mode16=1)
    """ State 4 """
    return 0

def t100360_x33():
    """ State 0,1 """
    if GetEventStatus(1620) == 1:
        """ State 2 """
        if GetEventStatus(71000405) == 1:
            """ State 36 """
            # talk:36000800:.........
            assert t100360_x5(text5=36000800, flag21=0, mode14=1)
        else:
            """ State 30 """
            # talk:36000300:You have the aroma of the divine realm..., talk:36000310:Bring it to the Great Carp of the divine realm...
            call = t100360_x29(text5=36000300, text6=36000310, lot1=63600, flag18=71000402, flag19=71000403,
                               mode8=1)
            if call.Get() == 1:
                """ State 4 """
                if not GetEventStatus(71000400):
                    """ State 22 """
                    # talk:36000000:Know about carp scales?
                    assert t100360_x4(text6=36000000, flag19=71000400, flag22=0, mode15=1)
                    """ State 16 """
                    Label('L0')
                    SetWorkValue(0, GetPlayerStatus(42))
                    """ State 6 """
                    while True:
                        """ State 21 """
                        call = t100360_x28(z1=1000000, z2=1000099, mode9=0, z3=3, flag20=1620)
                        if call.Get() == 1:
                            """ State 7,8 """
                            if not GetEventStatus(50006360):
                                """ State 10,13 """
                                if (ComparePlayerStatus(42, 4, 6) == 1 and GetEventStatus(140) == 1 and
                                    GetEventStatus(71000409) == 1):
                                    """ State 15,28 """
                                    # talk:36000300:You have the aroma of the divine realm..., talk:36000310:Bring it to the Great Carp of the divine realm...
                                    assert (t100360_x29(text5=36000300, text6=36000310, lot1=63600, flag18=71000402,
                                            flag19=71000403, mode8=0))
                                else:
                                    """ State 14,29 """
                                    # talk:36000200:Listen...
                                    assert t100360_x4(text6=36000200, flag19=71000409, flag22=0, mode15=1)
                            else:
                                """ State 9,11 """
                                if not GetEventStatus(71000408):
                                    """ State 26 """
                                    # talk:36000400:You still have my bait, do you not?
                                    assert t100360_x4(text6=36000400, flag19=71000408, flag22=0, mode15=1)
                                else:
                                    """ State 27 """
                                    # talk:36000500:The damned fools at Fountainhead Palace...
                                    assert t100360_x5(text5=36000500, flag21=0, mode14=1)
                        elif call.Get() == 0:
                            """ State 12,18 """
                            if GetEventStatus(1620) == 1:
                                """ State 19 """
                                if GetEventStatus(50006360) == 1:
                                    """ State 33 """
                                    # talk:36020200:Don't forget to use the bait.
                                    assert t100360_x5(text5=36020200, flag21=0, mode14=1)
                                    break
                                else:
                                    """ State 17 """
                                    if ComparePlayerStatus(42, 0, GetWorkValue(0)):
                                        """ State 31 """
                                        # talk:36020100:Bring me some scales next time...
                                        assert t100360_x5(text5=36020100, flag21=0, mode14=1)
                                        break
                                    else:
                                        """ State 32 """
                                        # talk:36020000:I thank you for your kindness.
                                        assert t100360_x5(text5=36020000, flag21=0, mode14=1)
                                        break
                            else:
                                """ State 20 """
                                if ComparePlayerStatus(42, 0, GetWorkValue(0)):
                                    """ State 34 """
                                    # talk:36020400:Too small, too small...
                                    assert t100360_x5(text5=36020400, flag21=0, mode14=1)
                                    break
                                else:
                                    """ State 35 """
                                    # talk:36020300:Ooh, scales... More scales!
                                    assert t100360_x5(text5=36020300, flag21=0, mode14=1)
                                    break
                else:
                    """ State 23 """
                    # talk:36000100:Did you bring me any scales?
                    assert t100360_x5(text5=36000100, flag21=0, mode14=1)
                    Goto('L0')
            elif call.Done():
                pass
    else:
        """ State 3,5 """
        if not GetEventStatus(71000401):
            """ State 24 """
            # talk:36000600:Too small, too small...
            assert t100360_x4(text6=36000600, flag19=71000401, flag22=0, mode15=1)
            Goto('L0')
        else:
            """ State 25 """
            # talk:36000700:Give me more scales...
            assert t100360_x5(text5=36000700, flag21=0, mode14=1)
            Goto('L0')
    """ State 37 """
    return 0

