# -*- coding: utf-8 -*-
def t400506_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400506_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400506_x1()
        assert not IsClientPlayer()

def t400506_x0():
    """State 0,1"""
    t400506_x3()
    Quit()

def t400506_x1():
    """State 0,1"""
    assert t400506_x2()
    """State 2"""
    return 0

def t400506_x2():
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

def t400506_x3():
    """State 0,1"""
    call = t400506_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400506_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400506_x5()
        if call.Done():
            """State 3"""
            call = t400506_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400506_x6()
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
                call = t400506_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400506_x2()
    Quit()

def t400506_x5():
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

def t400506_x6():
    """State 0,6"""
    assert t400506_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400506_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400506_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400506_x2()
    """State 6"""
    return 0

def t400506_x8():
    """State 0,1"""
    assert t400506_x9()
    """State 24"""
    return 0

# Main Menu
def t400506_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        SetEventState(6500, 1)
        ClearTalkListData()
        
        # Covenant
        AddTalkListData(1, 99062000, -1)
        
        # Bite Material
        AddTalkListData(13, 99060400, -1)
        
        # Undead Match
        AddTalkListData(8, 15000350, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008230) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
                          
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008230) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008230) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(2, 99010001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Covenant
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400506_x50()
        # Undead Match
        elif GetTalkListEntryResult() == 8:
            """State 3"""
            UndeadMatch()
            def WhilePaused():
                SetEventState(14005617, 1)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        # Propose Marriage
        elif GetTalkListEntryResult() == 10:
            """State 4"""
            SetEventState(25008230, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400506_x10(text1=10121030, flag1=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 5"""
            if GetEventStatus(25008900):
                """State 6"""
                assert t400506_x10(text1=10121000, flag1=0, mode1=0)
                """State 7"""
                GetItemFromItemLot(90220)
            elif GetEventStatus(25008901):
                """State 8"""
                assert t400506_x10(text1=10121010, flag1=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 9"""
                assert t400506_x10(text1=10121020, flag1=0, mode1=0)
        # Divorce
        elif GetTalkListEntryResult() == 12:
            """State 10"""
            assert t400506_x10(text1=10121020, flag1=0, mode1=0)
            """State 11"""
            SetEventState(25008230, 0)
            return 0
        # Bite Material
        elif GetTalkListEntryResult() == 13:
            """State 12"""
            assert t400506_x70()
        # Talk
        elif GetTalkListEntryResult() == 2:
            """State 13"""
            assert t400506_x10(text1=10020000, flag1=0, mode1=0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 14"""
            return 0

def t400506_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t400506_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400506_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Covenant
def t400506_x50():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10170), 1, 15003019, -1)
        
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
            GetItemFromItemLot(800001130)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(22900, 22999)
        # Talk
        elif GetTalkListEntryResult() == 99:
            """State 14"""
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 15"""
            return 0
    """State 2"""
    return 0

def t400506_x51(action4=99062004):
    """State 0,1"""
    OpenGenericDialog(8, action4, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t400506_x52(action3=_):
    """State 0,1"""
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

# Bite Material
def t400506_x70():
    """State 0"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    # Titanite Slab
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1003, 4, 1, 0) == 1, 1, 99060410, -1)
    # Titanite Chunk
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1002, 4, 1, 0) == 1, 2, 99060411, -1)
    # Large Titanite Shard
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1001, 4, 1, 0) == 1, 3, 99060412, -1)
    # Quit
    AddTalkListData(99, 15000180, -1)
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 1"""
    ShowShopMessage(1)
    
    # Titanite Slab
    if GetTalkListEntryResult() == 1:
        """State 2"""
        # goods:1003:Titanite Slab, goods:1002:Titanite Chunk
        assert t400506_x71(goods1=1003, goods2=1002, action1=99060420)
        """State 3"""
        return 0
    # Titanite Chunk
    elif GetTalkListEntryResult() == 2:
        """State 4"""
        # goods:1002:Titanite Chunk, goods:1001:Large Titanite Shard
        assert t400506_x71(goods1=1002, goods2=1001, action1=99060421)
        """State 5"""
        return 0
    # Large Titanite Shard
    elif GetTalkListEntryResult() == 3:
        """State 6"""
        # goods:1001:Large Titanite Shard, goods:1000:Titanite Shard
        assert t400506_x71(goods1=1001, goods2=1000, action1=99060422)
        """State 7"""
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 8"""
        return 0

def t400506_x71(goods1=_, goods2=_, action1=_):
    """State 0"""
    call = t400506_x72(action1=action1)
    if call.Get() == 0:
        """State 1"""
        PlayerEquipmentQuantityChange(3, goods1, -1)
        PlayerEquipmentQuantityChange(3, goods2, 5)
        assert t400506_x73(action2=99060430)
    elif call.Get() == 1:
        pass
    """State 2"""
    return 0

def t400506_x72(action1=_):
    """State 0,1"""
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t400506_x73(action2=99060430):
    """State 0,1"""
    OpenGenericDialog(7, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

