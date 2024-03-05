# -*- coding: utf-8 -*-
def t370020_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t370020_x13()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t370020_x14()
        assert not IsClientPlayer()

def t370020_x0(action2=12000026):
    """State 0,1"""
    # action:12000026:"Join Covenant?"
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t370020_x1(actionbutton1=6013, flag4=6001, flag7=6000, flag8=6000, flag9=6000, flag10=6000):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 3"""
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) ==
                1 or GetEventStatus(flag9) == 1 or GetEventStatus(flag10) == 1)
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag7) and not GetEventStatus(flag8) and
              not GetEventStatus(flag9) and not GetEventStatus(flag10)):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
    """State 4"""
    return 0

def t370020_x2():
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

def t370020_x3(lot2=_):
    """State 0,1"""
    GetItemFromItemLot(lot2)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 2"""
    return 0

def t370020_x4(gesture1=0, z12=9000, flag3=6001):
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

def t370020_x5(action3=13000046):
    """State 0,1"""
    # action:13000046:"You have obtained proof of the covenant"
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t370020_x6(z14=_, z15=_, z16=_, z17=_, z18=_, z19=_, z20=_, z21=_, z22=_, z23=_, z24=_, z25=_):
    """State 0,1,11"""
    if ComparePlayerInventoryNumber(3, z14, 2, 0, 0) == 1:
        """State 12,9"""
        SetWorkValue(0, GetPlayerStatus(z17))
        """State 30"""
        call = t370020_x7(z26=z14, z27=z20)
        if call.Get() == 0:
            """State 3,25"""
            SetEventState(z25, 1)
            assert GetCurrentStateElapsedTime() > 2
            """State 24,15,18"""
            PlayerEquipmentQuantityChange(3, z14, -1 * GetValueFromNumberSelectDialog())
            """State 17"""
            ChangePlayerStats(z16, 0, GetValueFromNumberSelectDialog() * 1)
            """State 16"""
            if GetWorkValue(0) > 2:
                """State 22,34"""
                assert t370020_x3(lot2=z24)
            else:
                """State 23"""
                if ComparePlayerStatus(z17, 2, GetWorkValue(0)):
                    """State 7,13"""
                    if ComparePlayerStatus(z17, 3, 1) == 1:
                        """State 19,32"""
                        assert t370020_x3(lot2=z23)
                    elif ComparePlayerStatus(z17, 3, 2) == 1:
                        """State 20,33"""
                        Label('L0')
                        assert t370020_x3(lot2=z24)
                    else:
                        """State 21"""
                        Goto('L0')
                    """State 27"""
                    assert t370020_x5(action3=z21)
                    Goto('L1')
                else:
                    """State 8"""
                    pass
            """State 29"""
            assert t370020_x5(action3=z22)
        elif call.Get() == 1:
            """State 4"""
            pass
    else:
        """State 5,28"""
        assert t370020_x5(action3=z19)
    """State 26"""
    Label('L1')
    assert not GetEventStatus(z25)
    """State 35"""
    return 0

