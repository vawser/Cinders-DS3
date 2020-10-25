# -*- coding: utf-8 -*-
def t110160_1():
    """ State 0,1 """
    t110160_x5(flag5=1139, flag6=1135, flag7=1136, val2=5, val3=10, val4=12, val5=10, val6=12, flag8=6001,
               val7=7001600, flag9=6000, flag10=6001, flag11=6000, flag12=6000, mode3=1, val8=1000000,
               val9=1000000, val10=1000000, mode4=1, mode5=1, mode6=0, val11=1000000, val12=1000000,
               mode7=0, flag13=6000, mode8=1)

def t110160_1000():
    """ State 0,2 """
    # talk:16900300:(Wheezing), talk:16900400:(Wheezing), talk:16900450:Pro-... tect..., talk:16910050:(Wheezing), talk:16900800:I'm taking a blood sample., talk:16900810:... Now to bring this to Lady Emma., talk:16910100:........., talk:16910000:Here..., talk:16900500:Ohh... Inosuke..., goods:9515:Rot Essence: Timid Maid
    call = t110160_x27(text1=16900300, text2=16900400, text3=16900450, text4=16910050, text5=16900800,
                       text6=16900810, text7=16910100, text8=16910000, text9=16900500, flag1=70002005,
                       flag2=71100184, flag3=71100182, flag4=71100185, z3=71100181, z4=71100180, z5=71100183,
                       z6=71100187, goods1=9515)
    def WhilePaused():
        c1117(1111004, -1)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 3 """
        assert t110160_x29()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110160_2000():
    """ State 0,3 """
    assert (t110160_x0(val7=7001600, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
            mode9=0, flag9=6000, val8=1000000, val9=1000000, val10=1000000, val11=1000000, val12=1000000))
    """ State 2 """
    c511(not DoesSelfHaveSpEffect(5450), 71100190, 1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110160_x0(val7=7001600, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode9=0,
               flag9=6000, val8=1000000, val9=1000000, val10=1000000, val11=1000000, val12=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110160_x26(val7=val7, flag10=flag10, flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17,
                           mode9=mode9, flag9=flag9)
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

def t110160_x1():
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

def t110160_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110160_x3(text1=_, flag18=0, mode14=1):
    """ State 0,6 """
    assert t110160_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag18:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag18, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag18, 1)
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

def t110160_x4(lot1=_):
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

def t110160_x5(flag5=1139, flag6=1135, flag7=1136, val2=5, val3=10, val4=12, val5=10, val6=12, flag8=6001,
               val7=7001600, flag9=6000, flag10=6001, flag11=6000, flag12=6000, mode3=1, val8=1000000,
               val9=1000000, val10=1000000, mode4=1, mode5=1, mode6=0, val11=1000000, val12=1000000,
               mode7=0, flag13=6000, mode8=1):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110160_x6(val2=val2, val3=val3, val4=val4, val5=val5, val6=val6, flag8=flag8, val7=val7,
                          flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12, mode3=mode3, val8=val8,
                          val9=val9, val10=val10, mode4=mode4, mode5=mode5, mode6=mode6, val11=val11,
                          val12=val12, mode7=mode7, mode8=mode8)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1) and not GetEventStatus(flag13):
            pass
        elif GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1:
            """ State 3 """
            call = t110160_x21(val3=val3, val4=val4)
            if CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag6) and not GetEventStatus(flag7):
                continue
        """ State 2 """
        call = t110160_x7(flag5=flag5, val3=val3, val4=val4)
        assert not CheckSelfDeath() and not GetEventStatus(flag5) and not DoesSelfHaveSpEffect(30100)

def t110160_x6(val2=5, val3=10, val4=12, val5=10, val6=12, flag8=6001, val7=7001600, flag9=6000, flag10=6001,
               flag11=6000, flag12=6000, mode3=1, val8=1000000, val9=1000000, val10=1000000, mode4=1,
               mode5=1, mode6=0, val11=1000000, val12=1000000, mode7=0, mode8=1):
    """ State 0,4 """
    while True:
        call = t110160_x23(val7=val7, flag9=flag9, flag10=flag10, val8=val8, val9=val9, val10=val10,
                           val11=val11, val12=val12)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110160_x8(val2=val2, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6, mode7=mode7)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode8 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode8 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag12) == 1:
            Goto('L0')
        elif not GetEventStatus(flag8) and GetEventStatus(flag11) == 1 and GetDistanceToPlayer() < val5:
            """ State 3 """
            call = t110160_x9(val6=val6)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode8 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110160_x10(val3=val3, val4=val4)

def t110160_x7(flag5=1139, val3=10, val4=12):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val3:
            """ State 4,6 """
            call = t110160_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val4:
                """ State 7 """
                assert t110160_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110160_x8(val2=5, mode3=1, mode4=1, mode5=1, mode6=0, mode7=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110160_x16(mode4=mode4, mode6=mode6)
    def WhilePaused():
        c1117(mode3, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode5 == 1, 0.1)
        c5120(val2 == 1 and not mode3 and mode7 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t110160_x13()
    elif GetDistanceToPlayer() > val2:
        """ State 3 """
        assert t110160_x12()
    """ State 4 """
    return 0

def t110160_x9(val6=12):
    """ State 0,1 """
    call = t110160_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val6:
        """ State 2 """
        assert t110160_x1()
    """ State 3 """
    return 0

def t110160_x10(val3=10, val4=12):
    """ State 0,4 """
    assert t110160_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110160_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110160_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110160_x11(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 2 """
    call = t110160_x20()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 3 """
        assert t110160_x1()
    """ State 4 """
    return 0

def t110160_x12():
    """ State 0,1 """
    assert t110160_x1()
    """ State 2 """
    return 0

def t110160_x13():
    """ State 0,2 """
    assert t110160_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110160_x14(val3=10, val4=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val3
        """ State 3 """
        call = t110160_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val4:
            """ State 4 """
            assert t110160_x1()

def t110160_x15():
    """ State 0,1 """
    assert t110160_x17(z7=1101, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110160_x16(mode4=1, mode6=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode4 == 1 and not mode6, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode4 == 1 and mode6 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t110160_x17(z7=1000, mode10=0, mode11=0, mode12=0, mode13=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110160_x17(z7=_, mode10=0, mode11=0, mode12=0, mode13=0):
    """ State 0,4 """
    if f118(z7) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z7)
        assert f117() == mode10 or f117() == mode11 or f117() == mode12 or f117() == mode13
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110160_x18():
    """ State 0,1 """
    call = t110160_x17(z7=1103, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110160_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110160_x19():
    """ State 0,2 """
    call = t110160_x17(z7=1102, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110160_x20():
    """ State 0,1 """
    assert t110160_x17(z7=1001, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110160_x21(val3=10, val4=12):
    """ State 0,1 """
    while True:
        call = t110160_x14(val3=val3, val4=val4)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110160_x24(val3=val3, val4=val4)
            assert not IsPlayerDead()
    """ State 2 """
    t110160_x11(val3=val3, val4=val4)

def t110160_x22():
    """ State 0,1 """
    assert t110160_x17(z7=1100, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110160_x23(val7=7001600, flag9=6000, flag10=6001, val8=1000000, val9=1000000, val10=1000000, val11=1000000,
                val12=1000000):
    """ State 0,1 """
    call = t110160_x17(z7=2000, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110160_x0(val7=val7, flag10=flag10, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode9=0, flag9=flag9, val8=val8, val9=val9, val10=val10, val11=val11, val12=val12))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110160_x24(val3=10, val4=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val3
    """ State 3 """
    call = t110160_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val4:
        """ State 2 """
        assert t110160_x1()
    """ State 4 """
    return 0

def t110160_x25():
    """ State 0,1 """
    assert t110160_x17(z7=1002, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110160_x26(val7=7001600, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode9=0,
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
            elif CheckActionButtonArea(val7 + mode9) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t110160_x27(text1=16900300, text2=16900400, text3=16900450, text4=16910050, text5=16900800, text6=16900810,
                text7=16910100, text8=16910000, text9=16900500, flag1=70002005, flag2=71100184, flag3=71100182,
                flag4=71100185, z3=71100181, z4=71100180, z5=71100183, z6=71100187, goods1=9515):
    """ State 0,43 """
    if GetEventStatus(flag3) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t110160_x3(text1=text5, flag18=0, mode14=1)
            """ State 48 """
            SetEventState(flag4, 1)
            """ State 58 """
            assert t110160_x4(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t110160_x3(text1=text6, flag18=0, mode14=1)
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
                            """ State 3,55 """
                            assert t110160_x3(text1=text1, flag18=0, mode14=1)
                        else:
                            """ State 4,56 """
                            assert t110160_x3(text1=text2, flag18=0, mode14=1)
                    else:
                        """ State 52,64 """
                        assert t110160_x3(text1=text3, flag18=0, mode14=1)
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
                    """ State 39,40,66 """
                    return 1
    else:
        Goto('L2')
    """ State 54 """
    SetEventState(flag2, 1)
    """ State 65 """
    return 0

def t110160_x28(z1=-1, z2=20003, val1=1111000, mode1=1, mode2=1):
    """ State 0,1 """
    TurnCharacterToFaceEntity(z2, -1, 10000)
    if f116(z1) == val1 and mode1 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > mode2:
        """ State 3 """
        return 1

def t110160_x29():
    """ State 0,20 """
    assert f116(-1) == 1000000
    """ State 3 """
    if GetEventStatus(71100150) == 1:
        """ State 11 """
        Label('L0')
        """ State 23 """
        # talk:16000100:I am not your son.
        assert t110160_x3(text1=16000100, flag18=0, mode14=1)
        """ State 24 """
        Label('L1')
        assert t110160_x28(z1=-1, z2=20003, val1=1111000, mode1=1, mode2=1)
        """ State 12 """
        assert GetCurrentStateElapsedTime() > 2
        """ State 14 """
        SetEventState(71100152, 1)
        SetEventState(71100155, 1)
        """ State 25 """
        assert t110160_x4(lot1=61600) and not f116(-1) == 1111000
        """ State 13 """
        SetEventState(71100151, 0)
        SetEventState(71100150, 0)
    elif GetEventStatus(71100151) == 1:
        """ State 10 """
        Label('L2')
        """ State 22 """
        # talk:16000200:.........
        assert t110160_x3(text1=16000200, flag18=0, mode14=1)
        Goto('L1')
    else:
        """ State 1 """
        if not GetEventStatus(71100152):
            """ State 2,21 """
            # talk:16000000:Oh... is that you, Inosuke?
            assert t110160_x3(text1=16000000, flag18=0, mode14=1)
            """ State 4 """
            ClearTalkListData()
            """ State 5 """
            # action:14016000:I'm not your son
            AddTalkListData(1, 14016000, -1)
            # action:14016001:Say nothing
            AddTalkListData(2, 14016001, -1)
            """ State 6 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 7 """
            if GetTalkListEntryResult() == 1:
                """ State 8 """
                SetEventState(71100150, 1)
                Goto('L0')
            elif GetTalkListEntryResult() == 2:
                """ State 9 """
                SetEventState(71100151, 1)
                Goto('L2')
            else:
                pass
        else:
            """ State 15 """
            if not GetEventStatus(1179) and GetEventStatus(70002010) == 1:
                """ State 16,26 """
                # talk:16900600:Ohhh, Inosuke...
                assert t110160_x3(text1=16900600, flag18=0, mode14=1)
            else:
                """ State 17,19 """
                if not GetEventStatus(132):
                    """ State 28 """
                    # talk:16000300:Inosuke, my son.
                    assert t110160_x3(text1=16000300, flag18=0, mode14=1)
                else:
                    """ State 29 """
                    # talk:16000400:Inosuke, my son.
                    assert t110160_x3(text1=16000400, flag18=0, mode14=1)
    """ State 30 """
    return 0

