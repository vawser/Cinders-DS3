#-------------------------------------------
#-- Archdeacon McDonnell
#-------------------------------------------
# -*- coding: utf-8 -*-
def t370020_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370020_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370020_x14()
        assert not IsClientPlayer()

def t370020_x0(action3=12000026):
    """ State 0,1 """
    # action:12000026:Join Covenant?
    OpenGenericDialog(8, action3, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t370020_x1(z5=6013, flag4=6001, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t370020_x2():
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

def t370020_x3(lot2=_):
    """ State 0,1 """
    GetItemFromItemLot(lot2)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t370020_x4(z6=0, z7=9000, flag3=6001):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z6)
        OpenItemAcquisitionMenu(3, z7, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t370020_x5(action4=_):
    """ State 0,1 """
    OpenGenericDialog(7, action4, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t370020_x6(goods1=367, val1=99, z2=23, z3=30, action5=13000023, action6=13000033, z1=12000003, action7=13000013,
               action8=13000003, lot2=4238, lot3=4237, flag2=73700952, flag3=6001, z6=0, z7=9000):
    """ State 0,1,11 """
    # goods:367:Human Dregs
    if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
        """ State 12,9 """
        SetWorkValue(0, GetPlayerStatus(z3))
        """ State 30 """
        call = t370020_x7(goods1=goods1, z1=z1)
        if call.Get() == 0:
            """ State 3,25 """
            SetEventState(flag2, 1)
            assert GetCurrentStateElapsedTime() > 2
            """ State 24,15,18 """
            # goods:367:Human Dregs
            PlayerEquipmentQuantityChange(3, goods1, -1 * GetValueFromNumberSelectDialog())
            """ State 17 """
            ChangePlayerStats(z2, 0, GetValueFromNumberSelectDialog() * 1)
            """ State 16 """
            if GetWorkValue(0) > 2:
                """ State 22,34 """
                assert t370020_x3(lot2=lot3)
            else:
                """ State 23 """
                if ComparePlayerStatus(z3, 2, GetWorkValue(0)):
                    """ State 7,13 """
                    if ComparePlayerStatus(z3, 3, 1) == 1:
                        """ State 19,32 """
                        assert t370020_x3(lot2=lot2)
                    elif ComparePlayerStatus(z3, 3, 2) == 1:
                        """ State 20,33 """
                        Label('L0')
                        assert t370020_x3(lot2=lot3)
                    else:
                        """ State 21 """
                        Goto('L0')
                    """ State 27 """
                    assert t370020_x5(action4=action7)
                    Goto('L1')
                else:
                    """ State 8 """
                    pass
            """ State 29 """
            assert t370020_x5(action4=action8)
        elif call.Get() == 1:
            """ State 4 """
            pass
    else:
        """ State 5,28 """
        assert t370020_x5(action4=action6)
    """ State 26 """
    Label('L1')
    assert not GetEventStatus(flag2)
    """ State 35 """
    return 0

def t370020_x7(goods1=367, z1=12000003):
    """ State 0,2 """
    ClearQuantityValueOfChooseQuantityDialog()
    """ State 1 """
    OpenChooseQuantityDialog(goods1, z1)
    if GetValueFromNumberSelectDialog() >= 0:
        """ State 3,5 """
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 4,6 """
        return 1

def t370020_x8():
    """ State 0,1 """
    assert t370020_x2()
    """ State 2 """
    return 0

def t370020_x9(lot1=4230, goods1=367, lot2=4238, lot3=4237, action1=15000406, action2=15000413, action3=12000026,
               action4=13000046, action5=13000023, action6=13000033, z1=12000003, action7=13000013, action8=13000003,
               val1=99, z2=23, z3=30, flag1=6730, z4=73700951, flag2=73700952, flag3=6001, z6=0, z7=9000):
    """ State 0,10 """
    TurnCharacterToFaceEntity(69000, 10000, -1)
    SetTalkTime(1)
    assert GetCurrentStateElapsedTime() > 1
    """ State 16 """
    assert t370020_x4(z6=z6, z7=z7, flag3=flag3)
    """ State 17 """
    assert t370020_x12(z3=z3, lot2=lot2, lot3=lot3)
    
    # Learn Gesture
    assert t370020_x17(z2=39, z3=9042, flag1=25000307)
    
    """ State 7 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # action:15000406:Ask to Join Covenant
        AddTalkListDataIf(not GetEventStatus(flag1), 1, action1, -1)
        # action:15003004:Aldrich Faithful
        AddTalkListDataIf(GetEventStatus(flag1) == 1, 2, 15003006, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008050) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008050) == 1, 11, 15015041, -1)
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008050) == 1, 12, 15015042, -1)
        
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 4,14 """
            call = t370020_x0(action3=action3)
            if call.Get() == 0:
                """ State 9,11 """
                SetEventState(flag2, 1)
                assert GetCurrentStateElapsedTime() > 2
                """ State 12 """
                assert t370020_x3(lot2=lot1) and not GetEventStatus(flag2)
                """ State 13 """
                assert t370020_x5(action4=action4)
            elif call.Done():
                """ State 8 """
                pass
        elif GetTalkListEntryResult() == 2:
            """ State 30,31 """
            c1111(21400, 21599)
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008050, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99012045, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99012040, 0, 0, 0)
                GetItemFromItemLot(90040)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99012041, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                OpenGenericDialog(1, 99012042, 0, 0, 0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            SetEventState(25008050, 0)
            GetItemFromItemLot(800001300)
            OpenGenericDialog(1, 99012042, 0, 0, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6,18 """
            return 0

