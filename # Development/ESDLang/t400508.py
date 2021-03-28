#-------------------------------------------
#-- Ritualist Ellie
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400508_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400508_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400508_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400508_x0():
    """ State 0,1 """
    while True:
        call = t400508_x3()

# Client Player
def t400508_x1():
    """ State 0,1 """
    assert t400508_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400508_x2():
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
def t400508_x3():
    """ State 0,1 """
    call = t400508_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400508_x4():
    """ State 0,5 """
    while True:
        call = t400508_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400508_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400508_x6() # Attack Check
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
                call = t400508_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400508_x2() # Clear Talk State
    
# Interaction State
def t400508_x5():
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
def t400508_x6():
    """ State 0,6 """
    assert t400508_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400508_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400508_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400508_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0
    
# Menu Pre-loop
def t400508_x8():
    """ State 0,1 """
    assert t400508_x9()
    """ State 24 """
    return 0
    
def t400508_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Purchase Items
        AddTalkListData(1, 99030500, -1)
        
        # Opuses
        AddTalkListData(5, 99016031, -1)
        
        # Imbuement
        AddTalkListData(4, 99016030, -1)
        
        # Form Covenant
        AddTalkListDataIf(GetEventStatus(25000209) == 0, 2, 15003019, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008240) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008240) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008240) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(3, 10010200, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Purchase Items
        if GetTalkListEntryResult() == 1:
            c1111(280000, 280099)
            continue
        # Opuses
        elif GetTalkListEntryResult() == 5:
            c1111(280100, 280999)
            continue
        # Imbuement
        elif GetTalkListEntryResult() == 4:
            assert t400508_x20()
            return 0
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008240, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99030513, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99030510, 0, 0, 0)
                GetItemFromItemLot(90230)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99030511, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                OpenGenericDialog(1, 99030512, 0, 0, 0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            SetEventState(25008240, 0)
            GetItemFromItemLot(800001300)
            OpenGenericDialog(1, 99030512, 0, 0, 0)
            return 0
        # Covenant
        elif GetTalkListEntryResult() == 2:
            """ State 32,33 """
            SetEventState(25000209, 1)
            GetItemFromItemLot(800001140)
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            OpenGenericDialog(1, 99030501, 0, 0, 0)
            return 0
        # Covenant
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#----------------------------------------------------
# Imbues
#----------------------------------------------------
def t400508_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Imbue Overview
        AddTalkListData(2, 99016001, -1)
        
        # Apply Imbue
        AddTalkListData(1, 99016000, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Apply Imbue
        if GetTalkListEntryResult() == 1:
            assert t400508_x40()
            continue
        # Imbue Overview
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 99016020, 0, 0, 0)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
def t400508_x40():
    c1110()
    
    while True:
        ClearTalkListData()

        # Basic Imbue
        AddTalkListData(1, 99016005, -1)
        
        # Fine Imbue
        AddTalkListData(2, 99016006, -1)
        
        # Superior Imbue
        AddTalkListData(3, 99016007, -1)
        
        # Exquisite Imbue
        AddTalkListData(4, 99016008, -1)
        
        # Legendary Imbue
        AddTalkListData(5, 99016009, -1)
        
        # Quit
        AddTalkListData(99, 15000180, -1)

        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Basic Imbue 
        if GetTalkListEntryResult() == 1:
            assert t400508_x41()
            return 0
        # Fine Imbue
        elif GetTalkListEntryResult() == 2:
            assert t400508_x42()
            return 0
        # Superior Imbue 
        elif GetTalkListEntryResult() == 3:
            assert t400508_x43()
            return 0
        # Exquisite Imbue 
        elif GetTalkListEntryResult() == 4:
            assert t400508_x44()
            return 0
        # Legendary Imbue 
        elif GetTalkListEntryResult() == 5:
            assert t400508_x45()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Basic
#----------------------------------------------------------
def t400508_x41():
    c1110()
    
    while True:
        ClearTalkListData()
    
        # Dial of Obedience
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30980, 4, 1, 0) == 1, 1, 99016100, -1)
        
        # Offering of Might
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30990, 4, 1, 0) == 1, 2, 99016101, -1)
        
        # Offering of Tenacity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31000, 4, 1, 0) == 1, 3, 99016102, -1)
        
        # Offering of Fortitude
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31010, 4, 1, 0) == 1, 4, 99016103, -1)
        
        # Offering of Vitality
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31020, 4, 1, 0) == 1, 5, 99016104, -1)
        
        # Offering of Devotion
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31030, 4, 1, 0) == 1, 6, 99016105, -1)
        
        # Offering of Fervor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31040, 4, 1, 0) == 1, 7, 99016106, -1)
        
        # Quit
        AddTalkListData(99, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Dial of Obedience
        if GetTalkListEntryResult() == 1:
            assert t400508_x50(30980, 30981, 2, -3)
            return 0
        # Offering of Might
        elif GetTalkListEntryResult() == 2:
            assert t400508_x50(30990, 30991, 2, -3)
            return 0
        # Offering of Tenacity
        elif GetTalkListEntryResult() == 3:
            assert t400508_x50(31000, 31001, 2, -3)
            return 0
        # Offering of Fortitude
        elif GetTalkListEntryResult() == 4:
            assert t400508_x50(31010, 31011, 2, -3)
            return 0
        # Offering of Vitality
        elif GetTalkListEntryResult() == 5:
            assert t400508_x50(31020, 31021, 2, -3)
            return 0
        # Offering of Devotion
        elif GetTalkListEntryResult() == 6:
            assert t400508_x50(31030, 31031, 2, -3)
            return 0
        # Offering of Fervor
        elif GetTalkListEntryResult() == 7:
            assert t400508_x50(31040, 31041, 2, -3)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Fine
#----------------------------------------------------------
def t400508_x42():
    c1110()
    
    while True:
        ClearTalkListData()
    
        # Dial of Obedience
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30981, 4, 1, 0) == 1, 1, 99016100, -1)
        
        # Offering of Might
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30991, 4, 1, 0) == 1, 2, 99016101, -1)
        
        # Offering of Tenacity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31001, 4, 1, 0) == 1, 3, 99016102, -1)
        
        # Offering of Fortitude
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31011, 4, 1, 0) == 1, 4, 99016103, -1)
        
        # Offering of Vitality
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31021, 4, 1, 0) == 1, 5, 99016104, -1)
        
        # Offering of Devotion
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31031, 4, 1, 0) == 1, 6, 99016105, -1)
        
        # Offering of Fervor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31041, 4, 1, 0) == 1, 7, 99016106, -1)
        
        # Quit
        AddTalkListData(99, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Dial of Obedience
        if GetTalkListEntryResult() == 1:
            assert t400508_x50(30981, 30982, 5, -6)
            return 0
        # Offering of Might
        elif GetTalkListEntryResult() == 2:
            assert t400508_x50(30991, 30992, 5, -6)
            return 0
        # Offering of Tenacity
        elif GetTalkListEntryResult() == 3:
            assert t400508_x50(31001, 31002, 5, -6)
            return 0
        # Offering of Fortitude
        elif GetTalkListEntryResult() == 4:
            assert t400508_x50(31011, 31012, 5, -6)
            return 0
        # Offering of Vitality
        elif GetTalkListEntryResult() == 5:
            assert t400508_x50(31021, 31022, 5, -6)
            return 0
        # Offering of Devotion
        elif GetTalkListEntryResult() == 6:
            assert t400508_x50(31031, 31032, 5, -6)
            return 0
        # Offering of Fervor
        elif GetTalkListEntryResult() == 7:
            assert t400508_x50(31041, 31042, 5, -6)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Superior
#----------------------------------------------------------
def t400508_x43():
    c1110()
    
    while True:
        ClearTalkListData()
    
        # Dial of Obedience
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30982, 4, 1, 0) == 1, 1, 99016100, -1)
        
        # Offering of Might
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30992, 4, 1, 0) == 1, 2, 99016101, -1)
        
        # Offering of Tenacity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31002, 4, 1, 0) == 1, 3, 99016102, -1)
        
        # Offering of Fortitude
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31012, 4, 1, 0) == 1, 4, 99016103, -1)
        
        # Offering of Vitality
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31022, 4, 1, 0) == 1, 5, 99016104, -1)
        
        # Offering of Devotion
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31032, 4, 1, 0) == 1, 6, 99016105, -1)
        
        # Offering of Fervor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31042, 4, 1, 0) == 1, 7, 99016106, -1)
        
        # Quit
        AddTalkListData(99, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Dial of Obedience
        if GetTalkListEntryResult() == 1:
            assert t400508_x50(30982, 30983, 8, -9)
            return 0
        # Offering of Might
        elif GetTalkListEntryResult() == 2:
            assert t400508_x50(30992, 30993, 8, -9)
            return 0
        # Offering of Tenacity
        elif GetTalkListEntryResult() == 3:
            assert t400508_x50(31002, 31003, 8, -9)
            return 0
        # Offering of Fortitude
        elif GetTalkListEntryResult() == 4:
            assert t400508_x50(31012, 31013, 8, -9)
            return 0
        # Offering of Vitality
        elif GetTalkListEntryResult() == 5:
            assert t400508_x50(31022, 31023, 8, -9)
            return 0
        # Offering of Devotion
        elif GetTalkListEntryResult() == 6:
            assert t400508_x50(31032, 31033, 8, -9)
            return 0
        # Offering of Fervor
        elif GetTalkListEntryResult() == 7:
            assert t400508_x50(31042, 31043, 8, -9)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Exquisite
#----------------------------------------------------------
def t400508_x44():
    c1110()
    
    while True:
        ClearTalkListData()
    
        # Dial of Obedience
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30983, 4, 1, 0) == 1, 1, 99016100, -1)
        
        # Offering of Might
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30993, 4, 1, 0) == 1, 2, 99016101, -1)
        
        # Offering of Tenacity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31003, 4, 1, 0) == 1, 3, 99016102, -1)
        
        # Offering of Fortitude
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31013, 4, 1, 0) == 1, 4, 99016103, -1)
        
        # Offering of Vitality
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31023, 4, 1, 0) == 1, 5, 99016104, -1)
        
        # Offering of Devotion
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31033, 4, 1, 0) == 1, 6, 99016105, -1)
        
        # Offering of Fervor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31043, 4, 1, 0) == 1, 7, 99016106, -1)
        
        # Quit
        AddTalkListData(99, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Dial of Obedience
        if GetTalkListEntryResult() == 1:
            assert t400508_x50(30983, 30984, 11, -12)
            return 0
        # Offering of Might
        elif GetTalkListEntryResult() == 2:
            assert t400508_x50(30993, 30994, 11, -12)
            return 0
        # Offering of Tenacity
        elif GetTalkListEntryResult() == 3:
            assert t400508_x50(31003, 31004, 11, -12)
            return 0
        # Offering of Fortitude
        elif GetTalkListEntryResult() == 4:
            assert t400508_x50(31013, 31014, 11, -12)
            return 0
        # Offering of Vitality
        elif GetTalkListEntryResult() == 5:
            assert t400508_x50(31023, 31024, 11, -12)
            return 0
        # Offering of Devotion
        elif GetTalkListEntryResult() == 6:
            assert t400508_x50(31033, 31034, 11, -12)
            return 0
        # Offering of Fervor
        elif GetTalkListEntryResult() == 7:
            assert t400508_x50(31043, 31044, 11, -12)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Legendary
#----------------------------------------------------------
def t400508_x45():
    c1110()
    
    while True:
        ClearTalkListData()
    
        # Dial of Obedience
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30984, 4, 1, 0) == 1, 1, 99016100, -1)
        
        # Offering of Might
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30994, 4, 1, 0) == 1, 2, 99016101, -1)
        
        # Offering of Tenacity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31004, 4, 1, 0) == 1, 3, 99016102, -1)
        
        # Offering of Fortitude
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31014, 4, 1, 0) == 1, 4, 99016103, -1)
        
        # Offering of Vitality
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31024, 4, 1, 0) == 1, 5, 99016104, -1)
        
        # Offering of Devotion
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31034, 4, 1, 0) == 1, 6, 99016105, -1)
        
        # Offering of Fervor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31044, 4, 1, 0) == 1, 7, 99016106, -1)
        
        # Quit
        AddTalkListData(99, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Dial of Obedience
        if GetTalkListEntryResult() == 1:
            assert t400508_x50(30984, 30985, 14, -15)
            return 0
        # Offering of Might
        elif GetTalkListEntryResult() == 2:
            assert t400508_x50(30994, 30995, 14, -15)
            return 0
        # Offering of Tenacity
        elif GetTalkListEntryResult() == 3:
            assert t400508_x50(31004, 31005, 14, -15)
            return 0
        # Offering of Fortitude
        elif GetTalkListEntryResult() == 4:
            assert t400508_x50(31014, 31015, 14, -15)
            return 0
        # Offering of Vitality
        elif GetTalkListEntryResult() == 5:
            assert t400508_x50(31024, 31025, 14, -15)
            return 0
        # Offering of Devotion
        elif GetTalkListEntryResult() == 6:
            assert t400508_x50(31034, 31035, 14, -15)
            return 0
        # Offering of Fervor
        elif GetTalkListEntryResult() == 7:
            assert t400508_x50(31044, 31045, 14, -15)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Affix
def t400508_x50(old_item=_, new_item=_, cost=_, remove_cost=_):
    call = t400508_x51(action2=99016010)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 382, 3, cost, 0) == 1:
            assert t400508_x52(action1=99016012)
        else:
            PlayerEquipmentQuantityChange(3, 382, remove_cost)
            PlayerEquipmentQuantityChange(2, old_item, -1)
            PlayerEquipmentQuantityChange(2, new_item, 1)
            
            assert t400508_x52(action1=99016013)
    elif call.Get() == 1:
        pass
    return 0
    
def t400508_x51(action2=_):
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
        
def t400508_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0