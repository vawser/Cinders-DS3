# -*- coding: utf-8 -*-
def t200450_1():
    """ State 0,1 """
    t200450_x8(flag11=6000, flag12=6000, flag13=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag14=6001,
               val6=7008000, flag15=6000, flag16=6001, flag17=6000, flag18=6000, mode3=1, val7=1000000,
               val8=1000000, val9=1000000, mode4=1, mode5=1, mode6=0, val10=1000000, val11=1000000, mode7=0,
               flag19=6000, mode8=0)

def t200450_1000():
    """ State 0,2 """
    def WhilePaused():
        c5117(GetEventStatus(70002070) == 1, 1112000, -1)
    assert t200450_x41()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200450_1101():
    """ State 0,2 """
    if GetEventStatus(70002070) == 1:
        """ State 4,6 """
        # talk:45030000:   , talk:45030100:   , talk:45030200:   
        assert (t200450_x37(text1=45030000, flag1=72000295, text2=45030100, flag2=72000296, text3=45030200,
                flag3=72000297, text4=-1, flag4=72000298))
    else:
        """ State 3,5 """
        # talk:45030000:   , talk:45030100:   , talk:45030200:   , talk:45030300:Curse... you...
        assert (t200450_x37(text1=45030000, flag1=72000295, text2=45030100, flag2=72000296, text3=45030200,
                flag3=72000297, text4=45030300, flag4=72000298))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200450_1103():
    """ State 0,2 """
    # talk:45030400:Oh, Divine Children... Forgive me...
    assert t200450_x6(text5=45030400, flag26=1, mode15=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200450_x0(action1=12095010):
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

def t200450_x1(val6=7008000, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000, mode9=0,
               flag15=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t200450_x31(val6=val6, flag16=flag16, flag20=flag20, flag21=flag21, flag22=flag22, flag23=flag23,
                           mode9=mode9, flag15=flag15)
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

def t200450_x2():
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

def t200450_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t200450_x4(text1=_, flag1=_, flag28=1, mode17=1):
    """ State 0,7 """
    assert t200450_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    if not flag28:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag28, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag28, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode17:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t200450_x5(text16=_, flag25=_, flag27=0, mode16=1):
    """ State 0,7 """
    assert t200450_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag27:
        """ State 1 """
        TalkToPlayer(text16, -1, -1, flag27, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text16, -1, -1, flag27, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode16:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag25, 1)
    """ State 8 """
    return 0

def t200450_x6(text5=_, flag26=_, mode15=1):
    """ State 0,6 """
    assert t200450_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag26:
        """ State 1 """
        TalkToPlayer(text5, -1, -1, flag26, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text5, -1, -1, flag26, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode15:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t200450_x7(lot1=_):
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

def t200450_x8(flag11=6000, flag12=6000, flag13=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag14=6001,
               val6=7008000, flag15=6000, flag16=6001, flag17=6000, flag18=6000, mode3=1, val7=1000000,
               val8=1000000, val9=1000000, mode4=1, mode5=1, mode6=0, val10=1000000, val11=1000000, mode7=0,
               flag19=6000, mode8=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t200450_x9(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag14=flag14, val6=val6,
                          flag15=flag15, flag16=flag16, flag17=flag17, flag18=flag18, mode3=mode3, val7=val7,
                          val8=val8, val9=val9, mode4=mode4, mode5=mode5, mode6=mode6, val10=val10, val11=val11,
                          mode7=mode7, mode8=mode8)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag11) == 1) and not GetEventStatus(flag19):
            pass
        elif GetEventStatus(flag12) == 1 or GetEventStatus(flag13) == 1:
            """ State 3 """
            call = t200450_x24(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag11) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag12) and not GetEventStatus(flag13):
                continue
        """ State 2 """
        call = t200450_x10(flag11=flag11, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag11) and not DoesSelfHaveSpEffect(30100)

def t200450_x9(val1=12, val2=10, val3=12, val4=10, val5=12, flag14=6001, val6=7008000, flag15=6000, flag16=6001,
               flag17=6000, flag18=6000, mode3=1, val7=1000000, val8=1000000, val9=1000000, mode4=1,
               mode5=1, mode6=0, val10=1000000, val11=1000000, mode7=0, mode8=0):
    """ State 0,4 """
    while True:
        call = t200450_x26(val6=val6, flag15=flag15, flag16=flag16, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t200450_x11(val1=val1, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6, mode7=mode7)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode8 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode8 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag18) == 1:
            Goto('L0')
        elif not GetEventStatus(flag14) and GetEventStatus(flag17) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t200450_x12(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode8 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t200450_x13(val2=val2, val3=val3)

def t200450_x10(flag11=6000, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag11) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t200450_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t200450_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t200450_x11(val1=12, mode3=1, mode4=1, mode5=1, mode6=0, mode7=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t200450_x19(mode4=mode4, mode6=mode6)
    def WhilePaused():
        c1117(mode3, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode5 == 1, 0.1)
        c5120(val1 == 1 and not mode3 and mode7 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t200450_x16()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t200450_x15()
    """ State 4 """
    return 0

def t200450_x12(val5=12):
    """ State 0,1 """
    call = t200450_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t200450_x2()
    """ State 3 """
    return 0

def t200450_x13(val2=10, val3=12):
    """ State 0,4 """
    assert t200450_x2() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t200450_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t200450_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t200450_x14(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t200450_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t200450_x2()
    """ State 4 """
    return 0

def t200450_x15():
    """ State 0,1 """
    assert t200450_x2()
    """ State 2 """
    return 0

def t200450_x16():
    """ State 0,2 """
    assert t200450_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t200450_x17(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t200450_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t200450_x2()

def t200450_x18():
    """ State 0,1 """
    assert t200450_x20(z9=1101, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t200450_x19(mode4=1, mode6=0):
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
        assert t200450_x20(z9=1000, mode11=0, mode12=0, mode13=0, mode14=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t200450_x20(z9=_, mode11=0, mode12=0, mode13=0, mode14=0):
    """ State 0,4 """
    if f118(z9) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z9)
        assert f117() == mode11 or f117() == mode12 or f117() == mode13 or f117() == mode14
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t200450_x21():
    """ State 0,1 """
    call = t200450_x20(z9=1103, mode11=0, mode12=0, mode13=0, mode14=0)
    if call.Get() == 1:
        """ State 2 """
        assert t200450_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t200450_x22():
    """ State 0,2 """
    call = t200450_x20(z9=1102, mode11=0, mode12=0, mode13=0, mode14=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t200450_x23():
    """ State 0,1 """
    assert t200450_x20(z9=1001, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t200450_x24(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t200450_x17(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t200450_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t200450_x14(val2=val2, val3=val3)

def t200450_x25():
    """ State 0,1 """
    assert t200450_x20(z9=1100, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t200450_x26(val6=7008000, flag15=6000, flag16=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t200450_x20(z9=2000, mode11=0, mode12=0, mode13=0, mode14=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t200450_x1(val6=val6, flag16=flag16, flag20=6000, flag21=6000, flag22=6000, flag23=6000,
                mode9=0, flag15=flag15, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t200450_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t200450_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t200450_x2()
    """ State 4 """
    return 0

def t200450_x28():
    """ State 0,1 """
    assert t200450_x20(z9=1002, mode11=0, mode12=0, mode13=0, mode14=0)
    """ State 2 """
    return 0

def t200450_x29(text15=45010000, text16=45010050, lot1=64500, flag24=72000254, flag25=72000253, mode10=_):
    """ State 0,3 """
    if not mode10:
        """ State 4,8 """
        assert t200450_x6(text5=text15, flag26=0, mode15=1)
        """ State 2 """
        SetEventState(flag24, 1)
        """ State 10 """
        assert t200450_x7(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag24) == 1 and not GetEventStatus(flag25):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t200450_x5(text16=text16, flag25=flag25, flag27=0, mode16=1)
    """ State 11 """
    return 0

def t200450_x30(shop1=2000000, shop2=2000049):
    """ State 0,1 """
    if GetEventStatus(6020) == 1:
        """ State 3,5 """
        OpenRegularShop(shop1 + 50, shop2 + 50)
    else:
        """ State 2,4 """
        OpenRegularShop(shop1, shop2)
    """ State 6 """
    return 0

def t200450_x31(val6=7008000, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000, mode9=0,
                flag15=6000):
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
            elif CheckActionButtonArea(val6 + mode9) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t200450_x32(text10=45900000, text11=45900010, text12=45900050, text13=45900150, text14=45900500,
                flag9=70002070, flag10=72000284, z7=72000283, z8=72000286):
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
            assert t200450_x6(text5=text10, flag26=0, mode15=1)
        else:
            """ State 4,14 """
            assert t200450_x6(text5=text11, flag26=0, mode15=1)
    else:
        """ State 11,5,17 """
        assert t200450_x6(text5=text12, flag26=0, mode15=1)
    """ State 12 """
    SetEventState(flag10, 1)
    """ State 18 """
    return 0
    """ State 7 """
    Label('L0')
    """ State 20 """
    return 2

def t200450_x33(flag7=70002070, flag8=72000283, z5=4, z6=5):
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

def t200450_x34(text8=45900400, text9=45900410, flag6=72000282, mode2=_):
    """ State 0,1 """
    if mode2 == 1:
        """ State 3 """
        if GetEventStatus(flag6) == 1:
            pass
        else:
            """ State 11 """
            return 1
    else:
        """ State 2,7 """
        assert t200450_x6(text5=text8, flag26=0, mode15=1)
        """ State 4 """
        SetEventState(flag6, 1)
        """ State 8 """
        assert t200450_x7(lot1=69900)
    """ State 5,9 """
    assert t200450_x6(text5=text9, flag26=0, mode15=1)
    """ State 6 """
    SetEventState(flag6, 0)
    """ State 10 """
    return 0

def t200450_x35(text6=_, text7=_, z1=72000281, z2=72000280, z3=72000283, mode1=_, z4=9524):
    """ State 0,1 """
    if mode1 == 1:
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
        call = t200450_x0(action1=12095010)
        if call.Get() == 0:
            """ State 6 """
            PlayerEquipmentQuantityChange(3, 9550, -1)
            PlayerEquipmentQuantityChange(3, 9550, -1)
            """ State 9 """
            SetEventState(z3, 1)
            """ State 5 """
            SetEventState(z2, 1)
            """ State 4,15 """
            assert t200450_x6(text5=text7, flag26=0, mode15=1)
            """ State 10 """
            SetEventState(z2, 0)
        elif call.Done():
            """ State 11 """
            SetEventState(z1, 1)
            """ State 12,16 """
            assert t200450_x6(text5=text6, flag26=0, mode15=1)
            """ State 13 """
            SetEventState(z1, 0)
    """ State 17 """
    return 0

def t200450_x36(text5=45900300, flag5=70002070):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 3,4 """
        assert t200450_x6(text5=text5, flag26=0, mode15=1)
        """ State 5 """
        return 0
    else:
        """ State 2,6 """
        return 1

def t200450_x37(text1=45030000, flag1=72000295, text2=45030100, flag2=72000296, text3=45030200, flag3=72000297,
                text4=_, flag4=72000298):
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
        assert t200450_x4(text1=text1, flag1=flag1, flag28=1, mode17=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t200450_x4(text1=text2, flag1=flag2, flag28=1, mode17=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t200450_x4(text1=text3, flag1=flag3, flag28=1, mode17=1)
    else:
        """ State 7 """
        assert t200450_x4(text1=text4, flag1=flag4, flag28=1, mode17=1)
    """ State 8 """
    return 0

def t200450_x38():
    """ State 0,1 """
    if not GetEventStatus(72000251):
        """ State 2 """
        if not GetEventStatus(71100750):
            """ State 3,8 """
            # talk:45000000:Care to purchase an offering?
            assert t200450_x5(text16=45000000, flag25=71100750, flag27=0, mode16=1)
            """ State 5 """
            RequestUnlockTrophy(18)
        else:
            """ State 4,9 """
            # talk:45000100:Care to purchase an offering?
            assert t200450_x6(text5=45000100, flag26=0, mode15=1)
        """ State 6 """
        SetEventState(72000251, 1)
    else:
        """ State 7,10 """
        # talk:45000200:Care to purchase an offering?
        assert t200450_x6(text5=45000200, flag26=0, mode15=1)
    """ State 11 """
    return 0

def t200450_x39():
    """ State 0,1 """
    c1110()
    """ State 2 """
    while True:
        ClearTalkListData()
        """ State 3 """
        # action:15000010:Purchase items
        AddTalkListData(1, 15000010, -1)
        # action:15000011:Sell items
        AddTalkListData(2, 15000011, -1)
        # action:15000000:Talk
        AddTalkListDataIf(GetEventStatus(72000038) == 1 and not GetEventStatus(70002070), 3, 15000000,
                          -1)
        """ State 13 """
        assert t200450_x33(flag7=70002070, flag8=72000283, z5=4, z6=5)
        """ State 4 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6,14 """
            assert (t200450_x30(shop1=2000000, shop2=2000049) and not (CheckSpecificPersonMenuIsOpen(5,
                    0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
        elif GetTalkListEntryResult() == 2:
            """ State 7,8 """
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 9 """
            if not GetEventStatus(72000253):
                """ State 17 """
                # talk:45010000:...Have you met the Divine Child of the Rejuvenating Waters?, talk:45010050:I wanted to share it with all the children...
                assert (t200450_x29(text15=45010000, text16=45010050, lot1=64500, flag24=72000254, flag25=72000253,
                        mode10=0))
            else:
                """ State 18 """
                # talk:45010100:...Have you met the Divine Child of the Rejuvenating Waters?
                assert t200450_x6(text5=45010100, flag26=0, mode15=1)
        elif GetTalkListEntryResult() == 4:
            """ State 10,15 """
            # talk:45900400:I'm taking a blood sample., talk:45900410:... Now to bring this to Lady Emma.
            assert t200450_x34(text8=45900400, text9=45900410, flag6=72000282, mode2=0)
        else:
            """ State 12,19 """
            return 0

def t200450_x40():
    """ State 0,1 """
    if not GetEventStatus(72000252):
        """ State 2,4 """
        # talk:45020000:Where you find the departed, you'll find the Memorial Mob...
        assert t200450_x5(text16=45020000, flag25=72000252, flag27=0, mode16=1)
    else:
        """ State 3,5 """
        # talk:45020100:May the departed rest in peace...
        assert t200450_x6(text5=45020100, flag26=0, mode15=1)
    """ State 6 """
    return 0

def t200450_x41():
    """ State 0,1 """
    # talk:45900400:I'm taking a blood sample., talk:45900410:... Now to bring this to Lady Emma.
    call = t200450_x34(text8=45900400, text9=45900410, flag6=72000282, mode2=1)
    if call.Get() == 1:
        """ State 2 """
        # talk:45900100:Drink this..., talk:45900200:.........
        call = t200450_x35(text6=45900100, text7=45900200, z1=72000281, z2=72000280, z3=72000283, mode1=1,
                           z4=9524)
        if call.Get() == 1:
            """ State 3 """
            # talk:45900000:(Wheezing), talk:45900010:(Wheezing), talk:45900050:Buddha's just... and righteous punishment., talk:45900150:Thanks., talk:45900500:Looks like Buddha's punishment is over, thanks to you.
            call = t200450_x32(text10=45900000, text11=45900010, text12=45900050, text13=45900150, text14=45900500,
                               flag9=70002070, flag10=72000284, z7=72000283, z8=72000286)
            if call.Get() == 1:
                pass
            elif call.Get() == 0:
                pass
            elif call.Done():
                """ State 4 """
                # talk:45010000:...Have you met the Divine Child of the Rejuvenating Waters?, talk:45010050:I wanted to share it with all the children...
                call = t200450_x29(text15=45010000, text16=45010050, lot1=64500, flag24=72000254, flag25=72000253,
                                   mode10=1)
                if call.Get() == 1:
                    """ State 5 """
                    assert t200450_x38()
                elif call.Done():
                    Goto('L0')
            """ State 6 """
            assert t200450_x39()
            """ State 8 """
            # talk:45900300:(wheezing)
            call = t200450_x36(text5=45900300, flag5=70002070)
            if call.Get() == 0:
                pass
            elif call.Done():
                """ State 7 """
                assert t200450_x40()
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 9 """
    Label('L0')
    return 0

