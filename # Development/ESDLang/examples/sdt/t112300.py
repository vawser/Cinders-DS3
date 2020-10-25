# -*- coding: utf-8 -*-
def t112300_1():
    """ State 0,1 """
    t112300_x7(flag9=1439, flag10=1435, flag11=1436, val4=25, val5=10, val6=12, val7=20, val8=25, flag12=6001,
               val9=7003000, flag13=6000, flag14=6001, flag15=6000, flag16=6000, mode1=1, val10=1000000,
               val11=1000000, val12=1000000, mode2=0, mode3=1, mode4=0, val13=1000000, val14=1000000,
               mode5=0, flag17=6000, mode6=0)

def t112300_1000():
    """ State 0,2 """
    # talk:30900000:(Wheeze... wheeze... wheeze...), talk:30900100:(Wheeze... wheeze... wheeze...), talk:30900150:Right..., talk:30910050:(Pant... pant... pant...), talk:30910200:I'm taking a blood sample., talk:30910210:... Now to bring this to Lady Emma., talk:30910100:........., talk:30910000:Drink this..., talk:30900200:I can breathe easier now that the sickness is gone., goods:9504:Rot Essence: Charmed One
    call = t112300_x29(text5=30900000, text6=30900100, text7=30900150, text8=30910050, text9=30910200,
                       text10=30910210, text11=30910100, text12=30910000, text13=30900200, flag5=70002030,
                       flag6=71120184, flag7=71120182, flag8=71120185, z1=71120181, z2=71120180, z3=71120183,
                       z4=71120186, goods1=9504)
    def WhilePaused():
        c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
        c1117(1102001, -1)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 3 """
        assert t112300_x31()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112300_1001():
    """ State 0,2 """
    if GetEventStatus(11500690) == 1:
        pass
    elif not GetEventStatus(71120150):
        """ State 4 """
        # talk:30030550:I will mourn your passing...
        assert t112300_x5(text5=30030550, flag22=1, mode12=1)
    else:
        """ State 3 """
        # talk:30030500:Shinobi...
        assert t112300_x5(text5=30030500, flag22=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112300_1101():
    """ State 0,5 """
    if GetEventStatus(11500690) == 1:
        pass
    else:
        """ State 6 """
        if True:
            """ State 2 """
            if GetEventStatus(70002030) == 1:
                """ State 4,8 """
                # talk:30030000:   , talk:30030100:   
                assert (t112300_x30(text1=30030000, flag1=71300003, text2=30030100, flag2=71300004, text3=-1,
                        flag3=71300005, text4=-1, flag4=71300006))
            else:
                """ State 3,7 """
                # talk:30030000:   , talk:30030100:   , talk:30030200:Ugh, would you stop that?!, talk:30030300:Guh... Shinobi, what are you doing?!
                assert (t112300_x30(text1=30030000, flag1=71300003, text2=30030100, flag2=71300004, text3=30030200,
                        flag3=71300005, text4=30030300, flag4=71300006))
        elif GetEventStatus(8302) == 1 and GetEventStatus(71500197) == 1:
            pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112300_1102():
    """ State 0,2 """
    while True:
        if GetEventStatus(11500690) == 1:
            break
        elif not GetEventStatus(71500194):
            """ State 3,5 """
            # talk:30030400:I don't want to kill you...
            assert t112300_x3(text1=30030400, flag1=71500194, flag24=1, mode14=1)
    """ State 4 """
    while True:
        assert GetEventStatus(71500198) == 1 and not GetEventStatus(71500194)
        """ State 6 """
        # talk:30000550:The melody.... Give it back!!
        assert t112300_x3(text1=30000550, flag1=71500194, flag24=1, mode14=1)

def t112300_1103():
    """ State 0,2 """
    if GetEventStatus(11500690) == 1:
        pass
    elif not GetEventStatus(71120150):
        """ State 4 """
        # talk:30030650:   
        assert t112300_x5(text5=30030650, flag22=1, mode12=1)
    else:
        """ State 3 """
        # talk:30030600:   
        assert t112300_x5(text5=30030600, flag22=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112300_2000():
    """ State 0,3 """
    call = t112300_x33(val1=7003000, val2=7003001, val3=7003050)
    if call.Done():
        """ State 2 """
        c511(not DoesSelfHaveSpEffect(5450) and not GetEventStatus(11500690), 71300002, 1)
    elif GetEventStatus(8302) == 1 and GetEventStatus(71500197) == 1:
        """ State 4 """
        assert t112300_x33(val1=7003002, val2=7003003, val3=7003004)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t112300_x0(val1=_, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0, flag13=6000,
               val10=1000000, val11=1000000, val12=1000000, val13=_, val14=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t112300_x28(val1=val1, flag14=flag14, flag18=flag18, flag19=flag19, flag20=flag20, flag21=flag21,
                           mode7=mode7, flag13=flag13)
        if call.Done():
            break
        elif (not f116(-1) == val10 and not f116(-1) == val11 and not f116(-1) == val12 and not DoesSelfHaveSpEffect(4510)
              and not val10 == -1 and not f116(-1) == val13 and not f116(-1) == val14):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val10 or f116(-1) == val11 or f116(-1) == val12 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val13 and f116(-1) == val14))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val10 and not f116(-1) == val11 and not f116(-1) == val12 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val13 and not f116(-1) == val14):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t112300_x1():
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

def t112300_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t112300_x3(text1=_, flag1=_, flag24=1, mode14=1):
    """ State 0,7 """
    assert t112300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    if not flag24:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag24, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag24, 1)
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

def t112300_x4(text14=_, z6=_, flag23=0, mode13=1):
    """ State 0,7 """
    assert t112300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag23:
        """ State 1 """
        TalkToPlayer(text14, -1, -1, flag23, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text14, -1, -1, flag23, 1)
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
    SetEventState(z6, 1)
    """ State 8 """
    return 0

def t112300_x5(text5=_, flag22=_, mode12=1):
    """ State 0,6 """
    assert t112300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag22:
        """ State 1 """
        TalkToPlayer(text5, -1, -1, flag22, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text5, -1, -1, flag22, 1)
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

def t112300_x6(lot1=69900):
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

def t112300_x7(flag9=1439, flag10=1435, flag11=1436, val4=25, val5=10, val6=12, val7=20, val8=25, flag12=6001,
               val9=7003000, flag13=6000, flag14=6001, flag15=6000, flag16=6000, mode1=1, val10=1000000,
               val11=1000000, val12=1000000, mode2=0, mode3=1, mode4=0, val13=1000000, val14=1000000,
               mode5=0, flag17=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t112300_x8(val4=val4, val5=val5, val6=val6, val7=val7, val8=val8, flag12=flag12, val9=val9,
                          flag13=flag13, flag14=flag14, flag15=flag15, flag16=flag16, mode1=mode1, val10=val10,
                          val11=val11, val12=val12, mode2=mode2, mode3=mode3, mode4=mode4, val13=val13,
                          val14=val14, mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1) and not GetEventStatus(flag17):
            pass
        elif GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1:
            """ State 3 """
            call = t112300_x23(val5=val5, val6=val6)
            if CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag10) and not GetEventStatus(flag11):
                continue
        """ State 2 """
        call = t112300_x9(flag9=flag9, val5=val5, val6=val6)
        assert not CheckSelfDeath() and not GetEventStatus(flag9) and not DoesSelfHaveSpEffect(30100)

def t112300_x8(val4=25, val5=10, val6=12, val7=20, val8=25, flag12=6001, val9=7003000, flag13=6000, flag14=6001,
               flag15=6000, flag16=6000, mode1=1, val10=1000000, val11=1000000, val12=1000000, mode2=0,
               mode3=1, mode4=0, val13=1000000, val14=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t112300_x25(val9=val9, flag13=flag13, flag14=flag14, val10=val10, val11=val11, val12=val12,
                           val13=val13, val14=val14)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t112300_x10(val4=val4, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag16) == 1:
            Goto('L0')
        elif not GetEventStatus(flag12) and GetEventStatus(flag15) == 1 and GetDistanceToPlayer() < val7:
            """ State 3 """
            call = t112300_x11(val8=val8)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t112300_x12(val5=val5, val6=val6)

def t112300_x9(flag9=1439, val5=10, val6=12):
    """ State 0,1 """
    if GetEventStatus(flag9) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val5:
            """ State 4,6 """
            call = t112300_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val6:
                """ State 7 """
                assert t112300_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t112300_x10(val4=25, mode1=1, mode2=0, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t112300_x18(mode2=mode2, mode4=mode4)
    def WhilePaused():
        c1117(mode1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode3 == 1, 0.1)
        c5120(val4 == 1 and not mode1 and mode5 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t112300_x15()
    elif GetDistanceToPlayer() > val4:
        """ State 3 """
        assert t112300_x14()
    """ State 4 """
    return 0

def t112300_x11(val8=25):
    """ State 0,1 """
    call = t112300_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val8:
        """ State 2 """
        assert t112300_x1()
    """ State 3 """
    return 0

def t112300_x12(val5=10, val6=12):
    """ State 0,4 """
    assert t112300_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t112300_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t112300_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t112300_x13(val5=10, val6=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val5
    """ State 2 """
    call = t112300_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 3 """
        assert t112300_x1()
    """ State 4 """
    return 0

