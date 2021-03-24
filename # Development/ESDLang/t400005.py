#-------------------------------------------
#-- NG+ Giant
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400005_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400005_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400005_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400005_x0():
    """ State 0,1 """
    while True:
        call = t400005_x3()

# Client Player
def t400005_x1():
    """ State 0,1 """
    assert t400005_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400005_x2():
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
def t400005_x3():
    """ State 0,1 """
    call = t400005_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400005_x4():
    """ State 0,5 """
    while True:
        call = t400005_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400005_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400005_x6() # Attack Check
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
                call = t400005_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400005_x2() # Clear Talk State
    
# Interaction State
def t400005_x5():
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
def t400005_x6():
    """ State 0,6 """
    assert t400005_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400005_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400005_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400005_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400005_x8():
    """ State 0,1 """
    assert t400005_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400005_x9():
    c1110()
    while True:
        ClearTalkListData()
        # Advance Journey
        AddTalkListData(20, 15028000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 20:
            OpenGenericDialog(1, 15028010, 0, 0, 0)
            assert t400005_x10()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

# Menu Loop 2
def t400005_x10():
    c1110()
    while True:
        ClearTalkListData()
        # Are you sure?
        AddTalkListData(20, 15028001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 20:
            assert t400005_x11()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Menu Loop 3
def t400005_x11():
    c1110()
    while True:
        ClearTalkListData()
        # Are you really sure?
        AddTalkListData(20, 15028002, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 20:
            SetEventState(74000012, 1)
            SetEventState(14005617, 0) 
            PlayerEquipmentQuantityChange(3, 115, -99)
            PlayerEquipmentQuantityChange(3, 390, -99)
            PlayerEquipmentQuantityChange(3, 490, -99)
            PlayerEquipmentQuantityChange(3, 2001, -99)
            PlayerEquipmentQuantityChange(3, 2005, -99)
            PlayerEquipmentQuantityChange(3, 2007, -99)
            PlayerEquipmentQuantityChange(3, 2008, -99)
            PlayerEquipmentQuantityChange(3, 2009, -99)
            PlayerEquipmentQuantityChange(3, 2010, -99)
            PlayerEquipmentQuantityChange(3, 2011, -99)
            PlayerEquipmentQuantityChange(3, 2012, -99)
            PlayerEquipmentQuantityChange(3, 2013, -99)
            PlayerEquipmentQuantityChange(3, 2014, -99)
            PlayerEquipmentQuantityChange(3, 2015, -99)
            PlayerEquipmentQuantityChange(3, 2102, -99)
            PlayerEquipmentQuantityChange(3, 2103, -99)
            PlayerEquipmentQuantityChange(3, 2104, -99)
            PlayerEquipmentQuantityChange(3, 2105, -99)
            PlayerEquipmentQuantityChange(3, 2106, -99)
            PlayerEquipmentQuantityChange(3, 2107, -99)
            PlayerEquipmentQuantityChange(3, 2108, -99)
            PlayerEquipmentQuantityChange(3, 2109, -99)
            PlayerEquipmentQuantityChange(3, 2110, -99)
            PlayerEquipmentQuantityChange(3, 2111, -99)
            PlayerEquipmentQuantityChange(3, 2112, -99)
            PlayerEquipmentQuantityChange(3, 2113, -99)
            PlayerEquipmentQuantityChange(3, 2114, -99)
            PlayerEquipmentQuantityChange(3, 2115, -99)
            PlayerEquipmentQuantityChange(3, 2116, -99)
            PlayerEquipmentQuantityChange(3, 2117, -99)
            PlayerEquipmentQuantityChange(3, 2119, -99)
            PlayerEquipmentQuantityChange(3, 2120, -99)
            PlayerEquipmentQuantityChange(3, 2121, -99)
            PlayerEquipmentQuantityChange(3, 2123, -99)
            PlayerEquipmentQuantityChange(3, 2124, -99)
            PlayerEquipmentQuantityChange(3, 2125, -99)
            PlayerEquipmentQuantityChange(3, 2126, -99)
            PlayerEquipmentQuantityChange(3, 2127, -99)
            PlayerEquipmentQuantityChange(3, 2128, -99)
            PlayerEquipmentQuantityChange(3, 2129, -99)
            PlayerEquipmentQuantityChange(3, 2130, -99)
            PlayerEquipmentQuantityChange(3, 2131, -99)
            PlayerEquipmentQuantityChange(3, 2132, -99)
            PlayerEquipmentQuantityChange(3, 2133, -99)
            PlayerEquipmentQuantityChange(3, 2134, -99)
            PlayerEquipmentQuantityChange(3, 2135, -99)
            PlayerEquipmentQuantityChange(3, 2137, -99)
            PlayerEquipmentQuantityChange(3, 2138, -99)
            PlayerEquipmentQuantityChange(3, 2139, -99)
            PlayerEquipmentQuantityChange(3, 2140, -99)
            PlayerEquipmentQuantityChange(3, 2142, -99)
            PlayerEquipmentQuantityChange(3, 2144, -99)
            PlayerEquipmentQuantityChange(3, 2145, -99)
            PlayerEquipmentQuantityChange(3, 2146, -99)
            PlayerEquipmentQuantityChange(3, 2147, -99)
            PlayerEquipmentQuantityChange(3, 2148, -99)
            PlayerEquipmentQuantityChange(3, 2149, -99)
            PlayerEquipmentQuantityChange(3, 2150, -99)
            PlayerEquipmentQuantityChange(3, 2151, -99)
            PlayerEquipmentQuantityChange(3, 2152, -99)
            PlayerEquipmentQuantityChange(3, 2154, -99)
            PlayerEquipmentQuantityChange(3, 2155, -99)
            PlayerEquipmentQuantityChange(3, 2156, -99)
            PlayerEquipmentQuantityChange(3, 2157, -99)
            PlayerEquipmentQuantityChange(3, 2158, -99)
            PlayerEquipmentQuantityChange(3, 5000, -99)
            PlayerEquipmentQuantityChange(3, 5001, -99)
            PlayerEquipmentQuantityChange(3, 5002, -99)
            PlayerEquipmentQuantityChange(3, 5003, -99)
            PlayerEquipmentQuantityChange(3, 5004, -99)
            PlayerEquipmentQuantityChange(3, 5005, -99)
            PlayerEquipmentQuantityChange(3, 5006, -99)
            PlayerEquipmentQuantityChange(3, 5007, -99)
            PlayerEquipmentQuantityChange(3, 5008, -99)
            PlayerEquipmentQuantityChange(3, 5009, -99)
            PlayerEquipmentQuantityChange(3, 5010, -99)
            PlayerEquipmentQuantityChange(3, 5011, -99)
            PlayerEquipmentQuantityChange(3, 5012, -99)
            PlayerEquipmentQuantityChange(3, 5013, -99)
            PlayerEquipmentQuantityChange(3, 5014, -99)
            PlayerEquipmentQuantityChange(3, 5015, -99)
            PlayerEquipmentQuantityChange(3, 5016, -99)
            PlayerEquipmentQuantityChange(3, 5017, -99)
            PlayerEquipmentQuantityChange(3, 5018, -99)
            PlayerEquipmentQuantityChange(3, 5019, -99)
            PlayerEquipmentQuantityChange(3, 5020, -99)
            PlayerEquipmentQuantityChange(3, 5021, -99)
            PlayerEquipmentQuantityChange(3, 5022, -99)
            PlayerEquipmentQuantityChange(3, 5023, -99)
            PlayerEquipmentQuantityChange(3, 5100, -99)
            PlayerEquipmentQuantityChange(3, 5101, -99)
            PlayerEquipmentQuantityChange(3, 5102, -99)
            PlayerEquipmentQuantityChange(3, 5103, -99)
            PlayerEquipmentQuantityChange(3, 5104, -99)
            PlayerEquipmentQuantityChange(3, 5105, -99)
            PlayerEquipmentQuantityChange(3, 5106, -99)
            PlayerEquipmentQuantityChange(3, 5107, -99)
            PlayerEquipmentQuantityChange(3, 5108, -99)
            PlayerEquipmentQuantityChange(3, 5109, -99)
            PlayerEquipmentQuantityChange(3, 5110, -99)
            PlayerEquipmentQuantityChange(3, 5111, -99)
            PlayerEquipmentQuantityChange(3, 5112, -99)
            PlayerEquipmentQuantityChange(3, 5113, -99)
            PlayerEquipmentQuantityChange(3, 5114, -99)
            PlayerEquipmentQuantityChange(3, 5115, -99)
            PlayerEquipmentQuantityChange(3, 5116, -99)
            PlayerEquipmentQuantityChange(3, 5117, -99)
            PlayerEquipmentQuantityChange(3, 5118, -99)
            PlayerEquipmentQuantityChange(3, 5119, -99)
            PlayerEquipmentQuantityChange(3, 5120, -99)
            PlayerEquipmentQuantityChange(3, 5121, -99)
            PlayerEquipmentQuantityChange(3, 5122, -99)
            PlayerEquipmentQuantityChange(3, 5123, -99)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
# Acquire Gesture
def t400005_x50(z2=_, z3=_, flag1=_):
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