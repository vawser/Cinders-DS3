# -*- coding: utf-8 -*-
def t110181_1():
    """ State 0,1 """
    t110181_x6(flag7=1179, flag8=1175, flag9=1176, val1=5, val2=10, val3=12, val4=10, val5=12, flag10=6001,
               val6=7001800, flag11=71100301, flag12=6001, flag13=6000, flag14=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag15=6000, mode6=1)

def t110181_1000():
    """ State 0,2 """
    if GetEventStatus(1160) == 1:
        """ State 3 """
        if GetEventStatus(1139) == 1:
            """ State 7 """
            # talk:18130000:You... What are...
            assert t110181_x3(text10=18130000, z6=71100301, flag21=0, mode14=1)
            """ State 8 """
            assert t110181_x25(z3=-1, z4=1140000, val12=1140000, mode8=1, val13=5)
        else:
            """ State 4 """
            # talk:18900000:(Wheeze, wheeze, wheeze), talk:18900100:(Wheeze, wheeze, wheeze), talk:18900150:Forget about... me..., talk:18910150:(Wheezing), talk:18900800:I'm taking a blood sample., talk:18900810:... Now to bring this to Lady Emma., talk:18910200:........., talk:18910100:Drink..., talk:18900200:Hm...? Oh it's you..., goods:9510:Rot Essence: Fine Son
            call = t110181_x31(text1=18900000, text2=18900100, text3=18900150, text4=18910150, text5=18900800,
                               text6=18900810, text7=18910200, text8=18910100, text9=18900200, flag1=70002010,
                               flag2=71100334, flag3=71100332, flag4=71100335, z1=71100331, z2=71100330,
                               flag5=71100333, flag6=71100337, goods1=9510)
            def WhilePaused():
                c1117(1140002, -1)
            if call.Get() == 0:
                pass
            elif call.Done():
                """ State 6 """
                assert t110181_x29()
    else:
        """ State 5 """
        assert t110181_x30()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110181_x0(val6=7001800, flag12=6001, flag16=6000, flag17=6000, flag18=6000, flag19=6000, mode7=0,
               flag11=71100301, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110181_x28(val6=val6, flag12=flag12, flag16=flag16, flag17=flag17, flag18=flag18, flag19=flag19,
                           mode7=mode7, flag11=flag11)
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

def t110181_x1():
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

def t110181_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110181_x3(text10=_, z6=_, flag21=0, mode14=1):
    """ State 0,7 """
    assert t110181_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag21:
        """ State 1 """
        TalkToPlayer(text10, -1, -1, flag21, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text10, -1, -1, flag21, 1)
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
    SetEventState(z6, 1)
    """ State 8 """
    return 0

def t110181_x4(text1=_, flag20=0, mode13=1):
    """ State 0,6 """
    assert t110181_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
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
    """ State 3 """
    if not mode13:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110181_x5(lot1=69900):
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

def t110181_x6(flag7=1179, flag8=1175, flag9=1176, val1=5, val2=10, val3=12, val4=10, val5=12, flag10=6001,
               val6=7001800, flag11=71100301, flag12=6001, flag13=6000, flag14=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag15=6000, mode6=1):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110181_x7(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag10=flag10, val6=val6,
                          flag11=flag11, flag12=flag12, flag13=flag13, flag14=flag14, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag7) == 1) and not GetEventStatus(flag15):
            pass
        elif GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1:
            """ State 3 """
            call = t110181_x22(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag7) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag8) and not GetEventStatus(flag9):
                continue
        """ State 2 """
        call = t110181_x8(flag7=flag7, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag7) and not DoesSelfHaveSpEffect(30100)

