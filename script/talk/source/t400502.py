#-------------------------------------------
#-- Blade of Champions
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400502_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400502_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400502_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400502_x0():
    """ State 0,1 """
    while True:
        call = t400502_x3()

# Client Player
def t400502_x1():
    """ State 0,1 """
    assert t400502_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400502_x2():
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
def t400502_x3():
    """ State 0,1 """
    call = t400502_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400502_x4():
    """ State 0,5 """
    while True:
        call = t400502_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400502_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400502_x6() # Attack Check
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
                call = t400502_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400502_x2() # Clear Talk State
    
# Interaction State
def t400502_x5():
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
def t400502_x6():
    """ State 0,6 """
    assert t400502_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400502_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400502_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400502_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400502_x8():
    """ State 0,1 """
    assert t400502_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400502_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Current Journey
        AddTalkListData(1, 99093001, -1)
        
        # Achievements
        AddTalkListDataIf(GetEventStatus(25009814) == 0, 2, 99093000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Current Journey
        if GetTalkListEntryResult() == 1:
            assert t400502_x20()
            continue
        # Achievements
        elif GetTalkListEntryResult() == 2:
            assert t400502_x21()
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t400502_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400502_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400502_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------------
# Current Journey
#----------------------------------------------------------
def t400502_x20():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Journey Progression
        AddTalkListData(1, 99094001, -1)
        
        # Journey Type
        AddTalkListData(2, 99094000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Journey Progression
        if GetTalkListEntryResult() == 1:
            if GetEventStatus(25000017) == 1:
                OpenGenericDialog(1, 99094207, 0, 0, 0)
            elif GetEventStatus(25000016) == 1:
                OpenGenericDialog(1, 99094206, 0, 0, 0)
            elif GetEventStatus(25000015) == 1:
                OpenGenericDialog(1, 99094205, 0, 0, 0)
            elif GetEventStatus(25000014) == 1:
                OpenGenericDialog(1, 99094204, 0, 0, 0)
            elif GetEventStatus(25000013) == 1:
                OpenGenericDialog(1, 99094203, 0, 0, 0)
            elif GetEventStatus(25000012) == 1:
                OpenGenericDialog(1, 99094202, 0, 0, 0)
            elif GetEventStatus(25000011) == 1:
                OpenGenericDialog(1, 99094201, 0, 0, 0)
            else:
                OpenGenericDialog(1, 99094200, 0, 0, 0)
                
            continue
        # Journey Type
        elif GetTalkListEntryResult() == 2:
            if GetEventStatus(25009810) == 1:
                OpenGenericDialog(1, 99094100, 0, 0, 0)
            elif GetEventStatus(25009811) == 1:
                OpenGenericDialog(1, 99094101, 0, 0, 0)
            elif GetEventStatus(25009812) == 1:
                OpenGenericDialog(1, 99094102, 0, 0, 0)
            elif GetEventStatus(25009813) == 1:
                OpenGenericDialog(1, 99094103, 0, 0, 0)
            elif GetEventStatus(25009814) == 1:
                OpenGenericDialog(1, 99094104, 0, 0, 0)
            elif GetEventStatus(25009815) == 1:
                OpenGenericDialog(1, 99094105, 0, 0, 0)
            else:
                OpenGenericDialog(1, 99094100, 0, 0, 0)
                
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
#----------------------------------------------------------
# Achievements
#----------------------------------------------------------
def t400502_x21():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Request Absolution
        # AddTalkListDataIf(GetEventStatus(25002019) == 0 and (GetEventStatus(25002200) == 1 or GetEventStatus(25002201) == 1 or GetEventStatus(25002203) == 1), 90, 99093004, -1)
        
        # Defying Death
        AddTalkListData(1, 99093100, -1)
        
        # Untouchable
        AddTalkListData(2, 99093101, -1)
        
        # Flameless
        AddTalkListData(3, 99093102, -1)
        
        # Sword and Board
        AddTalkListData(4, 99093103, -1)
        
        # Stormageddon
        AddTalkListData(5, 99093104, -1)
        
        # Master of Corruption
        AddTalkListData(6, 99093105, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Defying Death
        if GetTalkListEntryResult() == 1:
            assert t400502_x30(25002100, 25002200, 25002300, 99093200, 99093300, 99093400, 99093500, 100020)
            continue
        # Untouchable
        elif GetTalkListEntryResult() == 2:
            assert t400502_x30(25002101, 25002201, 25002301, 99093201, 99093301, 99093401, 99093501, 100000)
            continue
        # Flameless
        elif GetTalkListEntryResult() == 3:
            assert t400502_x30(25002102, 25002202, 25002302, 99093202, 99093302, 99093402, 99093502, 100030)
            continue
        # Sword and Board
        elif GetTalkListEntryResult() == 4:
            assert t400502_x30(25002103, 25002203, 25002303, 99093203, 99093303, 99093403, 99093503, 100010)
            continue
        # Stormageddon
        elif GetTalkListEntryResult() == 5:
            assert t400502_x30(25002104, 25002204, 25002304, 99093204, 99093304, 99093404, 99093504, 100040)
            continue
        # Master of Corruption
        elif GetTalkListEntryResult() == 6:
            assert t400502_x31()
            continue
        # Request Absolution
        elif GetTalkListEntryResult() == 90:
            SetAquittalCostMessageTag(500, 1)

            call = t400502_x51(99093010)
            
            if call.Get() == 0:
                if ComparePlayerAcquittalPrice(500, 1, 2) == 1:
                
                    # Insufficient souls
                    assert t400502_x52(10010754)
                else:
                    SubtractAcquittalCostFromPlayerSouls(500, 1)

                    # Failed flags
                    SetEventState(25002200, 0)
                    SetEventState(25002201, 0)
                    #SetEventState(25002202, 0)
                    SetEventState(25002203, 0)
                    
                    OpenGenericDialog(1, 99093011, 0, 0, 0)
            elif call.Get() == 1:
                pass
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#----------------------------------------------------------
# Achievement Subment
#----------------------------------------------------------
def t400502_x30(achievement_flag=_, failed_flag=_, reward_flag=_, requirement_text=_, reward_text=_, requirement_done_text=_, requirement_failed_text=_, reward_lot=_):
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Requirement
        AddTalkListDataIf(GetEventStatus(achievement_flag) == 0 and GetEventStatus(failed_flag) == 0, 1, 99093002, -1)
        
        # Reward
        AddTalkListDataIf(GetEventStatus(achievement_flag) == 0 and GetEventStatus(failed_flag) == 0 and GetEventStatus(reward_flag) == 0, 2, 99093003, -1)
        
        # Requirement (DONE)
        AddTalkListDataIf(GetEventStatus(achievement_flag) == 1 and GetEventStatus(failed_flag) == 0, 10, 99093002, -1)
        
        # Reward (DONE)
        AddTalkListDataIf(GetEventStatus(achievement_flag) == 1 and GetEventStatus(failed_flag) == 0 and GetEventStatus(reward_flag) == 0, 11, 99093003, -1)
        
        # Requirement (FAILED)
        AddTalkListDataIf(GetEventStatus(achievement_flag) == 0 and GetEventStatus(failed_flag) == 1, 12, 99093002, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Requirement
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, requirement_text, 0, 0, 0)
            continue
        # Reward
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, reward_text, 0, 0, 0)
            continue
        # Requirement (DONE)
        elif GetTalkListEntryResult() == 10:
            OpenGenericDialog(1, requirement_done_text, 0, 0, 0)
            continue
        # Reward (DONE)
        elif GetTalkListEntryResult() == 11:
            SetEventState(reward_flag, 1)
            GetItemFromItemLot(reward_lot)
            return 0
        # Requirement (FAILED)
        elif GetTalkListEntryResult() == 12:
            OpenGenericDialog(1, requirement_failed_text, 0, 0, 0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Achievement: Master of Corruption
#----------------------------------------------------------
def t400502_x31():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Requirement
        AddTalkListDataIf(GetEventStatus(25002105) == 0 , 1, 99093002, -1)
        
        # Reward
        AddTalkListDataIf(GetEventStatus(25002105) == 0 and GetEventStatus(25002305) == 0, 2, 99093003, -1)
        
        # Requirement (DONE)
        AddTalkListDataIf(GetEventStatus(25002105) == 1, 10, 99093002, -1)
        
        # Reward (DONE)
        AddTalkListDataIf(GetEventStatus(25002105) == 1 and GetEventStatus(25002305) == 0, 11, 99093003, -1)
        
        # Enable Corruption
        AddTalkListDataIf(GetEventStatus(25009852) == 0, 20, 99093005, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Requirement
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99093205, 0, 0, 0)
            continue
        # Reward
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 99093305, 0, 0, 0)
            continue
        # Requirement (DONE)
        elif GetTalkListEntryResult() == 10:
            OpenGenericDialog(1, 99093405, 0, 0, 0)
            continue
        # Reward (DONE)
        elif GetTalkListEntryResult() == 11:
            SetEventState(25002305, 1)
            GetItemFromItemLot(100050)
            return 0
        # Enable Corruption
        elif GetTalkListEntryResult() == 20:
            OpenGenericDialog(1, 99093006, 0, 0, 0)
            assert t400502_x32()
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
def t400502_x32():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Enable Corruption
        AddTalkListDataIf(GetEventStatus(25009852) == 0, 1, 99093005, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Enable Corruption
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99093007, 0, 0, 0)
            SetEventState(25009852, 1)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
def t400502_x51(action2=_):
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
        
def t400502_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    
    