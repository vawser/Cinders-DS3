#------------------------------
#  Filianore - Journey Menu
#------------------------------
# -*- coding: utf-8 -*-
def t511501_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t511501_x14()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t511501_x15()
        assert not IsClientPlayer()

def t511501_x0(action=_):
    """State 0,1"""
    OpenGenericDialog(8, action, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t511501_x1(action_button=_, flag=_):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(action_button):
            break
    """State 4"""
    return 0

def t511501_x2():
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

def t511501_x3():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Talk to Player
def t511501_x4(text=_, end_mode=_):
    """State 0,5"""
    assert t511501_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not end_mode:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

# Talk to Player
def t511501_x5(text=_, end_mode=_):
    """State 0,5"""
    assert t511501_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not end_mode:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

# Talk to Player
def t511501_x6(text=_, end_mode=_):
    """State 0,4"""
    assert t511501_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not end_mode:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

# Dialog
def t511501_x7(action=_):
    """State 0,1"""
    OpenGenericDialog(7, action, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t511501_x9():
    assert t511501_x50()
    """State 24"""
    return 0

def t511501_x10():
    """State 0,6"""
    assert t511501_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1"""
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """State 2"""
    if GetDistanceToPlayer() < 10:
        """State 4,8"""
        call = t511501_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 7"""
            assert t511501_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t511501_x12():
    """State 0,1,2"""
    assert t511501_x2()
    """State 3"""
    return 0

def t511501_x13():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 2,5"""
        call = t511501_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 4"""
            Label('L0')
            assert t511501_x2()
    else:
        """State 3"""
        Goto('L0')
    """State 6"""
    return 0

def t511501_x14():
    """State 0"""
    while True:
        """State 1"""
        call = t511501_x16()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)
        """State 2"""
        call = t511501_x17()
        assert GetEventStatus(1000) == 1 or GetEventStatus(1001) == 1 or GetEventStatus(1002) == 1
    """Unused"""
    """State 3"""
    return 0

def t511501_x15():
    """State 0,1"""
    assert t511501_x2()
    """State 2"""
    return 0

def t511501_x16():
    """State 0,1"""
    call = t511501_x26()
    assert CheckSelfDeath() == 1
    """State 2"""
    Quit()
    """Unused"""
    """State 3"""
    return 0

def t511501_x17():
    """State 0"""
    Quit()
    """Unused"""
    """State 1"""
    return 0

def t511501_x18():
    return 0

def t511501_x19():
    return 0

def t511501_x26():
    """State 0"""
    while True:
        """State 5"""
        call = t511501_x1(6000, 6000)
        
        if call.Done():
            """State 3"""
            call = t511501_x9()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t511501_x10()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t511501_x13()
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t511501_x12()
    Quit()
    """Unused"""
    """State 6"""
    return 0

#-------------------------------------
# Journey Menu
#-------------------------------------
def t511501_x50():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Select Journey Type
        AddTalkListDataIf(GetEventStatus(25000100) == 0, 10, 80000100, -1)
        
        # Select Journey Restrictions
        AddTalkListDataIf(GetEventStatus(25000100) == 0, 12, 80000105, -1)
        
        # Build Loadout
        # AddTalkListDataIf(GetEventStatus(25000100) == 0, 11, 80000101, -1)
        
        # Commit
        AddTalkListDataIf(GetEventStatus(25000100) == 0 and GetEventStatus(25000101) == 1 or GetEventStatus(25000100) == 0 and GetEventStatus(25000102) == 1 or GetEventStatus(25000100) == 0 and GetEventStatus(25000103) == 1 or GetEventStatus(25000100) == 0 and GetEventStatus(25000104) == 1, 20, 80000102, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        
        # Select Journey Type
        if GetTalkListEntryResult() == 10:
            assert t511501_x51()
            continue
        # Build Loadout
        elif GetTalkListEntryResult() == 11:
            assert t511501_x52()
            continue
        # Select Journey Restrictions
        elif GetTalkListEntryResult() == 12:
            assert t511501_x53()
            continue
        # Commit
        elif GetTalkListEntryResult() == 20:
            assert t511501_x60(80000140)
            
            c1_110()
    
            ClearTalkListData()
            
            # Yes
            AddTalkListData(1, 80000103, -1)
            
            # No
            AddTalkListData(2, 80000104, -1)
            
            OpenConversationChoicesMenu(0)
            
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))

            # Yes
            if GetTalkListEntryResult() == 1:
                SetEventState(25000100, 1)
                PlayerEquipmentQuantityChange(3, 2160, -8)
                return 0
            # Cancel
            elif GetTalkListEntryResult() == 2:
                return 1
            else:
                return 2
   
            return 0
        else:
            return 0
            
        assert CheckSpecificPersonTalkHasEnded(0) == 1
        