def t112300_x14():
    """ State 0,1 """
    assert t112300_x1()
    """ State 2 """
    return 0

def t112300_x15():
    """ State 0,2 """
    assert t112300_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t112300_x16(val5=10, val6=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val5
        """ State 3 """
        call = t112300_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val6:
            """ State 4 """
            assert t112300_x1()

def t112300_x17():
    """ State 0,1 """
    assert t112300_x19(z5=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112300_x18(mode2=0, mode4=0):
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
        assert t112300_x19(z5=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t112300_x19(z5=_, mode8=0, mode9=0, mode10=0, mode11=0):
    """ State 0,4 """
    if f118(z5) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z5)
        assert f117() == mode8 or f117() == mode9 or f117() == mode10 or f117() == mode11
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t112300_x20():
    """ State 0,1 """
    call = t112300_x19(z5=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t112300_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t112300_x21():
    """ State 0,2 """
    call = t112300_x19(z5=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t112300_x22():
    """ State 0,1 """
    assert t112300_x19(z5=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112300_x23(val5=10, val6=12):
    """ State 0,1 """
    while True:
        call = t112300_x16(val5=val5, val6=val6)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t112300_x26(val5=val5, val6=val6)
            assert not IsPlayerDead()
    """ State 2 """
    t112300_x13(val5=val5, val6=val6)

def t112300_x24():
    """ State 0,1 """
    assert t112300_x19(z5=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112300_x25(val9=7003000, flag13=6000, flag14=6001, val10=1000000, val11=1000000, val12=1000000,
                val13=1000000, val14=1000000):
    """ State 0,1 """
    call = t112300_x19(z5=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t112300_x0(val1=val9, flag14=flag14, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                mode7=0, flag13=flag13, val10=val10, val11=val11, val12=val12, val13=val13, val14=val14))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t112300_x26(val5=10, val6=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val5
    """ State 3 """
    call = t112300_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 2 """
        assert t112300_x1()
    """ State 4 """
    return 0

def t112300_x27():
    """ State 0,1 """
    assert t112300_x19(z5=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t112300_x28(val1=_, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0, flag13=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag14) == 1 or GetEventStatus(flag18) == 1 or GetEventStatus(flag19)
                == 1 or GetEventStatus(flag20) == 1 or GetEventStatus(flag21) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag13)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag14) and not GetEventStatus(flag18) and not GetEventStatus(flag19)
                  and not GetEventStatus(flag20) and not GetEventStatus(flag21)):
                Continue('mainloop')
            elif GetEventStatus(flag13) == 1:
                pass
            elif CheckActionButtonArea(val1 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t112300_x29(text5=30900000, text6=30900100, text7=30900150, text8=30910050, text9=30910200, text10=30910210,
                text11=30910100, text12=30910000, text13=30900200, flag5=70002030, flag6=71120184, flag7=71120182,
                flag8=71120185, z1=71120181, z2=71120180, z3=71120183, z4=71120186, goods1=9504):
    """ State 0,43 """
    if GetEventStatus(flag7) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t112300_x5(text5=text9, flag22=0, mode12=1)
            """ State 48 """
            SetEventState(flag8, 1)
            """ State 58 """
            assert t112300_x6(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t112300_x5(text5=text10, flag22=0, mode12=1)
            """ State 23 """
            SetEventState(flag7, 0)
        else:
            """ State 45,47 """
            if GetEventStatus(flag8) == 1:
                Goto('L1')
            else:
                """ State 46,49 """
                SetEventState(flag7, 0)
                """ State 1 """
                Label('L2')
                if GetEventStatus(flag5) == 1:
                    """ State 2,12 """
                    if not GetEventStatus(flag6):
                        """ State 50 """
                        if not GetEventStatus(70004000):
                            """ State 3,55 """
                            assert t112300_x5(text5=text5, flag22=0, mode12=1)
                        else:
                            """ State 4,56 """
                            assert t112300_x5(text5=text6, flag22=0, mode12=1)
                    else:
                        """ State 52,64 """
                        assert t112300_x5(text5=text7, flag22=0, mode12=1)
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
                                SetEventState(flag7, 1)
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
    SetEventState(flag6, 1)
    """ State 65 """
    return 0

def t112300_x30(text1=30030000, flag1=71300003, text2=30030100, flag2=71300004, text3=_, flag3=71300005,
                text4=_, flag4=71300006):
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
        assert t112300_x3(text1=text1, flag1=flag1, flag24=1, mode14=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t112300_x3(text1=text2, flag1=flag2, flag24=1, mode14=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t112300_x3(text1=text3, flag1=flag3, flag24=1, mode14=1)
    else:
        """ State 7 """
        assert t112300_x3(text1=text4, flag1=flag4, flag24=1, mode14=1)
    """ State 8 """
    return 0

def t112300_x31():
    """ State 0,28 """
    if GetEventStatus(11500690) == 1:
        """ State 29 """
        if GetEventStatus(8302) == 1 and GetEventStatus(71500197) == 1:
            """ State 41 """
            # talk:30000400:Why...
            assert t112300_x5(text5=30000400, flag22=0, mode12=1)
        else:
            """ State 42 """
            # talk:30000500:Why...
            assert t112300_x4(text14=30000500, z6=71500198, flag23=0, mode13=1)
    else:
        """ State 30 """
        assert f116(-1) == 1000000
        """ State 8 """
        if GetEventStatus(71120156) == 1:
            """ State 26,40 """
            call = t112300_x32()
            if call.Get() == 0:
                pass
            elif call.Done():
                """ State 27 """
                SetEventState(71120156, 0)
                """ State 1 """
                Label('L0')
                if not GetEventStatus(71120150):
                    """ State 31 """
                    # talk:30000000:Ahhh... Ahhh...
                    def WhilePaused():
                        c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
                    assert t112300_x5(text5=30000000, flag22=0, mode12=1)
                    """ State 2 """
                    ClearTalkListData()
                    """ State 3 """
                    # action:14030000:Greet him
                    AddTalkListData(1, 14030000, -1)
                    # action:14030001:Ignore him
                    AddTalkListData(2, 14030001, -1)
                    """ State 4 """
                    OpenConversationChoicesMenu(0)
                    def WhilePaused():
                        c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
                    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                    """ State 5 """
                    if GetTalkListEntryResult() == 1:
                        """ State 7 """
                        SetEventState(71120154, 1)
                        """ State 10 """
                        Label('L1')
                        if not DoesSelfHaveSpEffect(5450):
                            """ State 43 """
                            # talk:30010004:(Coughing)
                            def WhilePaused():
                                c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
                            assert t112300_x4(text14=30010004, z6=71120150, flag23=0, mode13=1)
                        else:
                            """ State 33 """
                            # talk:30010000:Hey.
                            def WhilePaused():
                                c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
                            assert t112300_x4(text14=30010000, z6=71120150, flag23=0, mode13=1)
                        """ State 12 """
                        SetEventState(71120154, 0)
                        Goto('L4')
                    elif GetTalkListEntryResult() == 2:
                        """ State 6 """
                        SetEventState(71120155, 1)
                        """ State 9 """
                        Label('L2')
                        """ State 32 """
                        # talk:30010100:.........
                        def WhilePaused():
                            c1120(1, 10, 9, 9, 9, 9, 9, 9, 9)
                        assert t112300_x5(text5=30010100, flag22=0, mode12=1)
                        """ State 11 """
                        SetEventState(71120155, 0)
                        Goto('L4')
                    else:
                        Goto('L4')
                else:
                    """ State 13 """
                    if not GetEventStatus(71500192):
                        """ State 14 """
                        if GetEventStatus(71120151) == 1:
                            """ State 35 """
                            # talk:30000200:Shinobi, have you heard the shamisen yet?
                            def WhilePaused():
                                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                            assert t112300_x5(text5=30000200, flag22=0, mode12=1)
                        else:
                            """ State 34 """
                            # talk:30000100:(Coughs) ... Shinobi... have you ever heard--
                            def WhilePaused():
                                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                            assert t112300_x5(text5=30000100, flag22=0, mode12=1)
                        """ State 15 """
                        ClearTalkListData()
                        """ State 36 """
                        call = t112300_x32()
                        if call.Get() == 0:
                            """ State 19 """
                            # action:14030002:Lure to Abandoned Dungeon
                            AddTalkListData(1, 14030002, -1)
                            # action:14030004:Don't mention Abandoned Dungeon
                            AddTalkListData(2, 14030004, -1)
                        elif call.Done():
                            """ State 16 """
                            # action:14030003:I have not
                            AddTalkListData(2, 14030003, -1)
                        """ State 17 """
                        OpenConversationChoicesMenu(0)
                        def WhilePaused():
                            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 18 """
                        if GetTalkListEntryResult() == 1:
                            """ State 22 """
                            SetEventState(71120156, 1)
                        elif GetTalkListEntryResult() == 2:
                            """ State 20 """
                            SetEventState(71120157, 1)
                            """ State 24 """
                            Label('L3')
                            """ State 37 """
                            # talk:30010200:I have not.
                            def WhilePaused():
                                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                            assert t112300_x4(text14=30010200, z6=71120151, flag23=0, mode13=1)
                            """ State 21 """
                            SetEventState(71120157, 0)
                            Goto('L4')
                        else:
                            Goto('L4')
                    else:
                        """ State 39 """
                        # talk:30000300:I have heard that the well is connected to that dungeon...
                        def WhilePaused():
                            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
                        assert t112300_x5(text5=30000300, flag22=0, mode12=1)
                        Goto('L4')
        elif GetEventStatus(71120157) == 1:
            Goto('L3')
        elif GetEventStatus(71120154) == 1:
            Goto('L1')
        elif GetEventStatus(71120155) == 1:
            Goto('L2')
        else:
            Goto('L0')
        """ State 25,38 """
        # talk:30010300:Try the abandoned dungeon.
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t112300_x4(text14=30010300, z6=71500192, flag23=0, mode13=1)
        """ State 23 """
        SetEventState(71120156, 0)
    """ State 44 """
    Label('L4')
    return 0

def t112300_x32():
    """ State 0,1 """
    if GetEventStatus(1479) == 1 or GetEventStatus(1475) == 1 or GetEventStatus(1476) == 1:
        pass
    else:
        """ State 2 """
        if not GetEventStatus(71300050) or not GetEventStatus(1460):
            pass
        else:
            """ State 3 """
            if not GetEventStatus(72009002):
                pass
            else:
                """ State 4 """
                if GetEventStatus(1459) == 1 or GetEventStatus(1455) == 1 or GetEventStatus(1456) == 1:
                    pass
                else:
                    Goto('L0')
            """ State 5 """
            return 0
    """ State 6 """
    Label('L0')
    return 1

def t112300_x33(val1=_, val2=_, val3=_):
    """ State 0,1 """
    Label('L0')
    call = t112300_x0(val1=val1, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0,
                      flag13=6000, val10=1000000, val11=1000000, val12=1000000, val13=-1, val14=-1)
    if call.Done():
        pass
    elif GetEventStatus(70002030) == 1:
        """ State 3 """
        Label('L1')
        call = t112300_x0(val1=val3, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                          mode7=0, flag13=6000, val10=1000000, val11=1000000, val12=1000000, val13=-1,
                          val14=-1)
        if call.Done():
            pass
        elif not GetEventStatus(70002030) and DoesPlayerHaveSpEffect(5450) == 1:
            """ State 2 """
            Label('L2')
            call = t112300_x0(val1=val2, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                              mode7=0, flag13=6000, val10=1000000, val11=1000000, val12=1000000, val13=-1,
                              val14=-1)
            if call.Done():
                pass
            elif GetEventStatus(70002030) == 1:
                Goto('L1')
            elif not DoesPlayerHaveSpEffect(5450):
                Goto('L0')
        elif not GetEventStatus(70002030) and not DoesPlayerHaveSpEffect(5450):
            Goto('L0')
    elif DoesPlayerHaveSpEffect(5450) == 1:
        Goto('L2')
    """ State 4 """
    return 0

