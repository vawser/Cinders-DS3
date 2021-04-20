#-------------------------------------------
#-- Remy the Rat
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400506_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400506_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400506_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400506_x0():
    """ State 0,1 """
    while True:
        call = t400506_x3()

# Client Player
def t400506_x1():
    """ State 0,1 """
    assert t400506_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400506_x2():
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
def t400506_x3():
    """ State 0,1 """
    call = t400506_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400506_x4():
    """ State 0,5 """
    while True:
        call = t400506_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400506_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400506_x6() # Attack Check
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
                call = t400506_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400506_x2() # Clear Talk State
    
# Interaction State
def t400506_x5():
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
def t400506_x6():
    """ State 0,6 """
    assert t400506_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400506_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400506_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400506_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0
    
# Menu Pre-loop
def t400506_x8():
    """ State 0,1 """
    assert t400506_x9()
    """ State 24 """
    return 0
    
def t400506_x9():
    c1110()
    
    # Default Undead Match availability
    SetEventState(6500, 1)
    
    while True:
        ClearTalkListData()
        
        # Undead Match
        AddTalkListData(8, 15000350, -1)
        
        # Offerings
        AddTalkListData(3, 15003003, -1)
        
        # Form Covenant
        AddTalkListDataIf(GetEventStatus(25000208) == 0, 7, 15003019, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008230) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008230) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008230) == 1, 12, 15015042, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Undead Match
        if GetTalkListEntryResult() == 8:
            c1114()
            def WhilePaused():
                SetEventState(14005617, 1)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))) 
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008230, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99012225, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99012220, 0, 0, 0)
                GetItemFromItemLot(90220)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99012221, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                OpenGenericDialog(1, 99012222, 0, 0, 0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            SetEventState(25008230, 0)
            GetItemFromItemLot(91000)
            OpenGenericDialog(1, 99012222, 0, 0, 0)
            return 0
        # Covenant
        elif GetTalkListEntryResult() == 7:
            """ State 32,33 """
            SetEventState(25000208, 1)
            GetItemFromItemLot(800001130)
            return 0
        # Offerings
        elif GetTalkListEntryResult() == 3:
            c1111(22900, 22999)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#----------------------------------------------------
# Utility
#----------------------------------------------------
def t400506_x50(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t400506_x51(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 0, 3, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
        
