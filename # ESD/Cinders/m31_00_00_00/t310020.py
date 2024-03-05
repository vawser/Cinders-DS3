# -*- coding: utf-8 -*-
def t310020_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t310020_x13()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t310020_x14()
        assert not IsClientPlayer()

def t310020_x0(action2=12000021):
    """State 0,1"""
    # action:12000021:"Join Covenant?"
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t310020_x1(actionbutton1=6011, flag4=6001, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 3"""
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
    """State 4"""
    return 0

def t310020_x2():
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

def t310020_x3(lot2=_):
    """State 0,1"""
    GetItemFromItemLot(lot2)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 2"""
    return 0

def t310020_x4(gesture1=0, z12=9000, flag3=6001):
    """State 0,1"""
    if GetEventStatus(flag3) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(gesture1)
        OpenItemAcquisitionMenu(3, z12, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

def t310020_x5(action3=13000041):
    """State 0,1"""
    # action:13000041:"Covenant established."
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t310020_x6(z13=_, z14=_, z15=_, z16=_, z17=_, z18=_, z19=_, z20=_, z21=_, z22=_, z23=_, z24=_):
    """State 0,1,11"""
    if ComparePlayerInventoryNumber(3, z13, 2, 0, 0) == 1:
        """State 12,9"""
        SetWorkValue(0, GetPlayerStatus(z16))
        """State 30"""
        call = t310020_x7(z25=z13, z26=z19)
        if call.Get() == 0:
            """State 3,25"""
            SetEventState(z24, 1)
            assert GetCurrentStateElapsedTime() > 2
            """State 24,15,18"""
            PlayerEquipmentQuantityChange(3, z13, -1 * GetValueFromNumberSelectDialog())
            """State 17"""
            ChangePlayerStats(z15, 0, GetValueFromNumberSelectDialog() * 1)
            """State 16"""
            if GetWorkValue(0) > 2:
                """State 22,34"""
                assert t310020_x3(lot2=z23)
            else:
                """State 23"""
                if ComparePlayerStatus(z16, 2, GetWorkValue(0)):
                    """State 7,13"""
                    if ComparePlayerStatus(z16, 3, 1) == 1:
                        """State 19,32"""
                        assert t310020_x3(lot2=z22)
                    elif ComparePlayerStatus(z16, 3, 2) == 1:
                        """State 20,33"""
                        Label('L0')
                        assert t310020_x3(lot2=z23)
                    else:
                        """State 21"""
                        Goto('L0')
                    """State 27"""
                    assert t310020_x5(action3=z20)
                    Goto('L1')
                else:
                    """State 8"""
                    pass
            """State 29"""
            assert t310020_x5(action3=z21)
        elif call.Get() == 1:
            """State 4"""
            pass
    else:
        """State 5,28"""
        assert t310020_x5(action3=z18)
    """State 26"""
    Label('L1')
    assert not GetEventStatus(z24)
    """State 35"""
    return 0

def t310020_x7(z25=_, z26=_):
    """State 0,2"""
    ClearQuantityValueOfChooseQuantityDialog()
    """State 1"""
    OpenChooseQuantityDialog(z25, z26)
    if GetValueFromNumberSelectDialog() >= 0:
        """State 3,5"""
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 4,6"""
        return 1

def t310020_x8():
    """State 0,1"""
    assert t310020_x2()
    """State 2"""
    return 0

def t310020_x9(lot1=4210, z1=374, lot2=4218, lot3=4217, action1=15000401, z2=15000411, action2=12000021,
               action3=13000041, z3=13000021, z4=13000031, z5=12000001, z6=13000011, z7=13000001, z8=99,
               z9=19, z10=26, flag1=6001, z11=73100951, flag2=73100952, flag3=6001, gesture1=0, z12=9000):
    """State 0,10"""
    TurnCharacterToFaceEntity(69000, 10000, -1)
    SetTalkTime(1)
    assert GetCurrentStateElapsedTime() > 1
    """State 16"""
    assert t310020_x4(gesture1=gesture1, z12=z12, flag3=flag3)
    """State 17"""
    assert t310020_x12(z10=z10, lot2=lot2, lot3=lot3)
    """State 7"""
    MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        """State 2"""
        
        # Covenant
        AddTalkListData(2, 99062000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """State 3"""
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 2:
            """State 5,15"""
            assert t310020_x50()
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6,18"""
            return 0

def t310020_x10():
    """State 0,1"""
    assert t310020_x2()
    """State 2"""
    return 0

def t310020_x11(lot1=4210, z1=374, lot2=4218, lot3=4217, action1=15000401, z2=15000411, action2=12000021,
                action3=13000041, z3=13000021, z4=13000031, z5=12000001, z6=13000011, z7=13000001, z8=99,
                z9=19, z10=26, flag1=6001, z11=73100951, flag2=73100952, actionbutton1=6011, flag3=6001,
                gesture1=0, z12=9000, flag4=6001):
    """State 0"""
    ClearPlayerDamageInfo()
    while True:
        """State 4"""
        assert (t310020_x1(actionbutton1=actionbutton1, flag4=flag4, flag5=6000, flag6=6000, flag7=6000,
                flag8=6000))
        """State 5"""
        ClearPlayerDamageInfo()
        call = t310020_x9(lot1=lot1, z1=z1, lot2=lot2, lot3=lot3, action1=action1, z2=z2, action2=action2,
                          action3=action3, z3=z3, z4=z4, z5=z5, z6=z6, z7=z7, z8=z8, z9=z9, z10=z10,
                          flag1=flag1, z11=z11, flag2=flag2, flag3=flag3, gesture1=gesture1, z12=z12)
        def ExitPause():
            TurnCharacterToFaceEntity(69002, 10000, -1)
        if call.Done():
            pass
        elif IsPlayerDead() == 1:
            break
        elif GetDistanceToPlayer() > 12:
            """State 3"""
            assert t310020_x10() and GetDistanceToPlayer() < 10
        elif HasPlayerBeenAttacked() == 1:
            """State 6"""
            assert t310020_x2()
            """State 1"""
            TurnCharacterToFaceEntity(69002, 10000, -1)
            ClearPlayerDamageInfo()
    """State 2"""
    t310020_x8()
    Quit()

def t310020_x12(z10=26, lot2=4218, lot3=4217):
    """State 0,1"""
    if ComparePlayerStatus(z10, 4, 2) == 1:
        """State 4,6"""
        assert t310020_x3(lot2=lot3)
    elif ComparePlayerStatus(z10, 0, 1) == 1:
        """State 3,5"""
        assert t310020_x3(lot2=lot2)
    else:
        """State 2"""
        pass
    """State 7"""
    return 0

def t310020_x13():
    """State 0"""
    while True:
        """State 1"""
        call = t310020_x15()
        assert not GetEventStatus(6001)
        """State 2"""
        call = t310020_x16()
        assert GetEventStatus(6001) == 1

def t310020_x14():
    """State 0,1"""
    assert t310020_x2()
    """State 2"""
    return 0

def t310020_x15():
    """State 0,1"""
    # lot:4210:Mound-makers, lot:4218:Bloodlust, lot:4217:Warmth, action:15000401:"Establish Covenant", action:12000021:"Join Covenant?", action:13000041:"Covenant established."
    t310020_x11(lot1=4210, z1=374, lot2=4218, lot3=4217, action1=15000401, z2=15000411, action2=12000021,
                action3=13000041, z3=13000021, z4=13000031, z5=12000001, z6=13000011, z7=13000001, z8=99,
                z9=19, z10=26, flag1=6001, z11=73100951, flag2=73100952, actionbutton1=6011, flag3=6001,
                gesture1=0, z12=9000, flag4=6001)
    Quit()

def t310020_x16():
    """State 0"""
    Quit()

# Covenant Menu
def t310020_x50():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10050), 1, 15003019, -1)
        
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
            GetItemFromItemLot(800001200)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(21800, 21899)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 14"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 15"""
            return 0
    """State 2"""
    return 0

def t310020_x51(action5=99062004):
    """State 0,1"""
    OpenGenericDialog(8, action5, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t310020_x52(action4=_):
    """State 0,1"""
    OpenGenericDialog(7, action4, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

