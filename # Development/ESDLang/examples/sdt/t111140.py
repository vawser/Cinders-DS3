# -*- coding: utf-8 -*-
def t111140_1():
    """ State 0,1 """
    t111140_x8(flag11=1399, flag12=1395, flag13=1396, val1=5, val2=10, val3=12, val4=10, val5=12, flag14=6001,
               val6=7001400, flag15=6000, flag16=6001, flag17=6000, flag18=6000, mode4=1, val7=1000000,
               val8=1000000, val9=1000000, mode5=1, mode6=1, mode7=0, val10=1000000, val11=1000000, mode8=0,
               flag19=71110309, mode9=0)

def t111140_1000():
    """ State 0,3 """
    assert f116(-1) == 1000000
    """ State 2 """
    if GetEventStatus(1380) == 1:
        """ State 4 """
        def WhilePaused():
            c5117(GetEventStatus(70002045) == 1, 1136002, -1)
        assert t111140_x38()
    elif GetEventStatus(1383) == 1:
        """ State 5 """
        assert t111140_x41()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111140_1001():
    """ State 0,2 """
    # talk:14160500:No different from the rest... 
    assert t111140_x6(text5=14160500, flag24=1, mode16=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111140_1101():
    """ State 0,2 """
    if GetEventStatus(70002045) == 1:
        """ State 4,6 """
        # talk:14160000:Whoa!, talk:14160100:Gyaa!
        assert (t111140_x37(text1=14160000, flag1=71110346, text2=14160100, flag2=71110347, text3=-1,
                flag3=71110348, text4=-1, flag4=71110349))
    else:
        """ State 3,5 """
        # talk:14160000:Whoa!, talk:14160100:Gyaa!, talk:14160200:Damn you!, talk:14160300:That stings, you moron!
        assert (t111140_x37(text1=14160000, flag1=71110346, text2=14160100, flag2=71110347, text3=14160200,
                flag3=71110348, text4=14160300, flag4=71110349))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111140_1102():
    """ State 0,2 """
    if not GetEventStatus(71110343):
        """ State 3,5 """
        # talk:14160400:Well, well... 
        assert t111140_x4(text1=14160400, flag1=71110343, flag26=1, mode18=1)
        """ State 1 """
        def WhilePaused():
            c1119(0)
    else:
        """ State 4 """
        pass

def t111140_1103():
    """ State 0,2 """
    if GetEventStatus(71110309) == 1:
        """ State 3 """
        pass
    else:
        """ State 4 """
        # talk:14160600:Ughhhhh...
        assert t111140_x6(text5=14160600, flag24=1, mode16=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111140_2000():
    """ State 0,3 """
    while True:
        call = t111140_x1(val6=7001400, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000,
                          mode10=0, flag15=71110309, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                          val11=1000000)
        if call.Done():
            break
        elif GetEventStatus(1383) == 1 and not GetEventStatus(1380):
            """ State 4 """
            call = t111140_x1(val6=7001400, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000,
                              mode10=0, flag15=71110309, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                              val11=1000000)
            if call.Done():
                pass
            elif GetEventStatus(1380) == 1 and not GetEventStatus(1383):
                continue
        """ State 1 """
        Label('L0')
        def WhilePaused():
            c1119(0)
        Quit()
    """ State 2 """
    c511(not GetEventStatus(70002045) and GetEventStatus(71110300) == 1, 72000206, 1)
    Goto('L0')

def t111140_x0(action1=12095010):
    """ State 0,1 """
    # action:12095010:Give Dragonrot Pellet?
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t111140_x1(val6=7001400, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000, mode10=0,
               flag15=_, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t111140_x31(val6=val6, flag16=flag16, flag20=flag20, flag21=flag21, flag22=flag22, flag23=flag23,
                           mode10=mode10, flag15=flag15)
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

def t111140_x2():
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

def t111140_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111140_x4(text1=_, flag1=_, flag26=1, mode18=1):
    """ State 0,7 """
    assert t111140_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
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
    """ State 4 """
    if not mode18:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t111140_x5(text15=_, z12=_, flag25=0, mode17=1):
    """ State 0,7 """
    assert t111140_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag25:
        """ State 1 """
        TalkToPlayer(text15, -1, -1, flag25, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text15, -1, -1, flag25, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode17:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z12, 1)
    """ State 8 """
    return 0

def t111140_x6(text5=_, flag24=_, mode16=1):
    """ State 0,6 """
    assert t111140_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag24:
        """ State 1 """
        TalkToPlayer(text5, -1, -1, flag24, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text5, -1, -1, flag24, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode16:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t111140_x7(lot1=69900):
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

def t111140_x8(flag11=1399, flag12=1395, flag13=1396, val1=5, val2=10, val3=12, val4=10, val5=12, flag14=6001,
               val6=7001400, flag15=6000, flag16=6001, flag17=6000, flag18=6000, mode4=1, val7=1000000,
               val8=1000000, val9=1000000, mode5=1, mode6=1, mode7=0, val10=1000000, val11=1000000, mode8=0,
               flag19=71110309, mode9=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t111140_x9(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag14=flag14, val6=val6,
                          flag15=flag15, flag16=flag16, flag17=flag17, flag18=flag18, mode4=mode4, val7=val7,
                          val8=val8, val9=val9, mode5=mode5, mode6=mode6, mode7=mode7, val10=val10, val11=val11,
                          mode8=mode8, mode9=mode9)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag11) == 1) and not GetEventStatus(flag19):
            pass
        elif GetEventStatus(flag12) == 1 or GetEventStatus(flag13) == 1:
            """ State 3 """
            call = t111140_x24(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag11) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag12) and not GetEventStatus(flag13):
                continue
        """ State 2 """
        call = t111140_x10(flag11=flag11, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag11) and not DoesSelfHaveSpEffect(30100)

def t111140_x9(val1=5, val2=10, val3=12, val4=10, val5=12, flag14=6001, val6=7001400, flag15=6000, flag16=6001,
               flag17=6000, flag18=6000, mode4=1, val7=1000000, val8=1000000, val9=1000000, mode5=1,
               mode6=1, mode7=0, val10=1000000, val11=1000000, mode8=0, mode9=0):
    """ State 0,4 """
    while True:
        call = t111140_x26(val6=val6, flag15=flag15, flag16=flag16, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t111140_x11(val1=val1, mode4=mode4, mode5=mode5, mode6=mode6, mode7=mode7, mode8=mode8)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode9 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode9 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag18) == 1:
            Goto('L0')
        elif not GetEventStatus(flag14) and GetEventStatus(flag17) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t111140_x12(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode9 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t111140_x13(val2=val2, val3=val3)

def t111140_x10(flag11=1399, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag11) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t111140_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t111140_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t111140_x11(val1=5, mode4=1, mode5=1, mode6=1, mode7=0, mode8=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t111140_x19(mode5=mode5, mode7=mode7)
    def WhilePaused():
        c1117(mode4, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode6 == 1, 0.1)
        c5120(val1 == 1 and not mode4 and mode8 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t111140_x16()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t111140_x15()
    """ State 4 """
    return 0

def t111140_x12(val5=12):
    """ State 0,1 """
    call = t111140_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t111140_x2()
    """ State 3 """
    return 0

def t111140_x13(val2=10, val3=12):
    """ State 0,4 """
    assert t111140_x2() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t111140_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t111140_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t111140_x14(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t111140_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t111140_x2()
    """ State 4 """
    return 0

def t111140_x15():
    """ State 0,1 """
    assert t111140_x2()
    """ State 2 """
    return 0

def t111140_x16():
    """ State 0,2 """
    assert t111140_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t111140_x17(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t111140_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t111140_x2()

def t111140_x18():
    """ State 0,1 """
    assert t111140_x20(z11=1101, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t111140_x19(mode5=1, mode7=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode5 == 1 and not mode7, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode5 == 1 and mode7 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t111140_x20(z11=1000, mode12=0, mode13=0, mode14=0, mode15=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t111140_x20(z11=_, mode12=0, mode13=0, mode14=0, mode15=0):
    """ State 0,4 """
    if f118(z11) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z11)
        assert f117() == mode12 or f117() == mode13 or f117() == mode14 or f117() == mode15
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t111140_x21():
    """ State 0,1 """
    call = t111140_x20(z11=1103, mode12=0, mode13=0, mode14=0, mode15=0)
    if call.Get() == 1:
        """ State 2 """
        assert t111140_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t111140_x22():
    """ State 0,2 """
    call = t111140_x20(z11=1102, mode12=0, mode13=0, mode14=0, mode15=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t111140_x23():
    """ State 0,1 """
    assert t111140_x20(z11=1001, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t111140_x24(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t111140_x17(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t111140_x28(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t111140_x14(val2=val2, val3=val3)

def t111140_x25():
    """ State 0,1 """
    assert t111140_x20(z11=1100, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t111140_x26(val6=7001400, flag15=6000, flag16=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t111140_x20(z11=2000, mode12=0, mode13=0, mode14=0, mode15=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t111140_x1(val6=val6, flag16=flag16, flag20=6000, flag21=6000, flag22=6000, flag23=6000,
                mode10=0, flag15=flag15, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t111140_x27(z9=-1, z10=1136001, val12=1136001, mode11=1, val13=5):
    """ State 0,1 """
    def WhilePaused():
        c1117(z10, z9)
    if f116(z9) == val12 and mode11 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val13:
        """ State 3 """
        return 1

def t111140_x28(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t111140_x29()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t111140_x2()
    """ State 4 """
    return 0

def t111140_x29():
    """ State 0,1 """
    assert t111140_x20(z11=1002, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t111140_x30(shop1=1111400, shop2=1111449):
    """ State 0,1 """
    if GetEventStatus(6020) == 1:
        """ State 3,5 """
        OpenRegularShop(shop1 + 50, shop2 + 50)
    else:
        """ State 2,4 """
        OpenRegularShop(shop1, shop2)
    """ State 6 """
    return 0

def t111140_x31(val6=7001400, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000, mode10=0,
                flag15=_):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag16) == 1 or GetEventStatus(flag20) == 1 or GetEventStatus(flag21)
                == 1 or GetEventStatus(flag22) == 1 or GetEventStatus(flag23) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag15)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag16) and not GetEventStatus(flag20) and not GetEventStatus(flag21)
                  and not GetEventStatus(flag22) and not GetEventStatus(flag23)):
                Continue('mainloop')
            elif GetEventStatus(flag15) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode10) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t111140_x32(text10=14901000, text11=14901010, text12=14901050, text13=14901150, text14=14901400,
                flag9=70002045, flag10=71110334, z7=71110333, z8=71110336):
    """ State 0,1 """
    if GetEventStatus(flag9) == 1:
        pass
    else:
        Goto('L0')
    """ State 2 """
    if not GetEventStatus(flag10):
        """ State 10 """
        if not GetEventStatus(70004000):
            """ State 3,13 """
            assert t111140_x6(text5=text10, flag24=0, mode16=1)
        else:
            """ State 4,14 """
            assert t111140_x6(text5=text11, flag24=0, mode16=1)
    else:
        """ State 11,5,17 """
        assert t111140_x6(text5=text12, flag24=0, mode16=1)
    """ State 12 """
    SetEventState(flag10, 1)
    """ State 18 """
    return 0
    """ State 7 """
    Label('L0')
    """ State 20 """
    return 2

def t111140_x33(flag7=70002045, flag8=71110333, z5=3, z6=4):
    """ State 0,1 """
    if GetEventStatus(flag7) == 1:
        """ State 3 """
        if GetEventStatus(70004001) == 1:
            """ State 5,4 """
            # action:15000811:Collect blood sample
            AddTalkListDataIf(not GetEventStatus(50006990), z5, 15000811, -1)
        else:
            """ State 7 """
            pass
    else:
        """ State 2 """
        pass
    """ State 9 """
    return 0

def t111140_x34(text8=14901300, text9=14901310, flag6=71110332, mode3=_):
    """ State 0,1 """
    if mode3 == 1:
        """ State 3 """
        if GetEventStatus(flag6) == 1:
            pass
        else:
            """ State 11 """
            return 1
    else:
        """ State 2,7 """
        assert t111140_x6(text5=text8, flag24=0, mode16=1)
        """ State 4 """
        SetEventState(flag6, 1)
        """ State 8 """
        assert t111140_x7(lot1=69900)
    """ State 5,9 """
    assert t111140_x6(text5=text9, flag24=0, mode16=1)
    """ State 6 """
    SetEventState(flag6, 0)
    """ State 10 """
    return 0

def t111140_x35(text6=14901200, text7=14901100, z1=71110331, z2=71110330, z3=71110333, mode2=_, z4=9502):
    """ State 0,1 """
    if mode2 == 1:
        pass
    else:
        Goto('L0')
    """ State 2,18 """
    return 1
    """ State 3 """
    Label('L0')
    if ComparePlayerInventoryNumber(3, 9550, 0, 0, 0) == 1:
        """ State 8 """
        pass
    else:
        """ State 7,14 """
        # action:12095010:Give Dragonrot Pellet?
        call = t111140_x0(action1=12095010)
        if call.Get() == 0:
            """ State 6 """
            PlayerEquipmentQuantityChange(3, 9550, -1)
            PlayerEquipmentQuantityChange(3, 9550, -1)
            """ State 9 """
            SetEventState(z3, 1)
            """ State 5 """
            SetEventState(z2, 1)
            """ State 4,15 """
            assert t111140_x6(text5=text7, flag24=0, mode16=1)
            """ State 10 """
            SetEventState(z2, 0)
        elif call.Done():
            """ State 11 """
            SetEventState(z1, 1)
            """ State 12,16 """
            assert t111140_x6(text5=text6, flag24=0, mode16=1)
            """ State 13 """
            SetEventState(z1, 0)
    """ State 17 """
    return 0

def t111140_x36(text5=14900200, flag5=70002045):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 3,4 """
        assert t111140_x6(text5=text5, flag24=0, mode16=1)
        """ State 5 """
        return 0
    else:
        """ State 2,6 """
        return 1

def t111140_x37(text1=14160000, flag1=71110346, text2=14160100, flag2=71110347, text3=_, flag3=71110348,
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
        assert t111140_x4(text1=text1, flag1=flag1, flag26=1, mode18=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t111140_x4(text1=text2, flag1=flag2, flag26=1, mode18=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t111140_x4(text1=text3, flag1=flag3, flag26=1, mode18=1)
    else:
        """ State 7 """
        assert t111140_x4(text1=text4, flag1=flag4, flag26=1, mode18=1)
    """ State 8 """
    return 0

def t111140_x38():
    """ State 0,9 """
    # talk:14901300:I'm taking a blood sample., talk:14901310:... Now to bring this to Lady Emma.
    call = t111140_x34(text8=14901300, text9=14901310, flag6=71110332, mode3=1)
    if call.Get() == 1:
        """ State 10 """
        # talk:14901200:........., talk:14901100:Drink...
        call = t111140_x35(text6=14901200, text7=14901100, z1=71110331, z2=71110330, z3=71110333, mode2=1,
                           z4=9502)
        if call.Get() == 1:
            """ State 8 """
            # talk:14901000:(Wheeze... Wheeze...) Look who it is., talk:14901010:(Wheeze... Wheeze...) Look who it is., talk:14901050:(Wheeze... Wheeze...), talk:14901150:(wheezing), talk:14901400:Well, if it isn't my favourite customer.
            call = t111140_x32(text10=14901000, text11=14901010, text12=14901050, text13=14901150, text14=14901400,
                               flag9=70002045, flag10=71110334, z7=71110333, z8=71110336)
            if call.Get() == 1:
                pass
            elif call.Get() == 0:
                """ State 4 """
                Label('L0')
                call = t111140_x40()
                if call.Get() == 1:
                    pass
                elif call.Done():
                    """ State 7 """
                    # talk:14900200:(wheezing and coughing up blood)
                    call = t111140_x36(text5=14900200, flag5=70002045)
                    if call.Get() == 0:
                        pass
                    elif call.Done():
                        """ State 6 """
                        assert t111140_x43()
            elif call.Done():
                """ State 11 """
                call = t111140_x39(mode1=1)
                if call.Get() == 2:
                    """ State 1 """
                    if GetEventStatus(71110312) == 1:
                        """ State 2,12 """
                        # talk:14120500:Well, that's that... 
                        assert t111140_x5(text15=14120500, z12=71110308, flag25=0, mode17=1)
                        """ State 3 """
                        SetEventState(71110312, 0)
                    else:
                        """ State 5 """
                        assert t111140_x42()
                        Goto('L0')
                elif call.Done():
                    pass
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 13 """
    return 0

def t111140_x39(mode1=_):
    """ State 0,14 """
    if mode1 == 1:
        """ State 15 """
        if GetEventStatus(71110306) == 1:
            """ State 10 """
            Label('L0')
            """ State 19 """
            # talk:14110220:Was he wearing a Tengu mask?
            assert t111140_x6(text5=14110220, flag24=0, mode16=1)
        elif GetEventStatus(71110307) == 1:
            """ State 9 """
            Label('L1')
            """ State 18 """
            # talk:14110210:I hadn't heard.
            assert t111140_x6(text5=14110210, flag24=0, mode16=1)
        else:
            """ State 22 """
            return 2
    else:
        """ State 1 """
        if not GetEventStatus(71111500):
            """ State 2,16 """
            # talk:14110100:Now, if you ask me... 
            assert t111140_x6(text5=14110100, flag24=0, mode16=1)
        else:
            """ State 3,17 """
            # talk:14110200:Heheh. You hear about this one?
            assert t111140_x6(text5=14110200, flag24=0, mode16=1)
            """ State 5 """
            ClearTalkListData()
            """ State 6 """
            # action:14014001:I know
            AddTalkListDataIf(GetEventStatus(71100500) == 1 or GetEventStatus(71100501) == 1, 2, 14014001,
                              6001)
            # action:14014000:I hadn't heard
            AddTalkListData(1, 14014000, 6001)
            """ State 7 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 8 """
            if GetTalkListEntryResult() == 1:
                """ State 12 """
                SetEventState(71110307, 1)
                Goto('L1')
            elif GetTalkListEntryResult() == 2:
                """ State 13 """
                SetEventState(71110306, 1)
                Goto('L0')
            else:
                """ State 11,21 """
                return 1
    """ State 4 """
    SetEventState(71110306, 0)
    SetEventState(71110307, 0)
    """ State 20 """
    return 0

def t111140_x40():
    """ State 0,2 """
    def ExitPause():
        c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 3 """
        # action:15000010:Purchase items
        AddTalkListData(1, 15000010, 6001)
        # action:15000000:Talk
        AddTalkListDataIf(not GetEventStatus(70002045), 2, 15000000, 6001)
        """ State 13 """
        assert t111140_x33(flag7=70002045, flag8=71110333, z5=3, z6=4)
        """ State 4 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6,10 """
            assert (t111140_x30(shop1=1111400, shop2=1111449) and not (CheckSpecificPersonMenuIsOpen(5,
                    0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
        elif GetTalkListEntryResult() == 2:
            """ State 7,9 """
            call = t111140_x39(mode1=0)
            if call.Get() == 1:
                """ State 15 """
                return 1
            elif call.Done():
                pass
        elif GetTalkListEntryResult() == 3:
            """ State 11 """
            # talk:14901300:I'm taking a blood sample., talk:14901310:... Now to bring this to Lady Emma.
            assert t111140_x34(text8=14901300, text9=14901310, flag6=71110332, mode3=0)
        else:
            """ State 8,14 """
            return 0

def t111140_x41():
    """ State 0,1 """
    # talk:14100600:Ugh...
    def WhilePaused():
        c1117(1136000, -1)
    assert t111140_x5(text15=14100600, z12=71110309, flag25=0, mode17=1)
    """ State 2 """
    assert t111140_x27(z9=-1, z10=1136001, val12=1136001, mode11=1, val13=5)
    """ State 3 """
    return 0

def t111140_x42():
    """ State 0,5 """
    if GetEventStatus(71110308) == 1:
        """ State 6,9 """
        # talk:14100500:In other words, I'm closing up shop.
        assert t111140_x6(text5=14100500, flag24=0, mode16=1)
    else:
        """ State 4 """
        if not GetEventStatus(71110300):
            """ State 1,8 """
            # talk:14100200:... Told those morons to give it a rest.
            assert t111140_x5(text15=14100200, z12=71110300, flag25=0, mode17=1)
        elif not GetEventStatus(71110301):
            """ State 3,10 """
            # talk:14100300:Heheh... This here dive ain't half bad.
            assert t111140_x5(text15=14100300, z12=71110301, flag25=0, mode17=1)
        else:
            """ State 2,7 """
            # talk:14100400:Ohh, well look who it is.
            assert t111140_x6(text5=14100400, flag24=0, mode16=1)
    """ State 11 """
    return 0

def t111140_x43():
    """ State 0,1 """
    if GetEventStatus(71111500) == 1 and GetEventStatus(71110200) == 1:
        """ State 2 """
        if not GetEventStatus(71110308):
            """ State 6,8 """
            SetEventState(71110312, 1)
            """ State 12 """
            # talk:14120500:Well, that's that... 
            assert t111140_x5(text15=14120500, z12=71110308, flag25=0, mode17=1)
            """ State 9 """
            SetEventState(71110312, 0)
        else:
            """ State 7,13 """
            # talk:14120600:I got some business to take care of at Senpo Temple.
            assert t111140_x6(text5=14120600, flag24=0, mode16=1)
    else:
        """ State 3 """
        if not GetEventStatus(71110302):
            """ State 4,10 """
            # talk:14120300:Well, I'll be here.  Raking in the profits.
            assert t111140_x5(text15=14120300, z12=71110302, flag25=0, mode17=1)
        else:
            """ State 5,11 """
            # talk:14120400:So long.
            assert t111140_x6(text5=14120400, flag24=0, mode16=1)
    """ State 14 """
    return 0

