# -*- coding: utf-8 -*-
def t130600_1():
    """ State 0,1 """
    t130600_x7(flag13=1479, flag14=1475, flag15=1476, val2=5, val3=10, val4=12, val5=10, val6=12, flag16=6001,
               val7=7003100, flag17=6000, flag18=6001, flag19=6000, flag20=6000, mode1=1, val8=1000000,
               val9=1000000, val10=1000000, mode2=0, mode3=1, mode4=0, val11=1000000, val12=1000000,
               mode5=0, flag21=6000, mode6=0)

def t130600_1000():
    """ State 0,2 """
    if GetEventStatus(1464) == 1 or GetEventStatus(1465) == 1:
        """ State 3,7 """
        # talk:31900100:(Wheezing), talk:31900300:(Wheezing), talk:31900350:Dousaku... Dousaku..., talk:31910150:Dousaku! Damn you! What did you make me drink?!, talk:31900900:I'm taking a blood sample., talk:31900910:... Now to bring this to Lady Emma., talk:31910500:........., talk:31910100:Here..., talk:31900500:Dosaku..., goods:9505:Rot Essence: Surgeons
        call = t130600_x31(text14=31900100, text15=31900300, text16=31900350, text17=31910150, text18=31900900,
                           text19=31900910, text20=31910500, text21=31910100, text22=31900500, flag9=70002035,
                           flag10=71300074, flag11=71300072, flag12=71300075, z5=71300071, z6=71300070,
                           z7=71300073, z8=71300076, goods2=9505)
        def WhilePaused():
            c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
            c1117(1122000, -1)
        if call.Get() == 0:
            pass
        elif call.Done():
            """ State 5 """
            Label('L0')
            if GetEventStatus(1460) == 1:
                """ State 9 """
                assert t130600_x33()
            elif GetEventStatus(1461) == 1:
                """ State 10 """
                assert t130600_x34()
            elif GetEventStatus(1462) == 1:
                """ State 11 """
                assert t130600_x35()
            elif GetEventStatus(1463) == 1:
                """ State 12 """
                assert t130600_x36()
            elif GetEventStatus(1464) == 1:
                """ State 13 """
                assert t130600_x37()
            elif GetEventStatus(1465) == 1:
                """ State 14 """
                assert t130600_x38()
            else:
                pass
    else:
        """ State 6 """
        if (((GetEventStatus(1443) == 1 and GetEventStatus(1459) == 1) or (GetEventStatus(1424) == 1
            and GetEventStatus(1439) == 1)) and GetEventStatus(70002035) == 1):
            """ State 15 """
            # talk:31900700:(Wheezing)
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                c1117(1122000, -1)
            assert t130600_x5(text1=31900700, flag26=0, mode12=1)
        else:
            """ State 4,8 """
            # talk:31900000:(Wheezing), talk:31900200:(Wheezing), talk:31900250:These... symptoms..., talk:31910250:Be silent... I must track my progress..., talk:31900900:I'm taking a blood sample., talk:31900910:... Now to bring this to Lady Emma., talk:31910400:........., talk:31910050:Take this... It's medicine., talk:31900400:........., goods:9505:Rot Essence: Surgeons
            call = t130600_x41(text1=31900000, text2=31900200, text3=31900250, text4=31910250, text5=31900900,
                               text6=31900910, text7=31910400, text8=31910050, text9=31900400, flag1=70002035,
                               flag2=71300074, flag3=71300072, flag4=71300075, z1=71300071, z2=71300070,
                               z3=71300073, z4=71300076, goods1=9505)
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                c1117(1122000, -1)
            if call.Get() == 0:
                pass
            elif call.Done():
                Goto('L0')
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t130600_1001():
    """ State 0,2 """
    if GetEventStatus(1466) == 1:
        """ State 4,6 """
        # talk:31031500:Everything will be fine as long as I obey master...
        assert t130600_x5(text1=31031500, flag26=1, mode12=1)
    else:
        """ State 3,5 """
        # talk:31031301:Hehehe...
        assert t130600_x5(text1=31031301, flag26=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t130600_1101():
    """ State 0,2 """
    if True:
        """ State 3 """
        if GetEventStatus(70002035) == 1 or GetEventStatus(1464) == 1 or GetEventStatus(1465) == 1:
            """ State 6 """
            # talk:31030800:   , talk:31030900:    
            assert (t130600_x32(text10=31030800, flag5=71300097, text11=31030900, flag6=71300098, text12=-1,
                    flag7=71300099, text13=-1, flag8=71300091))
        else:
            """ State 5 """
            # talk:31030800:   , talk:31030900:    , talk:31031000:P-Please stop, talk:31031100:What are you doing...?!
            assert (t130600_x32(text10=31030800, flag5=71300097, text11=31030900, flag6=71300098, text12=31031000,
                    flag7=71300099, text13=31031100, flag8=71300091))
    elif GetEventStatus(1466) == 1:
        """ State 4 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t130600_1102():
    """ State 0,2 """
    if not GetEventStatus(71300092):
        """ State 3,5 """
        if GetEventStatus(1462) == 1 or GetEventStatus(1464) == 1:
            """ State 7,9 """
            # talk:31031800:How dare you...!
            assert t130600_x3(text10=31031800, flag5=71300092, flag28=1, mode14=1)
        elif GetEventStatus(1466) == 1:
            """ State 8,11 """
            # talk:31031700:Master!
            assert t130600_x3(text10=31031700, flag5=71300092, flag28=1, mode14=1)
        else:
            """ State 6,10 """
            # talk:31031201:Why?!
            assert t130600_x3(text10=31031201, flag5=71300092, flag28=1, mode14=1)
    else:
        pass
    """ State 4 """

def t130600_1103():
    """ State 0,2 """
    if GetEventStatus(1466) == 1:
        """ State 4,6 """
        # talk:31031600:Ahh... I am sorry.
        assert t130600_x5(text1=31031600, flag26=1, mode12=1)
    else:
        """ State 3,5 """
        # talk:31031400:Ahh...
        assert t130600_x5(text1=31031400, flag26=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t130600_2000():
    """ State 0,5 """
    while True:
        call = t130600_x0(val1=7003100, flag18=6001, flag22=6000, flag23=6000, flag24=6000, flag25=6000,
                          mode7=0, flag17=6000, val8=-1, val9=-1, val10=-1, val11=-1, val12=-1)
        if call.Done():
            break
        elif GetEventStatus(71300094) == 1 and GetEventStatus(1462) == 1 and not GetEventStatus(70002035):
            pass
        elif GetEventStatus(71300094) == 1 and GetEventStatus(1464) == 1 and not GetEventStatus(70002035):
            Goto('L0')
        """ State 6 """
        call = t130600_x39()
        assert not GetEventStatus(71300094) or not GetEventStatus(1462) or GetEventStatus(70002035) == 1
        continue
        """ State 7 """
        Label('L0')
        call = t130600_x40()
        assert not GetEventStatus(71300094) or not GetEventStatus(1464) or GetEventStatus(70002035) == 1
    """ State 2 """
    if GetEventStatus(1460) == 1 or GetEventStatus(1461) == 1 or GetEventStatus(1463) == 1:
        """ State 4 """
        c511(not DoesSelfHaveSpEffect(5450), 71300068, 1)
    else:
        """ State 3 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t130600_x0(val1=_, flag18=6001, flag22=_, flag23=_, flag24=_, flag25=_, mode7=0, flag17=6000, val8=_,
               val9=_, val10=_, val11=_, val12=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t130600_x30(val1=val1, flag18=flag18, flag22=flag22, flag23=flag23, flag24=flag24, flag25=flag25,
                           mode7=mode7, flag17=flag17)
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

def t130600_x1():
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

def t130600_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t130600_x3(text10=_, flag5=_, flag28=1, mode14=1):
    """ State 0,7 """
    assert t130600_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag5, 1)
    """ State 6 """
    if not flag28:
        """ State 1 """
        TalkToPlayer(text10, -1, -1, flag28, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text10, -1, -1, flag28, 1)
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

def t130600_x4(text23=_, z9=_, flag27=0, mode13=1):
    """ State 0,7 """
    assert t130600_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag27:
        """ State 1 """
        TalkToPlayer(text23, -1, -1, flag27, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text23, -1, -1, flag27, 1)
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
    SetEventState(z9, 1)
    """ State 8 """
    return 0

def t130600_x5(text1=_, flag26=_, mode12=1):
    """ State 0,6 """
    assert t130600_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag26:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag26, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag26, 1)
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

