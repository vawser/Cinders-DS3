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
        
        # Curses
        AddTalkListData(20, 99002000, -1)
        
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
        
        # Form Betrothal
        if GetTalkListEntryResult() == 10:
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
        # Curses
        elif GetTalkListEntryResult() == 20:
            assert t400509_x15()
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

# Menu Loop
def t400509_x15():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListData(1, 99002100, -1) # Curse of Pride
        AddTalkListData(2, 99002101, -1) # Curse of Fortitude
        AddTalkListData(3, 99002102, -1) # Curse of Vitality
        AddTalkListData(4, 99002103, -1) # Curse of Wrath
        AddTalkListDataIf(GetEventStatus(25000055) == 0, 5, 99002104, -1) # Curse of Attraction
        AddTalkListData(6, 99002105, -1) # Curse of Obscurity
        AddTalkListData(7, 99002106, -1) # Curse of Simplicity
        AddTalkListData(8, 99002107, -1) # Curse of Gluttony
        AddTalkListData(9, 99002108, -1) # Curse of Frailty
        AddTalkListData(10, 99002109, -1) # Curse of Enfeeblement
        AddTalkListData(11, 99002110, -1) # Curse of Impermanence
        AddTalkListData(12, 99002111, -1) # Curse of Valor
        
        # Quit
        AddTalkListData(99, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable - Curse of Pride
        if GetTalkListEntryResult() == 1:
            assert t400509_x20()
            continue
        # Enable - Curse of Fortitude
        elif GetTalkListEntryResult() == 2:
            assert t400509_x21()
            continue
        # Enable - Curse of Vitality
        elif GetTalkListEntryResult() == 3:
            assert t400509_x22()
            continue
        # Enable - Curse of Wrath
        elif GetTalkListEntryResult() == 4:
            assert t400509_x23()
            continue
        # Enable - Curse of Attraction
        elif GetTalkListEntryResult() == 5:
            assert t400509_x24()
            continue
        # Enable - Curse of Obscurity
        elif GetTalkListEntryResult() == 6:
            assert t400509_x25()
            continue
         # Enable - Curse of Simplicity
        elif GetTalkListEntryResult() == 7:
            assert t400509_x26()
            continue
        # Enable - Curse of Gluttony
        elif GetTalkListEntryResult() == 8:
            assert t400509_x27()
            continue
        # Enable - Curse of Frailty
        elif GetTalkListEntryResult() == 9:
            assert t400509_x28()
            continue
        # Enable - Curse of Enfeeblement
        elif GetTalkListEntryResult() == 10:
            assert t400509_x29()
            continue
        # Enable - Curse of Impermanence
        elif GetTalkListEntryResult() == 11:
            assert t400509_x30()
            continue
        # Enable - Curse of Valor
        elif GetTalkListEntryResult() == 12:
            assert t400509_x31()
            continue
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
#--------------------------------------------
# Curse of Pride
#--------------------------------------------
def t400509_x20():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 1, 99002010, -1) # Enable 1
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 2, 99002011, -1) # Enable 2
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 3, 99002012, -1) # Enable 3
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 4, 99002013, -1) # Enable 4
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 5, 99002014, -1) # Enable 5
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 6, 99002015, -1) # Enable 6
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 7, 99002016, -1) # Enable 7
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 8, 99002017, -1) # Enable 8
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 9, 99002018, -1) # Enable 9
        AddTalkListDataIf(GetEventStatus(25000400) == 0 and GetEventStatus(25000401) == 0 and GetEventStatus(25000402) == 0 and GetEventStatus(25000403) == 0 and GetEventStatus(25000404) == 0 and GetEventStatus(25000405) == 0 and GetEventStatus(25000406) == 0 and GetEventStatus(25000407) == 0 and GetEventStatus(25000408) == 0 and GetEventStatus(25000409) == 0, 10, 99002019, -1) # Enable 10
        
        AddTalkListDataIf(GetEventStatus(25000400) == 1 or GetEventStatus(25000401) == 1 or GetEventStatus(25000402) == 1 or GetEventStatus(25000403) == 1 or GetEventStatus(25000404) == 1 or GetEventStatus(25000405) == 1 or GetEventStatus(25000406) == 1 or GetEventStatus(25000407) == 1 or GetEventStatus(25000408) == 1 or GetEventStatus(25000409) == 1, 90, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # 10
        if GetTalkListEntryResult() == 1:
            SetEventState(25000400, 1)
            OpenGenericDialog(1, 99002400, 0, 0, 0)
        # 20
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000401, 1)
            OpenGenericDialog(1, 99002401, 0, 0, 0)
        # 30
        elif GetTalkListEntryResult() == 3:
            SetEventState(25000402, 1)
            OpenGenericDialog(1, 99002402, 0, 0, 0)
        # 40
        elif GetTalkListEntryResult() == 4:
            SetEventState(25000403, 1)
            OpenGenericDialog(1, 99002403, 0, 0, 0)
        # 50
        elif GetTalkListEntryResult() == 5:
            SetEventState(25000404, 1)
            OpenGenericDialog(1, 99002404, 0, 0, 0)
        # 60
        elif GetTalkListEntryResult() == 6:
            SetEventState(25000405, 1)
            OpenGenericDialog(1, 99002405, 0, 0, 0)
        # 70
        elif GetTalkListEntryResult() == 7:
            SetEventState(25000406, 1)
            OpenGenericDialog(1, 99002406, 0, 0, 0)
        # 80
        elif GetTalkListEntryResult() == 8:
            SetEventState(25000407, 1)
            OpenGenericDialog(1, 99002407, 0, 0, 0)
        # 90
        elif GetTalkListEntryResult() == 9:
            SetEventState(25000408, 1)
            OpenGenericDialog(1, 99002408, 0, 0, 0)
        # 100
        elif GetTalkListEntryResult() == 10:
            SetEventState(25000409, 1)
            OpenGenericDialog(1, 99002409, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 90:
            SetEventState(25000400, 0)
            SetEventState(25000401, 0)
            SetEventState(25000402, 0)
            SetEventState(25000403, 0)
            SetEventState(25000404, 0)
            SetEventState(25000405, 0)
            SetEventState(25000406, 0)
            SetEventState(25000407, 0)
            SetEventState(25000408, 0)
            SetEventState(25000409, 0)
            OpenGenericDialog(1, 99002300, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#--------------------------------------------
# Curse of Fortitude
#--------------------------------------------
def t400509_x21():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 1, 99002010, -1) # Enable 1
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 2, 99002011, -1) # Enable 2
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 3, 99002012, -1) # Enable 3
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 4, 99002013, -1) # Enable 4
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 5, 99002014, -1) # Enable 5
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 6, 99002015, -1) # Enable 6
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 7, 99002016, -1) # Enable 7
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 8, 99002017, -1) # Enable 8
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 9, 99002018, -1) # Enable 9
        AddTalkListDataIf(GetEventStatus(25000410) == 0 and GetEventStatus(25000411) == 0 and GetEventStatus(25000412) == 0 and GetEventStatus(25000413) == 0 and GetEventStatus(25000414) == 0 and GetEventStatus(25000415) == 0 and GetEventStatus(25000416) == 0 and GetEventStatus(25000417) == 0 and GetEventStatus(25000418) == 0 and GetEventStatus(25000419) == 0, 10, 99002019, -1) # Enable 10
        
        AddTalkListDataIf(GetEventStatus(25000410) == 1 or GetEventStatus(25000411) == 1 or GetEventStatus(25000412) == 1 or GetEventStatus(25000413) == 1 or GetEventStatus(25000414) == 1 or GetEventStatus(25000415) == 1 or GetEventStatus(25000416) == 1 or GetEventStatus(25000417) == 1 or GetEventStatus(25000418) == 1 or GetEventStatus(25000419) == 1, 90, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # 10
        if GetTalkListEntryResult() == 1:
            SetEventState(25000410, 1)
            OpenGenericDialog(1, 99002410, 0, 0, 0)
        # 20
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000411, 1)
            OpenGenericDialog(1, 99002411, 0, 0, 0)
        # 30
        elif GetTalkListEntryResult() == 3:
            SetEventState(25000412, 1)
            OpenGenericDialog(1, 99002412, 0, 0, 0)
        # 40
        elif GetTalkListEntryResult() == 4:
            SetEventState(25000413, 1)
            OpenGenericDialog(1, 99002413, 0, 0, 0)
        # 50
        elif GetTalkListEntryResult() == 5:
            SetEventState(25000414, 1)
            OpenGenericDialog(1, 99002414, 0, 0, 0)
        # 60
        elif GetTalkListEntryResult() == 6:
            SetEventState(25000415, 1)
            OpenGenericDialog(1, 99002415, 0, 0, 0)
        # 70
        elif GetTalkListEntryResult() == 7:
            SetEventState(25000416, 1)
            OpenGenericDialog(1, 99002416, 0, 0, 0)
        # 80
        elif GetTalkListEntryResult() == 8:
            SetEventState(25000417, 1)
            OpenGenericDialog(1, 99002417, 0, 0, 0)
        # 90
        elif GetTalkListEntryResult() == 9:
            SetEventState(25000418, 1)
            OpenGenericDialog(1, 99002418, 0, 0, 0)
        # 100
        elif GetTalkListEntryResult() == 10:
            SetEventState(25000419, 1)
            OpenGenericDialog(1, 99002419, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 90:
            SetEventState(25000410, 0)
            SetEventState(25000411, 0)
            SetEventState(25000412, 0)
            SetEventState(25000413, 0)
            SetEventState(25000414, 0)
            SetEventState(25000415, 0)
            SetEventState(25000416, 0)
            SetEventState(25000417, 0)
            SetEventState(25000418, 0)
            SetEventState(25000419, 0)
            OpenGenericDialog(1, 99002301, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
        
#--------------------------------------------
# Curse of Vitality
#--------------------------------------------
def t400509_x22():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 1, 99002010, -1) # Enable 1
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 2, 99002011, -1) # Enable 2
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 3, 99002012, -1) # Enable 3
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 4, 99002013, -1) # Enable 4
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 5, 99002014, -1) # Enable 5
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 6, 99002015, -1) # Enable 6
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 7, 99002016, -1) # Enable 7
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 8, 99002017, -1) # Enable 8
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 9, 99002018, -1) # Enable 9
        AddTalkListDataIf(GetEventStatus(25000420) == 0 and GetEventStatus(25000421) == 0 and GetEventStatus(25000422) == 0 and GetEventStatus(25000423) == 0 and GetEventStatus(25000424) == 0 and GetEventStatus(25000425) == 0 and GetEventStatus(25000426) == 0 and GetEventStatus(25000427) == 0 and GetEventStatus(25000428) == 0 and GetEventStatus(25000429) == 0, 10, 99002019, -1) # Enable 10
        
        AddTalkListDataIf(GetEventStatus(25000420) == 1 or GetEventStatus(25000421) == 1 or GetEventStatus(25000422) == 1 or GetEventStatus(25000423) == 1 or GetEventStatus(25000424) == 1 or GetEventStatus(25000425) == 1 or GetEventStatus(25000426) == 1 or GetEventStatus(25000427) == 1 or GetEventStatus(25000428) == 1 or GetEventStatus(25000429) == 1, 90, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # 10
        if GetTalkListEntryResult() == 1:
            SetEventState(25000420, 1)
            OpenGenericDialog(1, 99002420, 0, 0, 0)
        # 20
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000421, 1)
            OpenGenericDialog(1, 99002421, 0, 0, 0)
        # 30
        elif GetTalkListEntryResult() == 3:
            SetEventState(25000422, 1)
            OpenGenericDialog(1, 99002422, 0, 0, 0)
        # 40
        elif GetTalkListEntryResult() == 4:
            SetEventState(25000423, 1)
            OpenGenericDialog(1, 99002423, 0, 0, 0)
        # 50
        elif GetTalkListEntryResult() == 5:
            SetEventState(25000424, 1)
            OpenGenericDialog(1, 99002424, 0, 0, 0)
        # 60
        elif GetTalkListEntryResult() == 6:
            SetEventState(25000425, 1)
            OpenGenericDialog(1, 99002425, 0, 0, 0)
        # 70
        elif GetTalkListEntryResult() == 7:
            SetEventState(25000426, 1)
            OpenGenericDialog(1, 99002426, 0, 0, 0)
        # 80
        elif GetTalkListEntryResult() == 8:
            SetEventState(25000427, 1)
            OpenGenericDialog(1, 99002427, 0, 0, 0)
        # 90
        elif GetTalkListEntryResult() == 9:
            SetEventState(25000428, 1)
            OpenGenericDialog(1, 99002428, 0, 0, 0)
        # 100
        elif GetTalkListEntryResult() == 10:
            SetEventState(25000429, 1)
            OpenGenericDialog(1, 99002429, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 90:
            SetEventState(25000420, 0)
            SetEventState(25000421, 0)
            SetEventState(25000422, 0)
            SetEventState(25000423, 0)
            SetEventState(25000424, 0)
            SetEventState(25000425, 0)
            SetEventState(25000426, 0)
            SetEventState(25000427, 0)
            SetEventState(25000428, 0)
            SetEventState(25000429, 0)
            OpenGenericDialog(1, 99002302, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
        
#--------------------------------------------
# Curse of Wrath
#--------------------------------------------
def t400509_x23():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 1, 99002010, -1) # Enable 1
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 2, 99002011, -1) # Enable 2
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 3, 99002012, -1) # Enable 3
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 4, 99002013, -1) # Enable 4
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 5, 99002014, -1) # Enable 5
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 6, 99002015, -1) # Enable 6
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 7, 99002016, -1) # Enable 7
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 8, 99002017, -1) # Enable 8
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 9, 99002018, -1) # Enable 9
        AddTalkListDataIf(GetEventStatus(25000430) == 0 and GetEventStatus(25000431) == 0 and GetEventStatus(25000432) == 0 and GetEventStatus(25000433) == 0 and GetEventStatus(25000434) == 0 and GetEventStatus(25000435) == 0 and GetEventStatus(25000436) == 0 and GetEventStatus(25000437) == 0 and GetEventStatus(25000438) == 0 and GetEventStatus(25000439) == 0, 10, 99002019, -1) # Enable 10
        
        AddTalkListDataIf(GetEventStatus(25000430) == 1 or GetEventStatus(25000431) == 1 or GetEventStatus(25000432) == 1 or GetEventStatus(25000433) == 1 or GetEventStatus(25000434) == 1 or GetEventStatus(25000435) == 1 or GetEventStatus(25000436) == 1 or GetEventStatus(25000437) == 1 or GetEventStatus(25000438) == 1 or GetEventStatus(25000439) == 1, 90, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # 10
        if GetTalkListEntryResult() == 1:
            SetEventState(25000430, 1)
            OpenGenericDialog(1, 99002430, 0, 0, 0)
        # 20
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000431, 1)
            OpenGenericDialog(1, 99002431, 0, 0, 0)
        # 30
        elif GetTalkListEntryResult() == 3:
            SetEventState(25000432, 1)
            OpenGenericDialog(1, 99002432, 0, 0, 0)
        # 40
        elif GetTalkListEntryResult() == 4:
            SetEventState(25000433, 1)
            OpenGenericDialog(1, 99002433, 0, 0, 0)
        # 50
        elif GetTalkListEntryResult() == 5:
            SetEventState(25000434, 1)
            OpenGenericDialog(1, 99002434, 0, 0, 0)
        # 60
        elif GetTalkListEntryResult() == 6:
            SetEventState(25000435, 1)
            OpenGenericDialog(1, 99002435, 0, 0, 0)
        # 70
        elif GetTalkListEntryResult() == 7:
            SetEventState(25000436, 1)
            OpenGenericDialog(1, 99002436, 0, 0, 0)
        # 80
        elif GetTalkListEntryResult() == 8:
            SetEventState(25000437, 1)
            OpenGenericDialog(1, 99002437, 0, 0, 0)
        # 90
        elif GetTalkListEntryResult() == 9:
            SetEventState(25000438, 1)
            OpenGenericDialog(1, 99002438, 0, 0, 0)
        # 100
        elif GetTalkListEntryResult() == 10:
            SetEventState(25000439, 1)
            OpenGenericDialog(1, 99002439, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 90:
            SetEventState(25000430, 0)
            SetEventState(25000431, 0)
            SetEventState(25000432, 0)
            SetEventState(25000433, 0)
            SetEventState(25000434, 0)
            SetEventState(25000435, 0)
            SetEventState(25000436, 0)
            SetEventState(25000437, 0)
            SetEventState(25000438, 0)
            SetEventState(25000439, 0)
            OpenGenericDialog(1, 99002303, 0, 0, 0)
            
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#--------------------------------------------
# Curse of Attraction
#--------------------------------------------
def t400509_x24():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000440) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000440) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000440, 1)
            OpenGenericDialog(1, 99002440, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000440, 0)
            OpenGenericDialog(1, 99002304, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#--------------------------------------------
# Curse of Obscurity
#--------------------------------------------
def t400509_x25():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000450) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000450) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000450, 1)
            OpenGenericDialog(1, 99002450, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000450, 0)
            OpenGenericDialog(1, 99002305, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#--------------------------------------------
# Curse of Simplicity
#--------------------------------------------
def t400509_x26():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000460) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000460) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000460, 1)
            OpenGenericDialog(1, 99002460, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000460, 0)
            OpenGenericDialog(1, 99002306, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#--------------------------------------------
# Curse of Gluttony
#--------------------------------------------
def t400509_x27():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000470) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000470) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000470, 1)
            OpenGenericDialog(1, 99002470, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000470, 0)
            OpenGenericDialog(1, 99002307, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#--------------------------------------------
# Curse of Frailty
#--------------------------------------------
def t400509_x28():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000480) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000480) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000480, 1)
            OpenGenericDialog(1, 99002480, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000480, 0)
            OpenGenericDialog(1, 99002308, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#--------------------------------------------
# Curse of Enfeeblement
#--------------------------------------------
def t400509_x29():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000490) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000490) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000490, 1)
            OpenGenericDialog(1, 99002490, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000490, 0)
            OpenGenericDialog(1, 99002309, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#--------------------------------------------
# Curse of Impermanence
#--------------------------------------------
def t400509_x30():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000500) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000500) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000500, 1)
            OpenGenericDialog(1, 99002500, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000500, 0)
            OpenGenericDialog(1, 99002310, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#--------------------------------------------
# Curse of Valor
#--------------------------------------------
def t400509_x31():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000510) == 0, 1, 99002005, -1) # Enable
        AddTalkListDataIf(GetEventStatus(25000510) == 1, 2, 99002006, -1) # Disable
        
        # Quit
        AddTalkListData(99, 15000190, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable
        if GetTalkListEntryResult() == 1:
            SetEventState(25000510, 1)
            OpenGenericDialog(1, 99002510, 0, 0, 0)
        # Disable
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000510, 0)
            OpenGenericDialog(1, 99002311, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0