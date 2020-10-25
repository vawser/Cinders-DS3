# -*- coding: utf-8 -*-
def t110410_1():
    """ State 0,1 """
    t110410_x8(flag11=6000, flag12=6000, flag13=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag14=6001,
               val6=7008000, flag15=6000, flag16=6001, flag17=6000, flag18=6000, mode3=1, val7=1000000,
               val8=1000000, val9=1000000, mode4=1, mode5=1, mode6=0, val10=1000000, val11=1000000, mode7=0,
               flag19=6000, mode8=0)

def t110410_1000():
    """ State 0,2 """
    def WhilePaused():
        c5117(GetEventStatus(70002050) == 1, 1112000, -1)
    assert t110410_x40()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110410_1101():
    """ State 0,2 """
    if GetEventStatus(70002050) == 1:
        """ State 4,6 """
        # talk:41030000:   , talk:41030100:   , talk:41030200:   
        assert (t110410_x36(text1=41030000, flag1=71100795, text2=41030100, flag2=71100796, text3=41030200,
                flag3=71100797, text4=-1, flag4=71100798))
    else:
        """ State 3,5 """
        # talk:41030000:   , talk:41030100:   , talk:41030200:   , talk:41030300:Curse you!
        assert (t110410_x36(text1=41030000, flag1=71100795, text2=41030100, flag2=71100796, text3=41030200,
                flag3=71100797, text4=41030300, flag4=71100798))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110410_1103():
    """ State 0,2 """
    # talk:41030400:May the departed...  rest... in peace...
    assert t110410_x6(text5=41030400, flag24=1, mode14=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110410_x0(action1=12095010):
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

def t110410_x1(val6=7008000, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000, mode9=0,
               flag15=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110410_x30(val6=val6, flag16=flag16, flag20=flag20, flag21=flag21, flag22=flag22, flag23=flag23,
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

def t110410_x2():
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

def t110410_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110410_x4(text1=_, flag1=_, flag26=1, mode16=1):
    """ State 0,7 """
    assert t110410_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode16:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t110410_x5(text15=_, z10=_, flag25=0, mode15=1):
    """ State 0,7 """
    assert t110410_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode15:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z10, 1)
    """ State 8 """
    return 0

def t110410_x6(text5=_, flag24=_, mode14=1):
    """ State 0,6 """
    assert t110410_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    if not mode14:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110410_x7(lot1=69900):
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

def t110410_x8(flag11=6000, flag12=6000, flag13=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag14=6001,
               val6=7008000, flag15=6000, flag16=6001, flag17=6000, flag18=6000, mode3=1, val7=1000000,
               val8=1000000, val9=1000000, mode4=1, mode5=1, mode6=0, val10=1000000, val11=1000000, mode7=0,
               flag19=6000, mode8=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110410_x9(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag14=flag14, val6=val6,
                          flag15=flag15, flag16=flag16, flag17=flag17, flag18=flag18, mode3=mode3, val7=val7,
                          val8=val8, val9=val9, mode4=mode4, mode5=mode5, mode6=mode6, val10=val10, val11=val11,
                          mode7=mode7, mode8=mode8)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag11) == 1) and not GetEventStatus(flag19):
            pass
        elif GetEventStatus(flag12) == 1 or GetEventStatus(flag13) == 1:
            """ State 3 """
            call = t110410_x24(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag11) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag12) and not GetEventStatus(flag13):
                continue
        """ State 2 """
        call = t110410_x10(flag11=flag11, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag11) and not DoesSelfHaveSpEffect(30100)

