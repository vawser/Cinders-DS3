#-------------------------------------------
#-- Journey Configuration
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
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
            elif GetDistanceToPlayer() > 2 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t400510_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
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
        elif CheckActionButtonArea(6120):
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
       
        # Configure Journey
        AddTalkListDataIf(GetEventStatus(25009800) == 0, 1, 99060000, -1)
        
        # Skip Journey
        AddTalkListDataIf(GetEventStatus(25009800) == 0, 2, 99060004, -1)
        
        # Begin Journey
        AddTalkListDataIf(GetEventStatus(25009802) == 0, 3, 99060005, -1)
        
        # Current Configuration (Standard)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009810) == 1, 10, 99060006, -1)
        
        # Current Configuration (Wanderer)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009811) == 1, 11, 99060006, -1)
        
        # Current Configuration (Mythic)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009812) == 1, 12, 99060006, -1)
        
        # Current Configuration (Gauntlet)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009813) == 1, 13, 99060006, -1)
        
        # Current Configuration (Explorer)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009814) == 1, 14, 99060006, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Configure Journey
        if GetTalkListEntryResult() == 1:
            assert t400510_x10()
            continue
        # Skip Journey
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 15028010, 0, 0, 0)
            assert t400510_x20()
            continue
        # Begin Journey
        elif GetTalkListEntryResult() == 3:
            assert t400510_x30()
            return 0   
        # Current Configuration (Standard)
        elif GetTalkListEntryResult() == 10:
            OpenGenericDialog(1, 99060020, 0, 0, 0)
            return 0
        elif GetTalkListEntryResult() == 11:
            OpenGenericDialog(1, 99060021, 0, 0, 0)
            return 0
        elif GetTalkListEntryResult() == 12:
            OpenGenericDialog(1, 99060022, 0, 0, 0)
            return 0
        elif GetTalkListEntryResult() == 13:
            OpenGenericDialog(1, 99060023, 0, 0, 0)
            return 0
        elif GetTalkListEntryResult() == 14:
            OpenGenericDialog(1, 99060024, 0, 0, 0)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Configure Journey
def t400510_x10():
    c1110()
    while True:
        ClearTalkListData()
       
        # Standard Mode
        AddTalkListData(1, 99060010, -1)
        
        # Explorer Mode
        AddTalkListData(6, 99060014, -1)
        
        # Wanderer Mode
        AddTalkListData(2, 99060011, -1)
        
        # Mythic Mode
        AddTalkListData(3, 99060012, -1)
        
        # Gauntlet Mode
        AddTalkListData(5, 99060013, -1)
        
        # Onslaught Mode
        AddTalkListData(7, 99060015, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Standard Mode
        if GetTalkListEntryResult() == 1:
            assert t400510_x11()
            continue
        # Wanderer Mode
        elif GetTalkListEntryResult() == 2:
            assert t400510_x12()
            continue 
        # Mythic Mode
        elif GetTalkListEntryResult() == 3:
            assert t400510_x13()
            continue 
        # Gauntlet Mode
        elif GetTalkListEntryResult() == 5:
            assert t400510_x14()
            continue
        # Explorer Mode
        elif GetTalkListEntryResult() == 6:
            assert t400510_x15()
            continue 
        # Onslaught Mode
        elif GetTalkListEntryResult() == 7:
            assert t400510_x16()
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
       
# Standard Mode
def t400510_x11():
    c1110()
    while True:
        ClearTalkListData()
       
        # Description
        AddTalkListData(1, 99060001, -1)
        
        # Set
        AddTalkListDataIf(GetEventStatus(25009810) == 0, 2, 99060002, -1)
        
        # Unset
        AddTalkListDataIf(GetEventStatus(25009810) == 1, 3, 99060003, -1)
        
        # Starting Location
        AddTalkListData(4, 99060008, -1)

        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Description
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060020, 0, 0, 0)
            continue
        # Set
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009810, 1)
            SetEventState(25009811, 0)
            SetEventState(25009812, 0)
            SetEventState(25009813, 0)
            SetEventState(25009814, 0)
            SetEventState(25009815, 0)
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009810, 0)
            continue 
        # Starting Location
        elif GetTalkListEntryResult() == 4:
            assert t400510_x40()
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
          
