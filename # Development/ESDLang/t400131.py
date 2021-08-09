# -*- coding: utf-8 -*-
def t400131_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400131_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400131_x12()
        assert not IsClientPlayer()

def t400131_x0(weapon1=6260000, weapon2=6280000):
    """ State 0,3 """
    # action:12003001:Transpose <?weaponNameId@6260000?> \nand <?weaponNameId@6280000?> into a single weapon?
    call = t400131_x6(action2=12003001)
    if call.Get() == 0:
        """ State 1,5 """
        assert t400131_x5(weapon1=weapon1, weapon2=weapon2)
        """ State 4 """
        # action:13003000:The brothers' blades were made one
        assert t400131_x10(action1=13003000)
    elif call.Done():
        """ State 2 """
        pass
    """ State 6 """
    return 0

def t400131_x1(weapon1=6260000, weapon2=6280000):
    """ State 0,7 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 10 """
        assert t400131_x2(weapon1=weapon1, weapon2=weapon2)
        """ State 2 """
        
        # Masteries
        AddTalkListData(20, 99061000, -1)
        
        # action:15003000:Begin Transposition
        AddTalkListData(1, 15003000, 74000171)
        
        # action:15003002:Transpose brothers' blades
        AddTalkListDataIf(GetEventStatus(74000171) == 1 and GetEventStatus(74000182) == 1, 3, 15003002,
                          -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 4,5 """
            c1111(30000, 31000)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 8,9 """
            assert t400131_x0(weapon1=weapon1, weapon2=weapon2)
        # Masteries
        elif GetTalkListEntryResult() == 20:
            assert t400131_x40()
            continue
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6,11 """
            return 0

def t400131_x2(weapon1=6260000, weapon2=6280000):
    """ State 0,1 """
    # weapon:6260000:Lorian's Greatsword
    if (ComparePlayerInventoryNumber(0, weapon1 + 0, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon1
        + 1, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon1 + 2, 0, 0, 0) and ComparePlayerInventoryNumber(0,
        weapon1 + 3, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon1 + 4, 0, 0, 0) and ComparePlayerInventoryNumber(0,
        weapon1 + 5, 0, 0, 0)):
        """ State 2,4 """
        Label('L0')
        """ State 3 """
        SetEventState(74000182, 0)
    else:
        """ State 5,6 """
        # weapon:6280000:Lothric's Holy Sword
        if (ComparePlayerInventoryNumber(0, weapon2 + 0, 0, 0, 0) and ComparePlayerInventoryNumber(0,
            weapon2 + 1, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon2 + 2, 0, 0, 0) and ComparePlayerInventoryNumber(0,
            weapon2 + 3, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon2 + 4, 0, 0, 0) and ComparePlayerInventoryNumber(0,
            weapon2 + 5, 0, 0, 0)):
            Goto('L0')
        else:
            """ State 7,8 """
            SetEventState(74000182, 1)
    """ State 9 """
    return 0

def t400131_x3(weapon1=_):
    """ State 0,2 """
    # weapon:6260000:Lorian's Greatsword, weapon:6280000:Lothric's Holy Sword
    call = t400131_x4(weapon1=weapon1, weapon3=0)
    if call.Get() == 0:
        """ State 3 """
        call = t400131_x4(weapon1=weapon1, weapon3=1)
        if call.Get() == 0:
            """ State 4 """
            call = t400131_x4(weapon1=weapon1, weapon3=2)
            if call.Get() == 0:
                """ State 5 """
                call = t400131_x4(weapon1=weapon1, weapon3=3)
                if call.Get() == 0:
                    """ State 6 """
                    call = t400131_x4(weapon1=weapon1, weapon3=4)
                    if call.Get() == 0:
                        """ State 7 """
                        call = t400131_x4(weapon1=weapon1, weapon3=5)
                        if call.Get() == 0:
                            """ State 1 """
                            Quit()
                        elif call.Done():
                            pass
                    elif call.Done():
                        pass
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 8 """
    return 0

def t400131_x4(weapon1=_, weapon3=_):
    """ State 0,2 """
    if ComparePlayerInventoryNumber(0, weapon1 + weapon3, 0, 0, 0):
        """ State 3,5 """
        return 0
    else:
        """ State 4,1 """
        PlayerEquipmentQuantityChange(0, weapon1 + weapon3, -1)
        """ State 6 """
        return 1

def t400131_x5(weapon1=6260000, weapon2=6280000):
    """ State 0,1 """
    assert t400131_x3(weapon1=weapon1)
    """ State 2 """
    assert t400131_x3(weapon1=weapon2)
    """ State 3 """
    # lot:60310:Twin Princes' Greatsword
    assert t400131_x9(lot1=60310)
    """ State 4 """
    return 0

def t400131_x6(action2=12003001):
    """ State 0,1 """
    # action:12003001:Transpose <?weaponNameId@6260000?> \nand <?weaponNameId@6280000?> into a single weapon?
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t400131_x7(z3=6132, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1 or GetEventStatus(flag3) ==
                1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3) and
              not GetEventStatus(flag4) and not GetEventStatus(flag5)):
            pass
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t400131_x8():
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