# Journey Type
def t511501_x51():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Hollow
        AddTalkListDataIf(GetEventStatus(25000101) == 0, 1, 80000110, -1)
        # Hollow (Selected)
        AddTalkListDataIf(GetEventStatus(25000101) == 1, 10, 80000120, -1)
        
        # Explorer
        AddTalkListDataIf(GetEventStatus(25000102) == 0, 2, 80000111, -1)
        # Explorer (Selected)
        AddTalkListDataIf(GetEventStatus(25000102) == 1, 11, 80000121, -1)
        
        # Conqueror
        AddTalkListDataIf(GetEventStatus(25000103) == 0, 3, 80000112, -1)
        # Conqueror (Selected)
        AddTalkListDataIf(GetEventStatus(25000103) == 1, 12, 80000122, -1)
        
        # Accursed
        AddTalkListDataIf(GetEventStatus(25000104) == 0, 4, 80000113, -1)
        # Accursed (Selected)
        AddTalkListDataIf(GetEventStatus(25000104) == 1, 13, 80000123, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))

        # Tarnished
        if GetTalkListEntryResult() == 1:
            assert t511501_x61(80000130, 25000101, 1)
            continue
        # Explorer
        elif GetTalkListEntryResult() == 2:
            assert t511501_x61(80000131, 25000102, 1)
            continue
        # Conqueror
        elif GetTalkListEntryResult() == 3:
            assert t511501_x61(80000132, 25000103, 1)
            continue
        # Accursed
        elif GetTalkListEntryResult() == 4:
            assert t511501_x61(80000133, 25000104, 1)
            continue
        # Tarnished (selected)
        elif GetTalkListEntryResult() == 10:
            assert t511501_x60(80000130)
            return 0
        # Explorer (selected)
        elif GetTalkListEntryResult() == 11:
            assert t511501_x60(80000131)
            return 0
        # Conqueror (selected)
        elif GetTalkListEntryResult() == 12:
            assert t511501_x60(80000132)
            return 0
        # Accursed (selected)
        elif GetTalkListEntryResult() == 13:
            assert t511501_x60(80000133)
            return 0
        else:
            return 0
        assert CheckSpecificPersonTalkHasEnded(0) == 1
        
