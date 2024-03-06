# -*- coding: utf-8 -*-
def t300500_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t300500_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t300500_x1()
        assert not IsClientPlayer()

def t300500_x0():
    """State 0,1"""
    t300500_x3()
    Quit()

def t300500_x1():
    """State 0,1"""
    assert t300500_x2()
    """State 2"""
    return 0

def t300500_x2():
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

def t300500_x3():
    """State 0,1"""
    call = t300500_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t300500_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t300500_x5()
        if call.Done():
            """State 3"""
            call = t300500_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t300500_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 2 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t300500_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t300500_x2()
    Quit()

def t300500_x5():
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6120):
            break
    """State 4"""
    return 0

def t300500_x6():
    """State 0,6"""
    assert t300500_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t300500_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t300500_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t300500_x2()
    """State 6"""
    return 0

def t300500_x8():
    """State 0,1"""
    assert t300500_x9()
    """State 24"""
    return 0

# Main Menu
def t300500_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Warriors of Sunlight
        AddTalkListData(20, 99062021, -1)
        
        # Purchase Item
        AddTalkListData(4, 15011020, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008220) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008220) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008220) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(3, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Purchase Item
        if GetTalkListEntryResult() == 4:
            """State 3,8"""
            OpenRegularShop(310000, 310099)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Propose Marriage
        elif GetTalkListEntryResult() == 10:
            """State 4"""
            SetEventState(25008220, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t300500_x10(text1=10120030, flag1=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 5"""
            if GetEventStatus(25008900):
                """State 6"""
                assert t300500_x10(text1=10120000, flag1=0, mode1=0)
                """State 7"""
                GetItemFromItemLot(90210)
            elif GetEventStatus(25008901):
                """State 9"""
                assert t300500_x10(text1=10120010, flag1=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 10"""
                assert t300500_x10(text1=10120020, flag1=0, mode1=0)
        # Divorce
        elif GetTalkListEntryResult() == 12:
            """State 11"""
            assert t300500_x10(text1=10120020, flag1=0, mode1=0)
            """State 12"""
            SetEventState(25008220, 0)
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            """State 13"""
            assert t300500_x10(text1=10010000, flag1=0, mode1=0)
        # Warriors of Sunlight
        elif GetTalkListEntryResult() == 20:
            """State 14"""
            assert t300500_x50()
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 15"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 16"""
            return 0

def t300500_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t300500_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t300500_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Covenant Menu
def t300500_x50():
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

def t300500_x51(action2=99062004):
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

def t300500_x52(action1=_):
    """State 0,1"""
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
