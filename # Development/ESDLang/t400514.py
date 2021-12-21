#-------------------------------------------
#-- Domhnall of Zena
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400514_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400514_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400514_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400514_x0():
    """ State 0,1 """
    while True:
        call = t400514_x3()

# Client Player
def t400514_x1():
    """ State 0,1 """
    assert t400514_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400514_x2():
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
def t400514_x3():
    """ State 0,1 """
    call = t400514_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400514_x4():
    """ State 0,5 """
    while True:
        call = t400514_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400514_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400514_x6() # Attack Check
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
                call = t400514_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400514_x2() # Clear Talk State
    
# Interaction State
def t400514_x5():
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
def t400514_x6():
    """ State 0,6 """
    assert t400514_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400514_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400514_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400514_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400514_x8():
    """ State 0,1 """
    SetEventState(73709100, 0)
    SetEventState(73709101, 0)
    assert t400514_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400514_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Covenant
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 99062000, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008070) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008070) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008070) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(2, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Offerings
        if GetTalkListEntryResult() == 1:
            assert t400514_x50()
            continue
        # Talk
        elif GetTalkListEntryResult() == 2:
            assert t400514_x10(text1=10013000, flag1=0, mode1=0)
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008070, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400514_x10(text1=10105030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t400514_x10(text1=10105000, flag1=0, mode1=0)
                GetItemFromItemLot(90060)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400514_x10(text1=10105010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400514_x10(text1=10105020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400514_x10(text1=10105020, flag1=0, mode1=0)
            SetEventState(25008070, 0)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t400514_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400514_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400514_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------
# Covenant
#----------------------------------------------------
def t400514_x50():
    c1110()
    while True:
        ClearTalkListData()

        # Form Covenant
        AddTalkListDataIf(IsEquipmentIDObtained(2, 10160) == 0 and 
        IsEquipmentIDObtained(2, 10161) == 0 and 
        IsEquipmentIDObtained(2, 10162) == 0 and 
        IsEquipmentIDObtained(2, 10163) == 0 and 
        IsEquipmentIDObtained(2, 10164) == 0, 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Strengthen Bond - II
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10160) == 1, 3, 99062001, -1)
        
        # Strengthen Bond - III
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10161) == 1, 4, 99062001, -1)
        
        # Strengthen Bond - IV
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10162) == 1, 5, 99062001, -1)
        
        # Strengthen Bond - V
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10163) == 1, 6, 99062001, -1)
        
        # Strengthen Bond - None
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10160) == 0 and 
        IsEquipmentIDEquipped(2, 10161) == 0 and 
        IsEquipmentIDEquipped(2, 10162) == 0 and 
        IsEquipmentIDEquipped(2, 10163) == 0 and 
        IsEquipmentIDEquipped(2, 10164) == 0, 7, 99062001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001110)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            c1111(210000, 210999)
            continue
        # Strengthen Bond - II
        elif GetTalkListEntryResult() == 3:
            assert t400514_x60()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - III
        elif GetTalkListEntryResult() == 4:
            assert t400514_x61()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - IV
        elif GetTalkListEntryResult() == 5:
            assert t400514_x62()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - V
        elif GetTalkListEntryResult() == 6:
            assert t400514_x63()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - None
        elif GetTalkListEntryResult() == 7:
            assert t400514_x52(action1=99062005)
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
def t400514_x51(action2=_):
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
        
def t400514_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    
# Strengthen Bond - II
def t400514_x60():
    call = t400514_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 365, 3, 9, 0) == 1:
            assert t400514_x52(action1=99062240)
        else:
            PlayerEquipmentQuantityChange(3, 365, -10)
            PlayerEquipmentQuantityChange(2, 10160, -1)
            PlayerEquipmentQuantityChange(2, 10161, 1)
            
            assert t400514_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - III
def t400514_x61():
    call = t400514_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 365, 3, 19, 0) == 1:
            assert t400514_x52(action1=99062241)
        else:
            PlayerEquipmentQuantityChange(3, 365, -20)
            PlayerEquipmentQuantityChange(2, 10161, -1)
            PlayerEquipmentQuantityChange(2, 10162, 1)
            
            assert t400514_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - IV
def t400514_x62():
    call = t400514_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 365, 3, 29, 0) == 1:
            assert t400514_x52(action1=99062242)
        else:
            PlayerEquipmentQuantityChange(3, 365, -30)
            PlayerEquipmentQuantityChange(2, 10162, -1)
            PlayerEquipmentQuantityChange(2, 10163, 1)
            
            assert t400514_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - V
def t400514_x63():
    call = t400514_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 365, 3, 49, 0) == 1:
            assert t400514_x52(action1=99062243)
        else:
            PlayerEquipmentQuantityChange(3, 365, -50)
            PlayerEquipmentQuantityChange(2, 10163, -1)
            PlayerEquipmentQuantityChange(2, 10164, 1)
            
            assert t400514_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