def t110181_x7(val1=5, val2=10, val3=12, val4=10, val5=12, flag10=6001, val6=7001800, flag11=71100301,
               flag12=6001, flag13=6000, flag14=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000,
               mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=1):
    """ State 0,4 """
    while True:
        call = t110181_x24(val6=val6, flag11=flag11, flag12=flag12, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110181_x9(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag14) == 1:
            Goto('L0')
        elif not GetEventStatus(flag10) and GetEventStatus(flag13) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t110181_x10(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110181_x11(val2=val2, val3=val3)

def t110181_x8(flag7=1179, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag7) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110181_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110181_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110181_x9(val1=5, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110181_x17(mode2=mode2, mode4=mode4)
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
        assert t110181_x14()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110181_x13()
    """ State 4 """
    return 0

def t110181_x10(val5=12):
    """ State 0,1 """
    call = t110181_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110181_x1()
    """ State 3 """
    return 0

def t110181_x11(val2=10, val3=12):
    """ State 0,4 """
    assert t110181_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110181_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110181_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110181_x12(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110181_x21()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110181_x1()
    """ State 4 """
    return 0

def t110181_x13():
    """ State 0,1 """
    assert t110181_x1()
    """ State 2 """
    return 0

def t110181_x14():
    """ State 0,2 """
    assert t110181_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110181_x15(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110181_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110181_x1()

def t110181_x16():
    """ State 0,1 """
    assert t110181_x18(z5=1101, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110181_x17(mode2=1, mode4=0):
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
        assert t110181_x18(z5=1000, mode9=0, mode10=0, mode11=0, mode12=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110181_x18(z5=_, mode9=0, mode10=0, mode11=0, mode12=0):
    """ State 0,4 """
    if f118(z5) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z5)
        assert f117() == mode9 or f117() == mode10 or f117() == mode11 or f117() == mode12
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110181_x19():
    """ State 0,1 """
    call = t110181_x18(z5=1103, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110181_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110181_x20():
    """ State 0,2 """
    call = t110181_x18(z5=1102, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110181_x21():
    """ State 0,1 """
    assert t110181_x18(z5=1001, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110181_x22(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110181_x15(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110181_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110181_x12(val2=val2, val3=val3)

def t110181_x23():
    """ State 0,1 """
    assert t110181_x18(z5=1100, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110181_x24(val6=7001800, flag11=71100301, flag12=6001, val7=1000000, val8=1000000, val9=1000000,
                val10=1000000, val11=1000000):
    """ State 0,1 """
    call = t110181_x18(z5=2000, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110181_x0(val6=val6, flag12=flag12, flag16=6000, flag17=6000, flag18=6000, flag19=6000,
                mode7=0, flag11=flag11, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110181_x25(z3=-1, z4=1140000, val12=1140000, mode8=1, val13=5):
    """ State 0,1 """
    def WhilePaused():
        c1117(z4, z3)
    if f116(z3) == val12 and mode8 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val13:
        """ State 3 """
        return 1

def t110181_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110181_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110181_x1()
    """ State 4 """
    return 0

def t110181_x27():
    """ State 0,1 """
    assert t110181_x18(z5=1002, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110181_x28(val6=7001800, flag12=6001, flag16=6000, flag17=6000, flag18=6000, flag19=6000, mode7=0,
                flag11=71100301):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag12) == 1 or GetEventStatus(flag16) == 1 or GetEventStatus(flag17)
                == 1 or GetEventStatus(flag18) == 1 or GetEventStatus(flag19) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag11)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag12) and not GetEventStatus(flag16) and not GetEventStatus(flag17)
                  and not GetEventStatus(flag18) and not GetEventStatus(flag19)):
                Continue('mainloop')
            elif GetEventStatus(flag11) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t110181_x29():
    """ State 0,10 """
    if GetEventStatus(71100302) == 1:
        """ State 11 """
        Label('L0')
        if GetEventStatus(50006160) == 1:
            """ State 24 """
            # talk:18010300:Yes.
            assert t110181_x3(text10=18010300, z6=71100339, flag21=0, mode14=1)
        else:
            """ State 25 """
            # talk:18010000:Yes.
            assert t110181_x4(text1=18010000, flag20=0, mode13=1)
        """ State 13 """
        SetEventState(71100300, 1)
        """ State 14 """
        SetEventState(71100302, 0)
    elif GetEventStatus(71100303) == 1:
        """ State 12 """
        Label('L1')
        """ State 23 """
        # talk:18010100:.........
        assert t110181_x4(text1=18010100, flag20=0, mode13=1)
    else:
        """ State 1 """
        if not GetEventStatus(71100300):
            """ State 2,22 """
            # talk:18000000:(Shallow breathing)
            assert t110181_x4(text1=18000000, flag20=0, mode13=1)
            """ State 3 """
            ClearTalkListData()
            """ State 4 """
            def ExitPause():
                c1110()
            """ State 5 """
            # action:14018000:Answer
            AddTalkListData(1, 14018000, 6001)
            # action:14018001:Say nothing
            AddTalkListData(2, 14018001, 6001)
            """ State 6 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 7 """
            if GetTalkListEntryResult() == 1:
                """ State 8 """
                SetEventState(71100302, 1)
                Goto('L0')
            elif GetTalkListEntryResult() == 2:
                """ State 9 """
                SetEventState(71100302, 0)
                Goto('L1')
            else:
                pass
        else:
            """ State 15 """
            if GetEventStatus(70002005) == 1:
                """ State 16,26 """
                # talk:18900600:Ahhh... I can hear her wheezing.
                assert t110181_x4(text1=18900600, flag20=0, mode13=1)
            else:
                """ State 17,19 """
                if not GetEventStatus(50006160):
                    """ State 28 """
                    # talk:18000100:(Shallow breathing)
                    assert t110181_x4(text1=18000100, flag20=0, mode13=1)
                else:
                    """ State 20 """
                    if GetEventStatus(71100339) == -1:
                        """ State 21,29 """
                        # talk:18000300:(Shallow breathing)
                        assert t110181_x3(text10=18000300, z6=71100339, flag21=0, mode14=1)
                    else:
                        """ State 30 """
                        # talk:18000400: 
                        assert t110181_x4(text1=18000400, flag20=0, mode13=1)
    """ State 31 """
    return 0

def t110181_x30():
    """ State 0,1 """
    # talk:18000200:......Ahh... Mother.
    assert t110181_x3(text10=18000200, z6=71100301, flag21=0, mode14=1)
    """ State 2 """
    assert t110181_x25(z3=-1, z4=1140000, val12=1140000, mode8=1, val13=5)
    """ State 3 """
    return 0

def t110181_x31(text1=18900000, text2=18900100, text3=18900150, text4=18910150, text5=18900800, text6=18900810,
                text7=18910200, text8=18910100, text9=18900200, flag1=70002010, flag2=71100334, flag3=71100332,
                flag4=71100335, z1=71100331, z2=71100330, flag5=71100333, flag6=71100337, goods1=9510):
    """ State 0,43 """
    if GetEventStatus(flag3) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 63 """
            assert t110181_x4(text1=text5, flag20=0, mode13=1)
            """ State 48 """
            SetEventState(flag4, 1)
            """ State 64 """
            assert t110181_x5(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 69 """
            assert t110181_x4(text1=text6, flag20=0, mode13=1)
            """ State 23 """
            SetEventState(flag3, 0)
            """ State 54 """
            Label('L2')
            SetEventState(flag2, 1)
        else:
            """ State 45,47 """
            if GetEventStatus(flag4) == 1:
                Goto('L1')
            else:
                """ State 46,49 """
                SetEventState(flag3, 0)
                """ State 1 """
                Label('L3')
                if GetEventStatus(flag1) == 1:
                    """ State 2 """
                    if not GetEventStatus(flag5):
                        """ State 12 """
                        if not GetEventStatus(flag2):
                            """ State 50 """
                            if not GetEventStatus(70004000):
                                """ State 3,61 """
                                assert t110181_x4(text1=text1, flag20=0, mode13=1)
                            else:
                                """ State 4,62 """
                                assert t110181_x4(text1=text2, flag20=0, mode13=1)
                        else:
                            """ State 52,70 """
                            assert t110181_x4(text1=text3, flag20=0, mode13=1)
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
                            Goto('L2')
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
                                    Goto('L2')
                            else:
                                """ State 15,13 """
                                Goto('L2')
                    else:
                        """ State 38,67 """
                        assert t110181_x4(text1=text4, flag20=0, mode13=1)
                else:
                    """ State 39 """
                    if GetEventStatus(flag6) == 1:
                        """ State 41,68 """
                        assert t110181_x4(text1=text9, flag20=0, mode13=1)
                        """ State 42 """
                        SetEventState(flag6, 0)
                    else:
                        """ State 40,73 """
                        return 1
    else:
        Goto('L3')
    """ State 72 """
    return 0

