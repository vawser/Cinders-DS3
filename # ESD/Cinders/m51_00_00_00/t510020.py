# -*- coding: utf-8 -*-
def t510020_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t510020_x10()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t510020_x11()
        assert not IsClientPlayer()

def t510020_x0(z43=_):
    """State 0,1"""
    OpenGenericDialog(8, z43, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t510020_x1(actionbutton1=6018, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 3"""
        assert (GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1 or GetEventStatus(flag3) ==
                1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1)
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3) and
              not GetEventStatus(flag4) and not GetEventStatus(flag5)):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
    """State 4"""
    return 0

def t510020_x2():
    """State 0,1"""
    if not CheckSpecificPersonTalkHasEnded(0):
        """State 7"""
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """State 6"""
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """State 2"""
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """State 3"""
        ForceCloseGenericDialog()
    else:
        pass
    """State 4"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 5"""
        ForceCloseMenu()
    else:
        pass
    """State 8"""
    return 0

def t510020_x3(lot1=_):
    """State 0,1"""
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 2"""
    return 0

def t510020_x4(z40=_, z41=_, z42=_):
    """State 0,1"""
    if GetEventStatus(z42) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(z40)
        OpenItemAcquisitionMenu(3, z41, 1)
        SetEventState(z42, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

def t510020_x5(z39=_):
    """State 0,1"""
    OpenGenericDialog(7, z39, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t510020_x6(z37=_, z38=_):
    """State 0,2"""
    ClearQuantityValueOfChooseQuantityDialog()
    """State 1"""
    OpenChooseQuantityDialog(z37, z38)
    if GetValueFromNumberSelectDialog() >= 0:
        """State 3,5"""
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 4,6"""
        return 1

def t510020_x7():
    """State 0,1"""
    assert t510020_x2()
    """State 2"""
    return 0

def t510020_x8():
    """State 0,1"""
    assert t510020_x2()
    """State 2"""
    return 0

def t510020_x9(z14=27, lot1=4288, lot2=4287):
    """State 0,1"""
    if ComparePlayerStatus(z14, 4, 2) == 1:
        """State 4,6"""
        assert t510020_x3(lot1=lot2)
    elif ComparePlayerStatus(z14, 0, 1) == 1:
        """State 3,5"""
        assert t510020_x3(lot1=lot1)
    else:
        """State 2"""
        pass
    """State 7"""
    return 0

def t510020_x10():
    """State 0"""
    while True:
        """State 1"""
        call = t510020_x12()
        assert not GetEventStatus(6001)
        """State 2"""
        call = t510020_x13()
        assert GetEventStatus(6001) == 1

def t510020_x11():
    """State 0,1"""
    assert t510020_x2()
    """State 2"""
    return 0

def t510020_x12():
    """State 0,1"""
    t510020_x14(z1=4280, z2=379, lot1=4288, lot2=4287, z3=15000406, z4=15000417, z5=12000026, z6=13000046,
                z7=13000027, z8=13000037, z9=12000007, z10=13000017, z11=13000007, z12=99, z13=20, z14=27,
                z15=6830, z16=75100951, z17=75100952, actionbutton1=6018, z18=6001, z19=0, z20=9000,
                flag1=6001, z21=75100956, z22=75100957)
    Quit()

def t510020_x13():
    """State 0"""
    Quit()

def t510020_x14(z1=4280, z2=379, lot1=4288, lot2=4287, z3=15000406, z4=15000417, z5=12000026, z6=13000046,
                z7=13000027, z8=13000037, z9=12000007, z10=13000017, z11=13000007, z12=99, z13=20, z14=27,
                z15=6830, z16=75100951, z17=75100952, actionbutton1=6018, z18=6001, z19=0, z20=9000,
                flag1=6001, z21=75100956, z22=75100957):
    """State 0"""
    ClearPlayerDamageInfo()
    while True:
        """State 2"""
        assert (t510020_x1(actionbutton1=actionbutton1, flag1=flag1, flag2=6000, flag3=6000, flag4=6000,
                flag5=6000))
        """State 3"""
        ClearPlayerDamageInfo()
        call = t510020_x15(z1=z1, z2=z2, lot1=lot1, lot2=lot2, z3=z3, z4=z4, z5=z5, z6=z6, z7=z7, z8=z8,
                           z9=z9, z10=z10, z11=z11, z12=z12, z13=z13, z14=z14, z16=z16, z17=z17, z18=z18,
                           z19=z19, z20=z20, z21=z21, z22=z22)
        def ExitPause():
            TurnCharacterToFaceEntity(69002, 10000, -1)
        if call.Done():
            pass
        elif IsPlayerDead() == 1:
            break
        elif GetDistanceToPlayer() > 12:
            """State 6"""
            assert t510020_x8()
        elif HasPlayerBeenAttacked() == 1:
            """State 4"""
            assert t510020_x2()
            """State 1"""
            TurnCharacterToFaceEntity(69002, 10000, -1)
            ClearPlayerDamageInfo()
    """State 5"""
    t510020_x7()
    Quit()

def t510020_x15(z1=4280, z2=379, lot1=4288, lot2=4287, z3=15000406, z4=15000417, z5=12000026, z6=13000046,
                z7=13000027, z8=13000037, z9=12000007, z10=13000017, z11=13000007, z12=99, z13=20, z14=27,
                z16=75100951, z17=75100952, z18=6001, z19=0, z20=9000, z21=75100956, z22=75100957):
    """State 0,1"""
    TurnCharacterToFaceEntity(69000, 10000, -1)
    SetTalkTime(1)
    assert GetCurrentStateElapsedTime() > 1
    """State 14"""
    assert t510020_x9(z14=z14, lot1=lot1, lot2=lot2)
    """State 4"""
    MainBonfireMenuFlag()
    while True:
        """State 2"""
        ClearTalkListData()
        """State 3"""
        
        # Spears of the Church
        AddTalkListData(1, 99062026, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        """State 5"""
        ShowShopMessage(1)
        
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """State 11"""
        
        # Spears of the Church
        if GetTalkListEntryResult() == 1:
            """State 6"""
            assert t510020_x50()
        else:
            """State 12,19"""
            return 0

def t510020_x16(z23=_, z24=_, z25=_, z26=_, z27=_, z28=_, z29=_, z30=_, z31=_, z32=_, z33=_, z34=_, z35=_, z36=_):
    """State 0,1"""
    if ComparePlayerInventoryNumber(3, z23, 2, 0, 0) == 1:
        """State 2"""
        SetWorkValue(0, GetPlayerStatus(z26))
        """State 15"""
        call = t510020_x6(z37=z23, z38=z29)
        if call.Get() == 0:
            """State 3"""
            SetEventState(z34, 1)
            assert GetCurrentStateElapsedTime() > 2
            """State 4,6"""
            PlayerEquipmentQuantityChange(3, z23, -1 * GetValueFromNumberSelectDialog())
            """State 5"""
            ChangePlayerStats(z25, 0, GetValueFromNumberSelectDialog() * 1)
            """State 7"""
            SetEventState(z35, 1)
            """State 9"""
            if GetWorkValue(0) > 2:
                """State 10"""
                SetEventState(z36, 1)
                """State 20"""
                assert t510020_x3(lot1=z33)
                """State 19"""
                Label('L0')
                assert t510020_x5(z39=z31)
            else:
                """State 8"""
                if ComparePlayerStatus(z26, 2, GetWorkValue(0)):
                    """State 11"""
                    if ComparePlayerStatus(z26, 3, 1) == 1:
                        """State 16"""
                        assert t510020_x3(lot1=z32)
                    else:
                        """State 12"""
                        SetEventState(z36, 1)
                        """State 18"""
                        assert t510020_x3(lot1=z33)
                    """State 17"""
                    assert t510020_x5(z39=z30)
                else:
                    Goto('L0')
            """State 13"""
            assert not GetEventStatus(z34)
        elif call.Get() == 1:
            """State 14"""
            pass
    else:
        """State 21"""
        assert t510020_x5(z39=z28)
    """State 22"""
    return 0

# Covenant Menu
def t510020_x50():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10090), 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001220)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(22400, 22499)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 14"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 15"""
            return 0

def t510020_x51(action2=99062004):
    """State 0,1"""
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t510020_x52(action1=_):
    """State 0,1"""
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