def t110410_x9(val1=12, val2=10, val3=12, val4=10, val5=12, flag14=6001, val6=7008000, flag15=6000, flag16=6001,
               flag17=6000, flag18=6000, mode3=1, val7=1000000, val8=1000000, val9=1000000, mode4=1,
               mode5=1, mode6=0, val10=1000000, val11=1000000, mode7=0, mode8=0):
    """ State 0,4 """
    while True:
        call = t110410_x26(val6=val6, flag15=flag15, flag16=flag16, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110410_x11(val1=val1, mode3=mode3, mode4=mode4, mode5=mode5, mode6=mode6, mode7=mode7)
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
            call = t110410_x12(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode8 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110410_x13(val2=val2, val3=val3)

def t110410_x10(flag11=6000, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag11) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110410_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110410_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110410_x11(val1=12, mode3=1, mode4=1, mode5=1, mode6=0, mode7=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110410_x19(mode4=mode4, mode6=mode6)
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
        assert t110410_x16()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110410_x15()
    """ State 4 """
    return 0

def t110410_x12(val5=12):
    """ State 0,1 """
    call = t110410_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110410_x2()
    """ State 3 """
    return 0

def t110410_x13(val2=10, val3=12):
    """ State 0,4 """
    assert t110410_x2() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110410_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110410_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110410_x14(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110410_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110410_x2()
    """ State 4 """
    return 0

def t110410_x15():
    """ State 0,1 """
    assert t110410_x2()
    """ State 2 """
    return 0

def t110410_x16():
    """ State 0,2 """
    assert t110410_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110410_x17(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110410_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110410_x2()

def t110410_x18():
    """ State 0,1 """
    assert t110410_x20(z9=1101, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110410_x19(mode4=1, mode6=0):
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
        assert t110410_x20(z9=1000, mode10=0, mode11=0, mode12=0, mode13=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110410_x20(z9=_, mode10=0, mode11=0, mode12=0, mode13=0):
    """ State 0,4 """
    if f118(z9) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z9)
        assert f117() == mode10 or f117() == mode11 or f117() == mode12 or f117() == mode13
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110410_x21():
    """ State 0,1 """
    call = t110410_x20(z9=1103, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110410_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110410_x22():
    """ State 0,2 """
    call = t110410_x20(z9=1102, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110410_x23():
    """ State 0,1 """
    assert t110410_x20(z9=1001, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110410_x24(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110410_x17(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110410_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110410_x14(val2=val2, val3=val3)

def t110410_x25():
    """ State 0,1 """
    assert t110410_x20(z9=1100, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110410_x26(val6=7008000, flag15=6000, flag16=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t110410_x20(z9=2000, mode10=0, mode11=0, mode12=0, mode13=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110410_x1(val6=val6, flag16=flag16, flag20=6000, flag21=6000, flag22=6000, flag23=6000,
                mode9=0, flag15=flag15, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110410_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110410_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110410_x2()
    """ State 4 """
    return 0

def t110410_x28():
    """ State 0,1 """
    assert t110410_x20(z9=1002, mode10=0, mode11=0, mode12=0, mode13=0)
    """ State 2 """
    return 0

def t110410_x29(shop1=1100000, shop2=1100049):
    """ State 0,1 """
    if GetEventStatus(6020) == 1:
        """ State 3,5 """
        OpenRegularShop(shop1 + 50, shop2 + 50)
    else:
        """ State 2,4 """
        OpenRegularShop(shop1, shop2)
    """ State 6 """
    return 0

def t110410_x30(val6=7008000, flag16=6001, flag20=6000, flag21=6000, flag22=6000, flag23=6000, mode9=0,
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

def t110410_x31(text10=41900000, text11=41900010, text12=41900050, text13=41900150, text14=41900500,
                flag9=70002050, flag10=71100784, z7=71100783, z8=71100786):
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
            assert t110410_x6(text5=text10, flag24=0, mode14=1)
        else:
            """ State 4,14 """
            assert t110410_x6(text5=text11, flag24=0, mode14=1)
    else:
        """ State 11,5,17 """
        assert t110410_x6(text5=text12, flag24=0, mode14=1)
    """ State 12 """
    SetEventState(flag10, 1)
    """ State 18 """
    return 0
    """ State 7 """
    Label('L0')
    """ State 20 """
    return 2

def t110410_x32(flag7=70002050, flag8=71100783, z5=3, z6=4):
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

def t110410_x33(text8=41900400, text9=41900410, flag6=71100782, mode2=_):
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
        assert t110410_x6(text5=text8, flag24=0, mode14=1)
        """ State 4 """
        SetEventState(flag6, 1)
        """ State 8 """
        assert t110410_x7(lot1=69900)
    """ State 5,9 """
    assert t110410_x6(text5=text9, flag24=0, mode14=1)
    """ State 6 """
    SetEventState(flag6, 0)
    """ State 10 """
    return 0

def t110410_x34(text6=41900200, text7=41900100, z1=71100781, z2=71100780, z3=71100783, mode1=_, z4=9520):
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
        call = t110410_x0(action1=12095010)
        if call.Get() == 0:
            """ State 6 """
            PlayerEquipmentQuantityChange(3, 9550, -1)
            PlayerEquipmentQuantityChange(3, 9550, -1)
            """ State 9 """
            SetEventState(z3, 1)
            """ State 5 """
            SetEventState(z2, 1)
            """ State 4,15 """
            assert t110410_x6(text5=text7, flag24=0, mode14=1)
            """ State 10 """
            SetEventState(z2, 0)
        elif call.Done():
            """ State 11 """
            SetEventState(z1, 1)
            """ State 12,16 """
            assert t110410_x6(text5=text6, flag24=0, mode14=1)
            """ State 13 """
            SetEventState(z1, 0)
    """ State 17 """
    return 0

def t110410_x35(text5=41900300, flag5=70002050):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 3,4 """
        assert t110410_x6(text5=text5, flag24=0, mode14=1)
        """ State 5 """
        return 0
    else:
        """ State 2,6 """
        return 1

def t110410_x36(text1=41030000, flag1=71100795, text2=41030100, flag2=71100796, text3=41030200, flag3=71100797,
                text4=_, flag4=71100798):
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
        assert t110410_x4(text1=text1, flag1=flag1, flag26=1, mode16=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t110410_x4(text1=text2, flag1=flag2, flag26=1, mode16=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t110410_x4(text1=text3, flag1=flag3, flag26=1, mode16=1)
    else:
        """ State 7 """
        assert t110410_x4(text1=text4, flag1=flag4, flag26=1, mode16=1)
    """ State 8 """
    return 0

def t110410_x37():
    """ State 0,1 """
    if not GetEventStatus(71100751):
        """ State 2 """
        if not GetEventStatus(71100750):
            """ State 3,10 """
            # talk:41000000:Care to purchase an offering?
            assert t110410_x5(text15=41000000, z10=71100750, flag25=0, mode15=1)
            """ State 9 """
            RequestUnlockTrophy(18)
        else:
            """ State 4,11 """
            # talk:41000100:Care to purchase an offering?
            assert t110410_x6(text5=41000100, flag24=0, mode14=1)
        """ State 5 """
        SetEventState(71100751, 1)
    else:
        """ State 6 """
        if GetEventStatus(71100753) == 1 and not GetEventStatus(71100754):
            """ State 7,12 """
            # talk:41000300:Hey you...I thought I told you to stop.
            assert t110410_x5(text15=41000300, z10=71100754, flag25=0, mode15=1)
        else:
            """ State 8,13 """
            # talk:41000200:Care to purchase an offering?
            assert t110410_x6(text5=41000200, flag24=0, mode14=1)
    """ State 14 """
    return 0

def t110410_x38():
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
        """ State 13 """
        assert t110410_x32(flag7=70002050, flag8=71100783, z5=3, z6=4)
        """ State 4 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6,12,14 """
            c511(GetEventStatus(6501) == 1, 71100756, 1)
            def ExitPause():
                c511(GetEventStatus(6501) == 1 and not GetEventStatus(71100756) and not GetEventStatus(70002050),
                     71100757, 1)
            assert (t110410_x29(shop1=1100000, shop2=1100049) and not (CheckSpecificPersonMenuIsOpen(5,
                    0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
        elif GetTalkListEntryResult() == 2:
            """ State 7,11 """
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 8,15 """
            # talk:41900400:I'm taking a blood sample., talk:41900410:... Now to bring this to Lady Emma.
            assert t110410_x33(text8=41900400, text9=41900410, flag6=71100782, mode2=0)
        else:
            """ State 10,17 """
            return 0

def t110410_x39():
    """ State 0,1 """
    if not GetEventStatus(71100755) and GetEventStatus(71100757) == 1:
        """ State 2,6 """
        # talk:41020200:Don't use that thing around here.\nYou'll scare the crows.
        assert t110410_x5(text15=41020200, z10=71100755, flag25=0, mode15=1)
    else:
        """ State 3 """
        if not GetEventStatus(71100752):
            """ State 4,7 """
            # talk:41020000:Where you find the departed, you'll find the Memorial Mob...
            assert t110410_x5(text15=41020000, z10=71100752, flag25=0, mode15=1)
        else:
            """ State 5,8 """
            # talk:41020100:May the departed rest in peace...
            assert t110410_x6(text5=41020100, flag24=0, mode14=1)
    """ State 9 """
    return 0

def t110410_x40():
    """ State 0,1 """
    # talk:41900400:I'm taking a blood sample., talk:41900410:... Now to bring this to Lady Emma.
    call = t110410_x33(text8=41900400, text9=41900410, flag6=71100782, mode2=1)
    if call.Get() == 1:
        """ State 2 """
        # talk:41900200:........., talk:41900100:Drink this...
        call = t110410_x34(text6=41900200, text7=41900100, z1=71100781, z2=71100780, z3=71100783, mode1=1,
                           z4=9520)
        if call.Get() == 1:
            """ State 3 """
            # talk:41900000:(Wheezing), talk:41900010:(Wheezing), talk:41900050:Memorial offerings and illnesses go hand in hand..., talk:41900150:Thanks., talk:41900500: I've been cured, thanks to you.
            call = t110410_x31(text10=41900000, text11=41900010, text12=41900050, text13=41900150, text14=41900500,
                               flag9=70002050, flag10=71100784, z7=71100783, z8=71100786)
            if call.Get() == 1:
                pass
            elif call.Get() == 0:
                pass
            elif call.Done():
                """ State 4 """
                assert t110410_x37()
            """ State 7 """
            assert t110410_x38()
            """ State 6 """
            # talk:41900300:(wheezing)
            call = t110410_x35(text5=41900300, flag5=70002050)
            if call.Get() == 0:
                pass
            elif call.Done():
                """ State 5 """
                assert t110410_x39()
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 8 """
    return 0

