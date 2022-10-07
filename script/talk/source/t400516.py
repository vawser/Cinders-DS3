#-------------------------------------------
#-- Bone Collector
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400516_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400516_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400516_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400516_x0():
    """ State 0,1 """
    while True:
        call = t400516_x3()

# Client Player
def t400516_x1():
    """ State 0,1 """
    assert t400516_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400516_x2():
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
def t400516_x3():
    """ State 0,1 """
    call = t400516_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400516_x4():
    """ State 0,5 """
    while True:
        call = t400516_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400516_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400516_x6() # Attack Check
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
                call = t400516_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400516_x2() # Clear Talk State
    
# Interaction State
def t400516_x5():
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
def t400516_x6():
    """ State 0,6 """
    assert t400516_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400516_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400516_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400516_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400516_x8():
    """ State 0,1 """
    assert t400516_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400516_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Training Dummies
        AddTalkListData(1, 15003040, -1)
        
        # Train Outside
        AddTalkListDataIf(GetEventStatus(25009850) == 0 and GetEventStatus(25009793) == 0, 2, 15003050, -1)
        
        # Train Inside
        AddTalkListDataIf(GetEventStatus(25009793) == 1, 3, 15003051, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Training Dummies
        if GetTalkListEntryResult() == 1:
            assert t400516_x20()
            continue
        # Train Outside
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009793, 1)
            return 0
        # Train Inside
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009793, 0)
            return 0   
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t400516_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400516_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0
    
# Talk Cleanup
def t400516_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
# Training Dummies
def t400516_x20():
    c1110()
    while True:
        ClearTalkListData()
        
        # Enable Immovable Dummy
        AddTalkListDataIf(GetEventStatus(25009790) == 0, 1, 15003041, -1)
        
        # Disable Immovable Dummy
        AddTalkListDataIf(GetEventStatus(25009790) == 1, 2, 15003044, -1)
        
        # Enable Movable Dummy
        AddTalkListDataIf(GetEventStatus(25009791) == 0, 3, 15003042, -1)
        
        # Disable Movable Dummy
        AddTalkListDataIf(GetEventStatus(25009791) == 1, 4, 15003045, -1)
        
        # Enable Aggressive Dummy
        AddTalkListDataIf(GetEventStatus(25009792) == 0, 5, 15003043, -1)
        
        # Disable Aggressive Dummy
        AddTalkListDataIf(GetEventStatus(25009792) == 1, 6, 15003046, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable Immovable Dummy
        if GetTalkListEntryResult() == 1:
            SetEventState(25009790, 1)
            continue
        # Disable Immovable Dummy
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009790, 0)
            continue
        # Enable Movable Dummy
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009791, 1)
            continue
        # Disable Movable Dummy
        elif GetTalkListEntryResult() == 4:
            SetEventState(25009791, 0)
            continue
        # Enable Aggressive Dummy
        elif GetTalkListEntryResult() == 5:
            SetEventState(25009792, 1)
            continue
        # Disable Aggressive Dummy
        elif GetTalkListEntryResult() == 6:
            SetEventState(25009792, 0)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            