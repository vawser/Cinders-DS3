#-------------------------------------------
#-- Petrified Giant
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
        AddTalkListDataIf(GetEventStatus(25009800) == 0 and GetEventStatus(25009810) == 1 or GetEventStatus(25009811) == 1 or GetEventStatus(25009812) == 1, 3, 99060005, -1)
        
        # Current Configuration (Standard)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009810) == 1, 10, 99060006, -1)
        
        # Current Configuration (Wanderer)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009811) == 1, 11, 99060006, -1)
        
        # Current Configuration (Mythic)
        AddTalkListDataIf(GetEventStatus(25009800) == 1 and GetEventStatus(25009812) == 1, 12, 99060006, -1)
        
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
        
        # Wanderer Mode
        AddTalkListData(2, 99060011, -1)
        
        # Mythic Mode
        AddTalkListData(3, 99060012, -1)
        
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
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009810, 0)
            continue 
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
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009811, 0)
            continue 
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
            continue 
        # Unset
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009812, 0)
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
            SetEventState(25009800, 1)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
            