def t370020_x10():
    """ State 0,1 """
    assert t370020_x2()
    """ State 2 """
    return 0

def t370020_x11(lot1=4230, goods1=367, lot2=4238, lot3=4237, action1=15000406, action2=15000413, action3=12000026,
                action4=13000046, action5=13000023, action6=13000033, z1=12000003, action7=13000013,
                action8=13000003, val1=99, z2=23, z3=30, flag1=6730, z4=73700951, flag2=73700952, z5=6013,
                flag3=6001, z6=0, z7=9000, flag4=6001):
    """ State 0 """
    ClearPlayerDamageInfo()
    """ State 4 """
    while True:
        assert t370020_x1(z5=z5, flag4=flag4, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        """ State 5 """
        ClearPlayerDamageInfo()
        call = t370020_x9(lot1=lot1, goods1=goods1, lot2=lot2, lot3=lot3, action1=action1, action2=action2,
                          action3=action3, action4=action4, action5=action5, action6=action6, z1=z1,
                          action7=action7, action8=action8, val1=val1, z2=z2, z3=z3, flag1=flag1, z4=z4,
                          flag2=flag2, flag3=flag3, z6=z6, z7=z7)
        def ExitPause():
            TurnCharacterToFaceEntity(69002, 10000, -1)
        if call.Done():
            pass
        elif IsPlayerDead() == 1:
            break
        elif GetDistanceToPlayer() > 12:
            """ State 3 """
            assert t370020_x10() and GetDistanceToPlayer() < 10
        elif HasPlayerBeenAttacked() == 1:
            """ State 6 """
            assert t370020_x2()
            """ State 1 """
            TurnCharacterToFaceEntity(69002, 10000, -1)
            ClearPlayerDamageInfo()
    """ State 2 """
    t370020_x8()

def t370020_x12(z3=30, lot2=4238, lot3=4237):
    """ State 0,1 """
    if ComparePlayerStatus(z3, 4, 2) == 1:
        """ State 4,6 """
        assert t370020_x3(lot2=lot3)
    elif ComparePlayerStatus(z3, 0, 1) == 1:
        """ State 3,5 """
        assert t370020_x3(lot2=lot2)
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t370020_x13():
    """ State 0,1 """
    while True:
        call = t370020_x15()
        assert not GetEventStatus(6001)
        """ State 2 """
        call = t370020_x16()
        assert GetEventStatus(6001) == 1

def t370020_x14():
    """ State 0,1 """
    assert t370020_x2()
    """ State 2 """
    return 0

def t370020_x15():
    """ State 0,1 """
    # lot:4230:Aldrich Faithful, goods:367:Human Dregs, lot:4238:Great Deep Soul, lot:4237:Archdeacon's Great Staff, action:15000406:Ask to Join Covenant, action:15000413:Offer <?gdsparam@367?>, action:12000026:Join Covenant?, action:13000046:You have obtained proof of the covenant, action:13000023:Cannot offer more. Well done., action:13000033:No <?gdsparam@367?> in inventory, action:13000013:Covenant allegiance deepened. Rank gained., action:13000003:Covenant allegiance deepened
    t370020_x11(lot1=4230, goods1=367, lot2=4238, lot3=4237, action1=15000406, action2=15000413, action3=12000026,
                action4=13000046, action5=13000023, action6=13000033, z1=12000003, action7=13000013,
                action8=13000003, val1=99, z2=23, z3=30, flag1=6730, z4=73700951, flag2=73700952, z5=6013,
                flag3=6001, z6=0, z7=9000, flag4=6001)

def t370020_x16():
    """ State 0 """

def t370020_x17(z2=_, z3=_, flag1=_):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0