# Wanderer Mode
def t400510_x12():
    c1110()
    while True:
        ClearTalkListData()
       
        # Description
        AddTalkListData(1, 99060001, -1)
        
        # Set
        AddTalkListDataIf(GetEventStatus(25009811) == 0, 2, 99060002, -1)
        
        # Unset
        AddTalkListDataIf(GetEventStatus(25009811) == 1, 3, 99060003, -1)

        # Starting Location
        AddTalkListData(4, 99060008, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Description
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060021, 0, 0, 0)
            continue
        # Set
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009810, 0)
            SetEventState(25009811, 1)
            SetEventState(25009812, 0)
            SetEventState(25009813, 0)
            SetEventState(25009814, 0)
            SetEventState(25009815, 0)
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009811, 0)
            continue
        # Starting Location
        elif GetTalkListEntryResult() == 4:
            assert t400510_x40()
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Mythic Mode
def t400510_x13():
    c1110()
    while True:
        ClearTalkListData()
       
        # Description
        AddTalkListData(1, 99060001, -1)
        
        # Set
        AddTalkListDataIf(GetEventStatus(25009812) == 0, 2, 99060002, -1)
        
        # Unset
        AddTalkListDataIf(GetEventStatus(25009812) == 1, 3, 99060003, -1)

        # Starting Location
        AddTalkListData(4, 99060008, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Description
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060022, 0, 0, 0)
            continue
        # Set
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009810, 0)
            SetEventState(25009811, 0)
            SetEventState(25009812, 1)
            SetEventState(25009813, 0)
            SetEventState(25009814, 0)
            SetEventState(25009815, 0)
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009812, 0)
            continue
        # Starting Location
        elif GetTalkListEntryResult() == 4:
            assert t400510_x40()
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

# Gauntlet Mode
def t400510_x14():
    c1110()
    while True:
        ClearTalkListData()
       
        # Description
        AddTalkListData(1, 99060001, -1)
        
        # Set
        AddTalkListDataIf(GetEventStatus(25009813) == 0, 2, 99060002, -1)
        
        # Unset
        AddTalkListDataIf(GetEventStatus(25009813) == 1, 3, 99060003, -1)

        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Description
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060023, 0, 0, 0)
            continue
        # Set
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009810, 0)
            SetEventState(25009811, 0)
            SetEventState(25009812, 0)
            SetEventState(25009813, 1)
            SetEventState(25009814, 0)
            SetEventState(25009815, 0)
            SetEventState(25003200, 1) # Set Order by default, changable in Firelink
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009813, 0)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Explorer Mode
def t400510_x15():
    c1110()
    while True:
        ClearTalkListData()
       
        # Description
        AddTalkListData(1, 99060001, -1)
        
        # Set
        AddTalkListDataIf(GetEventStatus(25009814) == 0, 2, 99060002, -1)
        
        # Unset
        AddTalkListDataIf(GetEventStatus(25009814) == 1, 3, 99060003, -1)

        # Starting Location
        AddTalkListData(4, 99060008, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Description
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060024, 0, 0, 0)
            continue
        # Set
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009810, 0)
            SetEventState(25009811, 0)
            SetEventState(25009812, 0)
            SetEventState(25009813, 0)
            SetEventState(25009814, 1)
            SetEventState(25009815, 0)
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009814, 0)
            continue
        # Starting Location
        elif GetTalkListEntryResult() == 4:
            assert t400510_x40()
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
           
