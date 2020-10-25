# -*- coding: utf-8 -*-
def t111240_1():
    """ State 0,1 """
    while True:
        call = t111240_x7(flag2=1299, flag3=1295, flag4=1296, val2=5, val3=10, val4=12, val5=10, val6=12,
                          flag5=6001, val7=7002400, flag6=6000, flag7=6001, flag8=6000, flag9=6000, val8=3,
                          val9=1000000, val10=1000000, val11=1000000, mode7=1, mode8=1, mode9=0, val12=1000000,
                          val13=1000000, mode10=1, flag10=6000, mode11=0)
        assert (GetEventStatus(71110240) == 1 or (DoesPlayerHaveSpEffect(109210) == 1 and GetEventStatus(71110244)
                == 1))
        """ State 2 """
        call = t111240_x38()
        assert not GetEventStatus(71110240) and not DoesPlayerHaveSpEffect(109210)

def t111240_1000():
    """ State 0,34 """
    # goods:9100:Ashina Sake, goods:9101:Unrefined Sake, goods:9105:Unrefined Sake, goods:9102:Monkey Booze, goods:9103:Dragonspring Sake, goods:9104:Ashina Sake
    call = t111240_x37(goods1=9100, goods2=9101, goods3=9105, goods4=9102, goods5=9103, goods6=9104,
                       mode1=1)
    if call.Get() == 1:
        """ State 15,5 """
        if GetEventStatus(71110249) == 1:
            """ State 16,37 """
            # talk:24001100:Oh! Looks like you've caught yourself some rats., talk:24001110:This is...
            call = t111240_x34(text2=24001100, text3=24001110, lot1=62404, flag15=71110224, flag16=71110225,
                               mode13=1)
            if call.Get() == 1:
                """ State 38 """
                # talk:24001200:... By the way, Sekiro., talk:24001210:Certainly.
                call = t111240_x34(text2=24001200, text3=24001210, lot1=62406, flag15=71110226, flag16=71110227,
                                   mode13=1)
                if call.Get() == 1:
                    """ State 19 """
                    # goods:2922:Ashina Esoteric Text
                    if GetEventStatus(71100509) == 1 and ComparePlayerInventoryNumber(3, 2922, 0, 0, 0) == 1:
                        """ State 20,36 """
                        # talk:24001100:Oh! Looks like you've caught yourself some rats., talk:24001110:This is...
                        assert (t111240_x34(text2=24001100, text3=24001110, lot1=62404, flag15=71110224,
                                flag16=71110225, mode13=0))
                        Goto('L0')
                    else:
                        """ State 17 """
                        # weapon:211000:Shadowrush, weapon:301300:Living Force, weapon:411000:Ashina Cross, weapon:511100:High Monk, goods:2924:Mushin Esoteric Text
                        if ((ComparePlayerInventoryNumber(0, 211000, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(0,
                            301300, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(0, 411000, 2, 0, 0)
                            == 1 or ComparePlayerInventoryNumber(0, 511100, 2, 0, 0) == 1) and ComparePlayerInventoryNumber(3,
                            2924, 0, 0, 0) == 1):
                            """ State 18,35 """
                            # talk:24001200:... By the way, Sekiro., talk:24001210:Certainly.
                            assert (t111240_x34(text2=24001200, text3=24001210, lot1=62406, flag15=71110226,
                                    flag16=71110227, mode13=0))
                            Goto('L0')
                        else:
                            """ State 22 """
                            if GetEventStatus(9308) == 1:
                                """ State 23,7 """
                                if not GetEventStatus(71110203):
                                    """ State 11 """
                                    if GetEventStatus(71110207) == 1:
                                        """ State 40 """
                                        # talk:24000840:By the way, Sekiro.
                                        assert t111240_x4(text3=24000840, z8=71110203, flag26=0, mode20=1)
                                        Goto('L0')
                                    else:
                                        """ State 30 """
                                        # talk:24000800:You... 
                                        assert t111240_x4(text3=24000800, z8=71110203, flag26=0, mode20=1)
                                        Goto('L0')
                                else:
                                    pass
                            else:
                                """ State 24 """
                                if not GetEventStatus(71110207):
                                    """ State 39 """
                                    # talk:24000820:You... 
                                    assert t111240_x4(text3=24000820, z8=71110207, flag26=0, mode20=1)
                                    Goto('L0')
                                else:
                                    pass
                            """ State 10,31 """
                            # talk:24000900:Don't forget, Sekiro.
                            assert t111240_x5(text2=24000900, flag25=0, mode19=1)
                            Goto('L0')
                elif call.Get() == 0:
                    pass
            elif call.Get() == 0:
                pass
            """ State 21 """
            def WhilePaused():
                c1119(0)
            Quit()
        elif GetEventStatus(8410) == 1:
            """ State 6 """
            if not GetEventStatus(71110202):
                """ State 9,28 """
                # talk:24000200:Sekiro.  Is that the Mortal Blade?
                assert t111240_x4(text3=24000200, z8=71110202, flag26=0, mode20=1)
            else:
                """ State 8,29 """
                # talk:24000300:The Mortal Blade...
                assert t111240_x5(text2=24000300, flag25=0, mode19=1)
        else:
            """ State 3 """
            if not GetEventStatus(71110200):
                """ State 4 """
                if not GetEventStatus(71110204):
                    """ State 12,32 """
                    # talk:24000000:About the Divine Heir's life...
                    assert t111240_x4(text3=24000000, z8=71110204, flag26=0, mode20=1)
                    """ State 33 """
                    assert t111240_x6(lot1=62400)
                else:
                    """ State 13 """
                    pass
                """ State 25 """
                # talk:24000050:My grandson Genichiro was bewitched by the Rejuvenating Waters.
                assert t111240_x4(text3=24000050, z8=71110200, flag26=0, mode20=1)
            else:
                """ State 2,27 """
                # talk:24000100:Sekiro.
                assert t111240_x5(text2=24000100, flag25=0, mode19=1)
        """ State 26 """
        Label('L0')
        assert t111240_x36(z1=9100, z2=9101, z3=9105, z4=9102, z5=9103)
    elif call.Done():
        """ State 14 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111240_x0(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t111240_x1(val1=_, flag7=6001, flag11=_, flag12=_, flag13=_, flag14=_, mode12=0, flag6=6000, val9=_,
               val10=_, val11=_, val12=_, val13=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t111240_x35(val1=val1, flag7=flag7, flag11=flag11, flag12=flag12, flag13=flag13, flag14=flag14,
                           mode12=mode12, flag6=flag6)
        if call.Done():
            break
        elif (not f116(-1) == val9 and not f116(-1) == val10 and not f116(-1) == val11 and not DoesSelfHaveSpEffect(4510)
              and not val9 == -1 and not f116(-1) == val12 and not f116(-1) == val13):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val9 or f116(-1) == val10 or f116(-1) == val11 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val12 and f116(-1) == val13))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val9 and not f116(-1) == val10 and not f116(-1) == val11 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val12 and not f116(-1) == val13):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t111240_x2():
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

def t111240_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111240_x4(text3=_, z8=_, flag26=0, mode20=1):
    """ State 0,7 """
    assert t111240_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag26:
        """ State 1 """
        TalkToPlayer(text3, -1, -1, flag26, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text3, -1, -1, flag26, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode20:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z8, 1)
    """ State 8 """
    return 0

def t111240_x5(text2=_, flag25=0, mode19=1):
    """ State 0,6 """
    assert t111240_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag25:
        """ State 1 """
        TalkToPlayer(text2, -1, -1, flag25, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text2, -1, -1, flag25, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode19:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t111240_x6(lot1=_):
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

def t111240_x7(flag2=1299, flag3=1295, flag4=1296, val2=5, val3=10, val4=12, val5=10, val6=12, flag5=6001,
               val7=7002400, flag6=6000, flag7=6001, flag8=6000, flag9=6000, val8=3, val9=1000000, val10=1000000,
               val11=1000000, mode7=1, mode8=1, mode9=0, val12=1000000, val13=1000000, mode10=1, flag10=6000,
               mode11=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t111240_x8(val2=val2, val3=val3, val4=val4, val5=val5, val6=val6, flag5=flag5, val7=val7,
                          flag6=flag6, flag7=flag7, flag8=flag8, flag9=flag9, val8=val8, val9=val9, val10=val10,
                          val11=val11, mode7=mode7, mode8=mode8, mode9=mode9, val12=val12, val13=val13,
                          mode10=mode10, mode11=mode11)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag2) == 1) and not GetEventStatus(flag10):
            pass
        elif GetEventStatus(flag3) == 1 or GetEventStatus(flag4) == 1:
            """ State 3 """
            call = t111240_x23(val3=val3, val4=val4)
            if CheckSelfDeath() == 1 or GetEventStatus(flag2) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag3) and not GetEventStatus(flag4):
                continue
        """ State 2 """
        call = t111240_x9(flag2=flag2, val3=val3, val4=val4)
        assert not CheckSelfDeath() and not GetEventStatus(flag2) and not DoesSelfHaveSpEffect(30100)

def t111240_x8(val2=5, val3=10, val4=12, val5=10, val6=12, flag5=6001, val7=7002400, flag6=6000, flag7=6001,
               flag8=6000, flag9=6000, val8=3, val9=1000000, val10=1000000, val11=1000000, mode7=1, mode8=1,
               mode9=0, val12=1000000, val13=1000000, mode10=1, mode11=0):
    """ State 0,4 """
    while True:
        call = t111240_x25(val7=val7, flag6=flag6, flag7=flag7, val9=val9, val10=val10, val11=val11,
                           val12=val12, val13=val13)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t111240_x10(val2=val2, val8=val8, mode7=mode7, mode8=mode8, mode9=mode9, mode10=mode10)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode11 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode11 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag9) == 1:
            Goto('L0')
        elif not GetEventStatus(flag5) and GetEventStatus(flag8) == 1 and GetDistanceToPlayer() < val5:
            """ State 3 """
            call = t111240_x11(val6=val6)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode11 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t111240_x12(val3=val3, val4=val4)

def t111240_x9(flag2=1299, val3=10, val4=12):
    """ State 0,1 """
    if GetEventStatus(flag2) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val3:
            """ State 4,6 """
            call = t111240_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val4:
                """ State 7 """
                assert t111240_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t111240_x10(val2=5, val8=3, mode7=1, mode8=1, mode9=0, mode10=1):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t111240_x18(mode7=mode7, mode9=mode9)
    def WhilePaused():
        c1117(val8, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode8 == 1, 0.1)
        c5120(val2 == 1 and not val8 and mode10 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t111240_x15()
    elif GetDistanceToPlayer() > val2:
        """ State 3 """
        assert t111240_x14()
    """ State 4 """
    return 0

def t111240_x11(val6=12):
    """ State 0,1 """
    call = t111240_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 2 """
        assert t111240_x2()
    """ State 3 """
    return 0

def t111240_x12(val3=10, val4=12):
    """ State 0,4 """
    assert t111240_x2() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t111240_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t111240_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t111240_x13(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 2 """
    call = t111240_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 3 """
        assert t111240_x2()
    """ State 4 """
    return 0

def t111240_x14():
    """ State 0,1 """
    assert t111240_x2()
    """ State 2 """
    return 0

def t111240_x15():
    """ State 0,2 """
    assert t111240_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t111240_x16(val3=10, val4=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val3
        """ State 3 """
        call = t111240_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val4:
            """ State 4 """
            assert t111240_x2()

def t111240_x17():
    """ State 0,1 """
    assert t111240_x19(z17=1101, mode15=0, mode16=0, mode17=0, mode18=0)
    """ State 2 """
    return 0

def t111240_x18(mode7=1, mode9=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode7 == 1 and not mode9, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode7 == 1 and mode9 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t111240_x19(z17=1000, mode15=0, mode16=0, mode17=0, mode18=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t111240_x19(z17=_, mode15=0, mode16=0, mode17=0, mode18=0):
    """ State 0,4 """
    if f118(z17) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z17)
        assert f117() == mode15 or f117() == mode16 or f117() == mode17 or f117() == mode18
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t111240_x20():
    """ State 0,1 """
    call = t111240_x19(z17=1103, mode15=0, mode16=0, mode17=0, mode18=0)
    if call.Get() == 1:
        """ State 2 """
        assert t111240_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t111240_x21():
    """ State 0,2 """
    call = t111240_x19(z17=1102, mode15=0, mode16=0, mode17=0, mode18=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t111240_x22():
    """ State 0,1 """
    assert t111240_x19(z17=1001, mode15=0, mode16=0, mode17=0, mode18=0)
    """ State 2 """
    return 0

def t111240_x23(val3=10, val4=12):
    """ State 0,1 """
    while True:
        call = t111240_x16(val3=val3, val4=val4)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t111240_x28(val3=val3, val4=val4)
            assert not IsPlayerDead()
    """ State 2 """
    t111240_x13(val3=val3, val4=val4)

def t111240_x24():
    """ State 0,1 """
    assert t111240_x19(z17=1100, mode15=0, mode16=0, mode17=0, mode18=0)
    """ State 2 """
    return 0

def t111240_x25(val7=7002400, flag6=6000, flag7=6001, val9=1000000, val10=1000000, val11=1000000, val12=1000000,
                val13=1000000):
    """ State 0,1 """
    call = t111240_x19(z17=2000, mode15=0, mode16=0, mode17=0, mode18=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t111240_x1(val1=val7, flag7=flag7, flag11=6000, flag12=6000, flag13=6000, flag14=6000,
                mode12=0, flag6=flag6, val9=val9, val10=val10, val11=val11, val12=val12, val13=val13))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t111240_x26(val1=_, z15=_, text1=_):
    """ State 0,1 """
    while True:
        """ State 3 """
        assert (t111240_x1(val1=val1, flag7=6001, flag11=6001, flag12=6001, flag13=6001, flag14=6001,
                mode12=0, flag6=6000, val9=-1, val10=-1, val11=-1, val12=-1, val13=-1))
        """ State 2 """
        ClearPlayerDamageInfo()
        """ State 4 """
        call = t111240_x27(text1=text1, z15=z15)
        def WhilePaused():
            c1117(10, 10000)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1):
            """ State 5 """
            assert t111240_x15()

def t111240_x27(text1=_, z15=_):
    """ State 0,1 """
    if f116(10000) == 10:
        """ State 3 """
        call = t111240_x4(text3=text1, z8=z15, flag26=0, mode20=1)
        if call.Done():
            pass
        elif not f116(10000) == 10:
            pass
    elif not f116(10000) == 10 and GetCurrentStateElapsedTime() > 0.5:
        """ State 2 """
        pass
    """ State 4 """
    return 0

def t111240_x28(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 3 """
    call = t111240_x29()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 2 """
        assert t111240_x2()
    """ State 4 """
    return 0

def t111240_x29():
    """ State 0,1 """
    assert t111240_x19(z17=1002, mode15=0, mode16=0, mode17=0, mode18=0)
    """ State 2 """
    return 0

def t111240_x30(flag21=71110210, flag22=71110221, flag23=71110222, flag24=71110223, z16=71110215):
    """ State 0,3 """
    # goods:9100:Ashina Sake
    call = t111240_x31(flag17=flag21, goods7=9100)
    if call.Get() == 0:
        """ State 1 """
        Label('L0')
        SetEventState(z16, 1)
    elif call.Done():
        """ State 4 """
        # goods:9104:Ashina Sake
        call = t111240_x31(flag17=flag21, goods7=9104)
        if call.Get() == 0:
            Goto('L0')
        elif call.Done():
            """ State 5 """
            # goods:9101:Unrefined Sake
            call = t111240_x31(flag17=flag22, goods7=9101)
            if call.Get() == 0:
                Goto('L0')
            elif call.Done():
                """ State 6 """
                # goods:9105:Unrefined Sake
                call = t111240_x31(flag17=flag22, goods7=9105)
                if call.Get() == 0:
                    Goto('L0')
                elif call.Done():
                    """ State 7 """
                    # goods:9102:Monkey Booze
                    call = t111240_x31(flag17=flag23, goods7=9102)
                    if call.Get() == 0:
                        Goto('L0')
                    elif call.Done():
                        """ State 8 """
                        # goods:9103:Dragonspring Sake
                        call = t111240_x31(flag17=flag24, goods7=9103)
                        if call.Get() == 0:
                            Goto('L0')
                        elif call.Done():
                            """ State 2 """
                            SetEventState(z16, 0)
    """ State 9 """
    return 0

def t111240_x31(flag17=_, goods7=_):
    """ State 0,1 """
    if ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1 and not GetEventStatus(flag17):
        """ State 2,4 """
        return 0
    else:
        """ State 3,5 """
        return 1

def t111240_x32(flag17=71110210, flag18=71110211, flag19=71110213, flag20=71110214):
    """ State 0,1,9 """
    # goods:9100:Ashina Sake
    call = t111240_x31(flag17=flag17, goods7=9100)
    if call.Get() == 1:
        """ State 10 """
        # goods:9104:Ashina Sake
        call = t111240_x31(flag17=flag17, goods7=9104)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 2 """
            Label('L0')
            # action:15000500:Treat to Ashina Sake
            AddTalkListData(50, 15000500, 6001)
    elif call.Done():
        Goto('L0')
    """ State 6,11 """
    # goods:9101:Unrefined Sake
    call = t111240_x31(flag17=flag18, goods7=9101)
    if call.Get() == 1:
        """ State 12 """
        # goods:9105:Unrefined Sake
        call = t111240_x31(flag17=flag18, goods7=9105)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 3 """
            Label('L1')
            # action:15000501:Treat to Unrefined Sake
            AddTalkListData(51, 15000501, 6001)
    elif call.Done():
        Goto('L1')
    """ State 7,13 """
    # goods:9102:Monkey Booze
    call = t111240_x31(flag17=flag19, goods7=9102)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 4 """
        # action:15000502:Treat to Monkey Booze
        AddTalkListData(52, 15000502, 6001)
    """ State 8,14 """
    # goods:9103:Dragonspring Sake
    call = t111240_x31(flag17=flag20, goods7=9103)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 5 """
        # action:15000503:Treat to Dragonspring Sake
        AddTalkListData(53, 15000503, 6001)
    """ State 15 """
    return 0

def t111240_x33(goods4=_, goods3=_, mode14=_):
    """ State 0,2 """
    if mode14 == 1:
        """ State 3 """
        Label('L0')
        if ComparePlayerInventoryNumber(3, goods4, 2, 0, 0) == 1:
            """ State 1 """
            PlayerEquipmentQuantityChange(3, goods4, -1)
        else:
            """ State 4 """
            Label('L1')
            if ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1:
                """ State 5 """
                PlayerEquipmentQuantityChange(3, goods3, -1)
            else:
                Goto('L0')
    else:
        Goto('L1')
    """ State 6 """
    return 0

def t111240_x34(text2=_, text3=_, lot1=_, flag15=_, flag16=_, mode13=_):
    """ State 0,3 """
    if not mode13:
        """ State 4,8 """
        assert t111240_x5(text2=text2, flag25=0, mode19=1)
        """ State 2 """
        SetEventState(flag15, 1)
        """ State 10 """
        assert t111240_x6(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag15) == 1 and not GetEventStatus(flag16):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t111240_x4(text3=text3, z8=flag16, flag26=0, mode20=1)
    """ State 11 """
    return 0

def t111240_x35(val1=_, flag7=6001, flag11=_, flag12=_, flag13=_, flag14=_, mode12=0, flag6=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag7) == 1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12) ==
                1 or GetEventStatus(flag13) == 1 or GetEventStatus(flag14) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag6)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag7) and not GetEventStatus(flag11) and not GetEventStatus(flag12)
                  and not GetEventStatus(flag13) and not GetEventStatus(flag14)):
                Continue('mainloop')
            elif GetEventStatus(flag6) == 1:
                pass
            elif CheckActionButtonArea(val1 + mode12) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t111240_x36(z1=9100, z2=9101, z3=9105, z4=9102, z5=9103):
    """ State 0,7 """
    c1110()
    """ State 4 """
    while True:
        ClearTalkListData()
        """ State 29 """
        call = t111240_x44()
        if call.Get() == 1:
            break
        elif call.Done():
            """ State 17,2 """
            ShowShopMessage(1)
            assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 5 """
            assert GetCurrentStateElapsedFrames() > 1
            """ State 1 """
            if GetTalkListEntryResult() == 1:
                """ State 3 """
                if not GetEventStatus(71110205):
                    """ State 8,22 """
                    # talk:24010000:The Divine Heir's desire is to sever the ties of immortality.
                    assert t111240_x4(text3=24010000, z8=71110205, flag26=0, mode20=1)
                    continue
                else:
                    """ State 9,23 """
                    # talk:24010100:The Mortal Blade...
                    assert t111240_x5(text2=24010100, flag25=0, mode19=1)
                    continue
            elif GetTalkListEntryResult() == 2:
                """ State 10 """
                if not GetEventStatus(71110206):
                    """ State 11 """
                    if GetEventStatus(138) == 1:
                        """ State 19,30 """
                        # talk:24010900:Where is this Mortal Blade?
                        assert t111240_x4(text3=24010900, z8=71110206, flag26=0, mode20=1)
                        """ State 20 """
                        SetEventState(71120225, 1)
                    else:
                        """ State 24 """
                        # talk:24010200:Where is this Mortal Blade?
                        assert t111240_x4(text3=24010200, z8=71110206, flag26=0, mode20=1)
                    """ State 13 """
                    SetEventState(8400, 1)
                    continue
                else:
                    """ State 12 """
                    if GetEventStatus(71120225) == 1:
                        """ State 21,31 """
                        # talk:24011000:I've heard the Mortal Blade is in Senpou Temple.
                        assert t111240_x5(text2=24011000, flag25=0, mode19=1)
                        continue
                    else:
                        """ State 25 """
                        # talk:24010300:I've heard the Mortal Blade is in Senpou Temple.
                        assert t111240_x5(text2=24010300, flag25=0, mode19=1)
                        continue
            elif GetTalkListEntryResult() == 5:
                """ State 16,28 """
                # goods:9100:Ashina Sake, goods:9101:Unrefined Sake, goods:9105:Unrefined Sake, goods:9102:Monkey Booze, goods:9103:Dragonspring Sake, goods:9104:Ashina Sake
                assert (t111240_x37(goods1=9100, goods2=9101, goods3=9105, goods4=9102, goods5=9103,
                        goods6=9104, mode1=0))
                continue
            else:
                """ State 6 """
                if not GetEventStatus(71110201):
                    """ State 14,26 """
                    # talk:24020000:You're leaving, Sekiro?
                    assert t111240_x4(text3=24020000, z8=71110201, flag26=0, mode20=1)
                else:
                    """ State 15,27 """
                    # talk:24020100:You're leaving, Sekiro?
                    assert t111240_x5(text2=24020100, flag25=0, mode19=1)
        """ State 32 """
        Label('L0')
        return 0
    """ State 18 """
    Goto('L0')

def t111240_x37(goods1=9100, goods2=9101, goods3=9105, goods4=9102, goods5=9103, goods6=9104, mode1=_):
    """ State 0,5 """
    if not mode1:
        """ State 7 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 25 """
        while True:
            ClearTalkListData()
            """ State 34 """
            assert t111240_x32(flag17=71110210, flag18=71110211, flag19=71110213, flag20=71110214)
            """ State 26 """
            c1126(0)
            if GetTalkListEntryResult() == 50:
                """ State 1,30 """
                # action:12095000:Give Ashina Sake?
                call = t111240_x0(action1=12095000)
                if call.Get() == 0:
                    """ State 17,35 """
                    def WhilePaused():
                        c1117(1541000, -1)
                    assert t111240_x39(mode6=0, z13=71110210, z14=71110220, goods1=goods1, goods6=goods6)
                elif call.Done():
                    """ State 18 """
                    continue
            elif GetTalkListEntryResult() == 51:
                """ State 4 """
                # goods:9105:Unrefined Sake
                if ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1:
                    """ State 8,31 """
                    # action:12095001:Give Unrefined Sake?
                    call = t111240_x0(action1=12095001)
                    if call.Get() == 0:
                        """ State 19,38 """
                        def WhilePaused():
                            c1117(1541000, -1)
                        assert t111240_x42(mode3=0, z7=71110212, z8=71110221, goods3=goods3)
                    elif call.Done():
                        """ State 20 """
                        continue
                else:
                    """ State 9,32 """
                    # action:12095001:Give Unrefined Sake?
                    call = t111240_x0(action1=12095001)
                    if call.Get() == 0:
                        """ State 21,37 """
                        def WhilePaused():
                            c1117(1541000, -1)
                        assert t111240_x40(mode5=0, z11=71110211, z12=71110221, goods2=goods2)
                    elif call.Done():
                        """ State 22 """
                        continue
            elif GetTalkListEntryResult() == 52:
                """ State 3,33 """
                # action:12095002:Give Monkey Booze?
                call = t111240_x0(action1=12095002)
                if call.Get() == 0:
                    """ State 23,39 """
                    def WhilePaused():
                        c1117(1541000, -1)
                    assert t111240_x43(mode2=0, flag1=71110213, z6=71110222, goods4=goods4)
                elif call.Done():
                    """ State 24 """
                    continue
            elif GetTalkListEntryResult() == 53:
                """ State 2,29 """
                # action:12095003:Give Dragonspring Sake?
                call = t111240_x0(action1=12095003)
                if call.Get() == 0:
                    """ State 15,36 """
                    def WhilePaused():
                        c1117(1541000, -1)
                    assert t111240_x41(mode4=0, z9=71110214, z10=71110223, goods5=goods5)
                elif call.Done():
                    """ State 16 """
                    continue
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 27 """
                break
            """ State 45 """
            assert t111240_x30(flag21=71110210, flag22=71110221, flag23=71110222, flag24=71110223, z16=71110215)
            """ State 28 """
            if GetEventStatus(71110215) == 1:
                pass
            else:
                break
    else:
        """ State 6 """
        if GetEventStatus(71110210) == 1 and not GetEventStatus(71110220):
            """ State 10,40 """
            def WhilePaused():
                c1117(1541000, -1)
            assert t111240_x39(mode6=1, z13=71110210, z14=71110220, goods1=goods1, goods6=goods6)
        elif GetEventStatus(71110211) == 1 and not GetEventStatus(71110221):
            """ State 11,41 """
            def WhilePaused():
                c1117(1541000, -1)
            assert t111240_x40(mode5=1, z11=71110211, z12=71110221, goods2=goods2)
        elif GetEventStatus(71110212) == 1 and not GetEventStatus(71110221):
            """ State 12,42 """
            def WhilePaused():
                c1117(1541000, -1)
            assert t111240_x42(mode3=1, z7=71110211, z8=71110221, goods3=goods3)
        elif GetEventStatus(71110213) == 1 and not GetEventStatus(71110222):
            """ State 14,43 """
            def WhilePaused():
                c1117(1541000, -1)
            assert t111240_x43(mode2=1, flag1=71110213, z6=71110222, goods4=goods4)
        elif GetEventStatus(71110214) == 1 and not GetEventStatus(71110223):
            """ State 13,44 """
            def WhilePaused():
                c1117(1541000, -1)
            assert t111240_x41(mode4=1, z9=71110214, z10=71110223, goods5=goods5)
        else:
            """ State 47 """
            return 1
    """ State 46 """
    return 0

def t111240_x38():
    """ State 0,3 """
    if GetEventStatus(71100448) == 1:
        """ State 1,6 """
        # talk:24001000:Lord Isshin...
        t111240_x26(val1=7002411, z15=71110242, text1=24001000)
    elif GetEventStatus(71110202) == 1:
        """ State 2,5 """
        # talk:24000400:The crimson Mortal Blade...
        t111240_x26(val1=7002410, z15=71110241, text1=24000400)
    else:
        """ State 4 """
        pass

def t111240_x39(mode6=_, z13=71110210, z14=71110220, goods1=9100, goods6=9104):
    """ State 0,1 """
    if not mode6:
        """ State 2,7 """
        assert t111240_x33(goods4=goods1, goods3=goods6, mode14=1)
        """ State 4 """
        SetEventState(z13, 1)
    else:
        """ State 3 """
        pass
    """ State 5,6 """
    # talk:24010400:I brought sake.
    assert t111240_x4(text3=24010400, z8=z14, flag26=0, mode20=1)
    """ State 8 """
    return 0

def t111240_x40(mode5=_, z11=71110211, z12=71110221, goods2=9101):
    """ State 0,1 """
    if not mode5:
        """ State 2,7 """
        assert t111240_x33(goods4=goods2, goods3=goods2, mode14=0)
        """ State 4 """
        SetEventState(z11, 1)
    else:
        """ State 3 """
        pass
    """ State 5,6 """
    # talk:24010500:Here.
    assert t111240_x4(text3=24010500, z8=z12, flag26=0, mode20=1)
    """ State 8 """
    return 0

def t111240_x41(mode4=_, z9=71110214, z10=71110223, goods5=9103):
    """ State 0,1 """
    if not mode4:
        """ State 2,11 """
        assert t111240_x33(goods4=goods5, goods3=goods5, mode14=0)
        """ State 4 """
        SetEventState(z9, 1)
    else:
        """ State 3 """
        pass
    """ State 5 """
    if GetEventStatus(9308) == 1:
        """ State 7,10 """
        # talk:24011400:Here.
        assert t111240_x5(text2=24011400, flag25=0, mode19=1)
    else:
        """ State 6,9 """
        # talk:24011300:Here.
        assert t111240_x5(text2=24011300, flag25=0, mode19=1)
    """ State 8 """
    SetEventState(z10, 1)
    """ State 12 """
    return 0

def t111240_x42(mode3=_, z7=_, z8=71110221, goods3=9105):
    """ State 0,1 """
    if not mode3:
        """ State 2,7 """
        assert t111240_x33(goods4=goods3, goods3=goods3, mode14=0)
        """ State 4 """
        SetEventState(z7, 1)
        SetEventState(71110212, 1)
    else:
        """ State 3 """
        pass
    """ State 5,6 """
    # talk:24010600:Here.
    assert t111240_x4(text3=24010600, z8=z8, flag26=0, mode20=1)
    """ State 8 """
    return 0

def t111240_x43(mode2=_, flag1=71110213, z6=71110222, goods4=9102):
    """ State 0,1 """
    if not mode2:
        """ State 2,11 """
        assert t111240_x33(goods4=goods4, goods3=goods4, mode14=0)
        """ State 8 """
        SetEventState(flag1, 1)
    else:
        """ State 3 """
        assert GetEventStatus(flag1) == 1
    """ State 4 """
    if not GetEventStatus(9308):
        """ State 6,9 """
        # talk:24010700:I have something for you.
        assert t111240_x5(text2=24010700, flag25=0, mode19=1)
    else:
        """ State 7,10 """
        # talk:24010800:I have something for you.
        assert t111240_x5(text2=24010800, flag25=0, mode19=1)
    """ State 5 """
    SetEventState(z6, 1)
    """ State 12 """
    return 0

def t111240_x44():
    """ State 0,2 """
    SetWorkValue(0, 0)
    """ State 9 """
    assert t111240_x30(flag21=71110210, flag22=71110221, flag23=71110222, flag24=71110223, z16=71110215)
    """ State 3 """
    if not GetEventStatus(8410):
        """ State 1 """
        # action:15024000:About Immortal Severance
        AddTalkListData(1, 15024000, 6001)
        SetWorkValue(0, GetWorkValue(0) + 1)
    else:
        pass
    """ State 4 """
    if GetEventStatus(71110205) == 1 and not GetEventStatus(8410):
        """ State 5 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15024001:Where can the Mortal Blade be found
        AddTalkListDataIf(GetEventStatus(71110205) == 1 and not GetEventStatus(8410), 2, 15024001, 6001)
    else:
        pass
    """ State 6 """
    if GetEventStatus(71110215) == 1:
        """ State 7 """
        SetWorkValue(0, GetWorkValue(0) + 1)
        # action:15000510:Give Drink
        AddTalkListData(5, 15000510, 6001)
    else:
        pass
    """ State 8 """
    if GetWorkValue(0) > 1:
        """ State 10 """
        return 0
    else:
        """ State 11 """
        return 1

