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
        
        # Transpose
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15003000, 74000171)
        
        # Transpose brothers' blades
        AddTalkListDataIf(GetEventStatus(25009850) == 0 and GetEventStatus(74000171) == 1 and GetEventStatus(74000182) == 1, 3, 15003002,
                          -1)
        # Leave
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