def t130600_x6(lot1=_):
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

def t130600_x7(flag13=1479, flag14=1475, flag15=1476, val2=5, val3=10, val4=12, val5=10, val6=12, flag16=6001,
               val7=7003100, flag17=6000, flag18=6001, flag19=6000, flag20=6000, mode1=1, val8=1000000,
               val9=1000000, val10=1000000, mode2=0, mode3=1, mode4=0, val11=1000000, val12=1000000,
               mode5=0, flag21=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t130600_x8(val2=val2, val3=val3, val4=val4, val5=val5, val6=val6, flag16=flag16, val7=val7,
                          flag17=flag17, flag18=flag18, flag19=flag19, flag20=flag20, mode1=mode1, val8=val8,
                          val9=val9, val10=val10, mode2=mode2, mode3=mode3, mode4=mode4, val11=val11,
                          val12=val12, mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag13) == 1) and not GetEventStatus(flag21):
            pass
        elif GetEventStatus(flag14) == 1 or GetEventStatus(flag15) == 1:
            """ State 3 """
            call = t130600_x23(val3=val3, val4=val4)
            if CheckSelfDeath() == 1 or GetEventStatus(flag13) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag14) and not GetEventStatus(flag15):
                continue
        """ State 2 """
        call = t130600_x9(flag13=flag13, val3=val3, val4=val4)
        assert not CheckSelfDeath() and not GetEventStatus(flag13) and not DoesSelfHaveSpEffect(30100)