def t400131_x9(lot1=60310):
    """ State 0,1 """
    # lot:60310:Twin Princes' Greatsword
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t400131_x10(action1=13003000):
    """ State 0,1 """
    # action:13003000:The brothers' blades were made one
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400131_x11():
    """ State 0,1 """
    while True:
        call = t400131_x13(z1=2135, z2=390)
        assert not GetEventStatus(1021) or not GetEventStatus(74000171)
        """ State 2 """
        call = t400131_x14()
        assert GetEventStatus(1021) == 1 and GetEventStatus(74000171) == 1

def t400131_x12():
    """ State 0,1 """
    assert t400131_x8()
    """ State 2 """
    return 0

def t400131_x13(z1=2135, z2=390):
    """ State 0,1 """
    while True:
        assert t400131_x7(z3=6132, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000)
        """ State 3 """
        # weapon:6260000:Lorian's Greatsword, weapon:6280000:Lothric's Holy Sword
        call = t400131_x1(weapon1=6260000, weapon2=6280000)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 6:
            """ State 2 """
            assert t400131_x8() and GetDistanceToPlayer() < 5.9

def t400131_x14():
    """ State 0 """

# Masteries
def t400131_x40():
    c1110()
    while True:
        ClearTalkListData()

        # Attunement
        AddTalkListData(2, 99061011, -1)
        
        # Endurnace
        AddTalkListData(3, 99061012, -1)
        
        # Vitality
        AddTalkListData(4, 99061013, -1)
        
        # Strength
        AddTalkListData(5, 99061014, -1)
        
        # Dexterity
        AddTalkListData(6, 99061015, -1)
        
        # Intelligence
        AddTalkListData(7, 99061016, -1)
        
        # Faith
        AddTalkListData(8, 99061017, -1)
        
        # Luck
        AddTalkListData(9, 99061018, -1)
               
        # Return
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Attunement
        if GetTalkListEntryResult() == 2:
            assert t400131_x41(1, 99061021, 99061031, 99061041, 25007020)
            continue
        # Endurance
        elif GetTalkListEntryResult() == 3:
            assert t400131_x41(2, 99061022, 99061032, 99061042, 25007030)
            continue
        # Vitality
        elif GetTalkListEntryResult() == 4:
            assert t400131_x41(0, 99061023, 99061033, 99061043, 25007040)
            continue
        # Strength
        elif GetTalkListEntryResult() == 5:
            assert t400131_x41(3, 99061024, 99061034, 99061044, 25007050)
            continue
        # Dexterity
        elif GetTalkListEntryResult() == 6:
            assert t400131_x41(4, 99061025, 99061035, 99061045, 25007060)
            continue
        # Intelligence
        elif GetTalkListEntryResult() == 7:
            assert t400131_x41(5, 99061026, 99061036, 99061046, 25007070)
            continue
        # Faith
        elif GetTalkListEntryResult() == 8:
            assert t400131_x41(6, 99061027, 99061037, 99061047, 25007080)
            continue
        # Luck
        elif GetTalkListEntryResult() == 9:
            assert t400131_x41(7, 99061028, 99061038, 99061048, 25007090)
            continue
        # Return
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Mastery
def t400131_x41(checked_stat=_, summary_text=_, invalid_stat_text=_, valid_stat_text=_, mastery_flag=_):
    c1110()
    while True:
        ClearTalkListData()
       
        # Summary
        AddTalkListData(1, 99061001, -1)
        
        # Enable
        AddTalkListDataIf(GetEventStatus(mastery_flag) == 0, 2, 99061002, -1)
        
        # Disable
        AddTalkListDataIf(GetEventStatus(mastery_flag) == 1, 3, 99061003, -1)
        
        # Return
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Summary
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, summary_text, 0, 0, 0)
            continue
        # Enable
        elif GetTalkListEntryResult() == 2:
            if ComparePlayerStatus(checked_stat, 0, 99) == 1:
                OpenGenericDialog(1, valid_stat_text, 0, 0, 0)
                SetEventState(mastery_flag, 1)
            else:
                OpenGenericDialog(1, invalid_stat_text, 0, 0, 0)
            continue
        # Enable (Active)
        elif GetTalkListEntryResult() == 3:
            OpenGenericDialog(1, 99061050, 0, 0, 0)
            SetEventState(mastery_flag, 0)
            continue
        # Return
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
         
