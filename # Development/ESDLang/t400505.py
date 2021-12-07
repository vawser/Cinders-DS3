#-------------------------------------------
#-- Alchemist Jiji
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400505_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400505_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400505_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400505_x0():
    """ State 0,1 """
    while True:
        call = t400505_x3()

# Client Player
def t400505_x1():
    """ State 0,1 """
    assert t400505_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400505_x2():
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
def t400505_x3():
    """ State 0,1 """
    call = t400505_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400505_x4():
    """ State 0,5 """
    while True:
        call = t400505_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400505_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400505_x6() # Attack Check
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
                call = t400505_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400505_x2() # Clear Talk State
    
# Interaction State
def t400505_x5():
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
def t400505_x6():
    """ State 0,6 """
    assert t400505_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400505_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400505_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400505_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400505_x8():
    """ State 0,1 """
    assert t400505_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400505_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Purchase Item
        AddTalkListData(1, 15010004, -1)
        
        # Transformation Items
        AddTalkListData(2, 15003060, -1)
        
        # Transformation Effects
        AddTalkListDataIf(GetEventStatus(25007399) == 0, 3, 15003061, -1)
        
        # Transformation Effects
        AddTalkListDataIf(GetEventStatus(25007399) == 1, 4, 15003061, -1)
        
        # Talk
        AddTalkListData(10, 99010001, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Purchase Item
        if GetTalkListEntryResult() == 1:
            OpenRegularShop(250000, 250099)
            continue
        # Transformation Items
        elif GetTalkListEntryResult() == 2:
            OpenRegularShop(250200, 250699)
            continue
        # Transformation Effects
        elif GetTalkListEntryResult() == 3:
            assert t400505_x30()
            continue
        # Transformation Effects (Disabled)
        elif GetTalkListEntryResult() == 4:
            assert t400505_x50(15003122)
            return 0
        # Talk
        elif GetTalkListEntryResult() == 10:
            assert t400505_x10(text1=10019000, flag1=0, mode1=0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

# Talk Function
def t400505_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400505_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400505_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------
# Transformation Effects
#----------------------------------------------------
def t400505_x30():
    c1110()
    
    while True:
        ClearTalkListData()

        # Weapon Emission
        AddTalkListData(1, 15003100, -1)
        
        # Body Emission
        AddTalkListData(2, 15003103, -1)
        
        # Eye Emission
        AddTalkListData(3, 15003104, -1)
        
        # Body Aura
        AddTalkListData(4, 15003105, -1)
        
        # Humanity Aura
        AddTalkListData(5, 15003106, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Weapon Emission
        if GetTalkListEntryResult() == 1:
            assert t400505_x31()
            continue
        # Body Emission
        elif GetTalkListEntryResult() == 2:
            assert t400505_x40()
            continue
        # Eye Emission
        elif GetTalkListEntryResult() == 3:
            assert t400505_x41()
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 4:
            assert t400505_x42()
            continue
        # Humanity Aura
        elif GetTalkListEntryResult() == 5:
            assert t400505_x43()
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Weapon Emission
#----------------------------------------------------
def t400505_x31():
    c1110()
    
    while True:
        ClearTalkListData()

        # Right Weapon
        AddTalkListData(1, 15003101, -1)
        
        # Left Weapon
        AddTalkListData(2, 15003102, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Right Weapon
        if GetTalkListEntryResult() == 1:
            assert t400505_x32()
            continue
        # Left Weapon
        elif GetTalkListEntryResult() == 2:
            assert t400505_x33()
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
          
#----------------------------------------------------
# Weapon Emission - Right
#----------------------------------------------------
def t400505_x32():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Magic
        AddTalkListData(2, 15003201, -1)

        # Fire
        AddTalkListData(3, 15003202, -1)
        
        # Lightning
        AddTalkListData(4, 15003203, -1)
        
        # Abyss
        AddTalkListData(5, 15003204, -1)
        
        # Poison
        AddTalkListData(6, 15003205, -1)
        
        # Blood
        AddTalkListData(7, 15003206, -1)
        
        # Frost
        AddTalkListData(8, 15003207, -1)
        
        # Moonlight
        AddTalkListData(9, 15003208, -1)
        
        # Divine
        AddTalkListData(10, 15003209, -1)
        
        # Black Fire
        AddTalkListData(11, 15003210, -1)
        
        # Bolt
        AddTalkListData(12, 15003211, -1)
        
        # Sunlight
        AddTalkListData(13, 15003212, -1)
        
        # Enchanted
        AddTalkListData(14, 15003213, -1)
        
        # Scorched
        AddTalkListData(15, 15003214, -1)
        
        # Rotten
        AddTalkListData(16, 15003215, -1)
        
        # Wind
        AddTalkListData(17, 15003216, -1)
        
        # Psychedelic
        AddTalkListData(18, 15003217, -1)
        
        # Brume
        AddTalkListData(19, 15003218, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003121)
            return 0
        # Magic
        elif GetTalkListEntryResult() == 2:
            SetEventState(25007100, 1)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Fire
        elif GetTalkListEntryResult() == 3:
            SetEventState(25007100, 0)
            SetEventState(25007101, 1)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Lightning
        elif GetTalkListEntryResult() == 4:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 1)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Abyss
        elif GetTalkListEntryResult() == 5:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 1)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Poison
        elif GetTalkListEntryResult() == 6:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 1)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Blood
        elif GetTalkListEntryResult() == 7:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 1)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Frost
        elif GetTalkListEntryResult() == 8:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 1)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Moonlight
        elif GetTalkListEntryResult() == 9:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 1)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Divine
        elif GetTalkListEntryResult() == 10:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 1)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Black Fire
        elif GetTalkListEntryResult() == 11:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 1)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Bolt
        elif GetTalkListEntryResult() == 12:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 1)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Sunlight
        elif GetTalkListEntryResult() == 13:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 1)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Enchanted
        elif GetTalkListEntryResult() == 14:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 1)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Scorched
        elif GetTalkListEntryResult() == 15:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 1)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Rotten
        elif GetTalkListEntryResult() == 16:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 1)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Wind
        elif GetTalkListEntryResult() == 17:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 1)
            SetEventState(25007116, 0)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Psychedelic
        elif GetTalkListEntryResult() == 18:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 1)
            SetEventState(25007117, 0)
            assert t400505_x50(15003120)
            return 0
        # Brume
        elif GetTalkListEntryResult() == 19:
            SetEventState(25007100, 0)
            SetEventState(25007101, 0)
            SetEventState(25007102, 0)
            SetEventState(25007103, 0)
            SetEventState(25007104, 0)
            SetEventState(25007105, 0)
            SetEventState(25007106, 0)
            SetEventState(25007107, 0)
            SetEventState(25007108, 0)
            SetEventState(25007109, 0)
            SetEventState(25007110, 0)
            SetEventState(25007111, 0)
            SetEventState(25007112, 0)
            SetEventState(25007113, 0)
            SetEventState(25007114, 0)
            SetEventState(25007115, 0)
            SetEventState(25007116, 0)
            SetEventState(25007117, 1)
            assert t400505_x50(15003120)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
         