def t370020_x7(z26=_, z27=_):
    """State 0,2"""
    ClearQuantityValueOfChooseQuantityDialog()
    """State 1"""
    OpenChooseQuantityDialog(z26, z27)
    if GetValueFromNumberSelectDialog() >= 0:
        """State 3,5"""
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 4,6"""
        return 1

def t370020_x8():
    """State 0,1"""
    assert t370020_x2()
    """State 2"""
    return 0

# Main Menu
def t370020_x9(lot1=4230, z1=367, lot2=4238, lot3=4237, action1=15000406, z2=15000413, action2=12000026,
               action3=13000046, z3=13000023, z4=13000033, z5=12000003, z6=13000013, z7=13000003, z8=99,
               z9=23, z10=30, flag1=6730, z11=73700951, flag2=73700952, flag3=6001, gesture1=0, z12=9000):
    """State 0,10"""
    TurnCharacterToFaceEntity(69000, 10000, -1)
    SetTalkTime(1)
    assert GetCurrentStateElapsedTime() > 1
    """State 16"""
    assert t370020_x4(gesture1=gesture1, z12=z12, flag3=flag3)
    """State 17"""
    assert t370020_x12(z10=z10, lot2=lot2, lot3=lot3)
    """State 5"""
    assert t370020_x17(gesture2=39, z13=9042, flag6=25000307)
    """State 7"""
    MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        """State 2"""
        
        # Ask to Join Covenant
        AddTalkListDataIf(not GetEventStatus(flag1), 1, action1, -1)
        
        # Covenant
        AddTalkListDataIf(GetEventStatus(flag1) == 1, 2, 99062000, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008050) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
                          
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008050) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008050) == 1, 12, 15015042, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """State 3"""
        ShowShopMessage(1)
        
        # Ask to Join Covenant
        if GetTalkListEntryResult() == 1:
            """State 4,14"""
            call = t370020_x0(action2=action2)
            if call.Get() == 0:
                """State 9,11"""
                SetEventState(flag2, 1)
                assert GetCurrentStateElapsedTime() > 2
                """State 12"""
                assert t370020_x3(lot2=lot1) and not GetEventStatus(flag2)
                """State 13"""
                assert t370020_x5(action3=action3)
            elif call.Done():
                """State 8"""
                pass
        # Covenant
        elif GetTalkListEntryResult() == 2:
            """State 30,31"""
            assert t370020_x50()
        # Propose Marriage
        elif GetTalkListEntryResult() == 10:
            """State 15"""
            SetEventState(25008050, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t370020_x20(text1=10103030, flag5=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 19"""
            if GetEventStatus(25008900):
                """State 20"""
                assert t370020_x20(text1=10103000, flag5=0, mode1=0)
                """State 21"""
                GetItemFromItemLot(90040)
            elif GetEventStatus(25008901):
                """State 22"""
                assert t370020_x20(text1=10103010, flag5=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 23"""
                assert t370020_x20(text1=10103020, flag5=0, mode1=0)
        # Divorce
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t370020_x20(text1=10103020, flag5=0, mode1=0)
            """State 25"""
            SetEventState(25008050, 0)
            return 0
        # Flirt
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6,18"""
            return 0

def t370020_x10():
    """State 0,1"""
    assert t370020_x2()
    """State 2"""
    return 0

def t370020_x11(lot1=4230, z1=367, lot2=4238, lot3=4237, action1=15000406, z2=15000413, action2=12000026,
                action3=13000046, z3=13000023, z4=13000033, z5=12000003, z6=13000013, z7=13000003, z8=99,
                z9=23, z10=30, flag1=6730, z11=73700951, flag2=73700952, actionbutton1=6013, flag3=6001,
                gesture1=0, z12=9000, flag4=6001):
    """State 0"""
    ClearPlayerDamageInfo()
    while True:
        """State 4"""
        assert (t370020_x1(actionbutton1=actionbutton1, flag4=flag4, flag7=6000, flag8=6000, flag9=6000,
                flag10=6000))
        """State 5"""
        ClearPlayerDamageInfo()
        call = t370020_x9(lot1=lot1, z1=z1, lot2=lot2, lot3=lot3, action1=action1, z2=z2, action2=action2,
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
            assert t370020_x10() and GetDistanceToPlayer() < 10
        elif HasPlayerBeenAttacked() == 1:
            """State 6"""
            assert t370020_x2()
            """State 1"""
            TurnCharacterToFaceEntity(69002, 10000, -1)
            ClearPlayerDamageInfo()
    """State 2"""
    t370020_x8()
    Quit()

def t370020_x12(z10=30, lot2=4238, lot3=4237):
    """State 0,1"""
    if ComparePlayerStatus(z10, 4, 2) == 1:
        """State 4,6"""
        assert t370020_x3(lot2=lot3)
    elif ComparePlayerStatus(z10, 0, 1) == 1:
        """State 3,5"""
        assert t370020_x3(lot2=lot2)
    else:
        """State 2"""
        pass
    """State 7"""
    return 0

def t370020_x13():
    """State 0"""
    while True:
        """State 1"""
        call = t370020_x15()
        assert not GetEventStatus(6001)
        """State 2"""
        call = t370020_x16()
        assert GetEventStatus(6001) == 1

def t370020_x14():
    """State 0,1"""
    assert t370020_x2()
    """State 2"""
    return 0

def t370020_x15():
    """State 0,1"""
    # lot:4230:Aldrich Faithful, lot:4238:Great Deep Soul, lot:4237:Archdeacon's Great Staff, action:15000406:"Ask to Join Covenant", action:12000026:"Join Covenant?", action:13000046:"You have obtained proof of the covenant"
    t370020_x11(lot1=4230, z1=367, lot2=4238, lot3=4237, action1=15000406, z2=15000413, action2=12000026,
                action3=13000046, z3=13000023, z4=13000033, z5=12000003, z6=13000013, z7=13000003, z8=99,
                z9=23, z10=30, flag1=6730, z11=73700951, flag2=73700952, actionbutton1=6013, flag3=6001,
                gesture1=0, z12=9000, flag4=6001)
    Quit()

def t370020_x16():
    """State 0"""
    Quit()

def t370020_x17(gesture2=39, z13=9042, flag6=25000307):
    """State 0,1"""
    if GetEventStatus(flag6) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(gesture2)
        OpenItemAcquisitionMenu(3, z13, 1)
        SetEventState(flag6, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

def t370020_x20(text1=_, flag5=0, mode1=0):
    """State 0,4"""
    assert t370020_x21() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t370020_x21():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Covenant Menu
def t370020_x50():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10030), 1, 15003019, -1)
        
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
            GetItemFromItemLot(800001180)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(21400, 21499)
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

def t370020_x51(action5=99062004):
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

def t370020_x52(action4=_):
    """State 0,1"""
    OpenGenericDialog(7, action4, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