# Custom Loadout
def t511501_x52():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()

        # Weapons
        AddTalkListData(1, 80000200, -1)
        
        # Spells
        AddTalkListData(2, 80000201, -1)
        
        # Armor
        AddTalkListData(3, 80000202, -1)
        
        # Accessories
        AddTalkListData(4, 80000203, -1)
        
        # Ammunition
        AddTalkListData(5, 80000204, -1)

        # Items
        # AddTalkListData(8, 80000205, -1)
        
        # Souls
        AddTalkListDataIf(GetEventStatus(25000112) == 0 and ComparePlayerInventoryNumber(3, 2160, 4, 1, 0) == 1 , 9, 80000206, -1)
        
        # Level Up
        AddTalkListData(10, 80000207, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)

        ShowShopMessage(1)
        
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        
        # Weapons
        if GetTalkListEntryResult() == 1:
            OpenTranspositionShop(9100000, 9109999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Spells
        elif GetTalkListEntryResult() == 2:
            OpenTranspositionShop(9120000, 9129999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Armor
        elif GetTalkListEntryResult() == 3:
            OpenTranspositionShop(9110000, 9119999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Accessories
        elif GetTalkListEntryResult() == 4:
            OpenTranspositionShop(9130000, 9139999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Ammunition
        elif GetTalkListEntryResult() == 5:
            OpenTranspositionShop(9140000, 9149999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Items
        elif GetTalkListEntryResult() == 8:
            OpenTranspositionShop(9150000, 9159999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Souls
        elif GetTalkListEntryResult() == 9:
            assert t511501_x62()
            return 0
        # Level up
        elif GetTalkListEntryResult() == 10:
            OpenSoul()
            assert not (CheckSpecificPersonMenuIsOpen(10, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Journey Restrictions
def t511501_x53():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Flameless
        AddTalkListDataIf(GetEventStatus(25000140) == 0, 1, 80000150, -1)
        # Flameless (selected)
        AddTalkListDataIf(GetEventStatus(25000140) == 1, 10, 80000160, -1)
        
        # Deathless
        AddTalkListDataIf(GetEventStatus(25000141) == 0, 2, 80000151, -1)
        # Deathless (selected)
        AddTalkListDataIf(GetEventStatus(25000141) == 1, 11, 80000161, -1)
        
        # Deathless
        AddTalkListDataIf(GetEventStatus(25000142) == 0, 3, 80000152, -1)
        # Deathless (selected)
        AddTalkListDataIf(GetEventStatus(25000142) == 1, 12, 80000162, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))

        # Flameless
        if GetTalkListEntryResult() == 1:
            assert t511501_x63(80000170, 25000140, 1)
            continue
        # Deathless
        elif GetTalkListEntryResult() == 2:
            assert t511501_x63(80000171, 25000141, 1)
            continue
        # Hitless
        elif GetTalkListEntryResult() == 3:
            assert t511501_x63(80000172, 25000142, 1)
            continue
        # Flameless (selected)
        elif GetTalkListEntryResult() == 1:
            assert t511501_x63(80000170, 25000140, 0)
            continue
        # Deathless (selected)
        elif GetTalkListEntryResult() == 2:
            assert t511501_x63(80000171, 25000141, 0)
            continue
        # Hitless (selected)
        elif GetTalkListEntryResult() == 3:
            assert t511501_x63(80000172, 25000142, 0)
            continue
        else:
            return 0
        assert CheckSpecificPersonTalkHasEnded(0) == 1
        
# Description Prompt
def t511501_x60(action1=_):
    """State 0,1"""
    OpenGenericDialog(8, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
    
# Difficulty - YES/NO Choice
def t511501_x61(text=_, flag=_, value=_):
    assert t511501_x60(text)
            
    MainBonfireMenuFlag()

    ClearTalkListData()
    
    # Yes
    AddTalkListData(1, 80000103, -1)
    
    # No
    AddTalkListData(2, 80000104, -1)
    
    OpenConversationChoicesMenu(0)
    
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))

    # Yes
    if GetTalkListEntryResult() == 1:
        SetEventState(25000101, 0)
        SetEventState(25000102, 0)
        SetEventState(25000103, 0)
        SetEventState(25000104, 0)
        
        SetEventState(flag, value)
        
        return 0
    # Cancel
    elif GetTalkListEntryResult() == 2:
        return 1
    else:
        return 2
        
# Souls - YES/NO Choice
def t511501_x62():
    assert t511501_x60(80000210)
            
    MainBonfireMenuFlag()

    ClearTalkListData()
    
    # Yes
    AddTalkListData(1, 80000103, -1)
    
    # No
    AddTalkListData(2, 80000104, -1)
    
    OpenConversationChoicesMenu(0)
    
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))

    # Yes
    if GetTalkListEntryResult() == 1:
        SetEventState(25000112, 1)
        GiveSpEffectToPlayer(200000100)
        PlayerEquipmentQuantityChange(3, 2160, -1)
        assert t511501_x60(80000211)
        
        return 0
    # Cancel
    elif GetTalkListEntryResult() == 2:
        return 1
    else:
        return 2
        
# Restrictions - YES/NO Choice
def t511501_x63(text=_, flag=_, value=_):
    assert t511501_x60(text)
            
    MainBonfireMenuFlag()

    ClearTalkListData()
    
    # Yes
    AddTalkListData(1, 80000103, -1)
    
    # No
    AddTalkListData(2, 80000104, -1)
    
    OpenConversationChoicesMenu(0)
    
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))

    # Yes
    if GetTalkListEntryResult() == 1:
        SetEventState(flag, value)
        
        return 0
    # Cancel
    elif GetTalkListEntryResult() == 2:
        return 1
    else:
        return 2