#----------------------------------------------------
# Weapon Emission - Left
#----------------------------------------------------
def t400505_x33():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Magic
        AddTalkListData(2, 15003201, -1)

        # Fire
        AddTalkListData(3, 15003202, -1)
        
        # Lightning
        AddTalkListData(4, 15003203, -1)
        
        # Abyss
        AddTalkListData(5, 15003204, -1)
        
        # Poison
        AddTalkListData(6, 15003205, -1)
        
        # Blood
        AddTalkListData(7, 15003206, -1)
        
        # Frost
        AddTalkListData(8, 15003207, -1)
        
        # Moonlight
        AddTalkListData(9, 15003208, -1)
        
        # Divine
        AddTalkListData(10, 15003209, -1)
        
        # Black Fire
        AddTalkListData(11, 15003210, -1)
        
        # Bolt
        AddTalkListData(12, 15003211, -1)
        
        # Sunlight
        AddTalkListData(13, 15003212, -1)
        
        # Enchanted
        AddTalkListData(14, 15003213, -1)
        
        # Scorched
        AddTalkListData(15, 15003214, -1)
        
        # Rotten
        AddTalkListData(16, 15003215, -1)
        
        # Wind
        AddTalkListData(17, 15003216, -1)
        
        # Psychedelic
        AddTalkListData(18, 15003217, -1)
        
        # Brume
        AddTalkListData(19, 15003218, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003121)
            return 0
        # Magic
        elif GetTalkListEntryResult() == 2:
            SetEventState(25007130, 1)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Fire
        elif GetTalkListEntryResult() == 3:
            SetEventState(25007130, 0)
            SetEventState(25007131, 1)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Lightning
        elif GetTalkListEntryResult() == 4:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 1)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Abyss
        elif GetTalkListEntryResult() == 5:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 1)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Poison
        elif GetTalkListEntryResult() == 6:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 1)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Blood
        elif GetTalkListEntryResult() == 7:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 1)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Frost
        elif GetTalkListEntryResult() == 8:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 1)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Moonlight
        elif GetTalkListEntryResult() == 9:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 1)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Divine
        elif GetTalkListEntryResult() == 10:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 1)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Black Fire
        elif GetTalkListEntryResult() == 11:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 1)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Bolt
        elif GetTalkListEntryResult() == 12:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 1)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Sunlight
        elif GetTalkListEntryResult() == 13:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 1)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Enchanted
        elif GetTalkListEntryResult() == 14:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 1)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Scorched
        elif GetTalkListEntryResult() == 15:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 1)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Rotten
        elif GetTalkListEntryResult() == 16:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 1)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Wind
        elif GetTalkListEntryResult() == 17:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 1)
            SetEventState(25007146, 0)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Psychedelic
        elif GetTalkListEntryResult() == 18:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 1)
            SetEventState(25007147, 0)
            assert t400505_x50(15003120)
            return 0
        # Brume
        elif GetTalkListEntryResult() == 19:
            SetEventState(25007130, 0)
            SetEventState(25007131, 0)
            SetEventState(25007132, 0)
            SetEventState(25007133, 0)
            SetEventState(25007134, 0)
            SetEventState(25007135, 0)
            SetEventState(25007136, 0)
            SetEventState(25007137, 0)
            SetEventState(25007138, 0)
            SetEventState(25007139, 0)
            SetEventState(25007140, 0)
            SetEventState(25007141, 0)
            SetEventState(25007142, 0)
            SetEventState(25007143, 0)
            SetEventState(25007144, 0)
            SetEventState(25007145, 0)
            SetEventState(25007146, 0)
            SetEventState(25007147, 1)
            assert t400505_x50(15003120)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Body Emission
