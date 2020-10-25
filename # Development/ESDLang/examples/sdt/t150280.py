# -*- coding: utf-8 -*-
def t150280_1():
    """ State 0,1 """
    t150280_x7(flag5=1419, flag6=1415, flag7=1416, val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6001,
               val6=7002800, flag9=6000, flag10=6001, flag11=6000, flag12=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=0, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=0)

def t150280_1000():
    """ State 0,2 """
    # goods:9070:Water of the Palace
    def WhilePaused():
        c1117(1140001, -1)
    assert t150280_x30(goods1=9070)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150280_1101():
    """ State 0,2 """
    # talk:28030000:   , talk:28030100:   , talk:28030200:Stop..., talk:28030300:What...
    assert (t150280_x29(text1=28030000, flag1=71500146, text2=28030100, flag2=71500147, text3=28030200,
            flag3=71500148, text4=28030300, flag4=71500149))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150280_1103():
    """ State 0,2 """
    # talk:28030400:Please... Accept us... Aahhh... 
    assert t150280_x5(text5=28030400, flag18=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150280_x0(val6=7002800, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
               flag9=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t150280_x28(val6=val6, flag10=flag10, flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17,
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

def t150280_x1():
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

def t150280_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t150280_x3(text1=_, flag1=_, flag20=1, mode14=1):
    """ State 0,7 """
    assert t150280_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    if not flag20:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag20, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag20, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode14:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t150280_x4(text6=_, z2=_, flag19=0, mode13=1):
    """ State 0,7 """
    assert t150280_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag19:
        """ State 1 """
        TalkToPlayer(text6, -1, -1, flag19, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text6, -1, -1, flag19, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode13:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 8 """
    return 0

def t150280_x5(text5=_, flag18=_, mode12=1):
    """ State 0,6 """
    assert t150280_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag18:
        """ State 1 """
        TalkToPlayer(text5, -1, -1, flag18, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text5, -1, -1, flag18, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode12:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t150280_x6(lot1=62800):
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

def t150280_x7(flag5=1419, flag6=1415, flag7=1416, val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6001,
               val6=7002800, flag9=6000, flag10=6001, flag11=6000, flag12=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=0, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t150280_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag8=flag8, val6=val6,
                          flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1) and not GetEventStatus(flag13):
            pass
        elif GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1:
            """ State 3 """
            call = t150280_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag6) and not GetEventStatus(flag7):
                continue
        """ State 2 """
        call = t150280_x9(flag5=flag5, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag5) and not DoesSelfHaveSpEffect(30100)

def t150280_x8(val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6001, val6=7002800, flag9=6000, flag10=6001,
               flag11=6000, flag12=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=0,
               mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t150280_x25(val6=val6, flag9=flag9, flag10=flag10, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t150280_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
            call = t150280_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t150280_x12(val2=val2, val3=val3)

def t150280_x9(flag5=1419, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t150280_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t150280_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t150280_x10(val1=5, mode1=1, mode2=0, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t150280_x18(mode2=mode2, mode4=mode4)
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
        assert t150280_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t150280_x14()
    """ State 4 """
    return 0

def t150280_x11(val5=12):
    """ State 0,1 """
    call = t150280_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t150280_x1()
    """ State 3 """
    return 0

def t150280_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t150280_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t150280_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t150280_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t150280_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t150280_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t150280_x1()
    """ State 4 """
    return 0

def t150280_x14():
    """ State 0,1 """
    assert t150280_x1()
    """ State 2 """
    return 0

def t150280_x15():
    """ State 0,2 """
    assert t150280_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t150280_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t150280_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t150280_x1()

def t150280_x17():
    """ State 0,1 """
    assert t150280_x19(z1=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150280_x18(mode2=0, mode4=0):
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
        assert t150280_x19(z1=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t150280_x19(z1=_, mode8=0, mode9=0, mode10=0, mode11=0):
    """ State 0,4 """
    if f118(z1) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z1)
        assert f117() == mode8 or f117() == mode9 or f117() == mode10 or f117() == mode11
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t150280_x20():
    """ State 0,1 """
    call = t150280_x19(z1=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t150280_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t150280_x21():
    """ State 0,2 """
    call = t150280_x19(z1=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t150280_x22():
    """ State 0,1 """
    assert t150280_x19(z1=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150280_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t150280_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t150280_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t150280_x13(val2=val2, val3=val3)

def t150280_x24():
    """ State 0,1 """
    assert t150280_x19(z1=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150280_x25(val6=7002800, flag9=6000, flag10=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t150280_x19(z1=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t150280_x0(val6=val6, flag10=flag10, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode7=0, flag9=flag9, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t150280_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t150280_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t150280_x1()
    """ State 4 """
    return 0

def t150280_x27():
    """ State 0,1 """
    assert t150280_x19(z1=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150280_x28(val6=7002800, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
                flag9=6000):
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

def t150280_x29(text1=28030000, flag1=71500146, text2=28030100, flag2=71500147, text3=28030200, flag3=71500148,
                text4=28030300, flag4=71500149):
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
        assert t150280_x3(text1=text1, flag1=flag1, flag20=1, mode14=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t150280_x3(text1=text2, flag1=flag2, flag20=1, mode14=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t150280_x3(text1=text3, flag1=flag3, flag20=1, mode14=1)
    else:
        """ State 7 """
        assert t150280_x3(text1=text4, flag1=flag4, flag20=1, mode14=1)
    """ State 8 """
    return 0

def t150280_x30(goods1=9070):
    """ State 0,10 """
    if GetEventStatus(71500113) == 1:
        """ State 32 """
        if GetEventStatus(50006280) == 1:
            """ State 31 """
            Label('L0')
            """ State 42 """
            # talk:28010250: In that case, you will surrender it to me!
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t150280_x4(text6=28010250, z2=71500102, flag19=0, mode13=1)
            """ State 29 """
            SetEventState(71500113, 0)
        else:
            """ State 27 """
            Label('L1')
            """ State 41 """
            # talk:28010200:Hello...
            def WhilePaused():
                c5120(GetCurrentStateElapsedTime() > 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t150280_x5(text5=28010200, flag18=0, mode12=1)
            """ State 43 """
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t150280_x6(lot1=62800)
            Goto('L0')
    elif GetEventStatus(71500114) == 1:
        """ State 28 """
        Label('L2')
        """ State 40 """
        # talk:28010300:.........
        def WhilePaused():
            c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
        assert t150280_x5(text5=28010300, flag18=0, mode12=1)
        """ State 30 """
        SetEventState(71500114, 0)
    elif GetEventStatus(71500110) == 1:
        """ State 7 """
        Label('L3')
        """ State 36 """
        # talk:28010000:Hello?
        def WhilePaused():
            c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
        assert t150280_x4(text6=28010000, z2=71500100, flag19=0, mode13=1)
        """ State 12 """
        SetEventState(71500110, 0)
    elif GetEventStatus(71500111) == 1:
        """ State 6 """
        Label('L4')
        """ State 35 """
        # talk:28010100:.........
        def WhilePaused():
            c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
        assert t150280_x5(text5=28010100, flag18=0, mode12=1)
        """ State 11 """
        SetEventState(71500111, 0)
    else:
        """ State 1 """
        if not GetEventStatus(71500100):
            """ State 2,34 """
            # talk:28000700:Gulp... Gulp... Gulp
            def WhilePaused():
                c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
            assert t150280_x5(text5=28000700, flag18=0, mode12=1)
            """ State 3 """
            ClearTalkListData()
            """ State 4 """
            # action:14028000:Greet him
            AddTalkListData(1, 14028000, -1)
            # action:14028001:Ignore him
            AddTalkListData(2, 14028001, -1)
            """ State 5 """
            OpenConversationChoicesMenu(0)
            def WhilePaused():
                c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 22 """
            if GetTalkListEntryResult() == 1:
                """ State 9 """
                SetEventState(71500110, 1)
                Goto('L3')
            elif GetTalkListEntryResult() == 2:
                """ State 8 """
                SetEventState(71500111, 1)
                Goto('L4')
            else:
                pass
        else:
            """ State 13 """
            if not GetEventStatus(71500101):
                """ State 14,37 """
                # talk:28000800:Gulp... Gulp... Gulp
                def WhilePaused():
                    c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
                assert t150280_x4(text6=28000800, z2=71500101, flag19=0, mode13=1)
            else:
                """ State 15 """
                if not GetEventStatus(71500102):
                    """ State 18 """
                    # goods:9070:Water of the Palace
                    if ComparePlayerInventoryNumber(3, goods1, 4, 1, 0) == 1:
                        """ State 17,39 """
                        # talk:28001000:(Licking the pot)
                        def WhilePaused():
                            c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
                        assert t150280_x5(text5=28001000, flag18=0, mode12=1)
                        """ State 19 """
                        ClearTalkListData()
                        """ State 20 """
                        # action:14028002:Give Water of the Palace
                        AddTalkListData(1, 14028002, -1)
                        # action:14028003:Keep Water of the Palace
                        AddTalkListData(2, 14028003, -1)
                        """ State 21 """
                        OpenConversationChoicesMenu(0)
                        def WhilePaused():
                            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 23 """
                        if GetTalkListEntryResult() == 1:
                            """ State 26 """
                            # goods:9070:Water of the Palace
                            PlayerEquipmentQuantityChange(3, goods1, -1)
                            """ State 25 """
                            SetEventState(71500113, 1)
                            Goto('L1')
                        elif GetTalkListEntryResult() == 2:
                            """ State 24 """
                            SetEventState(71500114, 1)
                            Goto('L2')
                        else:
                            pass
                    else:
                        """ State 16,38 """
                        # talk:28000900:(Slurping)
                        def WhilePaused():
                            c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
                        assert t150280_x5(text5=28000900, flag18=0, mode12=1)
                else:
                    """ State 44 """
                    # talk:28001100:(Gulping)
                    assert t150280_x5(text5=28001100, flag18=0, mode12=1)
    """ State 45 """
    return 0

