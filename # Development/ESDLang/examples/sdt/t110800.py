# -*- coding: utf-8 -*-
def t110800_1():
    """ State 0,1 """
    t110800_x7(flag1=6000, flag2=6000, flag3=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7008000, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000,
               val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0)

def t110800_1000():
    """ State 0,2 """
    assert (t110800_x26(shop1=1100000, shop2=1100099, flag13=-1, flag14=-1, text1=-1, flag15=-1, flag16=-1,
            text2=-1, flag17=-1, text3=-1, z1=-1, text4=-1, flag18=-1, goods1=-1, flag19=-1, mode7=0))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110800_x0(action1=12095010):
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

def t110800_x1(val6=7008000, flag6=6001, flag9=6000, flag10=6000, flag11=6000, flag12=6000, mode6=0,
               flag5=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110800_x31(val6=val6, flag6=flag6, flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12,
                           mode6=mode6, flag5=flag5)
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

def t110800_x2():
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

def t110800_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110800_x4(text4=-1, flag18=-1, flag21=0, mode14=1):
    """ State 0,7 """
    assert t110800_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag21:
        """ State 1 """
        TalkToPlayer(text4, -1, -1, flag21, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text4, -1, -1, flag21, 1)
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
    SetEventState(flag18, 1)
    """ State 8 """
    return 0

def t110800_x5(text1=-1, flag20=0, mode13=1):
    """ State 0,6 """
    assert t110800_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t110800_x6(lot1=69900):
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

def t110800_x7(flag1=6000, flag2=6000, flag3=6000, val1=12, val2=10, val3=12, val4=10, val5=12, flag4=6001,
               val6=7008000, flag5=6000, flag6=6001, flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000,
               val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110800_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag4=flag4, val6=val6,
                          flag5=flag5, flag6=flag6, flag7=flag7, flag8=flag8, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1:
            pass
        elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
            """ State 3 """
            call = t110800_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag1) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag2) and not GetEventStatus(flag3):
                continue
        """ State 2 """
        call = t110800_x9(flag1=flag1, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag1) and not DoesSelfHaveSpEffect(30100)