#----------------------------------------------------
def t400505_x40():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Mass of Humanity
        AddTalkListData(2, 15003300, -1)

        # Magical Crystals
        AddTalkListData(3, 15003301, -1)
        
        # Invisibility
        AddTalkListData(4, 15003302, -1)
        
        # Stoneform
        AddTalkListData(5, 15003303, -1)
        
        # Maggots
        AddTalkListData(6, 15003304, -1)
        
        # Lightning
        AddTalkListData(7, 15003305, -1)
        
        # White Stars
        AddTalkListData(8, 15003306, -1)
        
        # Prismatic Stars
        AddTalkListData(9, 15003307, -1)
        
        # Corrupted Crystals
        AddTalkListData(10, 15003308, -1)
        
        # Dung
        AddTalkListData(11, 15003309, -1)
        
        # Barrier Wards
        AddTalkListData(12, 15003310, -1)
        
        # Poison
        AddTalkListData(13, 15003311, -1)
        
        # Frost
        AddTalkListData(14, 15003312, -1)
        
        # Flame
        AddTalkListData(15, 15003313, -1)
        
        # Dust
        AddTalkListData(16, 15003314, -1)
        
        # Water
        AddTalkListData(17, 15003315, -1)
        
        # Holy
        AddTalkListData(18, 15003316, -1)

        # Smouldering
        AddTalkListData(19, 15003317, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003121)
            return 0
        # Mass of Humanity
        elif GetTalkListEntryResult() == 2:
            SetEventState(25007200, 1)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Magical Crystals
        elif GetTalkListEntryResult() == 3:
            SetEventState(25007200, 0)
            SetEventState(25007201, 1)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Invisibility
        elif GetTalkListEntryResult() == 4:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 1)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Stoneform
        elif GetTalkListEntryResult() == 5:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 1)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Maggots
        elif GetTalkListEntryResult() == 6:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 1)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Lightning
        elif GetTalkListEntryResult() == 7:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 1)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # White Stars
        elif GetTalkListEntryResult() == 8:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 1)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Prismatic Stars
        elif GetTalkListEntryResult() == 9:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 1)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Corrupted Crystals
        elif GetTalkListEntryResult() == 10:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 1)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Dung
        elif GetTalkListEntryResult() == 11:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 1)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Barrier Wards
        elif GetTalkListEntryResult() == 12:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 1)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Poison
        elif GetTalkListEntryResult() == 13:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 1)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Frost
        elif GetTalkListEntryResult() == 14:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 1)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Flame
        elif GetTalkListEntryResult() == 15:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 1)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Dust
        elif GetTalkListEntryResult() == 16:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 1)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Water
        elif GetTalkListEntryResult() == 17:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 1)
            SetEventState(25007216, 0)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Holy
        elif GetTalkListEntryResult() == 18:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 1)
            SetEventState(25007217, 0)
            assert t400505_x50(15003120)
            return 0
        # Smouldering
        elif GetTalkListEntryResult() == 19:
            SetEventState(25007200, 0)
            SetEventState(25007201, 0)
            SetEventState(25007202, 0)
            SetEventState(25007203, 0)
            SetEventState(25007204, 0)
            SetEventState(25007205, 0)
            SetEventState(25007206, 0)
            SetEventState(25007207, 0)
            SetEventState(25007208, 0)
            SetEventState(25007209, 0)
            SetEventState(25007210, 0)
            SetEventState(25007211, 0)
            SetEventState(25007212, 0)
            SetEventState(25007213, 0)
            SetEventState(25007214, 0)
            SetEventState(25007215, 0)
            SetEventState(25007216, 0)
            SetEventState(25007217, 1)
            assert t400505_x50(15003120)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Eye Emission
