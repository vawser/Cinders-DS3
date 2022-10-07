#-------------------------------------------
#-- Boss Revival: Aldrich
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t370503_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370503_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370503_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t370503_x0():
    """ State 0,1 """
    while True:
        call = t370503_x3()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)

# Client Player
def t370503_x1():
    """ State 0,1 """
    assert t370503_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t370503_x2():
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
def t370503_x3():
    """ State 0,1 """
    call = t370503_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t370503_x4():
    """ State 0,5 """
    while True:
        call = t370503_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000) # Interaction State
        if call.Done():
            """ State 3 """
            call = t370503_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t370503_x6() # Attack Check
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
                call = t370503_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t370503_x2() # Clear Talk State
    
# Interaction State
def t370503_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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
def t370503_x6():
    """ State 0,6 """
    assert t370503_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """ State 2 """
    if GetDistanceToPlayer() > 12:
        """ State 7 """
        assert t370503_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t370503_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t370503_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0
    
# Menu Pre-loop
def t370503_x8():
    """ State 0,1 """
    assert t370503_x9()
    """ State 24 """
    return 0
    
def t370503_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Revive
        AddTalkListDataIf(GetEventStatus(25001010) == 1 and GetEventStatus(13700800) == 1, 1, 99002850, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Revive 
        if GetTalkListEntryResult() == 1:
            assert t370503_x52(99002610, 300, 1)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#----------------------------------------------------
# Utility
#----------------------------------------------------
def t370503_x50(action1=_):
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

def t370503_x51(action1=_):
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
        
# Revive
def t370503_x52(text1=_, base_cost=_, derived_stat=_):
    """ State 0,1 """
    SetAquittalCostMessageTag(base_cost, derived_stat)
    """ State 14 """
    call = t370503_x50(action1=text1)
    
    if call.Get() == 0:
        """ State 7 """
        if ComparePlayerAcquittalPrice(base_cost, derived_stat, 2) == 1:
            """ State 4,13 """
            assert t370503_x50(action1=13000050) # Lack souls
        else:
            """ State 5 """
            SubtractAcquittalCostFromPlayerSouls(base_cost, derived_stat)
            """ State 6 """
            SetEventState(13700800, 0);
            SetEventState(9314, 0);
            SetEventState(6314, 0);
            SetEventState(13700002, 0);
            GiveSpEffectToPlayer(260100100)
    elif call.Get() == 1:
        """ State 8 """
        pass

    return 0