def t110800_x8(val1=12, val2=10, val3=12, val4=10, val5=12, flag4=6001, val6=7008000, flag5=6000, flag6=6001,
               flag7=6000, flag8=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1, mode3=1,
               mode4=0, val10=1000000, val11=1000000, mode5=0):
    """ State 0,4 """
    while True:
        call = t110800_x25(val6=val6, flag5=flag5, flag6=flag6, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110800_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                pass
        elif IsAttackedBySomeone() == 1:
            pass
        elif GetEventStatus(flag8) == 1:
            Goto('L0')
        elif not GetEventStatus(flag4) and GetEventStatus(flag7) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t110800_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110800_x12(val2=val2, val3=val3)

def t110800_x9(flag1=6000, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110800_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110800_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110800_x10(val1=12, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110800_x18(mode2=mode2, mode4=mode4)
    def WhilePaused():
        c1117(mode1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode3 == 1, 0.1)
        c5120(val1 == 1 and not mode1 and mode5 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1):
        """ State 1 """
        assert t110800_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110800_x14()
    """ State 4 """
    return 0

def t110800_x11(val5=12):
    """ State 0,1 """
    call = t110800_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110800_x2()
    """ State 3 """
    return 0

def t110800_x12(val2=10, val3=12):
    """ State 0 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 4 """
    assert t110800_x2()
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110800_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110800_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110800_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110800_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110800_x2()
    """ State 4 """
    return 0

def t110800_x14():
    """ State 0,1 """
    assert t110800_x2()
    """ State 2 """
    return 0

def t110800_x15():
    """ State 0,2 """
    assert t110800_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110800_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110800_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110800_x2()

def t110800_x17():
    """ State 0,1 """
    assert t110800_x19(z2=1101, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110800_x18(mode2=1, mode4=0):
    """ State 0,2 """
    assert f116(10000) == 1
    """ State 1 """
    assert GetCurrentStateElapsedFrames() > 5
    """ State 3 """
    assert not DoesPlayerHaveSpEffect(4511)
    """ State 4 """
    def WhilePaused():
        c5120(mode2 == 1 and not mode4, 1, 0, 9, 9, 9, 9, 9, 9, 9)
        c5120(mode2 == 1 and mode4 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
    assert t110800_x19(z2=1000, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 5 """
    return 0

def t110800_x19(z2=_, mode9=0, mode10=0, mode11=0, mode12=0):
    """ State 0,4 """
    if f118(z2) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z2)
        assert f117() == mode9 or f117() == mode10 or f117() == mode11 or f117() == mode12
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110800_x20():
    """ State 0,1 """
    call = t110800_x19(z2=1103, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110800_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110800_x21():
    """ State 0,2 """
    call = t110800_x19(z2=1102, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110800_x22():
    """ State 0,1 """
    assert t110800_x19(z2=1001, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110800_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110800_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110800_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110800_x13(val2=val2, val3=val3)

def t110800_x24():
    """ State 0,1 """
    assert t110800_x19(z2=1100, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110800_x25(val6=7008000, flag5=6000, flag6=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t110800_x19(z2=2000, mode9=0, mode10=0, mode11=0, mode12=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110800_x1(val6=val6, flag6=flag6, flag9=6000, flag10=6000, flag11=6000, flag12=6000,
                mode6=0, flag5=flag5, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110800_x26(shop1=1100000, shop2=1100099, flag13=-1, flag14=-1, text1=-1, flag15=-1, flag16=-1, text2=-1,
                flag17=-1, text3=-1, z1=-1, text4=-1, flag18=-1, goods1=-1, flag19=-1, mode7=0):
    """ State 0,17 """
    if GetEventStatus(flag15) == 1 and not GetEventStatus(flag18) and mode7 == 1:
        """ State 18,26 """
        assert t110800_x29(text1=text1, text4=text4, lot1=69900, flag15=flag15, flag18=flag18, mode8=1)
        """ State 1 """
        Label('L0')
        while True:
            ClearTalkListData()
            """ State 3 """
            # action:15000010:Purchase items
            AddTalkListData(1, 15000010, 6001)
            # action:15000011:Sell items
            AddTalkListData(2, 15000011, 6001)
            # action:15000521:Take Blood Sample
            AddTalkListDataIf(GetEventStatus(flag13) == 1 and not GetEventStatus(flag14) and GetEventStatus(flag16) == 1,
                              3, 15000521, 6001)
            # action:15000520:Give Dragonrot Pellet
            AddTalkListDataIf(not GetEventStatus(flag17) and ComparePlayerInventoryNumber(3, 9550, 2, 0, 0) == 1 and GetEventStatus(flag16) == 1,
                              4, 15000520, 6001)
            """ State 4 """
            ShowShopMessage(1)
            """ State 5 """
            if GetTalkListEntryResult() == 1:
                """ State 27 """
                assert (t110800_x30(shop1=shop1, shop2=shop2) and not (CheckSpecificPersonMenuIsOpen(5,
                        0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
                """ State 7 """
            elif GetTalkListEntryResult() == 2:
                """ State 8 """
                OpenSellShop(-1, -1)
                assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """ State 9 """
            elif GetTalkListEntryResult() == 3:
                """ State 11,25 """
                assert (t110800_x29(text1=text1, text4=text4, lot1=69900, flag15=flag15, flag18=flag18,
                        mode8=0))
            elif GetTalkListEntryResult() == 4:
                """ State 12,22 """
                # action:12095010:Give Dragonrot Pellet?
                assert t110800_x0(action1=12095010)
                """ State 13 """
                if GetGenericDialogButtonResult() == 1:
                    """ State 14,16 """
                    PlayerEquipmentQuantityChange(3, 9550, -1)
                    PlayerEquipmentQuantityChange(3, goods1, -1)
                    """ State 19 """
                    SetEventState(flag19, 1)
                    break
                else:
                    """ State 15,24 """
                    assert t110800_x5(text1=text3, flag20=0, mode13=1)
            elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                """ State 6,28 """
                return 0
    elif GetEventStatus(flag19) == 1 and not GetEventStatus(flag17) and mode7 == 1:
        """ State 21 """
        pass
    else:
        """ State 10 """
        RequestUnlockTrophy(18)
        """ State 2 """
        def ExitPause():
            c1110()
        Goto('L0')
    """ State 20,23 """
    assert t110800_x4(text4=text2, flag18=flag17, flag21=0, mode14=1)
    Goto('L0')

def t110800_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110800_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110800_x2()
    """ State 4 """
    return 0

def t110800_x28():
    """ State 0,1 """
    assert t110800_x19(z2=1002, mode9=0, mode10=0, mode11=0, mode12=0)
    """ State 2 """
    return 0

def t110800_x29(text1=-1, text4=-1, lot1=69900, flag15=-1, flag18=-1, mode8=_):
    """ State 0,3 """
    if not mode8:
        """ State 4,8 """
        assert t110800_x5(text1=text1, flag20=0, mode13=1)
        """ State 2 """
        SetEventState(flag15, 1)
        """ State 10 """
        assert t110800_x6(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag15) == 1 and not GetEventStatus(flag18):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t110800_x4(text4=text4, flag18=flag18, flag21=0, mode14=1)
    """ State 11 """
    return 0

def t110800_x30(shop1=1100000, shop2=1100099):
    """ State 0,1 """
    if GetEventStatus(6020) == 1:
        """ State 3,5 """
        OpenRegularShop(shop1 + 50, shop2 + 50)
    else:
        """ State 2,4 """
        OpenRegularShop(shop1, shop2)
    """ State 6 """
    return 0

def t110800_x31(val6=7008000, flag6=6001, flag9=6000, flag10=6000, flag11=6000, flag12=6000, mode6=0,
                flag5=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag6) == 1 or GetEventStatus(flag9) == 1 or GetEventStatus(flag10) ==
                1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag5)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag6) and not GetEventStatus(flag9) and not GetEventStatus(flag10)
                  and not GetEventStatus(flag11) and not GetEventStatus(flag12)):
                Continue('mainloop')
            elif GetEventStatus(flag5) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode6):
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

