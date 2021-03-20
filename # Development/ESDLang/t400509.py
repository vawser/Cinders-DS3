#-------------------------------------------
#-- Acolyte Grudore
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400509_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400509_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400509_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400509_x0():
    """ State 0,1 """
    while True:
        call = t400509_x3()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)

# Client Player
def t400509_x1():
    """ State 0,1 """
    assert t400509_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400509_x2():
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
def t400509_x3():
    """ State 0,1 """
    call = t400509_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400509_x4():
    """ State 0,5 """
    while True:
        call = t400509_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000) # Interaction State
        if call.Done():
            """ State 3 """
            call = t400509_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400509_x6() # Attack Check
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t400509_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400509_x2() # Clear Talk State
    
# Interaction State
def t400509_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z4):
            break
    """ State 4 """
    return 0

# Attack Check
def t400509_x6():
    """ State 0,6 """
    assert t400509_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """ State 2 """
    if GetDistanceToPlayer() > 12:
        """ State 7 """
        assert t400509_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400509_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400509_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0
    
# Menu Pre-loop
def t400509_x8():
    """ State 0,1 """
    assert t400509_x9()
    """ State 24 """
    return 0
    
def t400509_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Empower Focusing Crystal
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 220, 0, 1, 0) == 1, 20, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 221, 0, 1, 0) == 1, 21, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 222, 0, 1, 0) == 1, 22, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 223, 0, 1, 0) == 1, 23, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 224, 0, 1, 0) == 1, 24, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 225, 0, 1, 0) == 1, 25, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 226, 0, 1, 0) == 1, 26, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 227, 0, 1, 0) == 1, 27, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 228, 0, 1, 0) == 1, 28, 99030600, -1)
        #AddTalkListDataIf(ComparePlayerInventoryNumber(3, 229, 0, 1, 0) == 1, 29, 99030600, -1)
        
        # Purchase Item
        AddTalkListData(1, 15000010, -1)
        
        # Give Farron Coal
        AddTalkListDataIf(GetEventStatus(25009580) == 0 and ComparePlayerInventoryNumber(3, 2103, 2, 0, 0) == 1, 30, 99030620, -1)
        
        # Give Sage's Coal
        AddTalkListDataIf(GetEventStatus(25009581) == 0 and ComparePlayerInventoryNumber(3, 2104, 2, 0, 0) == 1, 31, 99030621, -1)
        
        # Give Giant's Coal
        AddTalkListDataIf(GetEventStatus(25009582) == 0 and ComparePlayerInventoryNumber(3, 2105, 2, 0, 0) == 1, 32, 99030622, -1)
        
        # Give Profaned Coal
        AddTalkListDataIf(GetEventStatus(25009583) == 0 and ComparePlayerInventoryNumber(3, 2106, 2, 0, 0) == 1, 33, 99030623, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008250) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008250) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008250) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(3, 10010200, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Empower Focus Implement 1
        if GetTalkListEntryResult() == 20:
            assert t400509_x50(220, 221)
            return 0
        # Empower Focus Implement 2
        elif GetTalkListEntryResult() == 21:
            assert t400509_x50(221, 222)
            return 0
        # Empower Focus Implement 3
        elif GetTalkListEntryResult() == 22:
            assert t400509_x50(222, 223)
            return 0
        # Empower Focus Implement 4
        elif GetTalkListEntryResult() == 23:
            assert t400509_x50(223, 224)
            return 0
        # Empower Focus Implement 5
        elif GetTalkListEntryResult() == 24:
            assert t400509_x50(224, 225)
            return 0
        # Empower Focus Implement 6
        elif GetTalkListEntryResult() == 25:
            assert t400509_x50(225, 226)
            return 0
        # Empower Focus Implement 7
        elif GetTalkListEntryResult() == 26:
            assert t400509_x50(226, 227)
            return 0
        # Empower Focus Implement 8
        elif GetTalkListEntryResult() == 27:
            assert t400509_x50(227, 228)
            return 0
        # Empower Focus Implement 9
        elif GetTalkListEntryResult() == 28:
            assert t400509_x50(228, 229)
            return 0
        # Empower Focus Implement 10
        elif GetTalkListEntryResult() == 29:
            assert t400509_x50(229, 230)
            return 0
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008250, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99030613, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99030610, 0, 0, 0)
                GetItemFromItemLot(90240)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99030611, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                OpenGenericDialog(1, 99030612, 0, 0, 0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            SetEventState(25008250, 0)
            GetItemFromItemLot(800001300)
            OpenGenericDialog(1, 99030612, 0, 0, 0)
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            OpenGenericDialog(1, 99030615, 0, 0, 0)
            return 0
        # Purchase Items
        elif GetTalkListEntryResult() == 1:
            OpenRegularShop(290000, 290999)
        # Give Farron Coal
        elif GetTalkListEntryResult() == 30:
            SetEventState(25009580, 1)
            PlayerEquipmentQuantityChange(3, 2103, -1)
            OpenGenericDialog(1, 99030625, 0, 0, 0)
            return 0
        # Give Sage's Coal
        elif GetTalkListEntryResult() == 31:
            SetEventState(25009581, 1)
            PlayerEquipmentQuantityChange(3, 2104, -1)
            OpenGenericDialog(1, 99030625, 0, 0, 0)
            return 0
        # Give Giant's Coal
        elif GetTalkListEntryResult() == 32:
            SetEventState(25009582, 1)
            PlayerEquipmentQuantityChange(3, 2105, -1)
            OpenGenericDialog(1, 99030625, 0, 0, 0)
            return 0
        # Give Profaned Coal
        elif GetTalkListEntryResult() == 33:
            SetEventState(25009583, 1)
            PlayerEquipmentQuantityChange(3, 2106, -1)
            OpenGenericDialog(1, 99030625, 0, 0, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Affix
def t400509_x50(old_item=_, new_item=_):
    # Empower implement?
    call = t400509_x51(action2=99030601)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 2164, 3, 0, 0) == 1:
            # No Resonating Crystal
            assert t400509_x52(action1=99030603)
        else:
            PlayerEquipmentQuantityChange(3, 2164, -1)
            ReplaceTool(old_item, new_item, 1)
            
            # Focus Implement empowered
            assert t400509_x52(action1=99030604)
    elif call.Get() == 1:
        pass
    return 0
    
def t400509_x51(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
        
def t400509_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0