#----------------------------------------------------
def t400505_x41():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Red Glow
        AddTalkListData(2, 15003400, -1)

        # Burning Red Glow
        AddTalkListData(3, 15003401, -1)
        
        # White Glow
        AddTalkListData(4, 15003402, -1)
        
        # Blue Glow
        AddTalkListData(5, 15003403, -1)
        
        # Golden Glow
        AddTalkListData(6, 15003404, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            SetEventState(25007250, 0)
            SetEventState(25007251, 0)
            SetEventState(25007252, 0)
            SetEventState(25007253, 0)
            SetEventState(25007254, 0)
            assert t400505_x50(15003121)
            return 0
        # Red Glow
        elif GetTalkListEntryResult() == 2:
            SetEventState(25007250, 1)
            SetEventState(25007251, 0)
            SetEventState(25007252, 0)
            SetEventState(25007253, 0)
            SetEventState(25007254, 0)
            assert t400505_x50(15003120)
            return 0
        # Burning Red Glow
        elif GetTalkListEntryResult() == 3:
            SetEventState(25007250, 0)
            SetEventState(25007251, 1)
            SetEventState(25007252, 0)
            SetEventState(25007253, 0)
            SetEventState(25007254, 0)
            assert t400505_x50(15003120)
            return 0
        # White Glow
        elif GetTalkListEntryResult() == 4:
            SetEventState(25007250, 0)
            SetEventState(25007251, 0)
            SetEventState(25007252, 1)
            SetEventState(25007253, 0)
            SetEventState(25007254, 0)
            assert t400505_x50(15003120)
            return 0
        # Blue Glow
        elif GetTalkListEntryResult() == 5:
            SetEventState(25007250, 0)
            SetEventState(25007251, 0)
            SetEventState(25007252, 0)
            SetEventState(25007253, 1)
            SetEventState(25007254, 0)
            assert t400505_x50(15003120)
            return 0
        # Golden Glow
        elif GetTalkListEntryResult() == 6:
            SetEventState(25007250, 0)
            SetEventState(25007251, 0)
            SetEventState(25007252, 0)
            SetEventState(25007253, 0)
            SetEventState(25007254, 1)
            assert t400505_x50(15003120)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Body Aura
#----------------------------------------------------
def t400505_x42():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Ethereal Phantom
        AddTalkListData(2, 15003500, -1)

        # White Phantom
        AddTalkListData(5, 15003503, -1)
        
        # Darkmoon Phantom
        AddTalkListData(6, 15003504, -1)
        
        # Holy Phantom
        AddTalkListData(7, 15003505, -1)
        
        # Swamp Phantom
        AddTalkListData(8, 15003506, -1)
        
        # Abyssal Phantom
        AddTalkListData(9, 15003507, -1)
        
        # Sunlight Phantom
        AddTalkListData(10, 15003508, -1)
        
        # Mad Phantom
        AddTalkListData(11, 15003509, -1)
        
        # Red Phantom
        AddTalkListData(12, 15003510, -1)
        
        # Demonic Phantom
        AddTalkListData(13, 15003511, -1)
        
        # Psychedelic Phantom
        AddTalkListData(14, 15003512, -1)

        # Leave
        AddTalkListData(99, 15000017, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            SetEventState(25007300, 0)
            SetEventState(25007301, 0)
            SetEventState(25007302, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003121)
            return 0
        # Ethereal
        elif GetTalkListEntryResult() == 2:
            SetEventState(25007300, 1)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # White Phantom
        elif GetTalkListEntryResult() == 5:
            SetEventState(25007300, 0)
            SetEventState(25007303, 1)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Darkmoon Phantom
        elif GetTalkListEntryResult() == 6:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 1)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Holy Phantom
        elif GetTalkListEntryResult() == 7:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 1)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Swamp Phantom
        elif GetTalkListEntryResult() == 8:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 1)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Abyssal Phantom
        elif GetTalkListEntryResult() == 9:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 1)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Sunlight Phantom
        elif GetTalkListEntryResult() == 10:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 1)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Mad Phantom
        elif GetTalkListEntryResult() == 11:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 1)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Red Phantom
        elif GetTalkListEntryResult() == 12:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 1)
            SetEventState(25007311, 0)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Demonic Phantom
        elif GetTalkListEntryResult() == 13:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 1)
            SetEventState(25007312, 0)
            assert t400505_x50(15003120)
            return 0
        # Psychedelic Phantom
        elif GetTalkListEntryResult() == 14:
            SetEventState(25007300, 0)
            SetEventState(25007303, 0)
            SetEventState(25007304, 0)
            SetEventState(25007305, 0)
            SetEventState(25007306, 0)
            SetEventState(25007307, 0)
            SetEventState(25007308, 0)
            SetEventState(25007309, 0)
            SetEventState(25007310, 0)
            SetEventState(25007311, 0)
            SetEventState(25007312, 1)
            assert t400505_x50(15003120)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Humanity Aura
#----------------------------------------------------
def t400505_x43():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Hollow
        AddTalkListData(2, 15003600, -1)
        
        # Human
        AddTalkListData(3, 15003601, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            SetEventState(25007301, 0)
            SetEventState(25007302, 0)
            assert t400505_x50(15003121)
            return 0
        # Hollow
        elif GetTalkListEntryResult() == 2:
            SetEventState(25007301, 1)
            SetEventState(25007302, 0)
            assert t400505_x50(15003120)
            return 0
        # Human
        elif GetTalkListEntryResult() == 3:
            SetEventState(25007301, 0)
            SetEventState(25007302, 1)
            assert t400505_x50(15003120)
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
def t400505_x50(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0