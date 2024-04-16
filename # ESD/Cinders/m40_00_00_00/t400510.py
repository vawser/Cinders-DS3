# -*- coding: utf-8 -*-
def t400510_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400510_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400510_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400510_x0():
    """ State 0,1 """
    while True:
        call = t400510_x3()

# Client Player
def t400510_x1():
    """ State 0,1 """
    assert t400510_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400510_x2():
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
    
# Check Death
def t400510_x3():
    """ State 0,1 """
    call = t400510_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400510_x4():
    """ State 0,5 """
    while True:
        call = t400510_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400510_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400510_x6() # Attack Check
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t400510_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 7.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400510_x2() # Clear Talk State
    
# Interaction State
def t400510_x5():
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6050):
            break
    """ State 4 """
    return 0

# Attack Check
def t400510_x6():
    """ State 0,6 """
    assert t400510_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400510_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400510_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400510_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400510_x8():
    """ State 0,1 """
    assert t400510_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400510_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Select Journey Type
        AddTalkListDataIf(not GetEventStatus(25000100), 10, 80000100, -1)
        
        # Select Restrictions
        AddTalkListDataIf(not GetEventStatus(25000100), 12, 80000105, -1)
        
        # Select Location
        AddTalkListDataIf(not GetEventStatus(25000100), 14, 80000107, -1)
        
        # Skip Journey
        AddTalkListDataIf(not GetEventStatus(25009800), 13, 80000106, -1)
        
        # Start Journey
        AddTalkListDataIf(
        (not GetEventStatus(25000100) and GetEventStatus(25000101) == 1) or 
        (not GetEventStatus(25000100) and GetEventStatus(25000102) == 1) or 
        (not GetEventStatus(25000100) and GetEventStatus(25000103) == 1) or 
        (not GetEventStatus(25000100) and GetEventStatus(25000104) == 1) or 
        (not GetEventStatus(25000100) and GetEventStatus(25000105) == 1) or 
        (not GetEventStatus(25000100) and GetEventStatus(25000106) == 1), 20, 80000102, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Select Journey Type
        if GetTalkListEntryResult() == 10:
            assert t400510_x51()
        # Select Restrictions
        elif GetTalkListEntryResult() == 12:
            assert t400510_x53()
        # Select Location
        elif GetTalkListEntryResult() == 14:
            assert t400510_x54()
        # Skip Journey
        elif GetTalkListEntryResult() == 13:
            OpenGenericDialog(1, 15028010, 0, 0, 0)
            assert t400510_x20()
        # Start Journey
        elif GetTalkListEntryResult() == 20:
            
            assert t400510_x60(action1=80000140)
            
            MainBonfireMenuFlag()
            ClearTalkListData()
            
            # Yes
            AddTalkListData(1, 80000103, -1)
            # No
            AddTalkListData(2, 80000104, -1)
            
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            
            if GetTalkListEntryResult() == 1:
                SetEventState(25000100, 1)
                SetEventState(25009800, 1)
                SetEventState(25009802, 1)
                
                # goods:117:Darksign
                if not IsEquipmentIDObtained(3, 117):
                    GetItemFromItemLot(9040)
                else:
                    pass
                    
                return 0
            elif GetTalkListEntryResult() == 2:
                return 1
            else:
                return 2
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0

# Talk Function
def t400510_x10(text1=_, flag1=0, mode1=_):
    assert t400510_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    if not mode1:
        pass
    else:
        ReportConversationEndToHavokBehavior()
    return 0
    
# Talk Cleanup
def t400510_x11():
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    return 0
    
# Skip Journey Dialog 1
def t400510_x20():
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    # Are you sure?
    AddTalkListData(1, 15028001, -1)
    # Return
    AddTalkListData(99, 15000190, -1)
    
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            
    ShowShopMessage(1)
    if GetTalkListEntryResult() == 1:
        assert t400510_x21()
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        return 0
        
# Skip Journey Dialog 2
def t400510_x21():
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    # Are you really sure?
    AddTalkListData(1, 15028002, -1)
    # Return
    AddTalkListData(99, 15000190, -1)
    
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            
    ShowShopMessage(1)
    
    if GetTalkListEntryResult() == 1:
        SetEventState(74000012, 1)
        SetEventState(14005617, 0)
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        return 0
        
# Journey Type
def t400510_x51():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Hollow
        AddTalkListDataIf(not GetEventStatus(25000101), 1, 80000110, -1)
        # Hollow (selected)
        AddTalkListDataIf(GetEventStatus(25000101) == 1, 10, 80000120, -1)
        
        # Explorer
        AddTalkListDataIf(not GetEventStatus(25000102), 2, 80000111, -1)
        # Explorer (selected)
        AddTalkListDataIf(GetEventStatus(25000102) == 1, 11, 80000121, -1)
        
        # Conqueror
        AddTalkListDataIf(not GetEventStatus(25000103), 3, 80000112, -1)
        # Conqueror (selected)
        AddTalkListDataIf(GetEventStatus(25000103) == 1, 12, 80000122, -1)
        
        # Accursed
        AddTalkListDataIf(not GetEventStatus(25000104), 4, 80000113, -1)
        # Accursed (selected)
        AddTalkListDataIf(GetEventStatus(25000104) == 1, 13, 80000123, -1)
        
        # Gladiator
        AddTalkListDataIf(not GetEventStatus(25000105), 5, 80000114, -1)
        # Gladiator (selected)
        AddTalkListDataIf(GetEventStatus(25000105) == 1, 14, 80000124, -1)
        
        # Wanderer
        AddTalkListDataIf(not GetEventStatus(25000106), 6, 80000115, -1)
        # Wanderer (selected)
        AddTalkListDataIf(GetEventStatus(25000106) == 1, 15, 80000125, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)

        # Hollow
        if GetTalkListEntryResult() == 1:
            assert t400510_x61(text=80000130, flag=25000101, value=1)
        # Explorer
        elif GetTalkListEntryResult() == 2:
            assert t400510_x61(text=80000131, flag=25000102, value=1)
        # Conqueror
        elif GetTalkListEntryResult() == 3:
            assert t400510_x61(text=80000132, flag=25000103, value=1)
        # Accursed
        elif GetTalkListEntryResult() == 4:
            assert t400510_x61(text=80000133, flag=25000104, value=1)
        # Gladiator
        elif GetTalkListEntryResult() == 5:
            assert t400510_x61(text=80000134, flag=25000105, value=1)
        # Wanderer
        elif GetTalkListEntryResult() == 6:
            assert t400510_x61(text=80000135, flag=25000106, value=1)
        # Hollow (selected)
        elif GetTalkListEntryResult() == 10:
            assert t400510_x60(action1=80000130)
            return 0
        # Explorer (selected)
        elif GetTalkListEntryResult() == 11:
            assert t400510_x60(action1=80000131)
            return 0
        # Conqueror (selected)
        elif GetTalkListEntryResult() == 12:
            assert t400510_x60(action1=80000132)
            return 0
        # Accursed (selected)
        elif GetTalkListEntryResult() == 13:
            assert t400510_x60(action1=80000133)
            return 0
        # Gladiator (selected)
        elif GetTalkListEntryResult() == 14:
            assert t400510_x60(action1=80000134)
            return 0
        # Wanderer (selected)
        elif GetTalkListEntryResult() == 15:
            assert t400510_x60(action1=80000135)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
     
# Journey Restrictions
def t400510_x53():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Flameless
        AddTalkListDataIf(not GetEventStatus(25000110), 1, 80000150, -1)
        # Flameless (selected)
        AddTalkListDataIf(GetEventStatus(25000110) == 1, 10, 80000160, -1)
        
        # Deathless
        AddTalkListDataIf(not GetEventStatus(25000111), 2, 80000151, -1)
        # Deathless (selected)
        AddTalkListDataIf(GetEventStatus(25000111) == 1, 11, 80000161, -1)
        
        # Hitless
        AddTalkListDataIf(not GetEventStatus(25000112), 3, 80000152, -1)
        # Hitless (selected)
        AddTalkListDataIf(GetEventStatus(25000112) == 1, 12, 80000162, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Flameless
        if GetTalkListEntryResult() == 1:
            assert t400510_x63(text=80000170, flag=25000110, value=1)
        # Deathless
        elif GetTalkListEntryResult() == 2:
            assert t400510_x63(text=80000171, flag=25000111, value=1)
        # Hitless
        elif GetTalkListEntryResult() == 3:
            assert t400510_x63(text=80000172, flag=25000112, value=1)
        # Flameless (selected)
        elif GetTalkListEntryResult() == 10:
            assert t400510_x63(text=80000170, flag=25000110, value=0)
        # Deathless (selected)
        elif GetTalkListEntryResult() == 11:
            assert t400510_x63(text=80000171, flag=25000111, value=0)
        # Hitless (selected)
        elif GetTalkListEntryResult() == 12:
            assert t400510_x63(text=80000172, flag=25000112, value=0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
      
# Select Location
def t400510_x54():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Cemetery of Ash
        AddTalkListDataIf(not GetEventStatus(25009835), 1, 99060010, -1)
        # Cemetery of Ash (selected)
        AddTalkListDataIf(GetEventStatus(25009835), 21, 99060030, -1)
        
        # Untended Graves
        AddTalkListDataIf(not GetEventStatus(25009820), 2, 99060011, -1)
        # Untended Graves (selected)
        AddTalkListDataIf(GetEventStatus(25009820), 22, 99060031, -1)
        
        # Archdragon Peak
        AddTalkListDataIf(not GetEventStatus(25009821), 3, 99060012, -1)
        # Archdragon Peak (selected)
        AddTalkListDataIf(GetEventStatus(25009821), 23, 99060032, -1)
        
        # Farron Keep
        AddTalkListDataIf(not GetEventStatus(25009822), 4, 99060013, -1)
        # Farron Keep (selected)
        AddTalkListDataIf(GetEventStatus(25009822), 24, 99060033, -1)
        
        # Catacombs of Carthus
        AddTalkListDataIf(not GetEventStatus(25009823), 5, 99060014, -1)
        # Catacombs of Carthus (selected)
        AddTalkListDataIf(GetEventStatus(25009823), 25, 99060034, -1)
        
        # Irithyll
        AddTalkListDataIf(not GetEventStatus(25009824), 6, 99060015, -1)
        # Irithyll (selected)
        AddTalkListDataIf(GetEventStatus(25009824), 26, 99060035, -1)
        
        # Irithyll Dungeon
        AddTalkListDataIf(not GetEventStatus(25009825), 7, 99060016, -1)
        # Irithyll Dungeon (selected)
        AddTalkListDataIf(GetEventStatus(25009825), 27, 99060036, -1)
        
        # Consumed King's Garden
        AddTalkListDataIf(not GetEventStatus(25009826), 8, 99060017, -1)
        # Consumed King's Garden (selected)
        AddTalkListDataIf(GetEventStatus(25009826), 28, 99060037, -1)
        
        # Lothric Castle
        AddTalkListDataIf(not GetEventStatus(25009827), 9, 99060018, -1)
        # Lothric Castle (selected)
        AddTalkListDataIf(GetEventStatus(25009827), 29, 99060038, -1)
        
        # Cathedral of the Deep
        AddTalkListDataIf(not GetEventStatus(25009828), 10, 99060019, -1)
        # Cathedral of the Deep (selected)
        AddTalkListDataIf(GetEventStatus(25009828), 30, 99060039, -1)
        
        # Ariandel
        AddTalkListDataIf(not GetEventStatus(25009829), 11, 99060020, -1)
        # Ariandel (selected)
        AddTalkListDataIf(GetEventStatus(25009829), 31, 99060040, -1)
        
        # Dreg Heap
        AddTalkListDataIf(not GetEventStatus(25009830), 12, 99060021, -1)
        # Dreg Heap (selected)
        AddTalkListDataIf(GetEventStatus(25009830), 32, 99060041, -1)
        
        # Ringed City
        AddTalkListDataIf(not GetEventStatus(25009831), 13, 99060022, -1)
        # Ringed City (selected)
        AddTalkListDataIf(GetEventStatus(25009831), 33, 99060042, -1)
        
        # Random
        AddTalkListDataIf(not GetEventStatus(25009840), 14, 99060023, -1)
        # Random (selected)
        AddTalkListDataIf(GetEventStatus(25009840), 34, 99060043, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Cemetery of Ash
        if GetTalkListEntryResult() == 1:
            assert t400510_x64()
            assert t400510_x63(text=99060050, flag=25009835, value=1)
        # Untended Graves
        elif GetTalkListEntryResult() == 2:
            assert t400510_x64()
            assert t400510_x63(text=99060051, flag=25009820, value=1)
        # Archdragon Peak
        elif GetTalkListEntryResult() == 3:
            assert t400510_x64()
            assert t400510_x63(text=99060052, flag=25009821, value=1)
        # Farron Keep
        elif GetTalkListEntryResult() == 4:
            assert t400510_x64()
            assert t400510_x63(text=99060053, flag=25009822, value=1)
        # Catacombs of Carthus
        elif GetTalkListEntryResult() == 5:
            assert t400510_x64()
            assert t400510_x63(text=99060054, flag=25009823, value=1)
        # Irithyll
        elif GetTalkListEntryResult() == 6:
            assert t400510_x64()
            assert t400510_x63(text=99060055, flag=25009824, value=1)
        # Irithyll Dungeon
        elif GetTalkListEntryResult() == 7:
            assert t400510_x64()
            assert t400510_x63(text=99060056, flag=25009825, value=1)
        # Consumed King's Garden
        elif GetTalkListEntryResult() == 8:
            assert t400510_x64()
            assert t400510_x63(text=99060057, flag=25009826, value=1)
        # Lothric Castle
        elif GetTalkListEntryResult() == 9:
            assert t400510_x64()
            assert t400510_x63(text=99060058, flag=25009827, value=1)
        # Cathedral of the Deep
        elif GetTalkListEntryResult() == 10:
            assert t400510_x64()
            assert t400510_x63(text=99060059, flag=25009828, value=1)
        # Ariandel
        elif GetTalkListEntryResult() == 11:
            assert t400510_x64()
            assert t400510_x63(text=99060060, flag=25009829, value=1)
        # Dreg Heap
        elif GetTalkListEntryResult() == 12:
            assert t400510_x64()
            assert t400510_x63(text=99060061, flag=25009830, value=1)
        # Ringed City
        elif GetTalkListEntryResult() == 13:
            assert t400510_x64()
            assert t400510_x63(text=99060062, flag=25009831, value=1)
        # Random
        elif GetTalkListEntryResult() == 14:
            assert t400510_x64()
            assert t400510_x63(text=99060063, flag=25009840, value=1)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Description Prompt
def t400510_x60(action1=_):
    """State 0,1"""
    OpenGenericDialog(8, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
    
# Difficulty - YES/NO Choice
def t400510_x61(text=_, flag=_, value=_):
    assert t400510_x60(text)
            
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
        SetEventState(25000105, 0)
        SetEventState(25000106, 0)
        
        SetEventState(flag, value)
        
        return 0
    # Cancel
    elif GetTalkListEntryResult() == 2:
        return 1
    else:
        return 2
        
# Restrictions - YES/NO Choice
def t400510_x63(text=_, flag=_, value=_):
    assert t400510_x60(text)
            
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
        
def t400510_x64():
    SetEventState(25009820, 0)
    SetEventState(25009821, 0)
    SetEventState(25009822, 0)
    SetEventState(25009823, 0)
    SetEventState(25009824, 0)
    SetEventState(25009825, 0)
    SetEventState(25009826, 0)
    SetEventState(25009827, 0)
    SetEventState(25009828, 0)
    SetEventState(25009829, 0)
    SetEventState(25009830, 0)
    SetEventState(25009831, 0)
    SetEventState(25009835, 0)
    SetEventState(25009840, 0)
    
    return 0