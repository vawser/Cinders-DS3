#-------------------------------------------
#-- Master Benjin
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400507_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400507_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400507_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400507_x0():
    """ State 0,1 """
    while True:
        call = t400507_x3()

# Client Player
def t400507_x1():
    """ State 0,1 """
    assert t400507_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400507_x2():
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
def t400507_x3():
    """ State 0,1 """
    call = t400507_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400507_x4():
    """ State 0,5 """
    while True:
        call = t400507_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400507_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400507_x6() # Attack Check
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
                call = t400507_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400507_x2() # Clear Talk State
    
# Interaction State
def t400507_x5():
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
def t400507_x6():
    """ State 0,6 """
    assert t400507_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400507_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400507_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400507_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400507_x8():
    """ State 0,1 """
    SetEventState(73109000, 0)
    assert t400507_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400507_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Purchase Sidearms
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15003024, -1)

        # Tortured Soul
        AddTalkListDataIf(GetEventStatus(25009530) == 0, 2, 99013100, -1)
        
        # Give Tortured Soul
        AddTalkListDataIf(GetEventStatus(25009530) == 0 and ComparePlayerInventoryNumber(3, 2004, 2, 0, 0) == 1, 3, 99013101, -1)
        
        # Smithbox
        AddTalkListDataIf(GetEventStatus(25009540) == 0, 4, 99013110, -1)
        
        # Give Smithbox
        AddTalkListDataIf(GetEventStatus(25009540) == 0 and ComparePlayerInventoryNumber(3, 2006, 2, 0, 0) == 1, 5, 99013111, -1)
        
        # Smithbox
        AddTalkListDataIf(GetEventStatus(25009540) == 0, 4, 99013110, -1)
        
        # Learn the Benjin's Dash
        AddTalkListDataIf(GetEventStatus(25009750) == 0, 10, 99013130, -1)
        
        # Forget Benjin's Dash
        AddTalkListDataIf(GetEventStatus(25009750) == 1, 11, 99013140, -1)
        
        # Talk
        AddTalkListData(6, 10010200, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Purchase Sidearms
        if GetTalkListEntryResult() == 1:
            OpenRegularShop(270000, 279999)
            continue
        # Tortured Soul
        elif GetTalkListEntryResult() == 2:
            assert t400507_x10(text1=10021010, flag1=0, mode1=0)
            continue
        # Give Tortured Soul
        elif GetTalkListEntryResult() == 3:
            SetEventState(25009530, 1)
            PlayerEquipmentQuantityChange(3, 2004, -1)
            assert t400507_x10(text1=10021030, flag1=0, mode1=0)
            continue
        # Smithbox
        elif GetTalkListEntryResult() == 4:
            assert t400507_x10(text1=10021020, flag1=0, mode1=0)
            continue
        # Give Smithbox
        elif GetTalkListEntryResult() == 5:
            SetEventState(25009540, 1)
            PlayerEquipmentQuantityChange(3, 2006, -1)
            assert t400507_x10(text1=10021030, flag1=0, mode1=0)
            continue
        # Talk
        elif GetTalkListEntryResult() == 6:
            assert t400507_x10(text1=10021000, flag1=0, mode1=0)
            continue
        # Learn Benjin's Dash
        elif GetTalkListEntryResult() == 10:
            OpenGenericDialog(1, 99013131, 0, 0, 0)
            SetEventState(25009750, 1)
            continue
        # Forget Benjin's Dash
        elif GetTalkListEntryResult() == 11:
            OpenGenericDialog(1, 99013141, 0, 0, 0)
            SetEventState(25009750, 0)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t400507_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400507_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400507_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------
# Utility
#----------------------------------------------------
# Acquire Gesture
def t400507_x50(z2=_, z3=_, flag1=_):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0