# Onslaught Mode
def t400510_x16():
    c1110()
    while True:
        ClearTalkListData()
       
        # Description
        AddTalkListData(1, 99060001, -1)
        
        # Set
        AddTalkListDataIf(GetEventStatus(25009815) == 0, 2, 99060002, -1)
        
        # Unset
        AddTalkListDataIf(GetEventStatus(25009815) == 1, 3, 99060003, -1)

        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Description
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060025, 0, 0, 0)
            continue
        # Set
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009810, 0)
            SetEventState(25009811, 0)
            SetEventState(25009812, 0)
            SetEventState(25009813, 0)
            SetEventState(25009814, 0)
            SetEventState(25009815, 1)
            SetEventState(25003200, 1) # Set Order by default, changable in Firelink
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009815, 0)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Advance Journey 1
def t400510_x20():
    c1110()
    while True:
        ClearTalkListData()
        # Are you sure?
        AddTalkListData(1, 15028001, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            assert t400510_x21()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Advance Journey 2
def t400510_x21():
    c1110()
    while True:
        ClearTalkListData()
        # Are you really sure?
        AddTalkListData(1, 15028002, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            SetEventState(74000012, 1)
            SetEventState(14005617, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Begin Journey
def t400510_x30():
    c1110()
    while True:
        ClearTalkListData()
        
        # Are you really sure?
        AddTalkListData(1, 15028001, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            # Award Darksign during first playthrough
            if IsEquipmentIDObtained(3, 117) == 0:
                GetItemFromItemLot(9040)
            else:
                pass
                
            SetEventState(25009800, 1)
            SetEventState(25009802, 1)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Starting Location
def t400510_x40():
    c1110()
    while True:
        ClearTalkListData()
        
        # Cemetery of Ash
        AddTalkListData(1, 99060030, -1)
        
        # Untended Graves
        AddTalkListData(2, 99060031, -1)
        
        # Archdragon Peak
        AddTalkListData(3, 99060032, -1)
        
        # Farron Keep
        AddTalkListData(4, 99060033, -1)
        
        # Catacombs of Carthus
        AddTalkListData(5, 99060034, -1)
        
        # Irithyll
        AddTalkListData(6, 99060035, -1)
        
        # Profaned Capital
        AddTalkListData(7, 99060036, -1)
        
        # Consumed King's Garden
        AddTalkListData(8, 99060037, -1)
        
        # Lothric Castle
        AddTalkListData(9, 99060038, -1)
        
        # Cathedral of the Deep
        AddTalkListData(10, 99060039, -1)
        
        # Ariandel
        AddTalkListData(11, 99060040, -1)
        
        # Dreg Heap
        AddTalkListData(12, 99060041, -1)
        
        # Ringed City
        AddTalkListData(13, 99060042, -1)
        
        # Random
        AddTalkListData(14, 99060043, -1)
        
        # Leave
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Cemetery of Ash
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060050, 0, 0, 0)
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
            continue
        # Untended Graves
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 99060051, 0, 0, 0)
            SetEventState(25009820, 1)
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
            continue
        # Archdragon Peak
        elif GetTalkListEntryResult() == 3:
            OpenGenericDialog(1, 99060052, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 1)
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
            continue
        # Farron Keep
        elif GetTalkListEntryResult() == 4:
            OpenGenericDialog(1, 99060053, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 1)
            SetEventState(25009823, 0)
            SetEventState(25009824, 0)
            SetEventState(25009825, 0)
            SetEventState(25009826, 0)
            SetEventState(25009827, 0)
            SetEventState(25009828, 0)
            SetEventState(25009829, 0)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Catacombs of Carthus
        elif GetTalkListEntryResult() == 5:
            OpenGenericDialog(1, 99060054, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 0)
            SetEventState(25009823, 1)
            SetEventState(25009824, 0)
            SetEventState(25009825, 0)
            SetEventState(25009826, 0)
            SetEventState(25009827, 0)
            SetEventState(25009828, 0)
            SetEventState(25009829, 0)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Irithyll
        elif GetTalkListEntryResult() == 6:
            OpenGenericDialog(1, 99060055, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 0)
            SetEventState(25009823, 0)
            SetEventState(25009824, 1)
            SetEventState(25009825, 0)
            SetEventState(25009826, 0)
            SetEventState(25009827, 0)
            SetEventState(25009828, 0)
            SetEventState(25009829, 0)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Profaned Capital
        elif GetTalkListEntryResult() == 7:
            OpenGenericDialog(1, 99060056, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 0)
            SetEventState(25009823, 0)
            SetEventState(25009824, 0)
            SetEventState(25009825, 1)
            SetEventState(25009826, 0)
            SetEventState(25009827, 0)
            SetEventState(25009828, 0)
            SetEventState(25009829, 0)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Consumed King's Garden
        elif GetTalkListEntryResult() == 8:
            OpenGenericDialog(1, 99060057, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 0)
            SetEventState(25009823, 0)
            SetEventState(25009824, 0)
            SetEventState(25009825, 0)
            SetEventState(25009826, 1)
            SetEventState(25009827, 0)
            SetEventState(25009828, 0)
            SetEventState(25009829, 0)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Lothric Castle
        elif GetTalkListEntryResult() == 9:
            OpenGenericDialog(1, 99060058, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 0)
            SetEventState(25009823, 0)
            SetEventState(25009824, 0)
            SetEventState(25009825, 0)
            SetEventState(25009826, 0)
            SetEventState(25009827, 1)
            SetEventState(25009828, 0)
            SetEventState(25009829, 0)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Cathedral of the Deep
        elif GetTalkListEntryResult() == 10:
            OpenGenericDialog(1, 99060059, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 0)
            SetEventState(25009823, 0)
            SetEventState(25009824, 0)
            SetEventState(25009825, 0)
            SetEventState(25009826, 0)
            SetEventState(25009827, 0)
            SetEventState(25009828, 1)
            SetEventState(25009829, 0)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Ariandel
        elif GetTalkListEntryResult() == 11:
            OpenGenericDialog(1, 99060060, 0, 0, 0)
            SetEventState(25009820, 0)
            SetEventState(25009821, 0)
            SetEventState(25009822, 0)
            SetEventState(25009823, 0)
            SetEventState(25009824, 0)
            SetEventState(25009825, 0)
            SetEventState(25009826, 0)
            SetEventState(25009827, 0)
            SetEventState(25009828, 0)
            SetEventState(25009829, 1)
            SetEventState(25009830, 0)
            SetEventState(25009831, 0)
            continue
        # Dreg Heap
        elif GetTalkListEntryResult() == 12:
            OpenGenericDialog(1, 99060061, 0, 0, 0)
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
            SetEventState(25009830, 1)
            SetEventState(25009831, 0)
            continue
        # Ringed City
        elif GetTalkListEntryResult() == 13:
            OpenGenericDialog(1, 99060062, 0, 0, 0)
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
            SetEventState(25009831, 1)
            continue
        # Random
        elif GetTalkListEntryResult() == 14:
            OpenGenericDialog(1, 99060063, 0, 0, 0)
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
            SetEventState(25009840, 1)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            