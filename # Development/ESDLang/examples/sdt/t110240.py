# -*- coding: utf-8 -*-
def t110240_1():
    """ State 0,1 """
    t110240_x6(flag1=1679, flag2=1675, flag3=1676, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7002400, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1543090,
               val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0, flag9=6000,
               mode7=0)

def t110240_1000():
    """ State 0,15 """
    assert GetCurrentStateElapsedFrames() > 10 and (f116(-1) == 1000000 or f116(-1) == 1543090)
    """ State 24 """
    call = t110240_x28(mode1=1)
    if call.Get() == 1:
        """ State 13,3 """
        if not GetEventStatus(71100501):
            """ State 4 """
            if not GetEventStatus(71100500):
                """ State 2 """
                assert not GetEventStatus(71100500)
                """ State 18 """
                # talk:24100000:Another rat.
                assert t110240_x4(text1=24100000, flag14=0, mode13=1)
            else:
                """ State 5,19 """
                # talk:24100100:What'll it be, Sekiro?
                assert t110240_x4(text1=24100100, flag14=0, mode13=1)
            """ State 17 """
            assert t110240_x28(mode1=0)
        else:
            """ State 6 """
            if not GetEventStatus(71100509):
                """ State 8,20 """
                # talk:24110052:Go and kill it!
                assert t110240_x4(text1=24110052, flag14=0, mode13=1)
            else:
                """ State 7 """
                if not GetEventStatus(71100505):
                    """ State 10 """
                    if not GetEventStatus(50006244):
                        """ State 11,21 """
                        # talk:24100200:Oh! Looks like you've caught yourself some rats.
                        assert t110240_x4(text1=24100200, flag14=0, mode13=1)
                        """ State 22 """
                        assert t110240_x5(lot1=62404)
                    else:
                        """ State 12 """
                        pass
                    """ State 16 """
                    # talk:24100250:This is...
                    assert t110240_x3(text2=24100250, z2=71100505, flag15=0, mode14=1)
                else:
                    """ State 9,23 """
                    # talk:24100300:About the ways of the Ashina blade...
                    assert t110240_x4(text1=24100300, flag14=0, mode13=1)
    elif call.Done():
        """ State 14 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110240_2000():
    """ State 0,2 """
    assert (t110240_x0(val6=7002401, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
            mode8=0, flag5=6000, val7=1000000, val8=1543090, val9=-1, val10=-1, val11=-1))
    """ State 3 """
    assert t110240_x29()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110240_x0(val6=_, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode8=0, flag5=6000,
               val7=1000000, val8=1543090, val9=_, val10=_, val11=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110240_x27(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
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

def t110240_x1():
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

def t110240_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110240_x3(text2=_, z2=_, flag15=0, mode14=1):
    """ State 0,7 """
    assert t110240_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t110240_x4(text1=_, flag14=0, mode13=1):
    """ State 0,6 """
    assert t110240_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t110240_x5(lot1=_):
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

def t110240_x6(flag1=1679, flag2=1675, flag3=1676, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7002400, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1543090,
               val9=1000000, mode3=1, mode4=1, mode5=0, val10=1000000, val11=1000000, mode6=0, flag9=6000,
               mode7=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110240_x7(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode2=mode2, val7=val7,
                          val8=val8, val9=val9, mode3=mode3, mode4=mode4, mode5=mode5, val10=val10, val11=val11,
                          mode6=mode6, mode7=mode7)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t110240_x22(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t110240_x8(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t110240_x7(val1=5, val2=10, val3=12, val4=10, val5=12, flag4=6001, val6=7002400, flag5=6000, flag6=6001,
               flag7=6000, flag8=6000, mode2=1, val7=1000000, val8=1543090, val9=1000000, mode3=1, mode4=1,
               mode5=0, val10=1000000, val11=1000000, mode6=0, mode7=0):
    """ State 0,4 """
    while True:
        call = t110240_x24(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110240_x9(val1=val1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6)
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
            call = t110240_x10(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode7 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110240_x11(val2=val2, val3=val3)

def t110240_x8(flag1=1679, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110240_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110240_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110240_x9(val1=5, mode2=1, mode3=1, mode4=1, mode5=0, mode6=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110240_x17(mode3=mode3, mode5=mode5)
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
        assert t110240_x14()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110240_x13()
    """ State 4 """
    return 0

def t110240_x10(val5=12):
    """ State 0,1 """
    call = t110240_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110240_x1()
    """ State 3 """
    return 0

def t110240_x11(val2=10, val3=12):
    """ State 0,4 """
    assert t110240_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110240_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110240_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110240_x12(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110240_x21()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110240_x1()
    """ State 4 """
    return 0

def t110240_x13():
    """ State 0,1 """
    assert t110240_x1()
    """ State 2 """
    return 0

def t110240_x14():
    """ State 0,2 """
    assert t110240_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110240_x15(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110240_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110240_x1()

def t110240_x16():
    """ State 0,1 """
    assert t110240_x18(z1=1101, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110240_x17(mode3=1, mode5=0):
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
        assert t110240_x18(z1=1000, mode9=0, mode10=0, mode11=0, mode12=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110240_x18(z1=_, mode9=0, mode10=0, mode11=0, mode12=0):
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

def t110240_x19():
    """ State 0,1 """
    call = t110240_x18(z1=1103, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110240_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110240_x20():
    """ State 0,2 """
    call = t110240_x18(z1=1102, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110240_x21():
    """ State 0,1 """
    assert t110240_x18(z1=1001, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110240_x22(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110240_x15(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110240_x25(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110240_x12(val2=val2, val3=val3)

def t110240_x23():
    """ State 0,1 """
    assert t110240_x18(z1=1100, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110240_x24(val6=7002400, flag5=6000, flag6=6001, val7=1000000, val8=1543090, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t110240_x18(z1=2000, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110240_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode8=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110240_x25(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110240_x26()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110240_x1()
    """ State 4 """
    return 0

def t110240_x26():
    """ State 0,1 """
    assert t110240_x18(z1=1002, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110240_x27(val6=_, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode8=0, flag5=6000):
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

def t110240_x28(mode1=_):
    """ State 0,4 """
    if not mode1 == 1:
        """ State 5,3 """
        ClearTalkListData()
        c1110()
        """ State 2 """
        # action:14024050:Accept
        AddTalkListData(1, 14024050, 6001)
        # action:14024051:Refuse
        AddTalkListData(2, 14024051, 6001)
        """ State 1 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 2:
            """ State 10 """
            Label('L0')
            """ State 12 """
            SetEventState(71100502, 1)
            """ State 19 """
            # talk:24110100:No.
            assert t110240_x3(text2=24110100, z2=71100500, flag15=0, mode14=1)
        elif GetTalkListEntryResult() == 1:
            """ State 9 """
            Label('L1')
            """ State 11 """
            SetEventState(71100503, 1)
            if not GetEventStatus(50006242):
                """ State 14,17 """
                # talk:24110000:Very well.
                assert t110240_x4(text1=24110000, flag14=0, mode13=1)
                """ State 18 """
                assert t110240_x5(lot1=62402)
            else:
                """ State 13 """
                pass
            """ State 16 """
            # talk:24110050:What is this...?
            assert t110240_x3(text2=24110050, z2=71100501, flag15=0, mode14=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 8 """
            pass
    elif GetEventStatus(71100503) == 1 and not GetEventStatus(71100501):
        """ State 7 """
        Goto('L1')
    elif GetEventStatus(71100502) == 1 and not GetEventStatus(71100500):
        """ State 6 """
        Goto('L0')
    else:
        """ State 15,21 """
        return 1
    """ State 20 """
    return 0

def t110240_x29():
    """ State 0,1 """
    if f116(-1) == 1000000 or f116(-1) == 1543090:
        """ State 2 """
        SetEventState(71100540, 1)
    else:
        pass
    """ State 3 """
    return 0

