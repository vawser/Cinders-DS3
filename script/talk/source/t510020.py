#-------------------------------------------
#-- Church Monument
#-------------------------------------------
# -*- coding: utf-8 -*-
def t510020_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t510020_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t510020_x11()
        assert not IsClientPlayer()

def t510020_x0(action2=12000026):
    """ State 0,1 """
    # action:12000026:Join Covenant?
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t510020_x1(z8=6018, flag4=6001, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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
        elif CheckActionButtonArea(z8):
            break
    """ State 4 """
    return 0

def t510020_x2():
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

def t510020_x3(lot2=_):
    """ State 0,1 """
    GetItemFromItemLot(lot2)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t510020_x4(z9=0, z10=9000, flag3=6001):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z9)
        OpenItemAcquisitionMenu(3, z10, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t510020_x5(action5=_):
    """ State 0,1 """
    OpenGenericDialog(7, action5, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t510020_x6(goods1=379, z3=12000007):
    """ State 0,2 """
    ClearQuantityValueOfChooseQuantityDialog()
    """ State 1 """
    OpenChooseQuantityDialog(goods1, z3)
    if GetValueFromNumberSelectDialog() >= 0:
        """ State 3,5 """
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 4,6 """
        return 1

def t510020_x7():
    """ State 0,1 """
    assert t510020_x2()
    """ State 2 """
    return 0

def t510020_x8():
    """ State 0,1 """
    assert t510020_x2()
    """ State 2 """
    return 0

def t510020_x9(z6=27, lot2=4288, lot3=4287):
    """ State 0,1 """
    if ComparePlayerStatus(z6, 4, 2) == 1:
        """ State 4,6 """
        assert t510020_x3(lot2=lot3)
    elif ComparePlayerStatus(z6, 0, 1) == 1:
        """ State 3,5 """
        assert t510020_x3(lot2=lot2)
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t510020_x10():
    """ State 0,1 """
    while True:
        call = t510020_x12()
        assert not GetEventStatus(6001)
        """ State 2 """
        call = t510020_x13()
        assert GetEventStatus(6001) == 1

def t510020_x11():
    """ State 0,1 """
    assert t510020_x2()
    """ State 2 """
    return 0

def t510020_x12():
    """ State 0,1 """
    # goods:379:, action:12000026:Join Covenant?, action:13000046:You have obtained proof of the covenant, action:13000037:, action:13000017:, action:13000007:
    t510020_x14(lot1=4280, goods1=379, lot2=4288, lot3=4287, z1=15000406, action1=15000417, action2=12000026,
                action3=13000046, z2=13000027, action4=13000037, z3=12000007, action5=13000017, action6=13000007,
                z4=99, z5=20, z6=27, z7=6830, flag1=75100951, flag2=75100952, z8=6018, flag3=6001, z9=0,
                z10=9000, flag4=6001, z11=75100956, z12=75100957)

def t510020_x13():
    """ State 0 """

def t510020_x14(lot1=4280, goods1=379, lot2=4288, lot3=4287, z1=15000406, action1=15000417, action2=12000026,
                action3=13000046, z2=13000027, action4=13000037, z3=12000007, action5=13000017, action6=13000007,
                z4=99, z5=20, z6=27, z7=6830, flag1=75100951, flag2=75100952, z8=6018, flag3=6001, z9=0,
                z10=9000, flag4=6001, z11=75100956, z12=75100957):
    """ State 0 """
    ClearPlayerDamageInfo()
    """ State 2 """
    while True:
        assert t510020_x1(z8=z8, flag4=flag4, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        """ State 3 """
        ClearPlayerDamageInfo()
        call = t510020_x15(lot1=lot1, goods1=goods1, lot2=lot2, lot3=lot3, z1=z1, action1=action1, action2=action2,
                           action3=action3, z2=z2, action4=action4, z3=z3, action5=action5, action6=action6,
                           z4=z4, z5=z5, z6=z6, flag1=flag1, flag2=flag2, flag3=flag3, z9=z9, z10=z10,
                           z11=z11, z12=z12)
        def ExitPause():
            TurnCharacterToFaceEntity(69002, 10000, -1)
        if call.Done():
            pass
        elif IsPlayerDead() == 1:
            break
        elif GetDistanceToPlayer() > 12:
            """ State 6 """
            assert t510020_x8()
        elif HasPlayerBeenAttacked() == 1:
            """ State 4 """
            assert t510020_x2()
            """ State 1 """
            TurnCharacterToFaceEntity(69002, 10000, -1)
            ClearPlayerDamageInfo()
    """ State 5 """
    t510020_x7()

def t510020_x15(lot1=4280, goods1=379, lot2=4288, lot3=4287, z1=15000406, action1=15000417, action2=12000026,
                action3=13000046, z2=13000027, action4=13000037, z3=12000007, action5=13000017, action6=13000007,
                z4=99, z5=20, z6=27, flag1=75100951, flag2=75100952, flag3=6001, z9=0, z10=9000, z11=75100956,
                z12=75100957):
    """ State 0,1 """
    TurnCharacterToFaceEntity(69000, 10000, -1)
    SetTalkTime(1)
    assert GetCurrentStateElapsedTime() > 1
    """ State 14 """
    assert t510020_x9(z6=z6, lot2=lot2, lot3=lot3)
    """ State 4 """
    c1110()
    """ State 2 """
    while True:
        ClearTalkListData()
        """ State 3 """
        
        # Covenant
        AddTalkListData(1, 99062000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """ State 5 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 11 """
        if GetTalkListEntryResult() == 1:
            assert t510020_x50()
            continue
        else:
            """ State 12,19 """
            return 0

def t510020_x16(goods1=379, z4=99, z5=20, z6=27, z2=13000027, action4=13000037, z3=12000007, action5=13000017,
                action6=13000007, lot2=4288, lot3=4287, flag2=75100952, z11=75100956, z12=75100957):
    """ State 0,1 """
    # goods:379:
    if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
        """ State 2 """
        SetWorkValue(0, GetPlayerStatus(z6))
        """ State 15 """
        call = t510020_x6(goods1=goods1, z3=z3)
        if call.Get() == 0:
            """ State 3 """
            SetEventState(flag2, 1)
            assert GetCurrentStateElapsedTime() > 2
            """ State 4,6 """
            # goods:379:
            PlayerEquipmentQuantityChange(3, goods1, -1 * GetValueFromNumberSelectDialog())
            """ State 5 """
            ChangePlayerStats(z5, 0, GetValueFromNumberSelectDialog() * 1)
            """ State 7 """
            SetEventState(z11, 1)
            """ State 9 """
            if GetWorkValue(0) > 2:
                """ State 10 """
                SetEventState(z12, 1)
                """ State 20 """
                assert t510020_x3(lot2=lot3)
                """ State 19 """
                Label('L0')
                assert t510020_x5(action5=action6)
            else:
                """ State 8 """
                if ComparePlayerStatus(z6, 2, GetWorkValue(0)):
                    """ State 11 """
                    if ComparePlayerStatus(z6, 3, 1) == 1:
                        """ State 16 """
                        assert t510020_x3(lot2=lot2)
                    else:
                        """ State 12 """
                        SetEventState(z12, 1)
                        """ State 18 """
                        assert t510020_x3(lot2=lot3)
                    """ State 17 """
                    assert t510020_x5(action5=action5)
                else:
                    Goto('L0')
            """ State 13 """
            assert not GetEventStatus(flag2)
        elif call.Get() == 1:
            """ State 14 """
            pass
    else:
        """ State 21 """
        assert t510020_x5(action5=action4)
    """ State 22 """
    return 0

#----------------------------------------------------
# Covenant
#----------------------------------------------------
def t510020_x50():
    c1110()
    while True:
        ClearTalkListData()

        # Form Covenant
        AddTalkListDataIf(IsEquipmentIDObtained(2, 10090) == 0 and 
        IsEquipmentIDObtained(2, 10091) == 0 and 
        IsEquipmentIDObtained(2, 10092) == 0 and 
        IsEquipmentIDObtained(2, 10093) == 0 and 
        IsEquipmentIDObtained(2, 10094) == 0, 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001220)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            c1111(22400, 22499)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
def t510020_x51(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
        
def t510020_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    