# -*- coding: utf-8 -*-
def t112110_1():
    """ State 0,1 """
    while True:
        call = t112110_x8(flag1=1039, flag2=1035, flag3=1036, val1=5, val2=10, val3=12, val4=10, val5=12,
                          flag4=71120110, val6=7001100, flag5=6000, flag6=6001, flag7=6001, flag8=6000,
                          val7=3, val8=1000000, val9=1000000, val10=1000000, mode2=1, mode3=1, mode4=0,
                          val11=1000000, val12=1000000, mode5=0, flag9=6000, mode6=0)
        assert GetEventStatus(1021) == 1
        """ State 2 """
        call = t112110_x8(flag1=1039, flag2=1035, flag3=1036, val1=5, val2=10, val3=12, val4=10, val5=12,
                          flag4=71120110, val6=7001100, flag5=6000, flag6=6001, flag7=6001, flag8=6000,
                          val7=1, val8=1000000, val9=1000000, val10=1000000, mode2=1, mode3=1, mode4=0,
                          val11=1000000, val12=1000000, mode5=0, flag9=6000, mode6=0)
        assert not GetEventStatus(1021)

def t112110_1000():
    """ State 0,1 """
    if GetEventStatus(1020) == 1:
        """ State 4 """
        assert f116(-1) == 1000000
        """ State 29 """
        call = t112110_x30(mode1=1)
        if call.Get() == 1:
            """ State 13 """
            if not GetEventStatus(71120100):
                """ State 2 """
                if not GetEventStatus(71120101):
                    """ State 10 """
                    # goods:9003:Kuro's Charm
                    if (GetEventStatus(6720) == 1 and GetEventStatus(6910) == 1 and ComparePlayerInventoryNumber(3,
                        9003, 2, 0, 0) == 1):
                        """ State 19,34 """
                        # talk:11000400:Loyal Wolf.
                        assert t112110_x4(text2=11000400, z2=71120102, flag15=0, mode13=1)
                    else:
                        """ State 20 """
                        if GetEventStatus(71120108) == 1:
                            """ State 32 """
                            # talk:11000003:It is a special gourd of medicinal waters.
                            assert t112110_x4(text2=11000003, z2=71120101, flag15=0, mode13=1)
                        else:
                            """ State 27 """
                            # talk:11000000:Loyal Wolf...
                            assert t112110_x4(text2=11000000, z2=71120101, flag15=0, mode13=1)
                        """ State 24 """
                        assert t112110_x6(lot1=61100)
                        """ State 16 """
                        Label('L0')
                        # goods:9003:Kuro's Charm
                        if GetEventStatus(6910) == 1 and ComparePlayerInventoryNumber(3, 9003, 2, 0, 0) == 1:
                            """ State 18,33 """
                            # talk:11000050:My Lord.
                            assert t112110_x4(text2=11000050, z2=71120102, flag15=0, mode13=1)
                        else:
                            """ State 17,31 """
                            # talk:11000010:My Lord.
                            assert t112110_x4(text2=11000010, z2=71120100, flag15=0, mode13=1)
                            """ State 21 """
                            SetEventState(71120102, 1)
                            Goto('L1')
                else:
                    """ State 11 """
                    Goto('L0')
                """ State 28 """
                assert t112110_x30(mode1=0)
            else:
                """ State 3,7 """
                # goods:9003:Kuro's Charm
                if (GetEventStatus(6910) == 1 and not GetEventStatus(6911) and ComparePlayerInventoryNumber(3,
                    9003, 2, 0, 0) == 1):
                    """ State 8,22 """
                    # talk:11000150:There's a secret passage beneath the moat bridge that can take us out of the castle.
                    assert t112110_x5(text1=11000150, flag14=0, mode12=1)
                    """ State 25 """
                    assert t112110_x30(mode1=0)
                else:
                    """ State 9,26 """
                    # talk:11000100:There's a secret passage beneath the moat bridge that can take us out of the castle.
                    assert t112110_x5(text1=11000100, flag14=0, mode12=1)
        elif call.Done():
            """ State 12 """
            pass
    elif GetEventStatus(1021) == 1:
        """ State 5 """
        if not GetEventStatus(71120105):
            """ State 14,30 """
            # talk:11000200:Where shall we go once we're away from the castle?
            assert t112110_x4(text2=11000200, z2=71120105, flag15=0, mode13=1)
        else:
            """ State 15,23 """
            # talk:11000300:Let us press onward.
            assert t112110_x5(text1=11000300, flag14=0, mode12=1)
    """ State 6 """
    Label('L1')
    def WhilePaused():
        c1119(0)