def t130600_x8(val2=5, val3=10, val4=12, val5=10, val6=12, flag16=6001, val7=7003100, flag17=6000, flag18=6001,
               flag19=6000, flag20=6000, mode1=1, val8=1000000, val9=1000000, val10=1000000, mode2=0,
               mode3=1, mode4=0, val11=1000000, val12=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t130600_x25(val7=val7, flag17=flag17, flag18=flag18, val8=val8, val9=val9, val10=val10,
                           val11=val11, val12=val12)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t130600_x10(val2=val2, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag20) == 1:
            Goto('L0')
        elif not GetEventStatus(flag16) and GetEventStatus(flag19) == 1 and GetDistanceToPlayer() < val5:
            """ State 3 """
            call = t130600_x11(val6=val6)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t130600_x12(val3=val3, val4=val4)

def t130600_x9(flag13=1479, val3=10, val4=12):
    """ State 0,1 """
    if GetEventStatus(flag13) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val3:
            """ State 4,6 """
            call = t130600_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val4:
                """ State 7 """
                assert t130600_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t130600_x10(val2=5, mode1=1, mode2=0, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t130600_x18(mode2=mode2, mode4=mode4)
    def WhilePaused():
        c1117(mode1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode3 == 1, 0.1)
        c5120(val2 == 1 and not mode1 and mode5 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t130600_x15()
    elif GetDistanceToPlayer() > val2:
        """ State 3 """
        assert t130600_x14()
    """ State 4 """
    return 0

def t130600_x11(val6=12):
    """ State 0,1 """
    call = t130600_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 2 """
        assert t130600_x1()
    """ State 3 """
    return 0

def t130600_x12(val3=10, val4=12):
    """ State 0,4 """
    assert t130600_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t130600_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t130600_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t130600_x13(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 2 """
    call = t130600_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 3 """
        assert t130600_x1()
    """ State 4 """
    return 0

def t130600_x14():
    """ State 0,1 """
    assert t130600_x1()
    """ State 2 """
    return 0

def t130600_x15():
    """ State 0,2 """
    assert t130600_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t130600_x16(val3=10, val4=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val3
        """ State 3 """
        call = t130600_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val4:
            """ State 4 """
            assert t130600_x1()

def t130600_x17():
    """ State 0,1 """
    assert t130600_x19(z10=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t130600_x18(mode2=0, mode4=0):
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
        assert t130600_x19(z10=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t130600_x19(z10=_, mode8=0, mode9=0, mode10=0, mode11=0):
    """ State 0,4 """
    if f118(z10) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z10)
        assert f117() == mode8 or f117() == mode9 or f117() == mode10 or f117() == mode11
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t130600_x20():
    """ State 0,1 """
    call = t130600_x19(z10=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t130600_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t130600_x21():
    """ State 0,2 """
    call = t130600_x19(z10=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t130600_x22():
    """ State 0,1 """
    assert t130600_x19(z10=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t130600_x23(val3=10, val4=12):
    """ State 0,1 """
    while True:
        call = t130600_x16(val3=val3, val4=val4)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t130600_x28(val3=val3, val4=val4)
            assert not IsPlayerDead()
    """ State 2 """
    t130600_x13(val3=val3, val4=val4)

def t130600_x24():
    """ State 0,1 """
    assert t130600_x19(z10=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t130600_x25(val7=7003100, flag17=6000, flag18=6001, val8=1000000, val9=1000000, val10=1000000, val11=1000000,
                val12=1000000):
    """ State 0,1 """
    call = t130600_x19(z10=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t130600_x0(val1=val7, flag18=flag18, flag22=6000, flag23=6000, flag24=6000, flag25=6000,
                mode7=0, flag17=flag17, val8=val8, val9=val9, val10=val10, val11=val11, val12=val12))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t130600_x26(val1=_, z9=_, text23=_):
    """ State 0,1 """
    while True:
        """ State 3 """
        assert (t130600_x0(val1=val1, flag18=6001, flag22=6001, flag23=6001, flag24=6001, flag25=6001,
                mode7=0, flag17=6000, val8=-1, val9=-1, val10=-1, val11=-1, val12=-1))
        """ State 2 """
        ClearPlayerDamageInfo()
        """ State 4 """
        call = t130600_x27(text23=text23, z9=z9)
        def WhilePaused():
            c1117(10, 10000)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1):
            """ State 5 """
            assert t130600_x15()

def t130600_x27(text23=_, z9=_):
    """ State 0,1 """
    if f116(10000) == 10:
        """ State 3 """
        call = t130600_x4(text23=text23, z9=z9, flag27=0, mode13=1)
        if call.Done():
            pass
        elif not f116(10000) == 10:
            pass
    elif not f116(10000) == 10 and GetCurrentStateElapsedTime() > 0.5:
        """ State 2 """
        pass
    """ State 4 """
    return 0

def t130600_x28(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 3 """
    call = t130600_x29()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 2 """
        assert t130600_x1()
    """ State 4 """
    return 0

def t130600_x29():
    """ State 0,1 """
    assert t130600_x19(z10=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t130600_x30(val1=_, flag18=6001, flag22=_, flag23=_, flag24=_, flag25=_, mode7=0, flag17=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag18) == 1 or GetEventStatus(flag22) == 1 or GetEventStatus(flag23)
                == 1 or GetEventStatus(flag24) == 1 or GetEventStatus(flag25) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag17)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag18) and not GetEventStatus(flag22) and not GetEventStatus(flag23)
                  and not GetEventStatus(flag24) and not GetEventStatus(flag25)):
                Continue('mainloop')
            elif GetEventStatus(flag17) == 1:
                pass
            elif CheckActionButtonArea(val1 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t130600_x31(text14=31900100, text15=31900300, text16=31900350, text17=31910150, text18=31900900,
                text19=31900910, text20=31910500, text21=31910100, text22=31900500, flag9=70002035, flag10=71300074,
                flag11=71300072, flag12=71300075, z5=71300071, z6=71300070, z7=71300073, z8=71300076,
                goods2=9505):
    """ State 0,43 """
    if GetEventStatus(flag11) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t130600_x5(text1=text18, flag26=0, mode12=1)
            """ State 48 """
            SetEventState(flag12, 1)
            """ State 58 """
            assert t130600_x6(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t130600_x5(text1=text19, flag26=0, mode12=1)
            """ State 23 """
            SetEventState(flag11, 0)
        else:
            """ State 45,47 """
            if GetEventStatus(flag12) == 1:
                Goto('L1')
            else:
                """ State 46,49 """
                SetEventState(flag11, 0)
                """ State 1 """
                Label('L2')
                if GetEventStatus(flag9) == 1:
                    """ State 2,12 """
                    if not GetEventStatus(flag10):
                        """ State 50 """
                        if not GetEventStatus(70004000):
                            """ State 3,55 """
                            assert t130600_x5(text1=text14, flag26=0, mode12=1)
                        else:
                            """ State 4,56 """
                            assert t130600_x5(text1=text15, flag26=0, mode12=1)
                    else:
                        """ State 52,64 """
                        assert t130600_x5(text1=text16, flag26=0, mode12=1)
                    """ State 51 """
                    if not GetEventStatus(70004001):
                        """ State 53,5 """
                        c1110()
                        """ State 6 """
                        ClearTalkListData()
                        """ State 7 """
                        # action:14000003:Do nothing
                        AddTalkListData(2, 14000003, -1)
                        """ State 8 """
                        OpenConversationChoicesMenu(0)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 9,10 """
                    else:
                        """ State 11 """
                        if not GetEventStatus(50006990):
                            """ State 14,17 """
                            ClearTalkListData()
                            """ State 18 """
                            # action:14000002:Take coughed up blood sample
                            AddTalkListData(1, 14000002, -1)
                            # action:14000003:Do nothing
                            AddTalkListData(2, 14000003, -1)
                            """ State 19 """
                            OpenConversationChoicesMenu(0)
                            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                            """ State 20 """
                            if GetTalkListEntryResult() == 1:
                                """ State 24 """
                                SetEventState(flag11, 1)
                                Goto('L0')
                            else:
                                """ State 22 """
                                pass
                        else:
                            """ State 15 """
                            """ State 13 """
                            pass
                else:
                    """ State 39,40,66 """
                    return 1
    else:
        Goto('L2')
    """ State 54 """
    SetEventState(flag10, 1)
    """ State 65 """
    return 0

def t130600_x32(text10=31030800, flag5=71300097, text11=31030900, flag6=71300098, text12=_, flag7=71300099,
                text13=_, flag8=71300091):
    """ State 0,3 """
    if ((text10 == -1 or GetEventStatus(flag5) == 1) and (text11 == -1 or GetEventStatus(flag6) == 1)
        and (text12 == -1 or GetEventStatus(flag7) == 1) and (text13 == -1 or GetEventStatus(flag8) ==
        1)):
        """ State 2 """
        SetEventState(flag5, 0)
        SetEventState(flag6, 0)
        SetEventState(flag7, 0)
        SetEventState(flag8, 0)
    else:
        pass
    """ State 1 """
    if not text10 == -1 and not GetEventStatus(flag5):
        """ State 4 """
        assert t130600_x3(text10=text10, flag5=flag5, flag28=1, mode14=1)
    elif not text11 == -1 and not GetEventStatus(flag6):
        """ State 5 """
        assert t130600_x3(text10=text11, flag5=flag6, flag28=1, mode14=1)
    elif not text12 == -1 and not GetEventStatus(flag7):
        """ State 6 """
        assert t130600_x3(text10=text12, flag5=flag7, flag28=1, mode14=1)
    else:
        """ State 7 """
        assert t130600_x3(text10=text13, flag5=flag8, flag28=1, mode14=1)
    """ State 8 """
    return 0

def t130600_x33():
    """ State 0,11 """
    if GetEventStatus(71300079) == 1:
        """ State 7 """
        Label('L0')
        """ State 16 """
        # talk:31010000:That's right.
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x4(text23=31010000, z9=71300050, flag27=0, mode13=1)
        """ State 13 """
        SetEventState(71300079, 0)
        """ State 18 """
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x6(lot1=63100)
    elif GetEventStatus(71300080) == 1:
        """ State 6 """
        Label('L1')
        """ State 15 """
        # talk:31010100:.........
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x5(text1=31010100, flag26=0, mode12=1)
        """ State 12 """
        SetEventState(71300080, 0)
    else:
        """ State 1 """
        if not GetEventStatus(71300050):
            """ State 14 """
            # talk:31001000:What...are you doing here? Of all places?
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t130600_x5(text1=31001000, flag26=0, mode12=1)
            """ State 2 """
            ClearTalkListData()
            """ State 3 """
            # action:14031002:Yes
            AddTalkListData(1, 14031002, -1)
            # action:14031003:Say nothing
            AddTalkListData(2, 14031003, -1)
            """ State 4 """
            OpenConversationChoicesMenu(0)
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 5 """
            if GetTalkListEntryResult() == 1:
                """ State 9 """
                SetEventState(71300079, 1)
                Goto('L0')
            elif GetTalkListEntryResult() == 2:
                """ State 10 """
                SetEventState(71300080, 1)
                Goto('L1')
            else:
                """ State 8 """
                pass
        else:
            """ State 17 """
            # talk:31001100:My dear Shinobi...
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t130600_x5(text1=31001100, flag26=0, mode12=1)
    """ State 19 """
    return 0

def t130600_x34():
    """ State 0,1 """
    if not GetEventStatus(71300055):
        """ State 2 """
        # talk:31001200:My dear Shinobi,
        def WhilePaused():
            c1120(1, 0, 10, 9, 9, 9, 9, 9, 9)
        assert t130600_x4(text23=31001200, z9=71300055, flag27=0, mode13=1)
        """ State 3 """
        assert t130600_x6(lot1=63110)
    else:
        """ State 4 """
        # talk:31001300:It's about time I embark for the facility as well...
        def WhilePaused():
            c1120(1, 0, 10, 9, 9, 9, 9, 9, 9)
        assert t130600_x4(text23=31001300, z9=71300056, flag27=0, mode13=1)
    """ State 5 """
    return 0

def t130600_x35():
    """ State 0,1 """
    if not GetEventStatus(71300057):
        """ State 2 """
        c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
        # talk:31001500:How is the progress, Master Dousaku?
        assert t130600_x4(text23=31001500, z9=71300057, flag27=0, mode13=1)
    else:
        """ State 3 """
        # talk:31001550:My dear Shinobi... This is not proper.
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x5(text1=31001550, flag26=0, mode12=1)
    """ State 4 """
    return 0

def t130600_x36():
    """ State 0,14 """
    if GetEventStatus(71300081) == 1:
        """ State 11 """
        Label('L0')
        """ State 24 """
        # talk:31010200:Yes.
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x4(text23=31010200, z9=71300060, flag27=0, mode13=1)
        """ State 16 """
        SetEventState(71300081, 0)
        """ State 25 """
        assert t130600_x6(lot1=63130)
    elif GetEventStatus(71300082) == 1:
        """ State 10 """
        Label('L1')
        """ State 23 """
        # talk:31010300:No...
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(GetCurrentStateElapsedTime() > 1, 1, 9, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x5(text1=31010300, flag26=0, mode12=1)
        """ State 13 """
        SetEventState(71300082, 0)
    else:
        """ State 1 """
        if not GetEventStatus(71300059):
            """ State 2 """
            if not GetEventStatus(50006312):
                """ State 19 """
                # talk:31001600:(Groaning)
                def WhilePaused():
                    c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
                assert t130600_x5(text1=31001600, flag26=0, mode12=1)
                """ State 20 """
                def WhilePaused():
                    c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                assert t130600_x6(lot1=63120)
            else:
                pass
            """ State 18 """
            # talk:31001610:We request your assistance once again.
            def WhilePaused():
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            assert t130600_x4(text23=31001610, z9=71300059, flag27=0, mode13=1)
        else:
            """ State 3 """
            if not GetEventStatus(71300060):
                """ State 4 """
                # goods:9052:Red Carp Eyes
                if ComparePlayerInventoryNumber(3, 9052, 4, 1, 0) == 1:
                    """ State 22 """
                    # talk:31001800:Ahh... My dear Shinobi
                    def WhilePaused():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t130600_x5(text1=31001800, flag26=0, mode12=1)
                    """ State 5 """
                    ClearTalkListData()
                    """ State 6 """
                    # goods:9052:Red Carp Eyes, action:14031004:Give Red Carp Eyes
                    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9052, 4, 1, 0) == 1, 1, 14031004,
                                      -1)
                    # action:14031005:Keep Red Carp Eyes
                    AddTalkListData(2, 14031005, -1)
                    """ State 8 """
                    OpenConversationChoicesMenu(0)
                    def WhilePaused():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                    """ State 7 """
                    if GetTalkListEntryResult() == 1:
                        """ State 17 """
                        # goods:9052:Red Carp Eyes
                        PlayerEquipmentQuantityChange(3, 9052, -1)
                        """ State 15 """
                        SetEventState(71300081, 1)
                        Goto('L0')
                    elif GetTalkListEntryResult() == 2:
                        """ State 12 """
                        SetEventState(71300082, 1)
                        Goto('L1')
                    else:
                        """ State 9 """
                        pass
                else:
                    """ State 21 """
                    # talk:31001700:The details are in the document...
                    def WhilePaused():
                        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                    assert t130600_x5(text1=31001700, flag26=0, mode12=1)
            else:
                """ State 26 """
                # talk:31001900:With this, we can advance the treatment even further...
                def WhilePaused():
                    c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
                assert t130600_x4(text23=31001900, z9=71300062, flag27=0, mode13=1)
    """ State 27 """
    return 0

def t130600_x37():
    """ State 0,1 """
    if not GetEventStatus(71300063):
        """ State 2 """
        # talk:31005000:Unh... Aahhh...
        def WhilePaused():
            c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x4(text23=31005000, z9=71300063, flag27=0, mode13=1)
    else:
        """ State 3 """
        # talk:31005100:Please answer me, master!
        def WhilePaused():
            c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
        assert t130600_x5(text1=31005100, flag26=0, mode12=1)
    """ State 4 """
    return 0

def t130600_x38():
    """ State 0,1 """
    # talk:31002200:Answer me, Dousaku...
    def WhilePaused():
        c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
    assert t130600_x4(text23=31002200, z9=71300066, flag27=0, mode13=1)
    """ State 2 """
    return 0

def t130600_x39():
    """ State 0,1 """
    if GetEventStatus(1424) == 1:
        """ State 2 """
        # talk:31001400:H-How is this, Master Dousaku?
        t130600_x26(val1=7003101, z9=71300058, text23=31001400)
    else:
        """ State 3 """
        # talk:31001450:H-How is this, Master Dousaku?
        t130600_x26(val1=7003101, z9=71300058, text23=31001450)

def t130600_x40():
    """ State 0,1 """
    if GetEventStatus(71300063) == 1:
        pass
    else:
        """ State 2 """
        # talk:31002000:Unh... Aahhh...
        call = t130600_x26(val1=7003102, z9=71300063, text23=31002000)
        assert GetEventStatus(71300063) == 1
    """ State 3 """
    # talk:31002100:Please answer me, master!
    t130600_x26(val1=7003102, z9=71300063, text23=31002100)

def t130600_x41(text1=31900000, text2=31900200, text3=31900250, text4=31910250, text5=31900900, text6=31900910,
                text7=31910400, text8=31910050, text9=31900400, flag1=70002035, flag2=71300074, flag3=71300072,
                flag4=71300075, z1=71300071, z2=71300070, z3=71300073, z4=71300076, goods1=9505):
    """ State 0,43 """
    if GetEventStatus(flag3) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 78 """
            assert t130600_x5(text1=text5, flag26=0, mode12=1)
            """ State 48 """
            SetEventState(flag4, 1)
            """ State 79 """
            assert t130600_x6(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 84 """
            assert t130600_x5(text1=text6, flag26=0, mode12=1)
            """ State 23 """
            SetEventState(flag3, 0)
        else:
            """ State 45,47 """
            if GetEventStatus(flag4) == 1:
                Goto('L1')
            else:
                """ State 46,49 """
                SetEventState(flag3, 0)
                """ State 1 """
                Label('L2')
                if GetEventStatus(flag1) == 1:
                    """ State 2,12 """
                    if not GetEventStatus(flag2):
                        """ State 50 """
                        if not GetEventStatus(70004000):
                            """ State 3,76 """
                            assert t130600_x5(text1=text1, flag26=0, mode12=1)
                        else:
                            """ State 4,77 """
                            assert t130600_x5(text1=text2, flag26=0, mode12=1)
                    else:
                        """ State 52,85 """
                        assert t130600_x5(text1=text3, flag26=0, mode12=1)
                    """ State 51 """
                    if not GetEventStatus(70004001):
                        """ State 53,5 """
                        c1110()
                        """ State 6 """
                        ClearTalkListData()
                        """ State 7 """
                        # action:14000003:Do nothing
                        AddTalkListData(2, 14000003, -1)
                        """ State 8 """
                        OpenConversationChoicesMenu(0)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 9,10 """
                    else:
                        """ State 11 """
                        if not GetEventStatus(50006990):
                            """ State 14,17 """
                            ClearTalkListData()
                            """ State 18 """
                            # action:14000002:Take coughed up blood sample
                            AddTalkListData(1, 14000002, -1)
                            # action:14000003:Do nothing
                            AddTalkListData(2, 14000003, -1)
                            """ State 19 """
                            OpenConversationChoicesMenu(0)
                            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                            """ State 20 """
                            if GetTalkListEntryResult() == 1:
                                """ State 24 """
                                SetEventState(flag3, 1)
                                Goto('L0')
                            else:
                                """ State 22 """
                                pass
                        else:
                            """ State 15 """
                            """ State 13 """
                            pass
                else:
                    """ State 39,40,90 """
                    return 1
    else:
        Goto('L2')
    """ State 54 """
    SetEventState(flag2, 1)
    """ State 89 """
    return 0

