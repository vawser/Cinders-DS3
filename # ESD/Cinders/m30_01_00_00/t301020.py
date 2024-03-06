# -*- coding: utf-8 -*-
def t301020_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t301020_x13()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t301020_x14()
        assert not IsClientPlayer()

def t301020_x0(action2=12000020):
    """State 0,1"""
    # action:12000020:"Join Covenant?"
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t301020_x1(actionbutton1=6010, flag4=73010953, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t301020_x2():
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

def t301020_x3(lot2=_):
    """State 0,1"""
    GetItemFromItemLot(lot2)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 2"""
    return 0

def t301020_x4(gesture1=1, z12=9007, flag3=6051):
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

def t301020_x5(action3=13000040):
    """State 0,1"""
    # action:13000040:"Covenant established."
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t301020_x6(z16=_, z17=_, z18=_, z19=_, z20=_, z21=_, z22=_, z23=_, z24=_, z25=_, z26=_, z27=_):
    """State 0,1,11"""
    if ComparePlayerInventoryNumber(3, z16, 2, 0, 0) == 1:
        """State 12,9"""
        SetWorkValue(0, GetPlayerStatus(z19))
        """State 30"""
        call = t301020_x7(z28=z16, z29=z22)
        if call.Get() == 0:
            """State 3,25"""
            SetEventState(z27, 1)
            assert GetCurrentStateElapsedTime() > 2
            """State 24,15,18"""
            PlayerEquipmentQuantityChange(3, z16, -1 * GetValueFromNumberSelectDialog())
            """State 17"""
            ChangePlayerStats(z18, 0, GetValueFromNumberSelectDialog() * 1)
            """State 16"""
            if GetWorkValue(0) > 2:
                """State 22,34"""
                assert t301020_x3(lot2=z26)
            else:
                """State 23"""
                if ComparePlayerStatus(z19, 2, GetWorkValue(0)):
                    """State 7,13"""
                    if ComparePlayerStatus(z19, 3, 1) == 1:
                        """State 19,32"""
                        assert t301020_x3(lot2=z25)
                    elif ComparePlayerStatus(z19, 3, 2) == 1:
                        """State 20,33"""
                        Label('L0')
                        assert t301020_x3(lot2=z26)
                    else:
                        """State 21"""
                        Goto('L0')
                    """State 27"""
                    assert t301020_x5(action3=z23)
                    Goto('L1')
                else:
                    """State 8"""
                    pass
            """State 29"""
            assert t301020_x5(action3=z24)
        elif call.Get() == 1:
            """State 4"""
            pass
    else:
        """State 5,28"""
        assert t301020_x5(action3=z21)
    """State 26"""
    Label('L1')
    assert not GetEventStatus(z27)
    """State 35"""
    return 0

def t301020_x7(z28=_, z29=_):
    """State 0,2"""
    ClearQuantityValueOfChooseQuantityDialog()
    """State 1"""
    OpenChooseQuantityDialog(z28, z29)
    if GetValueFromNumberSelectDialog() >= 0:
        """State 3,5"""
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 4,6"""
        return 1

def t301020_x8():
    """State 0,1"""
    assert t301020_x2()
    """State 2"""
    return 0

def t301020_x9(lot1=4200, z1=375, lot2=4208, lot3=4207, action1=15000400, z2=15000410, action2=12000020,
               action3=13000040, z3=13000020, z4=13000030, z5=12000000, z6=13000010, z7=13000000, z8=99,
               z9=18, z10=25, flag1=6001, z11=73010951, flag2=73010952, flag3=6051, gesture1=1, z12=9007):
    """State 0,10"""
    TurnCharacterToFaceEntity(69000, 10000, -1)
    SetTalkTime(1)
    assert GetCurrentStateElapsedTime() > 1
    """State 16"""
    assert t301020_x4(gesture1=gesture1, z12=z12, flag3=flag3)
    """State 17"""
    assert t301020_x12(z10=z10, lot2=lot2, lot3=lot3)
    """State 7"""
    MainBonfireMenuFlag()
    
    while True:
        """State 1"""
        ClearTalkListData()
        """State 2"""
        
        # Covenant
        AddTalkListData(2, 99062021, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """State 3"""
        ShowShopMessage(1)
        
        # Covenant
        if GetTalkListEntryResult() == 2:
            """State 5"""
            assert t301020_x50()
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 30"""
            return 0

def t301020_x10():
    """State 0,1"""
    assert t301020_x2()
    """State 2"""
    return 0

def t301020_x11(lot1=4200, z1=375, lot2=4208, lot3=4207, action1=15000400, z2=15000410, action2=12000020,
                action3=13000040, z3=13000020, z4=13000030, z5=12000000, z6=13000010, z7=13000000, z8=99,
                z9=18, z10=25, flag1=6001, z11=73010951, flag2=73010952, actionbutton1=6010, flag3=6051,
                gesture1=1, z12=9007, flag4=73010953):
    """State 0"""
    ClearPlayerDamageInfo()
    while True:
        """State 4"""
        assert (t301020_x1(actionbutton1=actionbutton1, flag4=flag4, flag5=6000, flag6=6000, flag7=6000,
                flag8=6000))
        """State 5"""
        ClearPlayerDamageInfo()
        call = t301020_x9(lot1=lot1, z1=z1, lot2=lot2, lot3=lot3, action1=action1, z2=z2, action2=action2,
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
            assert t301020_x10() and GetDistanceToPlayer() < 10
        elif HasPlayerBeenAttacked() == 1:
            """State 6"""
            assert t301020_x2()
            """State 1"""
            TurnCharacterToFaceEntity(69002, 10000, -1)
            ClearPlayerDamageInfo()
    """State 2"""
    t301020_x8()
    Quit()

def t301020_x12(z10=25, lot2=4208, lot3=4207):
    """State 0,1"""
    if ComparePlayerStatus(z10, 4, 2) == 1:
        """State 4,6"""
        assert t301020_x3(lot2=lot3)
    elif ComparePlayerStatus(z10, 0, 1) == 1:
        """State 3,5"""
        assert t301020_x3(lot2=lot2)
    else:
        """State 2"""
        pass
    """State 7"""
    return 0

def t301020_x13():
    """State 0"""
    while True:
        """State 1"""
        call = t301020_x15()
        assert not GetEventStatus(6001)
        """State 2"""
        call = t301020_x16()
        assert GetEventStatus(6001) == 1

def t301020_x14():
    """State 0,1"""
    assert t301020_x2()
    """State 2"""
    return 0

def t301020_x15():
    """State 0,1"""
    # lot:4200:Warrior of Sunlight, lot:4208:Sacred Oath, lot:4207:Great Lightning Spear, action:15000400:"Establish Covenant", action:12000020:"Join Covenant?", action:13000040:"Covenant established."
    t301020_x11(lot1=4200, z1=375, lot2=4208, lot3=4207, action1=15000400, z2=15000410, action2=12000020,
                action3=13000040, z3=13000020, z4=13000030, z5=12000000, z6=13000010, z7=13000000, z8=99,
                z9=18, z10=25, flag1=6001, z11=73010951, flag2=73010952, actionbutton1=6010, flag3=6051,
                gesture1=1, z12=9007, flag4=73010953)
    Quit()

def t301020_x16():
    """State 0"""
    Quit()

def t301020_x17(z13=_, z14=_, z15=_):
    """State 0,1"""
    if GetEventStatus(z15) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(z13)
        OpenItemAcquisitionMenu(3, z14, 1)
        SetEventState(z15, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

# Covenant Menu
def t301020_x50():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10040), 1, 15003019, -1)
        
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
            GetItemFromItemLot(800001190)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(21600, 21699)
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

def t301020_x51(action5=99062004):
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

def t301020_x52(action4=_):
    """State 0,1"""
    OpenGenericDialog(7, action4, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
