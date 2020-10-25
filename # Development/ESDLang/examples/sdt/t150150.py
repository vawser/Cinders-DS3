# -*- coding: utf-8 -*-
def t150150_1():
    """ State 0,1 """
    t150150_x6(flag1=11500690, flag2=11505722, flag3=1576, val1=5, val2=15, val3=25, val4=28, val5=30,
               flag4=6000, val6=7001500, flag5=6000, flag6=6001, flag7=71500220, flag8=6000, mode1=1,
               val7=1000000, val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000,
               mode5=0, flag9=6000, mode6=0)

def t150150_1000():
    """ State 0,9 """
    if GetEventStatus(71500202) == 1:
        """ State 5 """
        Label('L0')
        """ State 25 """
        # talk:15010100:I don't know.
        assert t150150_x4(text2=15010100, z2=71500209, flag15=0, mode13=1)
        """ State 17 """
        SetEventState(71500202, 0)
        """ State 19 """
        Label('L1')
        SetEventState(11505725, 1)
    elif GetEventStatus(71500203) == 1:
        """ State 6 """
        Label('L2')
        """ State 26 """
        # talk:15010200:.........
        assert t150150_x4(text2=15010200, z2=71500210, flag15=0, mode13=1)
        """ State 18 """
        SetEventState(71500203, 0)
        Goto('L1')
    elif GetEventStatus(71500200) == 1:
        """ State 2 """
        Label('L3')
        """ State 22 """
        # talk:15010000:Why are you crying?
        assert t150150_x4(text2=15010000, z2=71500208, flag15=0, mode13=1)
        """ State 24 """
        # action:14015002:I don't know, action:14015003:Say nothing
        call = t150150_x28(action1=14015002, action2=14015003)
        if call.Get() == 0:
            """ State 13 """
            SetEventState(71500200, 0)
            """ State 14 """
            SetEventState(71500202, 1)
            Goto('L0')
        elif call.Get() == 1:
            """ State 15 """
            SetEventState(71500200, 0)
            """ State 16 """
            SetEventState(71500203, 1)
            Goto('L2')
        elif call.Get() == 2:
            """ State 8 """
            pass
    elif GetEventStatus(71500201) == 1:
        """ State 4 """
        Label('L4')
        """ State 23 """
        # talk:15010300:.........
        assert t150150_x4(text2=15010300, z2=71500213, flag15=0, mode13=1)
        """ State 12 """
        SetEventState(71500201, 0)
        SetEventState(71500215, 0)
    else:
        """ State 3,20 """
        # talk:15000100:(Crying)
        assert t150150_x5(text1=15000100, flag14=0, mode12=1)
        """ State 21 """
        # action:14015000:Ask why she cries, action:14015001:Say nothing
        call = t150150_x28(action1=14015000, action2=14015001)
        if call.Get() == 0:
            """ State 10 """
            SetEventState(71500200, 1)
            SetEventState(71500215, 1)
            Goto('L3')
        elif call.Get() == 1:
            """ State 11 """
            SetEventState(71500201, 1)
            SetEventState(71500215, 1)
            Goto('L4')
        elif call.Get() == 2:
            """ State 7 """
            pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150150_1001():
    """ State 0,2 """
    # talk:15030300:Why would you hide him from me?!
    assert t150150_x5(text1=15030300, flag14=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150150_1100():
    """ State 0,2 """
    SetEventState(71500220, 0)
    """ State 3 """
    call = t150150_x29()
    if call.Done():
        pass
    elif GetDistanceToPlayer() < 3:
        """ State 4 """
        assert t150150_x1()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150150_1102():
    """ State 0,1 """
    if GetEventStatus(11505724) == 1 and not GetEventStatus(71500212):
        """ State 2,7 """
        # talk:15060300:You pretend not to see me...?
        call = t150150_x3(text3=15060300, z3=71500212, flag16=1, mode14=1)
        if call.Done():
            """ State 4 """
            Label('L0')
            assert f120() - f121() == 1
        elif f120() - f121() == 1:
            """ State 10 """
            Label('L1')
            assert t150150_x1()
    elif GetEventStatus(11505723) == 1 and not GetEventStatus(71500207):
        """ State 3,8 """
        # talk:15030000:   
        call = t150150_x3(text3=15030000, z3=71500207, flag16=1, mode14=1)
        if call.Done():
            Goto('L0')
        elif f120() - f121() == 1:
            Goto('L1')
    elif GetEventStatus(11505725) == 1:
        Goto('L0')
    """ State 6 """
    assert GetCurrentStateElapsedTime() > 3.5
    """ State 9 """
    # talk:15030100:Ohh, Lord Sakuza...
    assert t150150_x3(text3=15030100, z3=71500214, flag16=1, mode14=1)
    """ State 5 """

def t150150_1103():
    """ State 0,3 """
    assert GetEventStatus(11500690) == 1 or GetEventStatus(11507690) == 1
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetEventStatus(1422) == 1:
        """ State 5 """
        # talk:15030200:Ohhh... I'm so glad.
        assert t150150_x5(text1=15030200, flag14=1, mode12=1)
    else:
        """ State 6 """
        # talk:15060400:Uwaaah!
        assert t150150_x5(text1=15060400, flag14=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150150_x0(val6=7001500, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0,
               flag5=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t150150_x27(val6=val6, flag6=flag6, flag10=flag10, flag11=flag11, flag12=flag12, flag13=flag13,
                           mode7=mode7, flag5=flag5)
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

def t150150_x1():
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

def t150150_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t150150_x3(text3=_, z3=_, flag16=1, mode14=1):
    """ State 0,7 """
    assert t150150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t150150_x4(text2=_, z2=_, flag15=0, mode13=1):
    """ State 0,7 """
    assert t150150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t150150_x5(text1=_, flag14=_, mode12=1):
    """ State 0,6 """
    assert t150150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t150150_x6(flag1=11500690, flag2=11505722, flag3=1576, val1=5, val2=15, val3=25, val4=28, val5=30,
               flag4=6000, val6=7001500, flag5=6000, flag6=6001, flag7=71500220, flag8=6000, mode1=1,
               val7=1000000, val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000,
               mode5=0, flag9=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t150150_x7(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1) and not GetEventStatus(flag9):
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t150150_x22(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t150150_x8(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t150150_x7(val1=5, val2=15, val3=25, val4=28, val5=30, flag4=6000, val6=7001500, flag5=6000, flag6=6001,
               flag7=71500220, flag8=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1,
               mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t150150_x24(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t150150_x9(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
            call = t150150_x10(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t150150_x11(val2=val2, val3=val3)

def t150150_x8(flag1=11500690, val2=15, val3=25):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t150150_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t150150_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t150150_x9(val1=5, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t150150_x17(mode2=mode2, mode4=mode4)
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
        assert t150150_x14()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t150150_x13()
    """ State 4 """
    return 0

def t150150_x10(val5=30):
    """ State 0,1 """
    call = t150150_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t150150_x1()
    """ State 3 """
    return 0

def t150150_x11(val2=15, val3=25):
    """ State 0,4 """
    assert t150150_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t150150_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t150150_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t150150_x12(val2=15, val3=25):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t150150_x21()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t150150_x1()
    """ State 4 """
    return 0

def t150150_x13():
    """ State 0,1 """
    assert t150150_x1()
    """ State 2 """
    return 0

def t150150_x14():
    """ State 0,2 """
    assert t150150_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t150150_x15(val2=15, val3=25):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t150150_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t150150_x1()

def t150150_x16():
    """ State 0,1 """
    assert t150150_x18(z1=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150150_x17(mode2=1, mode4=0):
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
        assert t150150_x18(z1=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t150150_x18(z1=_, mode8=0, mode9=0, mode10=0, mode11=0):
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

def t150150_x19():
    """ State 0,1 """
    call = t150150_x18(z1=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t150150_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t150150_x20():
    """ State 0,2 """
    call = t150150_x18(z1=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t150150_x21():
    """ State 0,1 """
    assert t150150_x18(z1=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150150_x22(val2=15, val3=25):
    """ State 0,1 """
    while True:
        call = t150150_x15(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t150150_x25(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t150150_x12(val2=val2, val3=val3)

def t150150_x23():
    """ State 0,1 """
    assert t150150_x18(z1=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150150_x24(val6=7001500, flag5=6000, flag6=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t150150_x18(z1=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t150150_x0(val6=val6, flag6=flag6, flag10=6000, flag11=6000, flag12=6000, flag13=6000,
                mode7=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t150150_x25(val2=15, val3=25):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t150150_x26()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t150150_x1()
    """ State 4 """
    return 0

def t150150_x26():
    """ State 0,1 """
    assert t150150_x18(z1=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150150_x27(val6=7001500, flag6=6001, flag10=6000, flag11=6000, flag12=6000, flag13=6000, mode7=0,
                flag5=6000):
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

def t150150_x28(action1=_, action2=_):
    """ State 0,1 """
    c1110()
    ClearTalkListData()
    """ State 2 """
    AddTalkListData(1, action1, 6001)
    AddTalkListData(2, action2, 6001)
    """ State 3 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 4 """
    if GetTalkListEntryResult() == 1:
        """ State 5,8 """
        return 0
    elif GetTalkListEntryResult() == 2:
        """ State 6,9 """
        return 1
    else:
        """ State 7,10 """
        return 2

def t150150_x29():
    """ State 0,1 """
    if not GetEventStatus(71500205):
        """ State 2 """
        # talk:15000000:Urrhh... Nngh...
        assert t150150_x3(text3=15000000, z3=71500205, flag16=1, mode14=1)
    else:
        """ State 3 """
        # talk:15000010:Ahhh... Ahhh...
        assert t150150_x3(text3=15000010, z3=71500216, flag16=1, mode14=1)
    """ State 4 """
    return 0

