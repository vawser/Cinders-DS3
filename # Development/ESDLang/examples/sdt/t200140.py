# -*- coding: utf-8 -*-
def t200140_1():
    """ State 0,1 """
    t200140_x7(flag9=1399, flag10=1395, flag11=1396, val1=5, val2=10, val3=12, val4=10, val5=12, flag12=6001,
               val6=7001401, flag13=6000, flag14=6001, flag15=6000, flag16=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag17=6000, mode6=0)

def t200140_1000():
    """ State 0,3 """
    assert f116(-1) == 1000000
    """ State 6 """
    # talk:14901000:(Wheeze... Wheeze...) Look who it is., talk:14901010:(Wheeze... Wheeze...) Look who it is., talk:14901050:(Wheeze... Wheeze...), talk:14901150:(wheezing), talk:14901300:I'm taking a blood sample., talk:14901310:... Now to bring this to Lady Emma., talk:14901200:........., talk:14901100:Drink..., talk:14901400:Well, if it isn't my favourite customer., goods:9502:Rot Essence: Black Hat
    call = t200140_x29(text5=14901000, text6=14901010, text7=14901050, text8=14901150, text9=14901300,
                       text10=14901310, text11=14901200, text12=14901100, text13=14901400, flag5=70002045,
                       flag6=71110334, flag7=71110332, flag8=71110335, z1=71110331, z2=71110330, z3=71110333,
                       z4=71110336, goods1=9502)
    def WhilePaused():
        c5117(GetEventStatus(70002045) == 1, 1136002, -1)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 2 """
        if GetEventStatus(1381) == 1:
            """ State 4 """
            assert t200140_x32()
        elif GetEventStatus(1382) == 1:
            """ State 5 """
            assert t200140_x31()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200140_1001():
    """ State 0,2 """
    # talk:14160500:No different from the rest... 
    assert t200140_x5(text5=14160500, flag22=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200140_1101():
    """ State 0,2 """
    if GetEventStatus(70002045) == 1:
        """ State 4,6 """
        # talk:14160000:Whoa!, talk:14160100:Gyaa!
        assert (t200140_x30(text1=14160000, flag1=71110346, text2=14160100, flag2=71110347, text3=-1,
                flag3=71110348, text4=-1, flag4=71110349))
    else:
        """ State 3,5 """
        # talk:14160000:Whoa!, talk:14160100:Gyaa!, talk:14160200:Damn you!, talk:14160300:That stings, you moron!
        assert (t200140_x30(text1=14160000, flag1=71110346, text2=14160100, flag2=71110347, text3=14160200,
                flag3=71110348, text4=14160300, flag4=71110349))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200140_1102():
    """ State 0,2 """
    if not GetEventStatus(71110343):
        """ State 3,5 """
        # talk:14160400:Well, well... 
        assert t200140_x4(text14=14160400, z6=71110343, flag23=1, mode13=1)
    else:
        """ State 4 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200140_1103():
    """ State 0,2 """
    # talk:14160600:Ughhhhh...
    assert t200140_x5(text5=14160600, flag22=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200140_2000():
    """ State 0,4 """
    while True:
        call = t200140_x0(val6=7001401, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                          mode7=0, flag13=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                          val11=1000000)
        if call.Done():
            break
        elif GetEventStatus(1382) == 1 and not GetEventStatus(1381):
            """ State 5 """
            call = t200140_x0(val6=7001401, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                              mode7=0, flag13=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                              val11=1000000)
            if call.Done():
                """ State 2 """
                pass
            elif GetEventStatus(1381) == 1 and not GetEventStatus(1382):
                continue
        """ State 1 """
        Label('L0')
        def WhilePaused():
            c1119(0)
        Quit()
    """ State 3 """
    c511(not GetEventStatus(70002045), 72000207, 1)
    Goto('L0')

def t200140_x0(val6=7001401, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0,
               flag13=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t200140_x28(val6=val6, flag14=flag14, flag18=flag18, flag19=flag19, flag20=flag20, flag21=flag21,
                           mode7=mode7, flag13=flag13)
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

def t200140_x1():
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

def t200140_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t200140_x3(text1=_, flag1=_, flag24=1, mode14=1):
    """ State 0,7 """
    assert t200140_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t200140_x4(text14=_, z6=_, flag23=_, mode13=1):
    """ State 0,7 """
    assert t200140_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t200140_x5(text5=_, flag22=_, mode12=1):
    """ State 0,6 """
    assert t200140_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t200140_x6(lot1=69900):
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

def t200140_x7(flag9=1399, flag10=1395, flag11=1396, val1=5, val2=10, val3=12, val4=10, val5=12, flag12=6001,
               val6=7001401, flag13=6000, flag14=6001, flag15=6000, flag16=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag17=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t200140_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag12=flag12, val6=val6,
                          flag13=flag13, flag14=flag14, flag15=flag15, flag16=flag16, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1) and not GetEventStatus(flag17):
            pass
        elif GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1:
            """ State 3 """
            call = t200140_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag10) and not GetEventStatus(flag11):
                continue
        """ State 2 """
        call = t200140_x9(flag9=flag9, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag9) and not DoesSelfHaveSpEffect(30100)

def t200140_x8(val1=5, val2=10, val3=12, val4=10, val5=12, flag12=6001, val6=7001401, flag13=6000, flag14=6001,
               flag15=6000, flag16=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1,
               mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t200140_x25(val6=val6, flag13=flag13, flag14=flag14, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t200140_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
        elif not GetEventStatus(flag12) and GetEventStatus(flag15) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t200140_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t200140_x12(val2=val2, val3=val3)

def t200140_x9(flag9=1399, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag9) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t200140_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t200140_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t200140_x10(val1=5, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t200140_x18(mode2=mode2, mode4=mode4)
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
        assert t200140_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t200140_x14()
    """ State 4 """
    return 0

def t200140_x11(val5=12):
    """ State 0,1 """
    call = t200140_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t200140_x1()
    """ State 3 """
    return 0

def t200140_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t200140_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t200140_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t200140_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t200140_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t200140_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t200140_x1()
    """ State 4 """
    return 0

def t200140_x14():
    """ State 0,1 """
    assert t200140_x1()
    """ State 2 """
    return 0

def t200140_x15():
    """ State 0,2 """
    assert t200140_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t200140_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t200140_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t200140_x1()

def t200140_x17():
    """ State 0,1 """
    assert t200140_x19(z5=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200140_x18(mode2=1, mode4=0):
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
        assert t200140_x19(z5=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t200140_x19(z5=_, mode8=0, mode9=0, mode10=0, mode11=0):
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

def t200140_x20():
    """ State 0,1 """
    call = t200140_x19(z5=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t200140_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t200140_x21():
    """ State 0,2 """
    call = t200140_x19(z5=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t200140_x22():
    """ State 0,1 """
    assert t200140_x19(z5=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200140_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t200140_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t200140_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t200140_x13(val2=val2, val3=val3)

def t200140_x24():
    """ State 0,1 """
    assert t200140_x19(z5=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200140_x25(val6=7001401, flag13=6000, flag14=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t200140_x19(z5=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t200140_x0(val6=val6, flag14=flag14, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                mode7=0, flag13=flag13, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t200140_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t200140_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t200140_x1()
    """ State 4 """
    return 0

def t200140_x27():
    """ State 0,1 """
    assert t200140_x19(z5=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200140_x28(val6=7001401, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0,
                flag13=6000):
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
            elif CheckActionButtonArea(val6 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t200140_x29(text5=14901000, text6=14901010, text7=14901050, text8=14901150, text9=14901300, text10=14901310,
                text11=14901200, text12=14901100, text13=14901400, flag5=70002045, flag6=71110334, flag7=71110332,
                flag8=71110335, z1=71110331, z2=71110330, z3=71110333, z4=71110336, goods1=9502):
    """ State 0,43 """
    if GetEventStatus(flag7) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t200140_x5(text5=text9, flag22=0, mode12=1)
            """ State 48 """
            SetEventState(flag8, 1)
            """ State 58 """
            assert t200140_x6(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t200140_x5(text5=text10, flag22=0, mode12=1)
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
                            assert t200140_x5(text5=text5, flag22=0, mode12=1)
                        else:
                            """ State 4,56 """
                            assert t200140_x5(text5=text6, flag22=0, mode12=1)
                    else:
                        """ State 52,64 """
                        assert t200140_x5(text5=text7, flag22=0, mode12=1)
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

def t200140_x30(text1=14160000, flag1=71110346, text2=14160100, flag2=71110347, text3=_, flag3=71110348,
                text4=_, flag4=71110349):
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
        assert t200140_x3(text1=text1, flag1=flag1, flag24=1, mode14=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t200140_x3(text1=text2, flag1=flag2, flag24=1, mode14=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t200140_x3(text1=text3, flag1=flag3, flag24=1, mode14=1)
    else:
        """ State 7 """
        assert t200140_x3(text1=text4, flag1=flag4, flag24=1, mode14=1)
    """ State 8 """
    return 0

def t200140_x31():
    """ State 0,1 """
    if not GetEventStatus(72000202):
        """ State 2,4 """
        # talk:14200500:Well, well, if it isn't old chuckles.
        assert t200140_x4(text14=14200500, z6=72000202, flag23=0, mode13=1)
    else:
        """ State 3,5 """
        # talk:14200600:Well... That takes care of my business here. I owe you one.
        assert t200140_x5(text5=14200600, flag22=0, mode12=1)
    """ State 6 """
    return 0

def t200140_x32():
    """ State 0,2 """
    if GetEventStatus(72000203) == 1:
        """ State 18 """
        Label('L0')
        """ State 35 """
        # talk:14210000:.........
        assert t200140_x5(text5=14210000, flag22=0, mode12=1)
        """ State 20 """
        Label('L1')
        SetEventState(72000204, 0)
        SetEventState(72000203, 0)
    elif GetEventStatus(72000204) == 1:
        """ State 19 """
        Label('L2')
        """ State 36 """
        # talk:14210100:An old lady was saying,
        assert t200140_x5(text5=14210100, flag22=0, mode12=1)
        Goto('L1')
    else:
        """ State 1 """
        if GetEventStatus(12000290) == 1:
            """ State 3 """
            if not GetEventStatus(72000200):
                """ State 27 """
                if not GetEventStatus(71110300):
                    """ State 28,40 """
                    # talk:14200070:Huh? You're a shinobi, right?
                    assert t200140_x5(text5=14200070, flag22=0, mode12=1)
                    """ State 31 """
                    SetEventState(71110300, 1)
                else:
                    """ State 29,41 """
                    # talk:14200060:Huh? So you made it out this way, too.
                    assert t200140_x5(text5=14200060, flag22=0, mode12=1)
                """ State 30 """
                SetEventState(72000200, 1)
                Goto('L4')
            else:
                """ State 26,25 """
                if not GetEventStatus(72000201):
                    """ State 21,37 """
                    # talk:14200200:Heheh. The Puppeteer Technique, huh?
                    assert t200140_x4(text14=14200200, z6=72000201, flag23=0, mode13=1)
                    Goto('L4')
                else:
                    """ State 22,38 """
                    # talk:14200300:Heheh... That Puppeteer Technique of yours really is something.
                    assert t200140_x5(text5=14200300, flag22=0, mode12=1)
                    Goto('L4')
            """ State 9 """
            Label('L3')
            SetEventState(72000200, 1)
        else:
            """ State 4 """
            if not GetEventStatus(72000200):
                """ State 5 """
                if not GetEventStatus(71110300):
                    """ State 7,32 """
                    # talk:14200030:Huh? You're a shinobi, right?
                    assert t200140_x5(text5=14200030, flag22=0, mode12=1)
                    """ State 23 """
                    SetEventState(71110300, 1)
                    Goto('L3')
                else:
                    """ State 8,33 """
                    # talk:14200000:Huh? So you made it out this way, too.
                    assert t200140_x5(text5=14200000, flag22=0, mode12=1)
                    Goto('L3')
            else:
                """ State 6,34 """
                # talk:14200100:You see over there...?\nI'm tryin to figure a way to get to the other side...
                assert t200140_x5(text5=14200100, flag22=0, mode12=1)
                """ State 11 """
                def ExitPause():
                    c1110()
                """ State 10 """
                ClearTalkListData()
                """ State 12 """
                # action:14014003:I have an idea
                AddTalkListData(2, 14014003, 72000100)
                # action:14014002:Say nothing
                AddTalkListData(1, 14014002, 6001)
                """ State 13 """
                OpenConversationChoicesMenu(0)
                assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """ State 14 """
                if GetTalkListEntryResult() == 1:
                    """ State 15 """
                    SetEventState(72000203, 1)
                    Goto('L0')
                elif GetTalkListEntryResult() == 2:
                    """ State 16 """
                    SetEventState(72000204, 1)
                    Goto('L2')
                else:
                    """ State 17 """
                    pass
    """ State 42 """
    Label('L4')
    return 0

