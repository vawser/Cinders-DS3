#-------------------------------------------
#-- Miracle Scribe
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t390500_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t390500_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t390500_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t390500_x0():
    """ State 0,1 """
    while True:
        call = t390500_x3()

# Client Player
def t390500_x1():
    """ State 0,1 """
    assert t390500_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t390500_x2():
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
def t390500_x3():
    """ State 0,1 """
    call = t390500_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t390500_x4():
    """ State 0,5 """
    while True:
        call = t390500_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t390500_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t390500_x6() # Attack Check
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
                call = t390500_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t390500_x2() # Clear Talk State
    
# Interaction State
def t390500_x5():
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
def t390500_x6():
    """ State 0,6 """
    assert t390500_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t390500_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t390500_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t390500_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t390500_x8():
    """ State 0,1 """
    assert t390500_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t390500_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Ascension
        AddTalkListData(1, 15004003, -1)
    
        # Talk
        AddTalkListData(3, 99010001, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Ascend Sorceries
        if GetTalkListEntryResult() == 1:
            assert t390500_x20()
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            assert t390500_x10(text1=10024000, flag1=0, mode1=0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t390500_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t390500_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t390500_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
     
# Ascension
def t390500_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Supreme Magic Shield
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1331000, 4, 1, 0) == 1, 1, 99041000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Supreme Magic Shield
        if GetTalkListEntryResult() == 1:
            assert t390500_x50(80000, 1080, 9, -10, 99042000, 99043000, 99040012)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
     
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Ascend
def t390500_x50(itemlot=_, material=_, compare_val=_, removal_val=_, msg_1=_, msg_2=_, msg_3=_):
    # Ascend X?
    call = t390500_x51(action2=msg_1)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, material, 3, compare_val, 0) == 1:
            assert t390500_x52(action1=msg_3) # Insufficient X
        else:
            PlayerEquipmentQuantityChange(3, material, removal_val)
            GetItemFromItemLot(itemlot)
            
            # Crafted
            assert t390500_x52(action1=msg_2)
    elif call.Get() == 1:
        pass
    return 0
    
def t390500_x51(action2=_):
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
        
def t390500_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0