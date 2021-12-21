#-------------------------------------------
#-- Grave Warden Lillian
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400503_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400503_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400503_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400503_x0():
    """ State 0,1 """
    while True:
        call = t400503_x3()

# Client Player
def t400503_x1():
    """ State 0,1 """
    assert t400503_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400503_x2():
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
def t400503_x3():
    """ State 0,1 """
    call = t400503_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400503_x4():
    """ State 0,5 """
    while True:
        call = t400503_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400503_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400503_x6() # Attack Check
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
                call = t400503_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400503_x2() # Clear Talk State
    
# Interaction State
def t400503_x5():
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
def t400503_x6():
    """ State 0,6 """
    assert t400503_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400503_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400503_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400503_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400503_x8():
    """ State 0,1 """
    SetEventState(74009000, 0)
    SetEventState(74009001, 0)
    SetEventState(74009002, 0)
    SetEventState(74009003, 0)
    assert t400503_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400503_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Learn the Dark Arts
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15003023, -1)
        
        # Magical Restraints
        AddTalkListData(2, 99095000, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008180) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008180) == 1, 11, 15015041, -1)
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008180) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(8, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Learn the Dark Arts
        if GetTalkListEntryResult() == 1:
            OpenRegularShop(240000, 249999)
            continue
        # Magical Restraints
        elif GetTalkListEntryResult() == 2:
            assert t400503_x20()
            continue
        # Talk
        elif GetTalkListEntryResult() == 8:
            assert t400503_x10(text1=10017000, flag1=0, mode1=0)
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008180, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400503_x10(text1=10116030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t400503_x10(text1=10116000, flag1=0, mode1=0)
                GetItemFromItemLot(90170)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400503_x10(text1=10116010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400503_x10(text1=10116020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400503_x10(text1=10116020, flag1=0, mode1=0)
            SetEventState(25008180, 0)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t400503_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400503_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400503_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------------
# Magical Restraints
#----------------------------------------------------------
def t400503_x20():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Restraint: Sprint - Enable
        AddTalkListDataIf(GetEventStatus(25002501) == 0, 3, 99095011, -1)
        
        # Restraint: Sprint - Disable
        AddTalkListDataIf(GetEventStatus(25002501) == 1, 4, 99095021, -1)
        
        # Restraint: Run - Enable
        AddTalkListDataIf(GetEventStatus(25002502) == 0, 5, 99095012, -1)
        
        # Restraint: Run - Disable
        AddTalkListDataIf(GetEventStatus(25002502) == 1, 6, 99095022, -1)
        
        # Restraint: Roll - Enable
        AddTalkListDataIf(GetEventStatus(25002500) == 0, 1, 99095010, -1)
        
        # Restraint: Roll - Disable
        AddTalkListDataIf(GetEventStatus(25002500) == 1, 2, 99095020, -1)
        
        # Restraint: Backstep - Enable
        AddTalkListDataIf(GetEventStatus(25002503) == 0, 7, 99095013, -1)
        
        # Restraint: Backstep - Disable
        AddTalkListDataIf(GetEventStatus(25002503) == 1, 8, 99095023, -1)
        
        # Restraint: Jump - Enable
        AddTalkListDataIf(GetEventStatus(25002504) == 0, 9, 99095014, -1)
        
        # Restraint: Jump - Disable
        AddTalkListDataIf(GetEventStatus(25002504) == 1, 10, 99095024, -1)
        
        # Restraint: Kick - Enable
        AddTalkListDataIf(GetEventStatus(25002505) == 0, 11, 99095015, -1)
        
        # Restraint: Kick - Disable
        AddTalkListDataIf(GetEventStatus(25002505) == 1, 12, 99095025, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Restraint: Roll - Enable
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99095200, 0, 0, 0)
            SetEventState(25002500, 1)
            continue
        # Restraint: Roll - Disable
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 99095100, 0, 0, 0)
            SetEventState(25002500, 0)
            continue
        # Enable Restraint: Sprint
        elif GetTalkListEntryResult() == 3:
            OpenGenericDialog(1, 99095201, 0, 0, 0)
            SetEventState(25002501, 1)
            continue
        # Disable Restraint: Sprint
        elif GetTalkListEntryResult() == 4:
            OpenGenericDialog(1, 99095101, 0, 0, 0)
            SetEventState(25002501, 0)
            continue
        # Enable Restraint: Run
        elif GetTalkListEntryResult() == 5:
            OpenGenericDialog(1, 99095202, 0, 0, 0)
            SetEventState(25002502, 1)
            continue
        # Disable Restraint: Run
        elif GetTalkListEntryResult() == 6:
            OpenGenericDialog(1, 99095102, 0, 0, 0)
            SetEventState(25002502, 0)
            continue
        # Enable Restraint: Backstep
        elif GetTalkListEntryResult() == 7:
            OpenGenericDialog(1, 99095203, 0, 0, 0)
            SetEventState(25002503, 1)
            continue
        # Disable Restraint: Backstep
        elif GetTalkListEntryResult() == 8:
            OpenGenericDialog(1, 99095103, 0, 0, 0)
            SetEventState(25002503, 0)
            continue
        # Enable Restraint: Jump
        elif GetTalkListEntryResult() == 9:
            OpenGenericDialog(1, 99095204, 0, 0, 0)
            SetEventState(25002504, 1)
            continue
        # Disable Restraint: Jump
        elif GetTalkListEntryResult() == 10:
            OpenGenericDialog(1, 99095104, 0, 0, 0)
            SetEventState(25002504, 0)
            continue
        # Enable Restraint: Kick
        elif GetTalkListEntryResult() == 11:
            OpenGenericDialog(1, 99095205, 0, 0, 0)
            SetEventState(25002505, 1)
            continue
        # Disable Restraint: Kick
        elif GetTalkListEntryResult() == 12:
            OpenGenericDialog(1, 99095105, 0, 0, 0)
            SetEventState(25002505, 0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
#----------------------------------------------------
# Utility
#----------------------------------------------------
# Acquire Gesture
def t400503_x50(z2=_, z3=_, flag1=_):
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