def t112110_1100():
    """ State 0,2 """
    ClearPlayerDamageInfo()
    call = t112110_x31()
    def WhilePaused():
        c1117(1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c1128(0.1)
        GiveSpEffectToPlayer(30700)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1):
        """ State 3 """
        assert t112110_x16()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112110_2000():
    """ State 0,4 """
    assert (t112110_x0(val6=7001100, flag6=6001, flag10=6001, flag11=6001, flag12=6001, flag13=6001,
            mode7=0, flag5=6000, val8=-1, val9=-1, val10=-1, val11=-1, val12=-1))
    """ State 2 """
    if GetEventStatus(1020) == 1:
        """ State 3 """
        SetEventState(71110694, 1)
    else:
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112110_x0(val6=7001100, flag6=6001, flag10=_, flag11=_, flag12=_, flag13=_, mode7=0, flag5=6000,
               val8=_, val9=_, val10=_, val11=_, val12=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t112110_x29(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
                           mode7=mode7, flag5=flag5)
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

def t112110_x1():
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

def t112110_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t112110_x3(text3=_, z3=71120110, flag16=0, mode14=1):
    """ State 0,7 """
    assert t112110_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
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
    if not mode14:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t112110_x4(text2=_, z2=_, flag15=0, mode13=1):
    """ State 0,7 """
    assert t112110_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode13:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 8 """
    return 0

def t112110_x5(text1=_, flag14=0, mode12=1):
    """ State 0,6 """
    assert t112110_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode12:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t112110_x6(lot1=61100):
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

def t112110_x7(action1=13011100):
    """ State 0,1 """
    # action:13011100:You have chosen the path of further hardships.
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t112110_x8(flag1=1039, flag2=1035, flag3=1036, val1=5, val2=10, val3=12, val4=10, val5=12, flag4=71120110,
               val6=7001100, flag5=6000, flag6=6001, flag7=6001, flag8=6000, val7=_, val8=1000000, val9=1000000,
               val10=1000000, mode2=1, mode3=1, mode4=0, val11=1000000, val12=1000000, mode5=0, flag9=6000,
               mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t112110_x9(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, val7=val7, val8=val8, val9=val9,
                          val10=val10, mode2=mode2, mode3=mode3, mode4=mode4, val11=val11, val12=val12,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t112110_x24(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t112110_x10(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t112110_x9(val1=5, val2=10, val3=12, val4=10, val5=12, flag4=71120110, val6=7001100, flag5=6000,
               flag6=6001, flag7=6001, flag8=6000, val7=_, val8=1000000, val9=1000000, val10=1000000,
               mode2=1, mode3=1, mode4=0, val11=1000000, val12=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t112110_x26(val6=val6, flag5=flag5, flag6=flag6, val8=val8, val9=val9, val10=val10, val11=val11,
                           val12=val12)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t112110_x11(val1=val1, val7=val7, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
            call = t112110_x12(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t112110_x13(val2=val2, val3=val3)

def t112110_x10(flag1=1039, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t112110_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t112110_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t112110_x11(val1=5, val7=_, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t112110_x19(mode2=mode2, mode4=mode4)
    def WhilePaused():
        c1117(val7, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode3 == 1, 0.1)
        c5120(val1 == 1 and not val7 and mode5 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t112110_x16()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t112110_x15()
    """ State 4 """
    return 0

def t112110_x12(val5=12):
    """ State 0,1 """
    call = t112110_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t112110_x1()
    """ State 3 """
    return 0

def t112110_x13(val2=10, val3=12):
    """ State 0,4 """
    assert t112110_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t112110_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t112110_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t112110_x14(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t112110_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t112110_x1()
    """ State 4 """
    return 0

def t112110_x15():
    """ State 0,1 """
    assert t112110_x1()
    """ State 2 """
    return 0

def t112110_x16():
    """ State 0,2 """
    assert t112110_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t112110_x17(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t112110_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t112110_x1()

def t112110_x18():
    """ State 0,1 """
    assert t112110_x20(z1=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112110_x19(mode2=1, mode4=0):
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
        assert t112110_x20(z1=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t112110_x20(z1=_, mode8=0, mode9=0, mode10=0, mode11=0):
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

def t112110_x21():
    """ State 0,1 """
    call = t112110_x20(z1=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t112110_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t112110_x22():
    """ State 0,2 """
    call = t112110_x20(z1=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t112110_x23():
    """ State 0,1 """
    assert t112110_x20(z1=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112110_x24(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t112110_x17(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t112110_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t112110_x14(val2=val2, val3=val3)

def t112110_x25():
    """ State 0,1 """
    assert t112110_x20(z1=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112110_x26(val6=7001100, flag5=6000, flag6=6001, val8=1000000, val9=1000000, val10=1000000, val11=1000000,
                val12=1000000):
    """ State 0,1 """
    call = t112110_x20(z1=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t112110_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode7=0, flag5=flag5, val8=val8, val9=val9, val10=val10, val11=val11, val12=val12))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t112110_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t112110_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t112110_x1()
    """ State 4 """
    return 0

def t112110_x28():
    """ State 0,1 """
    assert t112110_x20(z1=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112110_x29(val6=7001100, flag6=6001, flag10=_, flag11=_, flag12=_, flag13=_, mode7=0, flag5=6000):
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

def t112110_x30(mode1=_):
    """ State 0,3 """
    if not mode1:
        """ State 4,6 """
        ClearTalkListData()
        c1110()
        """ State 7 """
        # action:14011000:Give Kuro's Charm
        AddTalkListData(1, 14011000, 6001)
        # action:14011001:Do nothing
        AddTalkListData(2, 14011001, 6001)
        """ State 8 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 2:
            """ State 12 """
            Label('L0')
            """ State 10 """
            SetEventState(71120117, 1)
            """ State 33 """
            # talk:11010000:No...
            assert t112110_x5(text1=11010000, flag14=0, mode12=1)
            """ State 31 """
            Label('L1')
            SetEventState(71120100, 1)
            """ State 27 """
            SetEventState(71120117, 0)
            SetEventState(71120118, 0)
            SetEventState(71120115, 0)
            SetEventState(71120116, 0)
        elif GetTalkListEntryResult() == 1:
            """ State 11 """
            Label('L2')
            """ State 9 """
            SetEventState(71120115, 1)
            """ State 30 """
            if not GetEventStatus(71120100):
                """ State 34 """
                # talk:11010100:This is for you, My Lord.
                assert t112110_x5(text1=11010100, flag14=0, mode12=1)
            else:
                """ State 37 """
                # talk:11010150:This is for you, My Lord.
                assert t112110_x5(text1=11010150, flag14=0, mode12=1)
            """ State 14 """
            ClearTalkListData()
            c1110()
            """ State 15 """
            # action:14011011:Keep it in your care
            AddTalkListData(2, 14011011, 6001)
            # action:14011010:Insist he take it
            AddTalkListData(1, 14011010, 6001)
            """ State 16 """
            OpenConversationChoicesMenu(0)
            if GetTalkListEntryResult() == 1:
                """ State 17 """
                Label('L3')
                """ State 21 """
                SetEventState(71120116, 1)
                """ State 36 """
                # talk:11010200:Suffering is what I desire.
                assert t112110_x5(text1=11010200, flag14=0, mode12=1)
                """ State 1,29 """
                # goods:9003:Kuro's Charm
                PlayerEquipmentQuantityChange(3, 9003, -1)
                """ State 2 """
                c1121(1)
                """ State 22 """
                SetEventState(71120100, 1)
                """ State 28 """
                SetEventState(71120117, 0)
                SetEventState(71120118, 0)
                SetEventState(71120115, 0)
                SetEventState(71120116, 0)
                """ State 32 """
                # action:13011100:You have chosen the path of further hardships.
                assert t112110_x7(action1=13011100)
            elif GetTalkListEntryResult() == 2:
                """ State 18 """
                Label('L4')
                """ State 20 """
                SetEventState(71120118, 1)
                """ State 35 """
                # talk:11010300:I see.
                assert t112110_x5(text1=11010300, flag14=0, mode12=1)
                Goto('L1')
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 19 """
                pass
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 13 """
            pass
    else:
        """ State 5 """
        if GetEventStatus(71120116) == 1:
            """ State 24 """
            Goto('L3')
        elif GetEventStatus(71120118) == 1:
            """ State 26 """
            Goto('L4')
        elif GetEventStatus(71120115) == 1:
            """ State 23 """
            Goto('L2')
        elif GetEventStatus(71120117) == 1:
            """ State 25 """
            Goto('L0')
        else:
            """ State 39 """
            return 1
    """ State 38 """
    return 0

def t112110_x31():
    """ State 0,2,1,3 """
    assert not DoesPlayerHaveSpEffect(4511)
    """ State 4 """
    if not GetEventStatus(6720):
        """ State 5,9 """
        # talk:11040000:Wolf.
        assert t112110_x3(text3=11040000, z3=71120110, flag16=0, mode14=1)
        """ State 7 """
        SetEventState(71120108, 1)
    elif not GetEventStatus(71120107):
        """ State 6,10 """
        # talk:11040100:... Wolf.
        assert t112110_x3(text3=11040100, z3=71120110, flag16=0, mode14=1)
        """ State 8 """
        SetEventState(71120107, 1)
    """ State 11 """
    return 0

