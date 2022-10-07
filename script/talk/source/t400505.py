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
        
        # Armor Transformation
        AddTalkListData(2, 15003060, -1)
        
        # Visual Transformation
        AddTalkListData(3, 15003061, -1)
        
        # Perspective Transformation
        AddTalkListData(4, 15003062, -1)
        
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
        # Armor Transformation
        elif GetTalkListEntryResult() == 2:
            assert t400505_x60()
            continue
        # Visual Transformation
        elif GetTalkListEntryResult() == 3:
            assert t400505_x30()
            continue
        # Perspective Transformation
        elif GetTalkListEntryResult() == 4:
            assert t400505_x12()
            continue
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
# Perspective Transformations
#----------------------------------------------------
def t400505_x12():
    c1110()
    
    while True:
        ClearTalkListData()

        # Field of View
        AddTalkListData(1, 99098000, -1)
        
        # Camera Distance
        AddTalkListData(2, 99098001, -1)
        
        # Clear Transformations
        AddTalkListData(10, 15003110, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Field of View
        if GetTalkListEntryResult() == 1:
            assert t400505_x13()
            continue
        # Camera Distance
        elif GetTalkListEntryResult() == 2:
            assert t400505_x14()
            continue
        # Clear Transformations
        elif GetTalkListEntryResult() == 10:
            assert t400505_x18()
            assert t400505_x19()
            SetEventState(25007370, 1)
            SetEventState(25007371, 1)
            assert t400505_x50(15003121)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# FOV
def t400505_x13():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Very Narrow
        AddTalkListData(3, 99098011, -1)
        
        # Narrow
        AddTalkListData(2, 99098012, -1)

        # Standard
        AddTalkListData(1, 99098010, -1)
        
        # Wide
        AddTalkListData(4, 99098013, -1)
        
        # Very Wide
        AddTalkListData(5, 99098014, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Standard
        if GetTalkListEntryResult() == 1:
            assert t400505_x18()
            SetEventState(25007360, 1)
            assert t400505_x50(15003120)
            continue
        # Narrow
        elif GetTalkListEntryResult() == 2:
            assert t400505_x18()
            SetEventState(25007361, 1)
            assert t400505_x50(15003120)
            continue
        # Very Narrow
        elif GetTalkListEntryResult() == 3:
            assert t400505_x18()
            SetEventState(25007362, 1)
            assert t400505_x50(15003120)
            continue
        # Wide
        elif GetTalkListEntryResult() == 4:
            assert t400505_x18()
            SetEventState(25007363, 1)
            assert t400505_x50(15003120)
            continue
        # Very Wide
        elif GetTalkListEntryResult() == 5:
            assert t400505_x18()
            SetEventState(25007364, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
           
# Camera Distance
def t400505_x14():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Near
        AddTalkListData(2, 99098021, -1)
        
        # Standard
        AddTalkListData(1, 99098020, -1)
        
        # Far
        AddTalkListData(3, 99098022, -1)

        # Very Far
        AddTalkListData(4, 99098023, -1)
        
        # Extremely Far
        AddTalkListData(5, 99098024, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Standard
        if GetTalkListEntryResult() == 1:
            assert t400505_x19()
            SetEventState(25007365, 1)
            assert t400505_x50(15003120)
            continue
        # Near
        elif GetTalkListEntryResult() == 2:
            assert t400505_x19()
            SetEventState(25007366, 1)
            assert t400505_x50(15003120)
            continue
        # Far
        elif GetTalkListEntryResult() == 3:
            assert t400505_x19()
            SetEventState(25007367, 1)
            assert t400505_x50(15003120)
            continue
        # Very Far
        elif GetTalkListEntryResult() == 4:
            assert t400505_x19()
            SetEventState(25007368, 1)
            assert t400505_x50(15003120)
            continue
        # Extremely Far
        elif GetTalkListEntryResult() == 5:
            assert t400505_x19()
            SetEventState(25007369, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Clear FOV flags
def t400505_x18():
    SetEventState(25007360, 0)
    SetEventState(25007361, 0)
    SetEventState(25007362, 0)
    SetEventState(25007363, 0)
    SetEventState(25007364, 0)
    SetEventState(25007370, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
      
# Clear Distance flags
def t400505_x19():
    SetEventState(25007365, 0)
    SetEventState(25007366, 0)
    SetEventState(25007367, 0)
    SetEventState(25007368, 0)
    SetEventState(25007369, 0)
    SetEventState(25007370, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
#----------------------------------------------------
# Transformation Transformations
#----------------------------------------------------
def t400505_x30():
    c1110()
    
    while True:
        ClearTalkListData()

        # Weapon Emission
        AddTalkListData(1, 15003100, -1)
        
        # Head Emission
        AddTalkListData(2, 15003107, -1)
        
        # Body Emission
        AddTalkListData(3, 15003103, -1)
        
        # Eye Emission
        AddTalkListData(4, 15003104, -1)
        
        # Humanity Aura
        AddTalkListData(6, 15003106, -1)
        
        # Body Aura
        AddTalkListData(5, 15003105, -1)
        
        # Body Tint
        AddTalkListData(7, 15003108, -1)
        
        # Clear Transformations
        AddTalkListData(10, 15003110, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Weapon Emission
        if GetTalkListEntryResult() == 1:
            assert t400505_x31()
            continue
        # Head Emission
        elif GetTalkListEntryResult() == 2:
            assert t400505_x44()
            continue
        # Body Emission
        elif GetTalkListEntryResult() == 3:
            assert t400505_x40()
            continue
        # Eye Emission
        elif GetTalkListEntryResult() == 4:
            assert t400505_x41()
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 5:
            assert t400505_x42()
            continue
        # Humanity Aura
        elif GetTalkListEntryResult() == 6:
            assert t400505_x43()
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 7:
            assert t400505_x45()
            continue
        # Clear Transformations
        elif GetTalkListEntryResult() == 10:
            SetEventState(25007398, 1)
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
        
        # Infusion
        AddTalkListData(20, 15003219, -1)
        
        # Magic
        AddTalkListData(2, 15003201, -1)
        
        # Pale Magic
        AddTalkListData(21, 15003220, -1)

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
            assert t400505_x53()
            assert t400505_x50(15003121)
            continue
        # Magic
        elif GetTalkListEntryResult() == 2:
            assert t400505_x53()
            SetEventState(25007100, 1)
            assert t400505_x50(15003120)
            continue
        # Fire
        elif GetTalkListEntryResult() == 3:
            assert t400505_x53()
            SetEventState(25007101, 1)
            assert t400505_x50(15003120)
            continue
        # Lightning
        elif GetTalkListEntryResult() == 4:
            assert t400505_x53()
            SetEventState(25007102, 1)
            assert t400505_x50(15003120)
            continue
        # Abyss
        elif GetTalkListEntryResult() == 5:
            assert t400505_x53()
            SetEventState(25007103, 1)
            assert t400505_x50(15003120)
            continue
        # Poison
        elif GetTalkListEntryResult() == 6:
            assert t400505_x53()
            SetEventState(25007104, 1)
            assert t400505_x50(15003120)
            continue
        # Blood
        elif GetTalkListEntryResult() == 7:
            assert t400505_x53()
            SetEventState(25007105, 1)
            assert t400505_x50(15003120)
            continue
        # Frost
        elif GetTalkListEntryResult() == 8:
            assert t400505_x53()
            SetEventState(25007106, 1)
            assert t400505_x50(15003120)
            continue
        # Moonlight
        elif GetTalkListEntryResult() == 9:
            assert t400505_x53()
            SetEventState(25007107, 1)
            assert t400505_x50(15003120)
            continue
        # Divine
        elif GetTalkListEntryResult() == 10:
            assert t400505_x53()
            SetEventState(25007108, 1)
            assert t400505_x50(15003120)
            continue
        # Black Fire
        elif GetTalkListEntryResult() == 11:
            assert t400505_x53()
            SetEventState(25007109, 1)
            assert t400505_x50(15003120)
            continue
        # Bolt
        elif GetTalkListEntryResult() == 12:
            assert t400505_x53()
            SetEventState(25007110, 1)
            assert t400505_x50(15003120)
            continue
        # Sunlight
        elif GetTalkListEntryResult() == 13:
            assert t400505_x53()
            SetEventState(25007111, 1)
            assert t400505_x50(15003120)
            continue
        # Enchanted
        elif GetTalkListEntryResult() == 14:
            assert t400505_x53()
            SetEventState(25007112, 1)
            assert t400505_x50(15003120)
            continue
        # Scorched
        elif GetTalkListEntryResult() == 15:
            assert t400505_x53()
            SetEventState(25007113, 1)
            assert t400505_x50(15003120)
            continue
        # Rotten
        elif GetTalkListEntryResult() == 16:
            assert t400505_x53()
            SetEventState(25007114, 1)
            assert t400505_x50(15003120)
            continue
        # Wind
        elif GetTalkListEntryResult() == 17:
            assert t400505_x53()
            SetEventState(25007115, 1)
            assert t400505_x50(15003120)
            continue
        # Psychedelic
        elif GetTalkListEntryResult() == 18:
            assert t400505_x53()
            SetEventState(25007116, 1)
            assert t400505_x50(15003120)
            continue
        # Brume
        elif GetTalkListEntryResult() == 19:
            assert t400505_x53()
            SetEventState(25007117, 1)
            assert t400505_x50(15003120)
            continue
        # Infusion
        elif GetTalkListEntryResult() == 20:
            assert t400505_x53()
            SetEventState(25007118, 1)
            assert t400505_x50(15003122)
            continue
        # Pale Magic
        elif GetTalkListEntryResult() == 21:
            assert t400505_x53()
            SetEventState(25007119, 1)
            assert t400505_x50(15003120)
            continue
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
        
        # Pale Magic
        AddTalkListData(21, 15003220, -1)

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
            assert t400505_x54()
            assert t400505_x50(15003121)
            continue
        # Magic
        elif GetTalkListEntryResult() == 2:
            assert t400505_x54()
            SetEventState(25007130, 1)
            assert t400505_x50(15003120)
            continue
        # Fire
        elif GetTalkListEntryResult() == 3:
            assert t400505_x54()
            SetEventState(25007131, 1)
            assert t400505_x50(15003120)
            continue
        # Lightning
        elif GetTalkListEntryResult() == 4:
            assert t400505_x54()
            SetEventState(25007132, 1)
            assert t400505_x50(15003120)
            continue
        # Abyss
        elif GetTalkListEntryResult() == 5:
            assert t400505_x54()
            SetEventState(25007133, 1)
            assert t400505_x50(15003120)
            continue
        # Poison
        elif GetTalkListEntryResult() == 6:
            assert t400505_x54()
            SetEventState(25007134, 1)
            assert t400505_x50(15003120)
            continue
        # Blood
        elif GetTalkListEntryResult() == 7:
            assert t400505_x54()
            SetEventState(25007135, 1)
            assert t400505_x50(15003120)
            continue
        # Frost
        elif GetTalkListEntryResult() == 8:
            assert t400505_x54()
            SetEventState(25007136, 1)
            assert t400505_x50(15003120)
            continue
        # Moonlight
        elif GetTalkListEntryResult() == 9:
            assert t400505_x54()
            SetEventState(25007137, 1)
            assert t400505_x50(15003120)
            continue
        # Divine
        elif GetTalkListEntryResult() == 10:
            assert t400505_x54()
            SetEventState(25007138, 1)
            assert t400505_x50(15003120)
            continue
        # Black Fire
        elif GetTalkListEntryResult() == 11:
            assert t400505_x54()
            SetEventState(25007139, 1)
            assert t400505_x50(15003120)
            continue
        # Bolt
        elif GetTalkListEntryResult() == 12:
            assert t400505_x54()
            SetEventState(25007140, 1)
            assert t400505_x50(15003120)
            continue
        # Sunlight
        elif GetTalkListEntryResult() == 13:
            assert t400505_x54()
            SetEventState(25007141, 1)
            assert t400505_x50(15003120)
            continue
        # Enchanted
        elif GetTalkListEntryResult() == 14:
            assert t400505_x54()
            SetEventState(25007142, 1)
            assert t400505_x50(15003120)
            continue
        # Scorched
        elif GetTalkListEntryResult() == 15:
            assert t400505_x54()
            SetEventState(25007143, 1)
            assert t400505_x50(15003120)
            continue
        # Rotten
        elif GetTalkListEntryResult() == 16:
            assert t400505_x54()
            SetEventState(25007144, 1)
            assert t400505_x50(15003120)
            continue
        # Wind
        elif GetTalkListEntryResult() == 17:
            assert t400505_x54()
            SetEventState(25007145, 1)
            assert t400505_x50(15003120)
            continue
        # Psychedelic
        elif GetTalkListEntryResult() == 18:
            assert t400505_x54()
            SetEventState(25007146, 1)
            assert t400505_x50(15003120)
            continue
        # Brume
        elif GetTalkListEntryResult() == 19:
            assert t400505_x54()
            SetEventState(25007147, 1)
            assert t400505_x50(15003120)
            continue
        # Pale Magic
        elif GetTalkListEntryResult() == 21:
            assert t400505_x54()
            SetEventState(25007149, 1)
            assert t400505_x50(15003120)
            continue
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
        
        # UNUSED
        # AddTalkListData(2, 15003300, -1)

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
            assert t400505_x55()
            assert t400505_x50(15003121)
            continue
        # UNUSED
        elif GetTalkListEntryResult() == 2:
            assert t400505_x55()
            SetEventState(25007200, 1)
            assert t400505_x50(15003120)
            continue
        # Magical Crystals
        elif GetTalkListEntryResult() == 3:
            assert t400505_x55()
            SetEventState(25007201, 1)
            assert t400505_x50(15003120)
            continue
        # Invisibility
        elif GetTalkListEntryResult() == 4:
            assert t400505_x55()
            SetEventState(25007202, 1)
            assert t400505_x50(15003120)
            continue
        # Stoneform
        elif GetTalkListEntryResult() == 5:
            assert t400505_x55()
            SetEventState(25007203, 1)
            assert t400505_x50(15003120)
            continue
        # Maggots
        elif GetTalkListEntryResult() == 6:
            assert t400505_x55()
            SetEventState(25007204, 1)
            assert t400505_x50(15003120)
            continue
        # Lightning
        elif GetTalkListEntryResult() == 7:
            assert t400505_x55()
            SetEventState(25007205, 1)
            assert t400505_x50(15003120)
            continue
        # White Stars
        elif GetTalkListEntryResult() == 8:
            assert t400505_x55()
            SetEventState(25007206, 1)
            assert t400505_x50(15003120)
            continue
        # Prismatic Stars
        elif GetTalkListEntryResult() == 9:
            assert t400505_x55()
            SetEventState(25007207, 1)
            assert t400505_x50(15003120)
            continue
        # Corrupted Crystals
        elif GetTalkListEntryResult() == 10:
            assert t400505_x55()
            SetEventState(25007208, 1)
            assert t400505_x50(15003120)
            continue
        # Dung
        elif GetTalkListEntryResult() == 11:
            assert t400505_x55()
            SetEventState(25007209, 1)
            assert t400505_x50(15003120)
            continue
        # Barrier Wards
        elif GetTalkListEntryResult() == 12:
            assert t400505_x55()
            SetEventState(25007210, 1)
            assert t400505_x50(15003120)
            continue
        # Poison
        elif GetTalkListEntryResult() == 13:
            assert t400505_x55()
            SetEventState(25007211, 1)
            assert t400505_x50(15003120)
            continue
        # Frost
        elif GetTalkListEntryResult() == 14:
            assert t400505_x55()
            SetEventState(25007212, 1)
            assert t400505_x50(15003120)
            continue
        # Flame
        elif GetTalkListEntryResult() == 15:
            assert t400505_x55()
            SetEventState(25007213, 1)
            assert t400505_x50(15003120)
            continue
        # Dust
        elif GetTalkListEntryResult() == 16:
            assert t400505_x55()
            SetEventState(25007214, 1)
            assert t400505_x50(15003120)
            continue
        # Water
        elif GetTalkListEntryResult() == 17:
            assert t400505_x55()
            SetEventState(25007215, 1)
            assert t400505_x50(15003120)
            continue
        # Holy
        elif GetTalkListEntryResult() == 18:
            assert t400505_x55()
            SetEventState(25007216, 1)
            assert t400505_x50(15003120)
            continue
        # Smouldering
        elif GetTalkListEntryResult() == 19:
            assert t400505_x55()
            SetEventState(25007217, 1)
            assert t400505_x50(15003120)
            continue
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
        
        # Green Glow
        AddTalkListData(7, 15003405, -1)
        
        # Purple Glow
        AddTalkListData(8, 15003406, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x56()
            assert t400505_x50(15003121)
            continue
        # Red Glow
        elif GetTalkListEntryResult() == 2:
            assert t400505_x56()
            SetEventState(25007250, 1)
            assert t400505_x50(15003120)
            continue
        # Burning Red Glow
        elif GetTalkListEntryResult() == 3:
            assert t400505_x56()
            SetEventState(25007251, 1)
            assert t400505_x50(15003120)
            continue
        # White Glow
        elif GetTalkListEntryResult() == 4:
            assert t400505_x56()
            SetEventState(25007252, 1)
            assert t400505_x50(15003120)
            continue
        # Blue Glow
        elif GetTalkListEntryResult() == 5:
            assert t400505_x56()
            SetEventState(25007253, 1)
            assert t400505_x50(15003120)
            continue
        # Golden Glow
        elif GetTalkListEntryResult() == 6:
            assert t400505_x56()
            SetEventState(25007254, 1)
            assert t400505_x50(15003120)
            continue
        # Green Glow
        elif GetTalkListEntryResult() == 7:
            assert t400505_x56()
            SetEventState(25007255, 1)
            assert t400505_x50(15003120)
            continue
        # Purple Glow
        elif GetTalkListEntryResult() == 8:
            assert t400505_x56()
            SetEventState(25007256, 1)
            assert t400505_x50(15003120)
            continue
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
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x57()
            assert t400505_x50(15003121)
            continue
        # Ethereal
        elif GetTalkListEntryResult() == 2:
            assert t400505_x57()
            SetEventState(25007300, 1)
            assert t400505_x50(15003120)
            continue
        # White Phantom
        elif GetTalkListEntryResult() == 5:
            assert t400505_x57()
            SetEventState(25007303, 1)
            assert t400505_x50(15003120)
            continue
        # Darkmoon Phantom
        elif GetTalkListEntryResult() == 6:
            assert t400505_x57()
            SetEventState(25007304, 1)
            assert t400505_x50(15003120)
            continue
        # Holy Phantom
        elif GetTalkListEntryResult() == 7:
            assert t400505_x57()
            SetEventState(25007305, 1)
            assert t400505_x50(15003120)
            continue
        # Swamp Phantom
        elif GetTalkListEntryResult() == 8:
            assert t400505_x57()
            SetEventState(25007306, 1)
            assert t400505_x50(15003120)
            continue
        # Abyssal Phantom
        elif GetTalkListEntryResult() == 9:
            assert t400505_x57()
            SetEventState(25007307, 1)
            assert t400505_x50(15003120)
            continue
        # Sunlight Phantom
        elif GetTalkListEntryResult() == 10:
            assert t400505_x57()
            SetEventState(25007308, 1)
            assert t400505_x50(15003120)
            continue
        # Mad Phantom
        elif GetTalkListEntryResult() == 11:
            assert t400505_x57()
            SetEventState(25007309, 1)
            assert t400505_x50(15003120)
            continue
        # Red Phantom
        elif GetTalkListEntryResult() == 12:
            assert t400505_x57()
            SetEventState(25007310, 1)
            assert t400505_x50(15003120)
            continue
        # Demonic Phantom
        elif GetTalkListEntryResult() == 13:
            assert t400505_x57()
            SetEventState(25007311, 1)
            assert t400505_x50(15003120)
            continue
        # Psychedelic Phantom
        elif GetTalkListEntryResult() == 14:
            assert t400505_x57()
            SetEventState(25007312, 1)
            assert t400505_x50(15003120)
            continue
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
            SetEventState(25007350, 0)
            SetEventState(25007351, 0)
            assert t400505_x50(15003121)
            continue
        # Hollow
        elif GetTalkListEntryResult() == 2:
            SetEventState(25007350, 0)
            SetEventState(25007351, 1)
            assert t400505_x50(15003120)
            continue
        # Human
        elif GetTalkListEntryResult() == 3:
            SetEventState(25007350, 1)
            SetEventState(25007351, 0)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Head Emission
#----------------------------------------------------
def t400505_x44():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Mass of Humanity
        AddTalkListData(2, 15003700, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x58()
            assert t400505_x50(15003121)
            continue
        # Mass of Humanity
        elif GetTalkListEntryResult() == 2:
            assert t400505_x58()
            SetEventState(25007270, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Body Tint
#----------------------------------------------------
def t400505_x45():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Red Tint
        AddTalkListData(2, 15003520, -1)

        # Orange Tint
        AddTalkListData(3, 15003521, -1)
        
        # Yellow Tint
        AddTalkListData(4, 15003522, -1)
        
        # Green Tint
        AddTalkListData(5, 15003523, -1)
        
        # Cyan Tint
        AddTalkListData(6, 15003524, -1)
        
        # Blue Tint
        AddTalkListData(7, 15003525, -1)
        
        # Indigo Tint
        AddTalkListData(8, 15003526, -1)
        
        # Violet Tint
        AddTalkListData(9, 15003527, -1)
        
        # Pink Tint
        AddTalkListData(10, 15003528, -1)
        
        # White Tint
        AddTalkListData(11, 15003529, -1)
        
        # Black Tint
        AddTalkListData(12, 15003530, -1)
        
        # Psychedelic Tint
        AddTalkListData(13, 15003531, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x57()
            assert t400505_x50(15003121)
            continue
        # Red Tint
        elif GetTalkListEntryResult() == 2:
            assert t400505_x57()
            SetEventState(25007320, 1)
            assert t400505_x50(15003120)
            continue
        # Orange Tint
        elif GetTalkListEntryResult() == 3:
            assert t400505_x57()
            SetEventState(25007321, 1)
            assert t400505_x50(15003120)
            continue
        # Yellow Tint
        elif GetTalkListEntryResult() == 4:
            assert t400505_x57()
            SetEventState(25007322, 1)
            assert t400505_x50(15003120)
            continue
        # Green Tint
        elif GetTalkListEntryResult() == 5:
            assert t400505_x57()
            SetEventState(25007323, 1)
            assert t400505_x50(15003120)
            continue
        # Cyan Tint
        elif GetTalkListEntryResult() == 6:
            assert t400505_x57()
            SetEventState(25007324, 1)
            assert t400505_x50(15003120)
            continue
        # Blue Tint
        elif GetTalkListEntryResult() == 7:
            assert t400505_x57()
            SetEventState(25007325, 1)
            assert t400505_x50(15003120)
            continue
        # Indigo Tint
        elif GetTalkListEntryResult() == 8:
            assert t400505_x57()
            SetEventState(25007326, 1)
            assert t400505_x50(15003120)
            continue
        # Violet Tint
        elif GetTalkListEntryResult() == 9:
            assert t400505_x57()
            SetEventState(25007327, 1)
            assert t400505_x50(15003120)
            continue
        # Pink Tint
        elif GetTalkListEntryResult() == 10:
            assert t400505_x57()
            SetEventState(25007328, 1)
            assert t400505_x50(15003120)
            continue
        # White Tint
        elif GetTalkListEntryResult() == 11:
            assert t400505_x57()
            SetEventState(25007329, 1)
            assert t400505_x50(15003120)
            continue
        # Black Tint
        elif GetTalkListEntryResult() == 12:
            assert t400505_x57()
            SetEventState(25007330, 1)
            assert t400505_x50(15003120)
            continue
        # Psychedelic Tint
        elif GetTalkListEntryResult() == 13:
            assert t400505_x57()
            SetEventState(25007331, 1)
            assert t400505_x50(15003120)
            continue
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
    
# Clear Head Armor
def t400505_x51():
    SetEventState(25007396, 1)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
# Clear Body Armor
def t400505_x52():
    SetEventState(25007397, 1)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
# Clear Weapon Emission (Right)
def t400505_x53():
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
    SetEventState(25007118, 0)
    SetEventState(25007119, 0)
    SetEventState(25007120, 0)
    SetEventState(25007121, 0)
    SetEventState(25007122, 0)
    SetEventState(25007123, 0)
    SetEventState(25007124, 0)
    SetEventState(25007125, 0)
    SetEventState(25007126, 0)
    SetEventState(25007127, 0)
    SetEventState(25007128, 0)
    SetEventState(25007129, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
# Clear Weapon Emission (Left)
def t400505_x54():
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
    SetEventState(25007148, 0)
    SetEventState(25007149, 0)
    SetEventState(25007150, 0)
    SetEventState(25007151, 0)
    SetEventState(25007152, 0)
    SetEventState(25007153, 0)
    SetEventState(25007154, 0)
    SetEventState(25007155, 0)
    SetEventState(25007156, 0)
    SetEventState(25007157, 0)
    SetEventState(25007158, 0)
    SetEventState(25007159, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
# Clear Body Emission
def t400505_x55():
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
    SetEventState(25007218, 0)
    SetEventState(25007219, 0)
    SetEventState(25007220, 0)
    SetEventState(25007221, 0)
    SetEventState(25007222, 0)
    SetEventState(25007223, 0)
    SetEventState(25007224, 0)
    SetEventState(25007225, 0)
    SetEventState(25007226, 0)
    SetEventState(25007227, 0)
    SetEventState(25007228, 0)
    SetEventState(25007229, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
# Clear Eye Emission
def t400505_x56():
    SetEventState(25007250, 0)
    SetEventState(25007251, 0)
    SetEventState(25007252, 0)
    SetEventState(25007253, 0)
    SetEventState(25007254, 0)
    SetEventState(25007255, 0)
    SetEventState(25007256, 0)
    SetEventState(25007257, 0)
    SetEventState(25007258, 0)
    SetEventState(25007259, 0)
    SetEventState(25007260, 0)
    SetEventState(25007261, 0)
    SetEventState(25007262, 0)
    SetEventState(25007263, 0)
    SetEventState(25007264, 0)
    SetEventState(25007265, 0)
    SetEventState(25007266, 0)
    SetEventState(25007267, 0)
    SetEventState(25007268, 0)
    SetEventState(25007269, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
# Clear Body Aura/Tint
def t400505_x57():
    # Aura
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
    SetEventState(25007312, 0)
    SetEventState(25007313, 0)
    SetEventState(25007314, 0)
    SetEventState(25007315, 0)
    SetEventState(25007316, 0)
    SetEventState(25007317, 0)
    SetEventState(25007318, 0)
    SetEventState(25007319, 0)
    
    # Tint
    SetEventState(25007320, 0)
    SetEventState(25007321, 0)
    SetEventState(25007322, 0)
    SetEventState(25007323, 0)
    SetEventState(25007324, 0)
    SetEventState(25007325, 0)
    SetEventState(25007326, 0)
    SetEventState(25007327, 0)
    SetEventState(25007328, 0)
    SetEventState(25007329, 0)
    SetEventState(25007330, 0)
    SetEventState(25007331, 0)
    SetEventState(25007332, 0)
    SetEventState(25007333, 0)
    SetEventState(25007334, 0)
    SetEventState(25007335, 0)
    SetEventState(25007336, 0)
    SetEventState(25007337, 0)
    SetEventState(25007338, 0)
    SetEventState(25007339, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0

# Clear Head Emission
def t400505_x58():
    SetEventState(25007270, 0)
    SetEventState(25007271, 0)
    SetEventState(25007272, 0)
    SetEventState(25007273, 0)
    SetEventState(25007274, 0)
    SetEventState(25007275, 0)
    SetEventState(25007276, 0)
    SetEventState(25007277, 0)
    SetEventState(25007278, 0)
    SetEventState(25007279, 0)
    
    assert GetCurrentStateElapsedFrames() > 10
    
    return 0
    
#----------------------------------------------------
# Armor Transformation
#----------------------------------------------------
def t400505_x60():
    c1110()
    
    while True:
        ClearTalkListData()

        # Head Transformation
        AddTalkListData(1, 99097000, -1)
        
        # Body Transformation
        AddTalkListData(2, 99097001, -1)
        
        # Clear Transformations
        AddTalkListData(10, 15003110, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Head Transformation
        if GetTalkListEntryResult() == 1:
            assert t400505_x61()
            continue
        # Body Transformation
        elif GetTalkListEntryResult() == 2:
            assert t400505_x62()
            continue
        # Clear Transformations
        elif GetTalkListEntryResult() == 10:
            SetEventState(25007399, 1)
            assert t400505_x50(15003121)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Head Transformation
#----------------------------------------------------
def t400505_x61():
    c1110()
    
    while True:
        ClearTalkListData()

        # Costumes
        AddTalkListData(1, 99097010, -1)
        
        # Uniques
        AddTalkListData(2, 99097011, -1)
        
        # Ultra Heavy
        AddTalkListData(3, 99097012, -1)
        
        # Heavy
        AddTalkListData(4, 99097013, -1)
        
        # Medium Heavy
        AddTalkListData(5, 99097014, -1)
        
        # Medium Light
        AddTalkListData(6, 99097015, -1)
        
        # Light
        AddTalkListData(7, 99097016, -1)
        
        # Ultra Light
        AddTalkListData(8, 99097017, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Costumes
        if GetTalkListEntryResult() == 1:
            assert t400505_x70()
            continue
        # Uniques
        elif GetTalkListEntryResult() == 2:
            assert t400505_x71()
            continue
        # Ultra Heavy
        elif GetTalkListEntryResult() == 3:
            assert t400505_x72()
            continue
        # Heavy
        elif GetTalkListEntryResult() == 4:
            assert t400505_x73()
            continue
        # Medium Heavy
        elif GetTalkListEntryResult() == 5:
            assert t400505_x74()
            continue
        # Medium Light
        elif GetTalkListEntryResult() == 6:
            assert t400505_x75()
            continue
        # Light
        elif GetTalkListEntryResult() == 7:
            assert t400505_x76()
            continue
        # Ultra Light
        elif GetTalkListEntryResult() == 8:
            assert t400505_x77()
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
   
   
# Costumes
def t400505_x70():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Dragonform (DS3)
        AddTalkListData(2, 99097100, -1)

        # Dragonform (DS1)
        AddTalkListData(14, 99097374, -1)
        
        # Bloodborne Hunter
        AddTalkListData(3, 99097101, -1)

        # Skeleton (Normal)
        AddTalkListData(4, 99097102, -1)

        # Skeleton (Tree)
        AddTalkListData(5, 99097103, -1)

        # Skeleton (Peasant)
        AddTalkListData(6, 99097104, -1)

        # Skeleton (Overgrown)
        AddTalkListData(7, 99097105, -1)

        # Capra Demon
        AddTalkListData(8, 99097106, -1)

        # Titanite Demon
        AddTalkListData(9, 99097107, -1)

        # Murkman
        AddTalkListData(10, 99097108, -1)

        # Waxed Head
        AddTalkListData(11, 99097109, -1)

        # Humanity Sprite
        # AddTalkListData(12, 99097110, -1)

        # Nullus
        AddTalkListData(13, 99097372, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Dragonform (DS3)
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007000, 1)
            assert t400505_x50(15003120)
            continue
        # Bloodborne Hunter
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007001, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Normal)
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007002, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Tree)
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007003, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Peasant)
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007004, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Overgrown)
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007005, 1)
            assert t400505_x50(15003120)
            continue
        # Capra Demon
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007006, 1)
            assert t400505_x50(15003120)
            continue
        # Titanite Demon
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007007, 1)
            assert t400505_x50(15003120)
            continue
        # Murkman
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007008, 1)
            assert t400505_x50(15003120)
            continue
        # Waxed Head
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007009, 1)
            assert t400505_x50(15003120)
            continue
        # Humanity Sprite
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007010, 1)
            assert t400505_x50(15003120)
            continue
        # Nullus
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007244, 1)
            assert t400505_x50(15003120)
            continue
        # Dragonfrom (DS1)
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007274, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
   
# Uniques
def t400505_x71():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Giant-horned Helmet
        AddTalkListData(2, 99097112, -1)

        # Fang Boar Helm
        AddTalkListData(3, 99097113, -1)

        # Snail Shell
        AddTalkListData(4, 99097121, -1)

        # Iron Keeper
        AddTalkListData(5, 99097141, -1)

        # Heide Mask
        AddTalkListData(6, 99097142, -1)

        # Overseer's Mask
        AddTalkListData(7, 99097145, -1)

        # Lost Gargoyle
        AddTalkListData(8, 99097156, -1)

        # Crab Helmet
        AddTalkListData(9, 99097158, -1)

        # Horned Samurai Helm
        AddTalkListData(10, 99097159, -1)

        # Ornate Samurai Helm
        AddTalkListData(11, 99097160, -1)

        # Ludleth's Crown
        AddTalkListData(12, 99097163, -1)

        # Symbol of Avarice
        AddTalkListData(13, 99097164, -1)

        # Giant Slave Helmet
        AddTalkListData(14, 99097165, -1)

        # Old Demon King's Crown
        AddTalkListData(15, 99097166, -1)

        # Pygmy King's Crown
        AddTalkListData(16, 99097167, -1)

        # Barrel
        AddTalkListData(17, 99097169, -1)

        # Mask of Sin
        AddTalkListData(18, 99097174, -1)

        # Pot
        AddTalkListData(19, 99097175, -1)

        # Gold Ardeo
        AddTalkListData(20, 99097183, -1)

        # Iron Cage
        AddTalkListData(21, 99097184, -1)

        # Winged Helm of Ridoh
        AddTalkListData(22, 99097196, -1)

        # Artificial Helmet
        AddTalkListData(23, 99097197, -1)

        # Filianore's Crown
        AddTalkListData(24, 99097199, -1)

        # Holy King's Crown
        AddTalkListData(25, 99097200, -1)

        # Bucket
        AddTalkListData(26, 99097202, -1)

        # Mask of the Father
        AddTalkListData(27, 99097208, -1)

        # Mask of the Mother
        AddTalkListData(28, 99097209, -1)

        # Mask of the Child
        AddTalkListData(29, 99097210, -1)

        # Demon Cleric Mask
        AddTalkListData(30, 99097211, -1)

        # Mask of Horror
        AddTalkListData(31, 99097212, -1)

        # Mask of Cruelty
        AddTalkListData(32, 99097213, -1)

        # Mask of Serenity
        AddTalkListData(33, 99097214, -1)

        # Mask of War
        AddTalkListData(34, 99097215, -1)

        # Skull Mask
        AddTalkListData(35, 99097222, -1)

        # Suspicious Gold Mask
        AddTalkListData(36, 99097223, -1)

        # Wolnir's Crown
        AddTalkListData(37, 99097240, -1)

        # Crown of Illusions
        AddTalkListData(38, 99097241, -1)

        # White Preacher
        AddTalkListData(39, 99097260, -1)

        # Poisonhorn Cap
        AddTalkListData(40, 99097261, -1)

        # Hollow Head
        AddTalkListData(41, 99097262, -1)

        # Basilisk Cap
        AddTalkListData(42, 99097263, -1)

        # Vagabond
        AddTalkListData(43, 99097264, -1)

        # Raven Mask
        AddTalkListData(44, 99097265, -1)

        # Deserter Helm
        AddTalkListData(45, 99097267, -1)

        # Soldier's Hood
        AddTalkListData(46, 99097268, -1)

        # Black Straw Hat
        AddTalkListData(47, 99097277, -1)

        # Tan Straw Hat
        AddTalkListData(48, 99097278, -1)

        # Salvador's Hat
        AddTalkListData(49, 99097283, -1)

        # Thrall Hood
        AddTalkListData(50, 99097286, -1)

        # Priest's Cap
        AddTalkListData(51, 99097292, -1)

        # Sack
        AddTalkListData(52, 99097294, -1)

        # Black Witch Veil
        AddTalkListData(53, 99097298, -1)

        # Sage's Hat
        AddTalkListData(54, 99097306, -1)

        # Crude Manikin Mask
        AddTalkListData(55, 99097319, -1)

        # Blindfold Mask
        AddTalkListData(56, 99097323, -1)

        # Carthus Blindfold
        AddTalkListData(57, 99097324, -1)

        # Lothric Knight Helm (Blue)
        AddTalkListData(58, 99097353, -1)

        # Lothric Knight Helm
        AddTalkListData(59, 99097354, -1)

        # Mirrah Cap
        AddTalkListData(60, 99097370, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Giant-horned Helmet
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007012, 1)
            assert t400505_x50(15003120)
            continue
        # Fang Boar Helm
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007013, 1)
            assert t400505_x50(15003120)
            continue
        # Snail Shell
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007021, 1)
            assert t400505_x50(15003120)
            continue
        # Iron Keeper
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007041, 1)
            assert t400505_x50(15003120)
            continue
        # Heide Mask
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007042, 1)
            assert t400505_x50(15003120)
            continue
        # Overseer's Mask
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007045, 1)
            assert t400505_x50(15003120)
            continue
        # Lost Gargoyle
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007056, 1)
            assert t400505_x50(15003120)
            continue
        # Crab Helmet
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007058, 1)
            assert t400505_x50(15003120)
            continue
        # Horned Samurai Helm
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007060, 1)
            assert t400505_x50(15003120)
            continue
        # Ornate Samurai Helm
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007061, 1)
            assert t400505_x50(15003120)
            continue
        # Ludleth's Crown
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007064, 1)
            assert t400505_x50(15003120)
            continue
        # Symbol of Avarice
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007065, 1)
            assert t400505_x50(15003120)
            continue
        # Giant Slave Helmet
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007066, 1)
            assert t400505_x50(15003120)
            continue
        # Old Demon King's Crown
        elif GetTalkListEntryResult() == 15:
            assert t400505_x51()
            SetEventState(24007067, 1)
            assert t400505_x50(15003120)
            continue
        # Pygmy King's Crown
        elif GetTalkListEntryResult() == 16:
            assert t400505_x51()
            SetEventState(24007068, 1)
            assert t400505_x50(15003120)
            continue
        # Barrel
        elif GetTalkListEntryResult() == 17:
            assert t400505_x51()
            SetEventState(24007070, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of Sin
        elif GetTalkListEntryResult() == 18:
            assert t400505_x51()
            SetEventState(24007075, 1)
            assert t400505_x50(15003120)
            continue
        # Pot
        elif GetTalkListEntryResult() == 19:
            assert t400505_x51()
            SetEventState(24007076, 1)
            assert t400505_x50(15003120)
            continue
        # Gold Ardeo
        elif GetTalkListEntryResult() == 20:
            assert t400505_x51()
            SetEventState(24007084, 1)
            assert t400505_x50(15003120)
            continue
        # Iron Cage
        elif GetTalkListEntryResult() == 21:
            assert t400505_x51()
            SetEventState(24007085, 1)
            assert t400505_x50(15003120)
            continue
        # Winged Helm of Ridoh
        elif GetTalkListEntryResult() == 22:
            assert t400505_x51()
            SetEventState(24007097, 1)
            assert t400505_x50(15003120)
            continue
        # Artificial Helmet
        elif GetTalkListEntryResult() == 23:
            assert t400505_x51()
            SetEventState(24007098, 1)
            assert t400505_x50(15003120)
            continue
        # Filianore's Crown
        elif GetTalkListEntryResult() == 24:
            assert t400505_x51()
            SetEventState(24007100, 1)
            assert t400505_x50(15003120)
            continue
        # Holy King's Crown
        elif GetTalkListEntryResult() == 25:
            assert t400505_x51()
            SetEventState(24007101, 1)
            assert t400505_x50(15003120)
            continue
        # Bucket
        elif GetTalkListEntryResult() == 26:
            assert t400505_x51()
            SetEventState(24007103, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of the Father
        elif GetTalkListEntryResult() == 27:
            assert t400505_x51()
            SetEventState(24007109, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of the Mother
        elif GetTalkListEntryResult() == 28:
            assert t400505_x51()
            SetEventState(24007110, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of the Child
        elif GetTalkListEntryResult() == 29:
            assert t400505_x51()
            SetEventState(24007111, 1)
            assert t400505_x50(15003120)
            continue
        # Demon Cleric Mask
        elif GetTalkListEntryResult() == 30:
            assert t400505_x51()
            SetEventState(24007112, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of Horror
        elif GetTalkListEntryResult() == 31:
            assert t400505_x51()
            SetEventState(24007113, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of Cruelty
        elif GetTalkListEntryResult() == 32:
            assert t400505_x51()
            SetEventState(24007114, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of Serenity
        elif GetTalkListEntryResult() == 33:
            assert t400505_x51()
            SetEventState(24007115, 1)
            assert t400505_x50(15003120)
            continue
        # Mask of War
        elif GetTalkListEntryResult() == 34:
            assert t400505_x51()
            SetEventState(24007116, 1)
            assert t400505_x50(15003120)
            continue
        # Skull Mask
        elif GetTalkListEntryResult() == 35:
            assert t400505_x51()
            SetEventState(24007123, 1)
            assert t400505_x50(15003120)
            continue
        # Suspicious Gold Mask
        elif GetTalkListEntryResult() == 36:
            assert t400505_x51()
            SetEventState(24007124, 1)
            assert t400505_x50(15003120)
            continue
        # Wolnir's Crown
        elif GetTalkListEntryResult() == 37:
            assert t400505_x51()
            SetEventState(24007141, 1)
            assert t400505_x50(15003120)
            continue
        # Crown of Illusions
        elif GetTalkListEntryResult() == 38:
            assert t400505_x51()
            SetEventState(24007142, 1)
            assert t400505_x50(15003120)
            continue
        # White Preacher
        elif GetTalkListEntryResult() == 39:
            assert t400505_x51()
            SetEventState(24007162, 1)
            assert t400505_x50(15003120)
            continue
        # Poisonhorn Cap
        elif GetTalkListEntryResult() == 40:
            assert t400505_x51()
            SetEventState(24007163, 1)
            assert t400505_x50(15003120)
            continue
        # Hollow Head
        elif GetTalkListEntryResult() == 41:
            assert t400505_x51()
            SetEventState(24007164, 1)
            assert t400505_x50(15003120)
            continue
        # Basilisk Cap
        elif GetTalkListEntryResult() == 42:
            assert t400505_x51()
            SetEventState(24007165, 1)
            assert t400505_x50(15003120)
            continue
        # Vagabond
        elif GetTalkListEntryResult() == 43:
            assert t400505_x51()
            SetEventState(24007166, 1)
            assert t400505_x50(15003120)
            continue
        # Raven Mask
        elif GetTalkListEntryResult() == 44:
            assert t400505_x51()
            SetEventState(24007167, 1)
            assert t400505_x50(15003120)
            continue
        # Deserter Helm
        elif GetTalkListEntryResult() == 45:
            assert t400505_x51()
            SetEventState(24007169, 1)
            assert t400505_x50(15003120)
            continue
        # Soldier's Hood
        elif GetTalkListEntryResult() == 46:
            assert t400505_x51()
            SetEventState(24007170, 1)
            assert t400505_x50(15003120)
            continue
        # Black Straw Hat
        elif GetTalkListEntryResult() == 47:
            assert t400505_x51()
            SetEventState(24007179, 1)
            assert t400505_x50(15003120)
            continue
        # Tan Straw Hat
        elif GetTalkListEntryResult() == 48:
            assert t400505_x51()
            SetEventState(24007180, 1)
            assert t400505_x50(15003120)
            continue
        # Salvador's Hat
        elif GetTalkListEntryResult() == 49:
            assert t400505_x51()
            SetEventState(24007185, 1)
            assert t400505_x50(15003120)
            continue
        # Thrall Hood
        elif GetTalkListEntryResult() == 50:
            assert t400505_x51()
            SetEventState(24007188, 1)
            assert t400505_x50(15003120)
            continue
        # Priest's Cap
        elif GetTalkListEntryResult() == 51:
            assert t400505_x51()
            SetEventState(24007194, 1)
            assert t400505_x50(15003120)
            continue
        # Sack
        elif GetTalkListEntryResult() == 52:
            assert t400505_x51()
            SetEventState(24007196, 1)
            assert t400505_x50(15003120)
            continue
        # Black Witch Veil
        elif GetTalkListEntryResult() == 53:
            assert t400505_x51()
            SetEventState(24007200, 1)
            assert t400505_x50(15003120)
            continue
        # Sage's Hat
        elif GetTalkListEntryResult() == 54:
            assert t400505_x51()
            SetEventState(24007208, 1)
            assert t400505_x50(15003120)
            continue
        # Crude Manikin Mask
        elif GetTalkListEntryResult() == 55:
            assert t400505_x51()
            SetEventState(24007221, 1)
            assert t400505_x50(15003120)
            continue
        # Blindfold Mask
        elif GetTalkListEntryResult() == 56:
            assert t400505_x51()
            SetEventState(24007225, 1)
            assert t400505_x50(15003120)
            continue
        # Carthus Blindfold
        elif GetTalkListEntryResult() == 57:
            assert t400505_x51()
            SetEventState(24007226, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight Helm (Blue)
        elif GetTalkListEntryResult() == 58:
            assert t400505_x51()
            SetEventState(24007255, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight Helm
        elif GetTalkListEntryResult() == 59:
            assert t400505_x51()
            SetEventState(24007256, 1)
            assert t400505_x50(15003120)
            continue
        # Mirrah Cap
        elif GetTalkListEntryResult() == 60:
            assert t400505_x51()
            SetEventState(24007272, 1)
            assert t400505_x50(15003120)
            continue

        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Ultra Heavy
def t400505_x72():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Havel's
        AddTalkListData(2, 99097111, -1)

        # Golem
        AddTalkListData(3, 99097114, -1)

        # Giant's
        AddTalkListData(4, 99097115, -1)

        # Pursuer's
        AddTalkListData(5, 99097116, -1)

        # Smough's
        AddTalkListData(6, 99097117, -1)

        # Gundyr's
        AddTalkListData(7, 99097118, -1)

        # Brushwood
        AddTalkListData(8, 99097119, -1)

        # Winged Knight
        AddTalkListData(9, 99097120, -1)

        # Millwood Knight
        AddTalkListData(10, 99097122, -1)

        # Mirror Knight
        AddTalkListData(11, 99097123, -1)

        # Dragonrider
        AddTalkListData(12, 99097124, -1)

        # Catarina
        AddTalkListData(13, 99097125, -1)

        # Stone
        AddTalkListData(14, 99097126, -1)

        # Guardian
        AddTalkListData(15, 99097127, -1)

        # Steel
        AddTalkListData(16, 99097128, -1)

        # Cathedral Knight
        AddTalkListData(17, 99097129, -1)

        # Dragon Hunter
        AddTalkListData(18, 99097130, -1)

        # Black Iron
        AddTalkListData(19, 99097131, -1)

        # Iron Dragonslayer
        AddTalkListData(20, 99097132, -1)

        # Lapp
        AddTalkListData(21, 99097133, -1)

        # Penetrator
        AddTalkListData(22, 99097134, -1)

        # Ironclad
        AddTalkListData(23, 99097343, -1)

        # Stalwart Knight
        AddTalkListData(24, 99097346, -1)

        # Eastern General
        AddTalkListData(25, 99097348, -1)

        # Consumed King's Knight
        AddTalkListData(26, 99097355, -1)

        # Gertrude's Knight
        AddTalkListData(27, 99097358, -1)

        # Vordt's
        AddTalkListData(28, 99097367, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Havel's
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007011, 1)
            assert t400505_x50(15003120)
            continue
        # Golem
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007014, 1)
            assert t400505_x50(15003120)
            continue
        # Giant's
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007015, 1)
            assert t400505_x50(15003120)
            continue
        # Pursuer's
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007016, 1)
            assert t400505_x50(15003120)
            continue
        # Smough's
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007017, 1)
            assert t400505_x50(15003120)
            continue
        # Gundyr's
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007018, 1)
            assert t400505_x50(15003120)
            continue
        # Brushwood
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007019, 1)
            assert t400505_x50(15003120)
            continue
        # Winged Knight
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007020, 1)
            assert t400505_x50(15003120)
            continue
        # Millwood Knight
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007022, 1)
            assert t400505_x50(15003120)
            continue
        # Mirror Knight
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007023, 1)
            assert t400505_x50(15003120)
            continue
        # Dragonrider
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007024, 1)
            assert t400505_x50(15003120)
            continue
        # Catarina
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007025, 1)
            assert t400505_x50(15003120)
            continue
        # Stone
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007026, 1)
            assert t400505_x50(15003120)
            continue
        # Guardian
        elif GetTalkListEntryResult() == 15:
            assert t400505_x51()
            SetEventState(24007027, 1)
            assert t400505_x50(15003120)
            continue
        # Steel
        elif GetTalkListEntryResult() == 16:
            assert t400505_x51()
            SetEventState(24007028, 1)
            assert t400505_x50(15003120)
            continue
        # Cathedral Knight
        elif GetTalkListEntryResult() == 17:
            assert t400505_x51()
            SetEventState(24007029, 1)
            assert t400505_x50(15003120)
            continue
        # Dragon Hunter
        elif GetTalkListEntryResult() == 18:
            assert t400505_x51()
            SetEventState(24007030, 1)
            assert t400505_x50(15003120)
            continue
        # Black Iron
        elif GetTalkListEntryResult() == 19:
            assert t400505_x51()
            SetEventState(24007031, 1)
            assert t400505_x50(15003120)
            continue
        # Iron Dragonslayer
        elif GetTalkListEntryResult() == 20:
            assert t400505_x51()
            SetEventState(24007032, 1)
            assert t400505_x50(15003120)
            continue
        # Lapp
        elif GetTalkListEntryResult() == 21:
            assert t400505_x51()
            SetEventState(24007033, 1)
            assert t400505_x50(15003120)
            continue
        # Penetrator
        elif GetTalkListEntryResult() == 22:
            assert t400505_x51()
            SetEventState(24007034, 1)
            assert t400505_x50(15003120)
            continue
        # Ironclad
        elif GetTalkListEntryResult() == 23:
            assert t400505_x51()
            SetEventState(24007245, 1)
            assert t400505_x50(15003120)
            continue
        # Stalwart Knight
        elif GetTalkListEntryResult() == 24:
            assert t400505_x51()
            SetEventState(24007248, 1)
            assert t400505_x50(15003120)
            continue
        # Eastern General
        elif GetTalkListEntryResult() == 25:
            assert t400505_x51()
            SetEventState(24007250, 1)
            assert t400505_x50(15003120)
            continue
        # Consumed King's Knight
        elif GetTalkListEntryResult() == 26:
            assert t400505_x51()
            SetEventState(24007257, 1)
            assert t400505_x50(15003120)
            continue
        # Gertrude's Knight
        elif GetTalkListEntryResult() == 27:
            assert t400505_x51()
            SetEventState(24007260, 1)
            assert t400505_x50(15003120)
            continue
        # Vordt's
        elif GetTalkListEntryResult() == 28:
            assert t400505_x51()
            SetEventState(24007269, 1)
            assert t400505_x50(15003120)
            continue

        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Heavy
def t400505_x73():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Morne's
        AddTalkListData(2, 99097135, -1)

        # Paladin
        AddTalkListData(3, 99097136, -1)

        # Quicksilver
        AddTalkListData(4, 99097137, -1)

        # Executioner
        AddTalkListData(5, 99097138, -1)

        # Dragonslayer
        AddTalkListData(6, 99097139, -1)

        # Lothric Knight
        AddTalkListData(7, 99097140, -1)

        # Harald Legion
        AddTalkListData(8, 99097143, -1)

        # Exile
        AddTalkListData(9, 99097144, -1)

        # Raime's
        AddTalkListData(10, 99097146, -1)

        # Black Knight
        AddTalkListData(11, 99097147, -1)

        # Silver Knight
        AddTalkListData(12, 99097148, -1)

        # Tarnished Knight
        AddTalkListData(13, 99097149, -1)

        # Heide Knight
        AddTalkListData(14, 99097150, -1)

        # Syan Knight
        AddTalkListData(15, 99097151, -1)

        # Alonne Captain
        AddTalkListData(16, 99097152, -1)

        # Gloom
        AddTalkListData(17, 99097153, -1)

        # Ruin
        AddTalkListData(18, 99097154, -1)

        # Rampart Golem
        AddTalkListData(19, 99097155, -1)

        # Gargoyle
        AddTalkListData(20, 99097157, -1)

        # Fallen Prince
        AddTalkListData(21, 99097350, -1)

        # Eastern Commander
        AddTalkListData(22, 99097351, -1)

        # Lothric Knight (Blue)
        AddTalkListData(23, 99097352, -1)

        # Lothric Knight (Overgrown)
        AddTalkListData(24, 99097362, -1)

        # Throne Watcher
        AddTalkListData(25, 99097368, -1)

        # Throne Defender
        AddTalkListData(26, 99097369, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Morne's
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007035, 1)
            assert t400505_x50(15003120)
            continue
        # Paladin
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007036, 1)
            assert t400505_x50(15003120)
            continue
        # Quicksilver
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007037, 1)
            assert t400505_x50(15003120)
            continue
        # Executioner
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007038, 1)
            assert t400505_x50(15003120)
            continue
        # Dragonslayer
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007039, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007040, 1)
            assert t400505_x50(15003120)
            continue
        # Harald Legion
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007043, 1)
            assert t400505_x50(15003120)
            continue
        # Exile
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007044, 1)
            assert t400505_x50(15003120)
            continue
        # Raime's
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007046, 1)
            assert t400505_x50(15003120)
            continue
        # Black Knight
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007047, 1)
            assert t400505_x50(15003120)
            continue
        # Silver Knight
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007048, 1)
            assert t400505_x50(15003120)
            continue
        # Tarnished Knight
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007049, 1)
            assert t400505_x50(15003120)
            continue
        # Heide Knight
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007050, 1)
            assert t400505_x50(15003120)
            continue
        # Syan Knight
        elif GetTalkListEntryResult() == 15:
            assert t400505_x51()
            SetEventState(24007051, 1)
            assert t400505_x50(15003120)
            continue
        # Alonne Captain
        elif GetTalkListEntryResult() == 16:
            assert t400505_x51()
            SetEventState(24007052, 1)
            assert t400505_x50(15003120)
            continue
        # Gloom
        elif GetTalkListEntryResult() == 17:
            assert t400505_x51()
            SetEventState(24007053, 1)
            assert t400505_x50(15003120)
            continue
        # Ruin
        elif GetTalkListEntryResult() == 18:
            assert t400505_x51()
            SetEventState(24007054, 1)
            assert t400505_x50(15003120)
            continue
        # Rampart Golem
        elif GetTalkListEntryResult() == 19:
            assert t400505_x51()
            SetEventState(24007055, 1)
            assert t400505_x50(15003120)
            continue
        # Gargoyle
        elif GetTalkListEntryResult() == 20:
            assert t400505_x51()
            SetEventState(24007057, 1)
            assert t400505_x50(15003120)
            continue
        # Fallen Prince
        elif GetTalkListEntryResult() == 21:
            assert t400505_x51()
            SetEventState(24007252, 1)
            assert t400505_x50(15003120)
            continue
        # Eastern Commander
        elif GetTalkListEntryResult() == 22:
            assert t400505_x51()
            SetEventState(24007253, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight (Blue)
        elif GetTalkListEntryResult() == 23:
            assert t400505_x51()
            SetEventState(24007254, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight (Overgrown)
        elif GetTalkListEntryResult() == 24:
            assert t400505_x51()
            SetEventState(24007264, 1)
            assert t400505_x50(15003120)
            continue
        # Throne Watcher
        elif GetTalkListEntryResult() == 25:
            assert t400505_x51()
            SetEventState(24007270, 1)
            assert t400505_x50(15003120)
            continue
        # Throne Defender
        elif GetTalkListEntryResult() == 26:
            assert t400505_x51()
            SetEventState(24007271, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Medium Heavy
def t400505_x74():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)

        # Lorian
        AddTalkListData(2, 99097161, -1)

        # Great Lord
        AddTalkListData(3, 99097162, -1)

        # Drakeblood
        AddTalkListData(4, 99097168, -1)

        # Gough's
        AddTalkListData(5, 99097170, -1)

        # Mad Warrior
        AddTalkListData(6, 99097171, -1)

        # Imperious
        AddTalkListData(7, 99097172, -1)

        # Vengarl
        AddTalkListData(8, 99097173, -1)

        # Black Dragon
        AddTalkListData(9, 99097176, -1)

        # Ringed Knight
        AddTalkListData(10, 99097177, -1)

        # Grave Keeper
        AddTalkListData(11, 99097178, -1)

        # Ivory King
        AddTalkListData(12, 99097179, -1)

        # Yhorm
        AddTalkListData(13, 99097180, -1)

        # Smelter Demon
        AddTalkListData(14, 99097181, -1)

        # Firelink
        AddTalkListData(15, 99097182, -1)

        # Corvian Knight
        AddTalkListData(16, 99097185, -1)

        # Eastern
        AddTalkListData(17, 99097186, -1)

        # Alonne
        AddTalkListData(18, 99097187, -1)

        # Brass
        AddTalkListData(19, 99097188, -1)

        # Charred Loyce
        AddTalkListData(20, 99097189, -1)

        # Loyce
        AddTalkListData(21, 99097190, -1)

        # Favored
        AddTalkListData(22, 99097191, -1)

        # King's
        AddTalkListData(23, 99097192, -1)

        # Lord's Blade
        AddTalkListData(24, 99097193, -1)

        # Dull Gold
        AddTalkListData(25, 99097332, -1)

        # Mirdan
        AddTalkListData(26, 99097335, -1)

        # Sanctum
        AddTalkListData(27, 99097344, -1)

        # Burned Firelink
        AddTalkListData(28, 99097361, -1)

        # Smelter Demon (Blue)
        AddTalkListData(29, 99097371, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Lorian
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007062, 1)
            assert t400505_x50(15003120)
            continue
        # Great Lord
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007063, 1)
            assert t400505_x50(15003120)
            continue
        # Drakeblood
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007069, 1)
            assert t400505_x50(15003120)
            continue
        # Gough's
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007071, 1)
            assert t400505_x50(15003120)
            continue
        # Mad Warrior
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007072, 1)
            assert t400505_x50(15003120)
            continue
        # Imperious
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007073, 1)
            assert t400505_x50(15003120)
            continue
        # Vengarl
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007074, 1)
            assert t400505_x50(15003120)
            continue
        # Black Dragon
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007077, 1)
            assert t400505_x50(15003120)
            continue
        # Ringed Knight
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007078, 1)
            assert t400505_x50(15003120)
            continue
        # Grave Keeper
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007079, 1)
            assert t400505_x50(15003120)
            continue
        # Ivory King
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007080, 1)
            assert t400505_x50(15003120)
            continue
        # Yhorm
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007081, 1)
            assert t400505_x50(15003120)
            continue
        # Smelter Demon
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007082, 1)
            assert t400505_x50(15003120)
            continue
        # Firelink
        elif GetTalkListEntryResult() == 15:
            assert t400505_x51()
            SetEventState(24007083, 1)
            assert t400505_x50(15003120)
            continue
        # Corvian Knight
        elif GetTalkListEntryResult() == 16:
            assert t400505_x51()
            SetEventState(24007086, 1)
            assert t400505_x50(15003120)
            continue
        # Eastern
        elif GetTalkListEntryResult() == 17:
            assert t400505_x51()
            SetEventState(24007087, 1)
            assert t400505_x50(15003120)
            continue
        # Alonne
        elif GetTalkListEntryResult() == 18:
            assert t400505_x51()
            SetEventState(24007088, 1)
            assert t400505_x50(15003120)
            continue
        # Brass
        elif GetTalkListEntryResult() == 19:
            assert t400505_x51()
            SetEventState(24007089, 1)
            assert t400505_x50(15003120)
            continue
        # Charred Loyce
        elif GetTalkListEntryResult() == 20:
            assert t400505_x51()
            SetEventState(24007090, 1)
            assert t400505_x50(15003120)
            continue
        # Loyce
        elif GetTalkListEntryResult() == 21:
            assert t400505_x51()
            SetEventState(24007091, 1)
            assert t400505_x50(15003120)
            continue
        # Favored
        elif GetTalkListEntryResult() == 22:
            assert t400505_x51()
            SetEventState(24007092, 1)
            assert t400505_x50(15003120)
            continue
        # King's
        elif GetTalkListEntryResult() == 23:
            assert t400505_x51()
            SetEventState(24007093, 1)
            assert t400505_x50(15003120)
            continue
        # Lord's Blade
        elif GetTalkListEntryResult() == 24:
            assert t400505_x51()
            SetEventState(24007094, 1)
            assert t400505_x50(15003120)
            continue
        # Dull Gold
        elif GetTalkListEntryResult() == 25:
            assert t400505_x51()
            SetEventState(24007234, 1)
            assert t400505_x50(15003120)
            continue
        # Mirdan
        elif GetTalkListEntryResult() == 26:
            assert t400505_x51()
            SetEventState(24007237, 1)
            assert t400505_x50(15003120)
            continue
        # Sanctum
        elif GetTalkListEntryResult() == 27:
            assert t400505_x51()
            SetEventState(24007246, 1)
            assert t400505_x50(15003120)
            continue
        # Burned Firelink
        elif GetTalkListEntryResult() == 28:
            assert t400505_x51()
            SetEventState(24007263, 1)
            assert t400505_x50(15003120)
            continue
        # Smelter Demon (Blue)
        elif GetTalkListEntryResult() == 29:
            assert t400505_x51()
            SetEventState(24007273, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Medium Light
def t400505_x75():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Sunset
        AddTalkListData(2, 99097194, -1)

        # Wolf Knight
        AddTalkListData(3, 99097195, -1)

        # Ancient King
        AddTalkListData(4, 99097198, -1)

        # Elite Knight
        AddTalkListData(5, 99097201, -1)

        # Burial Knight
        AddTalkListData(6, 99097203, -1)

        # Adventurer
        AddTalkListData(7, 99097204, -1)

        # Knight
        AddTalkListData(8, 99097205, -1)

        # Thorn
        AddTalkListData(9, 99097206, -1)

        # Nameless Knight
        AddTalkListData(10, 99097207, -1)

        # Faraam
        AddTalkListData(11, 99097216, -1)

        # Alva
        AddTalkListData(12, 99097217, -1)

        # Attendant
        AddTalkListData(13, 99097218, -1)

        # Footman
        AddTalkListData(14, 99097219, -1)

        # Outrider
        AddTalkListData(15, 99097220, -1)

        # Dark
        AddTalkListData(16, 99097221, -1)

        # Undead Legion
        AddTalkListData(17, 99097224, -1)

        # Fallen Mirrah
        AddTalkListData(18, 99097225, -1)

        # Herald
        AddTalkListData(19, 99097226, -1)

        # Fallen Knight
        AddTalkListData(20, 99097227, -1)

        # Hallowed Knight
        AddTalkListData(21, 99097228, -1)

        # Forlorn
        AddTalkListData(22, 99097229, -1)

        # Aurous
        AddTalkListData(23, 99097230, -1)

        # Sun
        AddTalkListData(24, 99097231, -1)

        # Fire Witch
        AddTalkListData(25, 99097232, -1)

        # Channeler
        AddTalkListData(26, 99097233, -1)

        # Chain
        AddTalkListData(27, 99097234, -1)

        # Vilhelm
        AddTalkListData(28, 99097235, -1)

        # Bone Ash
        AddTalkListData(29, 99097236, -1)

        # Varangian
        AddTalkListData(30, 99097237, -1)

        # Thorolund
        AddTalkListData(31, 99097238, -1)

        # Bear
        AddTalkListData(32, 99097239, -1)

        # Northern
        AddTalkListData(33, 99097242, -1)

        # Slave Knight
        AddTalkListData(34, 99097243, -1)

        # Gallant
        AddTalkListData(35, 99097330, -1)

        # Warden
        AddTalkListData(36, 99097331, -1)

        # Fluted
        AddTalkListData(37, 99097333, -1)

        # Sentinel
        AddTalkListData(38, 99097336, -1)

        # Herald Helm (Low Visor)
        AddTalkListData(39, 99097363, -1)

        # Undead Legion Cap
        AddTalkListData(40, 99097364, -1)

        # Royal Swordsman
        AddTalkListData(41, 99097366, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Sunset
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007095, 1)
            assert t400505_x50(15003120)
            continue
        # Wolf Knight
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007096, 1)
            assert t400505_x50(15003120)
            continue
        # Ancient King
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007099, 1)
            assert t400505_x50(15003120)
            continue
        # Elite Knight
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007102, 1)
            assert t400505_x50(15003120)
            continue
        # Burial Knight
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007104, 1)
            assert t400505_x50(15003120)
            continue
        # Adventurer
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007105, 1)
            assert t400505_x50(15003120)
            continue
        # Knight
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007106, 1)
            assert t400505_x50(15003120)
            continue
        # Thorn
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007107, 1)
            assert t400505_x50(15003120)
            continue
        # Nameless Knight
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007108, 1)
            assert t400505_x50(15003120)
            continue
        # Faraam
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007117, 1)
            assert t400505_x50(15003120)
            continue
        # Alva
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007118, 1)
            assert t400505_x50(15003120)
            continue
        # Attendant
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007119, 1)
            assert t400505_x50(15003120)
            continue
        # Footman
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007120, 1)
            assert t400505_x50(15003120)
            continue
        # Outrider
        elif GetTalkListEntryResult() == 15:
            assert t400505_x51()
            SetEventState(24007121, 1)
            assert t400505_x50(15003120)
            continue
        # Dark
        elif GetTalkListEntryResult() == 16:
            assert t400505_x51()
            SetEventState(24007122, 1)
            assert t400505_x50(15003120)
            continue
        # Undead Legion
        elif GetTalkListEntryResult() == 17:
            assert t400505_x51()
            SetEventState(24007125, 1)
            assert t400505_x50(15003120)
            continue
        # Fallen Mirrah
        elif GetTalkListEntryResult() == 18:
            assert t400505_x51()
            SetEventState(24007126, 1)
            assert t400505_x50(15003120)
            continue
        # Herald
        elif GetTalkListEntryResult() == 19:
            assert t400505_x51()
            SetEventState(24007127, 1)
            assert t400505_x50(15003120)
            continue
        # Fallen Knight
        elif GetTalkListEntryResult() == 20:
            assert t400505_x51()
            SetEventState(24007128, 1)
            assert t400505_x50(15003120)
            continue
        # Hallowed Knight
        elif GetTalkListEntryResult() == 21:
            assert t400505_x51()
            SetEventState(24007129, 1)
            assert t400505_x50(15003120)
            continue
        # Forlorn
        elif GetTalkListEntryResult() == 22:
            assert t400505_x51()
            SetEventState(24007130, 1)
            assert t400505_x50(15003120)
            continue
        # Aurous
        elif GetTalkListEntryResult() == 23:
            assert t400505_x51()
            SetEventState(24007131, 1)
            assert t400505_x50(15003120)
            continue
        # Sun
        elif GetTalkListEntryResult() == 24:
            assert t400505_x51()
            SetEventState(24007132, 1)
            assert t400505_x50(15003120)
            continue
        # Fire Witch
        elif GetTalkListEntryResult() == 25:
            assert t400505_x51()
            SetEventState(24007133, 1)
            assert t400505_x50(15003120)
            continue
        # Channeler
        elif GetTalkListEntryResult() == 26:
            assert t400505_x51()
            SetEventState(24007134, 1)
            assert t400505_x50(15003120)
            continue
        # Chain
        elif GetTalkListEntryResult() == 27:
            assert t400505_x51()
            SetEventState(24007135, 1)
            assert t400505_x50(15003120)
            continue
        # Vilhelm
        elif GetTalkListEntryResult() == 28:
            assert t400505_x51()
            SetEventState(24007136, 1)
            assert t400505_x50(15003120)
            continue
        # Bone Ash
        elif GetTalkListEntryResult() == 29:
            assert t400505_x51()
            SetEventState(24007137, 1)
            assert t400505_x50(15003120)
            continue
        # Varangian
        elif GetTalkListEntryResult() == 30:
            assert t400505_x51()
            SetEventState(24007138, 1)
            assert t400505_x50(15003120)
            continue
        # Thorolund
        elif GetTalkListEntryResult() == 31:
            assert t400505_x51()
            SetEventState(24007139, 1)
            assert t400505_x50(15003120)
            continue
        # Bear
        elif GetTalkListEntryResult() == 32:
            assert t400505_x51()
            SetEventState(24007140, 1)
            assert t400505_x50(15003120)
            continue
        # Northern
        elif GetTalkListEntryResult() == 33:
            assert t400505_x51()
            SetEventState(24007143, 1)
            assert t400505_x50(15003120)
            continue
        # Slave Knight
        elif GetTalkListEntryResult() == 34:
            assert t400505_x51()
            SetEventState(24007144, 1)
            assert t400505_x50(15003120)
            continue
        # Gallant
        elif GetTalkListEntryResult() == 35:
            assert t400505_x51()
            SetEventState(24007232, 1)
            assert t400505_x50(15003120)
            continue
        # Warden
        elif GetTalkListEntryResult() == 36:
            assert t400505_x51()
            SetEventState(24007233, 1)
            assert t400505_x50(15003120)
            continue
        # Fluted
        elif GetTalkListEntryResult() == 37:
            assert t400505_x51()
            SetEventState(24007235, 1)
            assert t400505_x50(15003120)
            continue
        # Sentinel
        elif GetTalkListEntryResult() == 38:
            assert t400505_x51()
            SetEventState(24007238, 1)
            assert t400505_x50(15003120)
            continue
        # Herald Helm (Low Visor)
        elif GetTalkListEntryResult() == 39:
            assert t400505_x51()
            SetEventState(24007265, 1)
            assert t400505_x50(15003120)
            continue
        # Undead Legion Cap
        elif GetTalkListEntryResult() == 40:
            assert t400505_x51()
            SetEventState(24007266, 1)
            assert t400505_x50(15003120)
            continue
        # Royal Swordsman
        elif GetTalkListEntryResult() == 41:
            assert t400505_x51()
            SetEventState(24007268, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Light
def t400505_x76():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Nameless King
        AddTalkListData(2, 99097244, -1)

        # Courtier
        AddTalkListData(3, 99097245, -1)

        # Follower
        AddTalkListData(4, 99097246, -1)

        # Royal Soldier
        AddTalkListData(5, 99097247, -1)

        # Pontiff Knight
        AddTalkListData(6, 99097248, -1)

        # Dancer
        AddTalkListData(7, 99097249, -1)

        # Evangelist
        AddTalkListData(8, 99097250, -1)

        # Mirrah
        AddTalkListData(9, 99097251, -1)

        # Hard Leather
        AddTalkListData(10, 99097252, -1)

        # Jailer
        AddTalkListData(11, 99097253, -1)

        # Black
        AddTalkListData(12, 99097254, -1)

        # Sellsword
        AddTalkListData(13, 99097255, -1)

        # Vileblood
        AddTalkListData(14, 99097256, -1)

        # Sunless
        AddTalkListData(15, 99097257, -1)

        # Leonhard
        AddTalkListData(16, 99097258, -1)

        # Xanthous
        AddTalkListData(17, 99097259, -1)

        # Deserter
        AddTalkListData(18, 99097266, -1)

        # Black Leather
        AddTalkListData(19, 99097269, -1)

        # Brigand
        AddTalkListData(20, 99097270, -1)

        # Pharis
        AddTalkListData(21, 99097271, -1)

        # Shira
        AddTalkListData(22, 99097272, -1)

        # Black Hand
        AddTalkListData(23, 99097273, -1)

        # Conjurator
        AddTalkListData(24, 99097274, -1)

        # Jester
        AddTalkListData(25, 99097275, -1)

        # Grotto
        AddTalkListData(26, 99097276, -1)

        # Cleric
        AddTalkListData(27, 99097279, -1)

        # Velka's
        AddTalkListData(28, 99097280, -1)

        # Astrologist
        AddTalkListData(29, 99097281, -1)

        # Worker
        AddTalkListData(30, 99097282, -1)

        # Chester
        AddTalkListData(31, 99097284, -1)

        # Binded
        AddTalkListData(32, 99097285, -1)

        # Huntsman
        AddTalkListData(33, 99097334, -1)

        # Okami
        AddTalkListData(34, 99097347, -1)

        # Elite Soldier
        AddTalkListData(35, 99097357, -1)

        # Worker (Red)
        AddTalkListData(36, 99097359, -1)

        # Profaned Handmaid
        AddTalkListData(37, 99097360, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Nameless King
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007145, 1)
            assert t400505_x50(15003120)
            continue
        # Courtier
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007146, 1)
            assert t400505_x50(15003120)
            continue
        # Follower
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007147, 1)
            assert t400505_x50(15003120)
            continue
        # Royal Soldier
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007148, 1)
            assert t400505_x50(15003120)
            continue
        # Pontiff Knight
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007149, 1)
            assert t400505_x50(15003120)
            continue
        # Dancer
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007150, 1)
            assert t400505_x50(15003120)
            continue
        # Evangelist
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007152, 1)
            assert t400505_x50(15003120)
            continue
        # Mirrah
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007153, 1)
            assert t400505_x50(15003120)
            continue
        # Hard Leather
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007154, 1)
            assert t400505_x50(15003120)
            continue
        # Jailer
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007155, 1)
            assert t400505_x50(15003120)
            continue
        # Black
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007156, 1)
            assert t400505_x50(15003120)
            continue
        # Sellsword
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007157, 1)
            assert t400505_x50(15003120)
            continue
        # Vileblood
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007158, 1)
            assert t400505_x50(15003120)
            continue
        # Sunless
        elif GetTalkListEntryResult() == 15:
            assert t400505_x51()
            SetEventState(24007159, 1)
            assert t400505_x50(15003120)
            continue
        # Leonhard
        elif GetTalkListEntryResult() == 16:
            assert t400505_x51()
            SetEventState(24007160, 1)
            assert t400505_x50(15003120)
            continue
        # Xanthous
        elif GetTalkListEntryResult() == 17:
            assert t400505_x51()
            SetEventState(24007161, 1)
            assert t400505_x50(15003120)
            continue
        # Deserter
        elif GetTalkListEntryResult() == 18:
            assert t400505_x51()
            SetEventState(24007168, 1)
            assert t400505_x50(15003120)
            continue
        # Black Leather
        elif GetTalkListEntryResult() == 19:
            assert t400505_x51()
            SetEventState(24007171, 1)
            assert t400505_x50(15003120)
            continue
        # Brigand
        elif GetTalkListEntryResult() == 20:
            assert t400505_x51()
            SetEventState(24007172, 1)
            assert t400505_x50(15003120)
            continue
        # Pharis
        elif GetTalkListEntryResult() == 21:
            assert t400505_x51()
            SetEventState(24007173, 1)
            assert t400505_x50(15003120)
            continue
        # Shira
        elif GetTalkListEntryResult() == 22:
            assert t400505_x51()
            SetEventState(24007174, 1)
            assert t400505_x50(15003120)
            continue
        # Black Hand
        elif GetTalkListEntryResult() == 23:
            assert t400505_x51()
            SetEventState(24007175, 1)
            assert t400505_x50(15003120)
            continue
        # Conjurator
        elif GetTalkListEntryResult() == 24:
            assert t400505_x51()
            SetEventState(24007176, 1)
            assert t400505_x50(15003120)
            continue
        # Jester
        elif GetTalkListEntryResult() == 25:
            assert t400505_x51()
            SetEventState(24007177, 1)
            assert t400505_x50(15003120)
            continue
        # Grotto
        elif GetTalkListEntryResult() == 26:
            assert t400505_x51()
            SetEventState(24007178, 1)
            assert t400505_x50(15003120)
            continue
        # Cleric
        elif GetTalkListEntryResult() == 27:
            assert t400505_x51()
            SetEventState(24007181, 1)
            assert t400505_x50(15003120)
            continue
        # Velka's
        elif GetTalkListEntryResult() == 28:
            assert t400505_x51()
            SetEventState(24007182, 1)
            assert t400505_x50(15003120)
            continue
        # Astrologist
        elif GetTalkListEntryResult() == 29:
            assert t400505_x51()
            SetEventState(24007183, 1)
            assert t400505_x50(15003120)
            continue
        # Worker
        elif GetTalkListEntryResult() == 30:
            assert t400505_x51()
            SetEventState(24007184, 1)
            assert t400505_x50(15003120)
            continue
        # Chester
        elif GetTalkListEntryResult() == 31:
            assert t400505_x51()
            SetEventState(24007186, 1)
            assert t400505_x50(15003120)
            continue
        # Binded
        elif GetTalkListEntryResult() == 32:
            assert t400505_x51()
            SetEventState(24007187, 1)
            assert t400505_x50(15003120)
            continue
        # Huntsman
        elif GetTalkListEntryResult() == 33:
            assert t400505_x51()
            SetEventState(24007236, 1)
            assert t400505_x50(15003120)
            continue
        # Okami
        elif GetTalkListEntryResult() == 34:
            assert t400505_x51()
            SetEventState(24007249, 1)
            assert t400505_x50(15003120)
            continue
        # Elite Soldier
        elif GetTalkListEntryResult() == 35:
            assert t400505_x51()
            SetEventState(24007259, 1)
            assert t400505_x50(15003120)
            continue
        # Worker (Red)
        elif GetTalkListEntryResult() == 36:
            assert t400505_x51()
            SetEventState(24007261, 1)
            assert t400505_x50(15003120)
            continue
        # Profaned Handmaid
        elif GetTalkListEntryResult() == 37:
            assert t400505_x51()
            SetEventState(24007262, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Ultra Light
def t400505_x77():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Assassin
        AddTalkListData(2, 99097287, -1)

        # Painting Guardian
        AddTalkListData(3, 99097288, -1)

        # Serpentine
        AddTalkListData(4, 99097290, -1)

        # Scholar
        AddTalkListData(5, 99097291, -1)

        # Pyromancer
        AddTalkListData(6, 99097293, -1)

        # Dragon Acolyte
        AddTalkListData(7, 99097295, -1)

        # Karla
        AddTalkListData(8, 99097296, -1)

        # Black Witch
        AddTalkListData(9, 99097297, -1)

        # Sorcerer
        AddTalkListData(10, 99097300, -1)

        # Court Sorcerer
        AddTalkListData(11, 99097301, -1)

        # Old Sorcerer
        AddTalkListData(12, 99097302, -1)

        # Venerable Sage
        AddTalkListData(13, 99097303, -1)

        # Wanderer
        AddTalkListData(14, 99097305, -1)

        # Moonlight
        AddTalkListData(15, 99097307, -1)

        # Gold-hemmed
        AddTalkListData(16, 99097308, -1)

        # Crimson
        AddTalkListData(17, 99097309, -1)

        # Pale Shade
        AddTalkListData(18, 99097310, -1)

        # Shadow
        AddTalkListData(19, 99097311, -1)

        # Maiden
        AddTalkListData(20, 99097312, -1)

        # Hexer
        AddTalkListData(21, 99097313, -1)

        # Cornyx's
        AddTalkListData(22, 99097314, -1)

        # Grave Warden
        AddTalkListData(23, 99097315, -1)

        # Ordained
        AddTalkListData(24, 99097316, -1)

        # Desert Pyromancer
        AddTalkListData(25, 99097317, -1)

        # Manikin
        AddTalkListData(26, 99097318, -1)

        # Archdeacon
        AddTalkListData(27, 99097320, -1)

        # Prayer
        AddTalkListData(28, 99097321, -1)

        # Fire Keeper
        AddTalkListData(29, 99097322, -1)

        # Antiquated
        AddTalkListData(30, 99097325, -1)

        # Master
        AddTalkListData(31, 99097327, -1)

        # Saint
        AddTalkListData(32, 99097329, -1)

        # Raggedy
        AddTalkListData(33, 99097337, -1)

        # Charlatan
        AddTalkListData(34, 99097338, -1)

        # Pickpocket
        AddTalkListData(35, 99097340, -1)

        # Imported
        AddTalkListData(36, 99097345, -1)

        # Carthus Swordsman
        AddTalkListData(37, 99097365, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x51()
            assert t400505_x50(15003121)
            continue
        # Assassin
        elif GetTalkListEntryResult() == 2:
            assert t400505_x51()
            SetEventState(24007189, 1)
            assert t400505_x50(15003120)
            continue
        # Painting Guardian
        elif GetTalkListEntryResult() == 3:
            assert t400505_x51()
            SetEventState(24007190, 1)
            assert t400505_x50(15003120)
            continue
        # Serpentine
        elif GetTalkListEntryResult() == 4:
            assert t400505_x51()
            SetEventState(24007192, 1)
            assert t400505_x50(15003120)
            continue
        # Scholar
        elif GetTalkListEntryResult() == 5:
            assert t400505_x51()
            SetEventState(24007193, 1)
            assert t400505_x50(15003120)
            continue
        # Pyromancer
        elif GetTalkListEntryResult() == 6:
            assert t400505_x51()
            SetEventState(24007195, 1)
            assert t400505_x50(15003120)
            continue
        # Dragon Acolyte
        elif GetTalkListEntryResult() == 7:
            assert t400505_x51()
            SetEventState(24007197, 1)
            assert t400505_x50(15003120)
            continue
        # Karla
        elif GetTalkListEntryResult() == 8:
            assert t400505_x51()
            SetEventState(24007198, 1)
            assert t400505_x50(15003120)
            continue
        # Black Witch
        elif GetTalkListEntryResult() == 9:
            assert t400505_x51()
            SetEventState(24007199, 1)
            assert t400505_x50(15003120)
            continue
        # Sorcerer
        elif GetTalkListEntryResult() == 10:
            assert t400505_x51()
            SetEventState(24007202, 1)
            assert t400505_x50(15003120)
            continue
        # Court Sorcerer
        elif GetTalkListEntryResult() == 11:
            assert t400505_x51()
            SetEventState(24007203, 1)
            assert t400505_x50(15003120)
            continue
        # Old Sorcerer
        elif GetTalkListEntryResult() == 12:
            assert t400505_x51()
            SetEventState(24007204, 1)
            assert t400505_x50(15003120)
            continue
        # Venerable Sage
        elif GetTalkListEntryResult() == 13:
            assert t400505_x51()
            SetEventState(24007205, 1)
            assert t400505_x50(15003120)
            continue
        # Wanderer
        elif GetTalkListEntryResult() == 14:
            assert t400505_x51()
            SetEventState(24007207, 1)
            assert t400505_x50(15003120)
            continue
        # Moonlight
        elif GetTalkListEntryResult() == 15:
            assert t400505_x51()
            SetEventState(24007209, 1)
            assert t400505_x50(15003120)
            continue
        # Gold-hemmed
        elif GetTalkListEntryResult() == 16:
            assert t400505_x51()
            SetEventState(24007210, 1)
            assert t400505_x50(15003120)
            continue
        # Crimson
        elif GetTalkListEntryResult() == 17:
            assert t400505_x51()
            SetEventState(24007211, 1)
            assert t400505_x50(15003120)
            continue
        # Pale Shade
        elif GetTalkListEntryResult() == 18:
            assert t400505_x51()
            SetEventState(24007212, 1)
            assert t400505_x50(15003120)
            continue
        # Shadow
        elif GetTalkListEntryResult() == 19:
            assert t400505_x51()
            SetEventState(24007213, 1)
            assert t400505_x50(15003120)
            continue
        # Maiden
        elif GetTalkListEntryResult() == 20:
            assert t400505_x51()
            SetEventState(24007214, 1)
            assert t400505_x50(15003120)
            continue
        # Hexer
        elif GetTalkListEntryResult() == 21:
            assert t400505_x51()
            SetEventState(24007215, 1)
            assert t400505_x50(15003120)
            continue
        # Cornyx's
        elif GetTalkListEntryResult() == 22:
            assert t400505_x51()
            SetEventState(24007216, 1)
            assert t400505_x50(15003120)
            continue
        # Grave Warden
        elif GetTalkListEntryResult() == 23:
            assert t400505_x51()
            SetEventState(24007217, 1)
            assert t400505_x50(15003120)
            continue
        # Ordained
        elif GetTalkListEntryResult() == 24:
            assert t400505_x51()
            SetEventState(24007218, 1)
            assert t400505_x50(15003120)
            continue
        # Desert Pyromancer
        elif GetTalkListEntryResult() == 25:
            assert t400505_x51()
            SetEventState(24007219, 1)
            assert t400505_x50(15003120)
            continue
        # Manikin
        elif GetTalkListEntryResult() == 26:
            assert t400505_x51()
            SetEventState(24007220, 1)
            assert t400505_x50(15003120)
            continue
        # Archdeacon
        elif GetTalkListEntryResult() == 27:
            assert t400505_x51()
            SetEventState(24007222, 1)
            assert t400505_x50(15003120)
            continue
        # Prayer
        elif GetTalkListEntryResult() == 28:
            assert t400505_x51()
            SetEventState(24007223, 1)
            assert t400505_x50(15003120)
            continue
        # Fire Keeper
        elif GetTalkListEntryResult() == 29:
            assert t400505_x51()
            SetEventState(24007224, 1)
            assert t400505_x50(15003120)
            continue
        # Antiquated
        elif GetTalkListEntryResult() == 30:
            assert t400505_x51()
            SetEventState(24007227, 1)
            assert t400505_x50(15003120)
            continue
        # Master
        elif GetTalkListEntryResult() == 31:
            assert t400505_x51()
            SetEventState(24007229, 1)
            assert t400505_x50(15003120)
            continue
        # Saint
        elif GetTalkListEntryResult() == 32:
            assert t400505_x51()
            SetEventState(24007231, 1)
            assert t400505_x50(15003120)
            continue
        # Raggedy
        elif GetTalkListEntryResult() == 33:
            assert t400505_x51()
            SetEventState(24007239, 1)
            assert t400505_x50(15003120)
            continue
        # Charlatan
        elif GetTalkListEntryResult() == 34:
            assert t400505_x51()
            SetEventState(24007240, 1)
            assert t400505_x50(15003120)
            continue
        # Pickpocket
        elif GetTalkListEntryResult() == 35:
            assert t400505_x51()
            SetEventState(24007242, 1)
            assert t400505_x50(15003120)
            continue
        # Imported
        elif GetTalkListEntryResult() == 36:
            assert t400505_x51()
            SetEventState(24007247, 1)
            assert t400505_x50(15003120)
            continue
        # Carthus Swordsman
        elif GetTalkListEntryResult() == 37:
            assert t400505_x51()
            SetEventState(24007267, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
#----------------------------------------------------
# Body Transformation
#----------------------------------------------------
def t400505_x62():
    c1110()
    
    while True:
        ClearTalkListData()

        # Costumes
        AddTalkListData(1, 99097010, -1)
        
        # Uniques
        AddTalkListData(2, 99097011, -1)
        
        # Ultra Heavy
        AddTalkListData(3, 99097012, -1)
        
        # Heavy
        AddTalkListData(4, 99097013, -1)
        
        # Medium Heavy
        AddTalkListData(5, 99097014, -1)
        
        # Medium Light
        AddTalkListData(6, 99097015, -1)
        
        # Light
        AddTalkListData(7, 99097016, -1)
        
        # Ultra Light
        AddTalkListData(8, 99097017, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Costumes
        if GetTalkListEntryResult() == 1:
            assert t400505_x80()
            continue
        # Uniques
        elif GetTalkListEntryResult() == 2:
            assert t400505_x81()
            continue
        # Ultra Heavy
        elif GetTalkListEntryResult() == 3:
            assert t400505_x82()
            continue
        # Heavy
        elif GetTalkListEntryResult() == 4:
            assert t400505_x83()
            continue
        # Medium Heavy
        elif GetTalkListEntryResult() == 5:
            assert t400505_x84()
            continue
        # Medium Light
        elif GetTalkListEntryResult() == 6:
            assert t400505_x85()
            continue
        # Light
        elif GetTalkListEntryResult() == 7:
            assert t400505_x86()
            continue
        # Ultra Light
        elif GetTalkListEntryResult() == 8:
            assert t400505_x87()
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Costumes
def t400505_x80():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Dragonform (DS3)
        AddTalkListData(2, 99097100, -1)

        # Dragonform (DS1)
        AddTalkListData(14, 99097374, -1)
        
        # Bloodborne Hunter
        AddTalkListData(3, 99097101, -1)

        # Skeleton (Normal)
        AddTalkListData(4, 99097102, -1)

        # Skeleton (Tree)
        AddTalkListData(5, 99097103, -1)

        # Skeleton (Peasant)
        AddTalkListData(6, 99097104, -1)

        # Skeleton (Overgrown)
        AddTalkListData(7, 99097105, -1)

        # Capra Demon
        AddTalkListData(8, 99097106, -1)

        # Titanite Demon
        AddTalkListData(9, 99097107, -1)

        # Murkman
        AddTalkListData(10, 99097108, -1)

        # Humanity Sprite
        AddTalkListData(11, 99097110, -1)

        # Nullus
        AddTalkListData(12, 99097373, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Dragonform (DS3)
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007500, 1)
            assert t400505_x50(15003120)
            continue
        # Bloodborne Hunter
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007501, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Normal)
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007502, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Tree)
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007503, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Peasant)
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007504, 1)
            assert t400505_x50(15003120)
            continue
        # Skeleton (Overgrown)
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007505, 1)
            assert t400505_x50(15003120)
            continue
        # Capra Demon
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007506, 1)
            assert t400505_x50(15003120)
            continue
        # Titanite Demon
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007507, 1)
            assert t400505_x50(15003120)
            continue
        # Murkman
        elif GetTalkListEntryResult() == 10:
            assert t400505_x52()
            SetEventState(24007508, 1)
            assert t400505_x50(15003120)
            continue
        # Humanity Sprite
        elif GetTalkListEntryResult() == 11:
            assert t400505_x52()
            SetEventState(24007510, 1)
            assert t400505_x50(15003120)
            continue
        # Nullus
        elif GetTalkListEntryResult() == 12:
            assert t400505_x52()
            SetEventState(24007744, 1)
            assert t400505_x50(15003120)
            continue
        # Dragonform (DS1)
        elif GetTalkListEntryResult() == 14:
            assert t400505_x52()
            SetEventState(24007774, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
   
# Uniques
def t400505_x81():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Drang
        AddTalkListData(2, 99097289, -1)

        # Rosaria's Dress
        AddTalkListData(3, 99097299, -1)

        # Clandestine Coat
        AddTalkListData(4, 99097304, -1)

        # Antiquated Plain
        AddTalkListData(5, 99097326, -1)

        # Deacon
        AddTalkListData(6, 99097328, -1)

        # Martyr
        AddTalkListData(7, 99097339, -1)

        # Magician
        AddTalkListData(8, 99097341, -1)

        # Elite Deacon
        AddTalkListData(9, 99097356, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Drang
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007691, 1)
            assert t400505_x50(15003120)
            continue
        # Rosaria's Dress
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007701, 1)
            assert t400505_x50(15003120)
            continue
        # Clandestine Coat
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007706, 1)
            assert t400505_x50(15003120)
            continue
        # Antiquated Plain
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007728, 1)
            assert t400505_x50(15003120)
            continue
        # Deacon
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007730, 1)
            assert t400505_x50(15003120)
            continue
        # Martyr
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007741, 1)
            assert t400505_x50(15003120)
            continue
        # Magician
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007743, 1)
            assert t400505_x50(15003120)
            continue
        # Elite Deacon
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007758, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Ultra Heavy
def t400505_x82():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Havel's
        AddTalkListData(2, 99097111, -1)

        # Golem
        AddTalkListData(3, 99097114, -1)

        # Giant's
        AddTalkListData(4, 99097115, -1)

        # Pursuer's
        AddTalkListData(5, 99097116, -1)

        # Smough's
        AddTalkListData(6, 99097117, -1)

        # Gundyr's
        AddTalkListData(7, 99097118, -1)

        # Brushwood
        AddTalkListData(8, 99097119, -1)

        # Winged Knight
        AddTalkListData(9, 99097120, -1)

        # Millwood Knight
        AddTalkListData(10, 99097122, -1)

        # Mirror Knight
        AddTalkListData(11, 99097123, -1)

        # Dragonrider
        AddTalkListData(12, 99097124, -1)

        # Catarina
        AddTalkListData(13, 99097125, -1)

        # Stone
        AddTalkListData(14, 99097126, -1)

        # Guardian
        AddTalkListData(15, 99097127, -1)

        # Steel
        AddTalkListData(16, 99097128, -1)

        # Cathedral Knight
        AddTalkListData(17, 99097129, -1)

        # Dragon Hunter
        AddTalkListData(18, 99097130, -1)

        # Black Iron
        AddTalkListData(19, 99097131, -1)

        # Iron Dragonslayer
        AddTalkListData(20, 99097132, -1)

        # Lapp
        AddTalkListData(21, 99097133, -1)

        # Penetrator
        AddTalkListData(22, 99097134, -1)

        # Ironclad
        AddTalkListData(23, 99097343, -1)

        # Stalwart Knight
        AddTalkListData(24, 99097346, -1)

        # Eastern General
        AddTalkListData(25, 99097348, -1)

        # Consumed King's Knight
        AddTalkListData(26, 99097355, -1)

        # Gertrude's Knight
        AddTalkListData(27, 99097358, -1)

        # Vordt's
        AddTalkListData(28, 99097367, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Havel's
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007511, 1)
            assert t400505_x50(15003120)
            continue
        # Golem
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007514, 1)
            assert t400505_x50(15003120)
            continue
        # Giant's
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007515, 1)
            assert t400505_x50(15003120)
            continue
        # Pursuer's
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007516, 1)
            assert t400505_x50(15003120)
            continue
        # Smough's
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007517, 1)
            assert t400505_x50(15003120)
            continue
        # Gundyr's
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007518, 1)
            assert t400505_x50(15003120)
            continue
        # Brushwood
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007519, 1)
            assert t400505_x50(15003120)
            continue
        # Winged Knight
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007520, 1)
            assert t400505_x50(15003120)
            continue
        # Millwood Knight
        elif GetTalkListEntryResult() == 10:
            assert t400505_x52()
            SetEventState(24007522, 1)
            assert t400505_x50(15003120)
            continue
        # Mirror Knight
        elif GetTalkListEntryResult() == 11:
            assert t400505_x52()
            SetEventState(24007523, 1)
            assert t400505_x50(15003120)
            continue
        # Dragonrider
        elif GetTalkListEntryResult() == 12:
            assert t400505_x52()
            SetEventState(24007524, 1)
            assert t400505_x50(15003120)
            continue
        # Catarina
        elif GetTalkListEntryResult() == 13:
            assert t400505_x52()
            SetEventState(24007525, 1)
            assert t400505_x50(15003120)
            continue
        # Stone
        elif GetTalkListEntryResult() == 14:
            assert t400505_x52()
            SetEventState(24007526, 1)
            assert t400505_x50(15003120)
            continue
        # Guardian
        elif GetTalkListEntryResult() == 15:
            assert t400505_x52()
            SetEventState(24007527, 1)
            assert t400505_x50(15003120)
            continue
        # Steel
        elif GetTalkListEntryResult() == 16:
            assert t400505_x52()
            SetEventState(24007528, 1)
            assert t400505_x50(15003120)
            continue
        # Cathedral Knight
        elif GetTalkListEntryResult() == 17:
            assert t400505_x52()
            SetEventState(24007529, 1)
            assert t400505_x50(15003120)
            continue
        # Dragon Hunter
        elif GetTalkListEntryResult() == 18:
            assert t400505_x52()
            SetEventState(24007530, 1)
            assert t400505_x50(15003120)
            continue
        # Black Iron
        elif GetTalkListEntryResult() == 19:
            assert t400505_x52()
            SetEventState(24007531, 1)
            assert t400505_x50(15003120)
            continue
        # Iron Dragonslayer
        elif GetTalkListEntryResult() == 20:
            assert t400505_x52()
            SetEventState(24007532, 1)
            assert t400505_x50(15003120)
            continue
        # Lapp
        elif GetTalkListEntryResult() == 21:
            assert t400505_x52()
            SetEventState(24007533, 1)
            assert t400505_x50(15003120)
            continue
        # Penetrator
        elif GetTalkListEntryResult() == 22:
            assert t400505_x52()
            SetEventState(24007534, 1)
            assert t400505_x50(15003120)
            continue
        # Ironclad
        elif GetTalkListEntryResult() == 23:
            assert t400505_x52()
            SetEventState(24007745, 1)
            assert t400505_x50(15003120)
            continue
        # Stalwart Knight
        elif GetTalkListEntryResult() == 24:
            assert t400505_x52()
            SetEventState(24007748, 1)
            assert t400505_x50(15003120)
            continue
        # Eastern General
        elif GetTalkListEntryResult() == 25:
            assert t400505_x52()
            SetEventState(24007750, 1)
            assert t400505_x50(15003120)
            continue
        # Consumed King's Knight
        elif GetTalkListEntryResult() == 26:
            assert t400505_x52()
            SetEventState(24007757, 1)
            assert t400505_x50(15003120)
            continue
        # Gertrude's Knight
        elif GetTalkListEntryResult() == 27:
            assert t400505_x52()
            SetEventState(24007760, 1)
            assert t400505_x50(15003120)
            continue
        # Vordt's
        elif GetTalkListEntryResult() == 28:
            assert t400505_x52()
            SetEventState(24007769, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Heavy
def t400505_x83():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Morne's
        AddTalkListData(2, 99097135, -1)

        # Paladin
        AddTalkListData(3, 99097136, -1)

        # Quicksilver
        AddTalkListData(4, 99097137, -1)

        # Executioner
        AddTalkListData(5, 99097138, -1)

        # Dragonslayer
        AddTalkListData(6, 99097139, -1)

        # Lothric Knight
        AddTalkListData(7, 99097140, -1)

        # Harald Legion
        AddTalkListData(8, 99097143, -1)

        # Exile
        AddTalkListData(9, 99097144, -1)

        # Raime's
        AddTalkListData(10, 99097146, -1)

        # Black Knight
        AddTalkListData(11, 99097147, -1)

        # Silver Knight
        AddTalkListData(12, 99097148, -1)

        # Tarnished Knight
        AddTalkListData(13, 99097149, -1)

        # Heide Knight
        AddTalkListData(14, 99097150, -1)

        # Syan Knight
        AddTalkListData(15, 99097151, -1)

        # Alonne Captain
        AddTalkListData(16, 99097152, -1)

        # Gloom
        AddTalkListData(17, 99097153, -1)

        # Ruin
        AddTalkListData(18, 99097154, -1)

        # Rampart Golem
        AddTalkListData(19, 99097155, -1)

        # Gargoyle
        AddTalkListData(20, 99097157, -1)

        # Fallen Prince
        AddTalkListData(21, 99097350, -1)

        # Eastern Commander
        AddTalkListData(22, 99097351, -1)

        # Lothric Knight (Blue)
        AddTalkListData(23, 99097352, -1)

        # Lothric Knight (Overgrown)
        AddTalkListData(24, 99097362, -1)

        # Throne Watcher
        AddTalkListData(25, 99097368, -1)

        # Throne Defender
        AddTalkListData(26, 99097369, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Morne's
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007535, 1)
            assert t400505_x50(15003120)
            continue
        # Paladin
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007536, 1)
            assert t400505_x50(15003120)
            continue
        # Quicksilver
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007537, 1)
            assert t400505_x50(15003120)
            continue
        # Executioner
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007538, 1)
            assert t400505_x50(15003120)
            continue
        # Dragonslayer
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007539, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007540, 1)
            assert t400505_x50(15003120)
            continue
        # Harald Legion
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007543, 1)
            assert t400505_x50(15003120)
            continue
        # Exile
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007544, 1)
            assert t400505_x50(15003120)
            continue
        # Raime's
        elif GetTalkListEntryResult() == 10:
            assert t400505_x52()
            SetEventState(24007546, 1)
            assert t400505_x50(15003120)
            continue
        # Black Knight
        elif GetTalkListEntryResult() == 11:
            assert t400505_x52()
            SetEventState(24007547, 1)
            assert t400505_x50(15003120)
            continue
        # Silver Knight
        elif GetTalkListEntryResult() == 12:
            assert t400505_x52()
            SetEventState(24007548, 1)
            assert t400505_x50(15003120)
            continue
        # Tarnished Knight
        elif GetTalkListEntryResult() == 13:
            assert t400505_x52()
            SetEventState(24007549, 1)
            assert t400505_x50(15003120)
            continue
        # Heide Knight
        elif GetTalkListEntryResult() == 14:
            assert t400505_x52()
            SetEventState(24007550, 1)
            assert t400505_x50(15003120)
            continue
        # Syan Knight
        elif GetTalkListEntryResult() == 15:
            assert t400505_x52()
            SetEventState(24007551, 1)
            assert t400505_x50(15003120)
            continue
        # Alonne Captain
        elif GetTalkListEntryResult() == 16:
            assert t400505_x52()
            SetEventState(24007552, 1)
            assert t400505_x50(15003120)
            continue
        # Gloom
        elif GetTalkListEntryResult() == 17:
            assert t400505_x52()
            SetEventState(24007553, 1)
            assert t400505_x50(15003120)
            continue
        # Ruin
        elif GetTalkListEntryResult() == 18:
            assert t400505_x52()
            SetEventState(24007554, 1)
            assert t400505_x50(15003120)
            continue
        # Rampart Golem
        elif GetTalkListEntryResult() == 19:
            assert t400505_x52()
            SetEventState(24007555, 1)
            assert t400505_x50(15003120)
            continue
        # Gargoyle
        elif GetTalkListEntryResult() == 20:
            assert t400505_x52()
            SetEventState(24007557, 1)
            assert t400505_x50(15003120)
            continue
        # Fallen Prince
        elif GetTalkListEntryResult() == 21:
            assert t400505_x52()
            SetEventState(24007752, 1)
            assert t400505_x50(15003120)
            continue
        # Eastern Commander
        elif GetTalkListEntryResult() == 22:
            assert t400505_x52()
            SetEventState(24007753, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight (Blue)
        elif GetTalkListEntryResult() == 23:
            assert t400505_x52()
            SetEventState(24007754, 1)
            assert t400505_x50(15003120)
            continue
        # Lothric Knight (Overgrown)
        elif GetTalkListEntryResult() == 24:
            assert t400505_x52()
            SetEventState(24007764, 1)
            assert t400505_x50(15003120)
            continue
        # Throne Watcher
        elif GetTalkListEntryResult() == 25:
            assert t400505_x52()
            SetEventState(24007770, 1)
            assert t400505_x50(15003120)
            continue
        # Throne Defender
        elif GetTalkListEntryResult() == 26:
            assert t400505_x52()
            SetEventState(24007771, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Medium Heavy
def t400505_x84():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Lorian
        AddTalkListData(2, 99097161, -1)

        # Great Lord
        AddTalkListData(3, 99097162, -1)

        # Drakeblood
        AddTalkListData(4, 99097168, -1)

        # Gough's
        AddTalkListData(5, 99097170, -1)

        # Mad Warrior
        AddTalkListData(6, 99097171, -1)

        # Imperious
        AddTalkListData(7, 99097172, -1)

        # Vengarl
        AddTalkListData(8, 99097173, -1)

        # Black Dragon
        AddTalkListData(9, 99097176, -1)

        # Ringed Knight
        AddTalkListData(10, 99097177, -1)

        # Grave Keeper
        AddTalkListData(11, 99097178, -1)

        # Ivory King
        AddTalkListData(12, 99097179, -1)

        # Yhorm
        AddTalkListData(13, 99097180, -1)

        # Smelter Demon
        AddTalkListData(14, 99097181, -1)

        # Firelink
        AddTalkListData(15, 99097182, -1)

        # Corvian Knight
        AddTalkListData(16, 99097185, -1)

        # Eastern
        AddTalkListData(17, 99097186, -1)

        # Alonne
        AddTalkListData(18, 99097187, -1)

        # Brass
        AddTalkListData(19, 99097188, -1)

        # Charred Loyce
        AddTalkListData(20, 99097189, -1)

        # Loyce
        AddTalkListData(21, 99097190, -1)

        # Favored
        AddTalkListData(22, 99097191, -1)

        # King's
        AddTalkListData(23, 99097192, -1)

        # Lord's Blade
        AddTalkListData(24, 99097193, -1)

        # Dull Gold
        AddTalkListData(25, 99097332, -1)

        # Mirdan
        AddTalkListData(26, 99097335, -1)

        # Sanctum
        AddTalkListData(27, 99097344, -1)

        # Burned Firelink
        AddTalkListData(28, 99097361, -1)

        # Smelter Demon (Blue)
        AddTalkListData(29, 99097371, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Lorian
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007562, 1)
            assert t400505_x50(15003120)
            continue
        # Great Lord
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007563, 1)
            assert t400505_x50(15003120)
            continue
        # Drakeblood
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007569, 1)
            assert t400505_x50(15003120)
            continue
        # Gough's
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007571, 1)
            assert t400505_x50(15003120)
            continue
        # Mad Warrior
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007572, 1)
            assert t400505_x50(15003120)
            continue
        # Imperious
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007573, 1)
            assert t400505_x50(15003120)
            continue
        # Vengarl
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007574, 1)
            assert t400505_x50(15003120)
            continue
        # Black Dragon
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007577, 1)
            assert t400505_x50(15003120)
            continue
        # Ringed Knight
        elif GetTalkListEntryResult() == 10:
            assert t400505_x52()
            SetEventState(24007578, 1)
            assert t400505_x50(15003120)
            continue
        # Grave Keeper
        elif GetTalkListEntryResult() == 11:
            assert t400505_x52()
            SetEventState(24007579, 1)
            assert t400505_x50(15003120)
            continue
        # Ivory King
        elif GetTalkListEntryResult() == 12:
            assert t400505_x52()
            SetEventState(24007580, 1)
            assert t400505_x50(15003120)
            continue
        # Yhorm
        elif GetTalkListEntryResult() == 13:
            assert t400505_x52()
            SetEventState(24007581, 1)
            assert t400505_x50(15003120)
            continue
        # Smelter Demon
        elif GetTalkListEntryResult() == 14:
            assert t400505_x52()
            SetEventState(24007582, 1)
            assert t400505_x50(15003120)
            continue
        # Firelink
        elif GetTalkListEntryResult() == 15:
            assert t400505_x52()
            SetEventState(24007583, 1)
            assert t400505_x50(15003120)
            continue
        # Corvian Knight
        elif GetTalkListEntryResult() == 16:
            assert t400505_x52()
            SetEventState(24007586, 1)
            assert t400505_x50(15003120)
            continue
        # Eastern
        elif GetTalkListEntryResult() == 17:
            assert t400505_x52()
            SetEventState(24007587, 1)
            assert t400505_x50(15003120)
            continue
        # Alonne
        elif GetTalkListEntryResult() == 18:
            assert t400505_x52()
            SetEventState(24007588, 1)
            assert t400505_x50(15003120)
            continue
        # Brass
        elif GetTalkListEntryResult() == 19:
            assert t400505_x52()
            SetEventState(24007589, 1)
            assert t400505_x50(15003120)
            continue
        # Charred Loyce
        elif GetTalkListEntryResult() == 20:
            assert t400505_x52()
            SetEventState(24007590, 1)
            assert t400505_x50(15003120)
            continue
        # Loyce
        elif GetTalkListEntryResult() == 21:
            assert t400505_x52()
            SetEventState(24007591, 1)
            assert t400505_x50(15003120)
            continue
        # Favored
        elif GetTalkListEntryResult() == 22:
            assert t400505_x52()
            SetEventState(24007592, 1)
            assert t400505_x50(15003120)
            continue
        # King's
        elif GetTalkListEntryResult() == 23:
            assert t400505_x52()
            SetEventState(24007593, 1)
            assert t400505_x50(15003120)
            continue
        # Lord's Blade
        elif GetTalkListEntryResult() == 24:
            assert t400505_x52()
            SetEventState(24007594, 1)
            assert t400505_x50(15003120)
            continue
        # Dull Gold
        elif GetTalkListEntryResult() == 25:
            assert t400505_x52()
            SetEventState(24007734, 1)
            assert t400505_x50(15003120)
            continue
        # Mirdan
        elif GetTalkListEntryResult() == 26:
            assert t400505_x52()
            SetEventState(24007737, 1)
            assert t400505_x50(15003120)
            continue
        # Sanctum
        elif GetTalkListEntryResult() == 27:
            assert t400505_x52()
            SetEventState(24007746, 1)
            assert t400505_x50(15003120)
            continue
        # Burned Firelink
        elif GetTalkListEntryResult() == 28:
            assert t400505_x52()
            SetEventState(24007763, 1)
            assert t400505_x50(15003120)
            continue
        # Smelter Demon (Blue)
        elif GetTalkListEntryResult() == 29:
            assert t400505_x52()
            SetEventState(24007773, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Medium Light
def t400505_x85():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Sunset
        AddTalkListData(2, 99097194, -1)

        # Wolf Knight
        AddTalkListData(3, 99097195, -1)

        # Ancient King
        AddTalkListData(4, 99097198, -1)

        # Elite Knight
        AddTalkListData(5, 99097201, -1)

        # Burial Knight
        AddTalkListData(6, 99097203, -1)

        # Adventurer
        AddTalkListData(7, 99097204, -1)

        # Knight
        AddTalkListData(8, 99097205, -1)

        # Thorn
        AddTalkListData(9, 99097206, -1)

        # Nameless Knight
        AddTalkListData(10, 99097207, -1)

        # Faraam
        AddTalkListData(11, 99097216, -1)

        # Alva
        AddTalkListData(12, 99097217, -1)

        # Attendant
        AddTalkListData(13, 99097218, -1)

        # Footman
        AddTalkListData(14, 99097219, -1)

        # Outrider
        AddTalkListData(15, 99097220, -1)

        # Dark
        AddTalkListData(16, 99097221, -1)

        # Undead Legion
        AddTalkListData(17, 99097224, -1)

        # Fallen Mirrah
        AddTalkListData(18, 99097225, -1)

        # Herald
        AddTalkListData(19, 99097226, -1)

        # Fallen Knight
        AddTalkListData(20, 99097227, -1)

        # Hallowed Knight
        AddTalkListData(21, 99097228, -1)

        # Forlorn
        AddTalkListData(22, 99097229, -1)

        # Aurous
        AddTalkListData(23, 99097230, -1)

        # Sun
        AddTalkListData(24, 99097231, -1)

        # Fire Witch
        AddTalkListData(25, 99097232, -1)

        # Channeler
        AddTalkListData(26, 99097233, -1)

        # Chain
        AddTalkListData(27, 99097234, -1)

        # Vilhelm
        AddTalkListData(28, 99097235, -1)

        # Bone Ash
        AddTalkListData(29, 99097236, -1)

        # Varangian
        AddTalkListData(30, 99097237, -1)

        # Thorolund
        AddTalkListData(31, 99097238, -1)

        # Bear
        AddTalkListData(32, 99097239, -1)

        # Northern
        AddTalkListData(33, 99097242, -1)

        # Slave Knight
        AddTalkListData(34, 99097243, -1)

        # Gallant
        AddTalkListData(35, 99097330, -1)

        # Warden
        AddTalkListData(36, 99097331, -1)

        # Fluted
        AddTalkListData(37, 99097333, -1)

        # Sentinel
        AddTalkListData(38, 99097336, -1)

        # Royal Swordsman
        AddTalkListData(39, 99097366, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Sunset
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007595, 1)
            assert t400505_x50(15003120)
            continue
        # Wolf Knight
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007596, 1)
            assert t400505_x50(15003120)
            continue
        # Ancient King
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007599, 1)
            assert t400505_x50(15003120)
            continue
        # Elite Knight
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007602, 1)
            assert t400505_x50(15003120)
            continue
        # Burial Knight
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007604, 1)
            assert t400505_x50(15003120)
            continue
        # Adventurer
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007605, 1)
            assert t400505_x50(15003120)
            continue
        # Knight
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007606, 1)
            assert t400505_x50(15003120)
            continue
        # Thorn
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007607, 1)
            assert t400505_x50(15003120)
            continue
        # Nameless Knight
        elif GetTalkListEntryResult() == 10:
            assert t400505_x52()
            SetEventState(24007608, 1)
            assert t400505_x50(15003120)
            continue
        # Faraam
        elif GetTalkListEntryResult() == 11:
            assert t400505_x52()
            SetEventState(24007617, 1)
            assert t400505_x50(15003120)
            continue
        # Alva
        elif GetTalkListEntryResult() == 12:
            assert t400505_x52()
            SetEventState(24007618, 1)
            assert t400505_x50(15003120)
            continue
        # Attendant
        elif GetTalkListEntryResult() == 13:
            assert t400505_x52()
            SetEventState(24007619, 1)
            assert t400505_x50(15003120)
            continue
        # Footman
        elif GetTalkListEntryResult() == 14:
            assert t400505_x52()
            SetEventState(24007620, 1)
            assert t400505_x50(15003120)
            continue
        # Outrider
        elif GetTalkListEntryResult() == 15:
            assert t400505_x52()
            SetEventState(24007621, 1)
            assert t400505_x50(15003120)
            continue
        # Dark
        elif GetTalkListEntryResult() == 16:
            assert t400505_x52()
            SetEventState(24007622, 1)
            assert t400505_x50(15003120)
            continue
        # Undead Legion
        elif GetTalkListEntryResult() == 17:
            assert t400505_x52()
            SetEventState(24007625, 1)
            assert t400505_x50(15003120)
            continue
        # Fallen Mirrah
        elif GetTalkListEntryResult() == 18:
            assert t400505_x52()
            SetEventState(24007626, 1)
            assert t400505_x50(15003120)
            continue
        # Herald
        elif GetTalkListEntryResult() == 19:
            assert t400505_x52()
            SetEventState(24007627, 1)
            assert t400505_x50(15003120)
            continue
        # Fallen Knight
        elif GetTalkListEntryResult() == 20:
            assert t400505_x52()
            SetEventState(24007628, 1)
            assert t400505_x50(15003120)
            continue
        # Hallowed Knight
        elif GetTalkListEntryResult() == 21:
            assert t400505_x52()
            SetEventState(24007629, 1)
            assert t400505_x50(15003120)
            continue
        # Forlorn
        elif GetTalkListEntryResult() == 22:
            assert t400505_x52()
            SetEventState(24007630, 1)
            assert t400505_x50(15003120)
            continue
        # Aurous
        elif GetTalkListEntryResult() == 23:
            assert t400505_x52()
            SetEventState(24007631, 1)
            assert t400505_x50(15003120)
            continue
        # Sun
        elif GetTalkListEntryResult() == 24:
            assert t400505_x52()
            SetEventState(24007632, 1)
            assert t400505_x50(15003120)
            continue
        # Fire Witch
        elif GetTalkListEntryResult() == 25:
            assert t400505_x52()
            SetEventState(24007633, 1)
            assert t400505_x50(15003120)
            continue
        # Channeler
        elif GetTalkListEntryResult() == 26:
            assert t400505_x52()
            SetEventState(24007634, 1)
            assert t400505_x50(15003120)
            continue
        # Chain
        elif GetTalkListEntryResult() == 27:
            assert t400505_x52()
            SetEventState(24007635, 1)
            assert t400505_x50(15003120)
            continue
        # Vilhelm
        elif GetTalkListEntryResult() == 28:
            assert t400505_x52()
            SetEventState(24007636, 1)
            assert t400505_x50(15003120)
            continue
        # Bone Ash
        elif GetTalkListEntryResult() == 29:
            assert t400505_x52()
            SetEventState(24007637, 1)
            assert t400505_x50(15003120)
            continue
        # Varangian
        elif GetTalkListEntryResult() == 30:
            assert t400505_x52()
            SetEventState(24007638, 1)
            assert t400505_x50(15003120)
            continue
        # Thorolund
        elif GetTalkListEntryResult() == 31:
            assert t400505_x52()
            SetEventState(24007639, 1)
            assert t400505_x50(15003120)
            continue
        # Bear
        elif GetTalkListEntryResult() == 32:
            assert t400505_x52()
            SetEventState(24007640, 1)
            assert t400505_x50(15003120)
            continue
        # Northern
        elif GetTalkListEntryResult() == 33:
            assert t400505_x52()
            SetEventState(24007643, 1)
            assert t400505_x50(15003120)
            continue
        # Slave Knight
        elif GetTalkListEntryResult() == 34:
            assert t400505_x52()
            SetEventState(24007644, 1)
            assert t400505_x50(15003120)
            continue
        # Gallant
        elif GetTalkListEntryResult() == 35:
            assert t400505_x52()
            SetEventState(24007732, 1)
            assert t400505_x50(15003120)
            continue
        # Warden
        elif GetTalkListEntryResult() == 36:
            assert t400505_x52()
            SetEventState(24007733, 1)
            assert t400505_x50(15003120)
            continue
        # Fluted
        elif GetTalkListEntryResult() == 37:
            assert t400505_x52()
            SetEventState(24007735, 1)
            assert t400505_x50(15003120)
            continue
        # Sentinel
        elif GetTalkListEntryResult() == 38:
            assert t400505_x52()
            SetEventState(24007738, 1)
            assert t400505_x50(15003120)
            continue
        # Royal Swordsman
        elif GetTalkListEntryResult() == 39:
            assert t400505_x52()
            SetEventState(24007768, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Light
def t400505_x86():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Nameless King
        AddTalkListData(2, 99097244, -1)

        # Courtier
        AddTalkListData(3, 99097245, -1)

        # Follower
        AddTalkListData(4, 99097246, -1)

        # Royal Soldier
        AddTalkListData(5, 99097247, -1)

        # Pontiff Knight
        AddTalkListData(6, 99097248, -1)

        # Dancer
        AddTalkListData(7, 99097249, -1)

        # Evangelist
        AddTalkListData(8, 99097250, -1)

        # Mirrah
        AddTalkListData(9, 99097251, -1)

        # Hard Leather
        AddTalkListData(10, 99097252, -1)

        # Jailer
        AddTalkListData(11, 99097253, -1)

        # Black
        AddTalkListData(12, 99097254, -1)

        # Sellsword
        AddTalkListData(13, 99097255, -1)

        # Vileblood
        AddTalkListData(14, 99097256, -1)

        # Sunless
        AddTalkListData(15, 99097257, -1)

        # Leonhard
        AddTalkListData(16, 99097258, -1)

        # Xanthous
        AddTalkListData(17, 99097259, -1)

        # Deserter
        AddTalkListData(18, 99097266, -1)

        # Black Leather
        AddTalkListData(19, 99097269, -1)

        # Brigand
        AddTalkListData(20, 99097270, -1)

        # Pharis
        AddTalkListData(21, 99097271, -1)

        # Shira
        AddTalkListData(22, 99097272, -1)

        # Black Hand
        AddTalkListData(23, 99097273, -1)

        # Conjurator
        AddTalkListData(24, 99097274, -1)

        # Jester
        AddTalkListData(25, 99097275, -1)

        # Grotto
        AddTalkListData(26, 99097276, -1)

        # Cleric
        AddTalkListData(27, 99097279, -1)

        # Velka's
        AddTalkListData(28, 99097280, -1)

        # Astrologist
        AddTalkListData(29, 99097281, -1)

        # Worker
        AddTalkListData(30, 99097282, -1)

        # Chester
        AddTalkListData(31, 99097284, -1)

        # Binded
        AddTalkListData(32, 99097285, -1)

        # Huntsman
        AddTalkListData(33, 99097334, -1)

        # Okami
        AddTalkListData(34, 99097347, -1)

        # Elite Soldier
        AddTalkListData(35, 99097357, -1)

        # Worker (Red)
        AddTalkListData(36, 99097359, -1)

        # Profaned Handmaid
        AddTalkListData(37, 99097360, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Nameless King
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007645, 1)
            assert t400505_x50(15003120)
            continue
        # Courtier
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007646, 1)
            assert t400505_x50(15003120)
            continue
        # Follower
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007647, 1)
            assert t400505_x50(15003120)
            continue
        # Royal Soldier
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007648, 1)
            assert t400505_x50(15003120)
            continue
        # Pontiff Knight
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007649, 1)
            assert t400505_x50(15003120)
            continue
        # Dancer
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007650, 1)
            assert t400505_x50(15003120)
            continue
        # Evangelist
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007652, 1)
            assert t400505_x50(15003120)
            continue
        # Mirrah
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007653, 1)
            assert t400505_x50(15003120)
            continue
        # Hard Leather
        elif GetTalkListEntryResult() == 10:
            assert t400505_x52()
            SetEventState(24007654, 1)
            assert t400505_x50(15003120)
            continue
        # Jailer
        elif GetTalkListEntryResult() == 11:
            assert t400505_x52()
            SetEventState(24007655, 1)
            assert t400505_x50(15003120)
            continue
        # Black
        elif GetTalkListEntryResult() == 12:
            assert t400505_x52()
            SetEventState(24007656, 1)
            assert t400505_x50(15003120)
            continue
        # Sellsword
        elif GetTalkListEntryResult() == 13:
            assert t400505_x52()
            SetEventState(24007657, 1)
            assert t400505_x50(15003120)
            continue
        # Vileblood
        elif GetTalkListEntryResult() == 14:
            assert t400505_x52()
            SetEventState(24007658, 1)
            assert t400505_x50(15003120)
            continue
        # Sunless
        elif GetTalkListEntryResult() == 15:
            assert t400505_x52()
            SetEventState(24007659, 1)
            assert t400505_x50(15003120)
            continue
        # Leonhard
        elif GetTalkListEntryResult() == 16:
            assert t400505_x52()
            SetEventState(24007660, 1)
            assert t400505_x50(15003120)
            continue
        # Xanthous
        elif GetTalkListEntryResult() == 17:
            assert t400505_x52()
            SetEventState(24007661, 1)
            assert t400505_x50(15003120)
            continue
        # Deserter
        elif GetTalkListEntryResult() == 18:
            assert t400505_x52()
            SetEventState(24007668, 1)
            assert t400505_x50(15003120)
            continue
        # Black Leather
        elif GetTalkListEntryResult() == 19:
            assert t400505_x52()
            SetEventState(24007671, 1)
            assert t400505_x50(15003120)
            continue
        # Brigand
        elif GetTalkListEntryResult() == 20:
            assert t400505_x52()
            SetEventState(24007672, 1)
            assert t400505_x50(15003120)
            continue
        # Pharis
        elif GetTalkListEntryResult() == 21:
            assert t400505_x52()
            SetEventState(24007673, 1)
            assert t400505_x50(15003120)
            continue
        # Shira
        elif GetTalkListEntryResult() == 22:
            assert t400505_x52()
            SetEventState(24007674, 1)
            assert t400505_x50(15003120)
            continue
        # Black Hand
        elif GetTalkListEntryResult() == 23:
            assert t400505_x52()
            SetEventState(24007675, 1)
            assert t400505_x50(15003120)
            continue
        # Conjurator
        elif GetTalkListEntryResult() == 24:
            assert t400505_x52()
            SetEventState(24007676, 1)
            assert t400505_x50(15003120)
            continue
        # Jester
        elif GetTalkListEntryResult() == 25:
            assert t400505_x52()
            SetEventState(24007677, 1)
            assert t400505_x50(15003120)
            continue
        # Grotto
        elif GetTalkListEntryResult() == 26:
            assert t400505_x52()
            SetEventState(24007678, 1)
            assert t400505_x50(15003120)
            continue
        # Cleric
        elif GetTalkListEntryResult() == 27:
            assert t400505_x52()
            SetEventState(24007681, 1)
            assert t400505_x50(15003120)
            continue
        # Velka's
        elif GetTalkListEntryResult() == 28:
            assert t400505_x52()
            SetEventState(24007682, 1)
            assert t400505_x50(15003120)
            continue
        # Astrologist
        elif GetTalkListEntryResult() == 29:
            assert t400505_x52()
            SetEventState(24007683, 1)
            assert t400505_x50(15003120)
            continue
        # Worker
        elif GetTalkListEntryResult() == 30:
            assert t400505_x52()
            SetEventState(24007684, 1)
            assert t400505_x50(15003120)
            continue
        # Chester
        elif GetTalkListEntryResult() == 31:
            assert t400505_x52()
            SetEventState(24007686, 1)
            assert t400505_x50(15003120)
            continue
        # Binded
        elif GetTalkListEntryResult() == 32:
            assert t400505_x52()
            SetEventState(24007687, 1)
            assert t400505_x50(15003120)
            continue
        # Huntsman
        elif GetTalkListEntryResult() == 33:
            assert t400505_x52()
            SetEventState(24007736, 1)
            assert t400505_x50(15003120)
            continue
        # Okami
        elif GetTalkListEntryResult() == 34:
            assert t400505_x52()
            SetEventState(24007749, 1)
            assert t400505_x50(15003120)
            continue
        # Elite Soldier
        elif GetTalkListEntryResult() == 35:
            assert t400505_x52()
            SetEventState(24007759, 1)
            assert t400505_x50(15003120)
            continue
        # Worker (Red)
        elif GetTalkListEntryResult() == 36:
            assert t400505_x52()
            SetEventState(24007761, 1)
            assert t400505_x50(15003120)
            continue
        # Profaned Handmaid
        elif GetTalkListEntryResult() == 37:
            assert t400505_x52()
            SetEventState(24007762, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
# Ultra Light
def t400505_x87():
    c1110()
    
    while True:
        ClearTalkListData()

        # None
        AddTalkListData(1, 15003200, -1)
        
        # Assassin
        AddTalkListData(2, 99097287, -1)

        # Painting Guardian
        AddTalkListData(3, 99097288, -1)

        # Serpentine
        AddTalkListData(4, 99097290, -1)

        # Scholar
        AddTalkListData(5, 99097291, -1)

        # Pyromancer
        AddTalkListData(6, 99097293, -1)

        # Dragon Acolyte
        AddTalkListData(7, 99097295, -1)

        # Karla
        AddTalkListData(8, 99097296, -1)

        # Black Witch
        AddTalkListData(9, 99097297, -1)

        # Sorcerer
        AddTalkListData(10, 99097300, -1)

        # Court Sorcerer
        AddTalkListData(11, 99097301, -1)

        # Old Sorcerer
        AddTalkListData(12, 99097302, -1)

        # Venerable Sage
        AddTalkListData(13, 99097303, -1)

        # Wanderer
        AddTalkListData(14, 99097305, -1)

        # Moonlight
        AddTalkListData(15, 99097307, -1)

        # Gold-hemmed
        AddTalkListData(16, 99097308, -1)

        # Crimson
        AddTalkListData(17, 99097309, -1)

        # Pale Shade
        AddTalkListData(18, 99097310, -1)

        # Shadow
        AddTalkListData(19, 99097311, -1)

        # Maiden
        AddTalkListData(20, 99097312, -1)

        # Hexer
        AddTalkListData(21, 99097313, -1)

        # Cornyx's
        AddTalkListData(22, 99097314, -1)

        # Grave Warden
        AddTalkListData(23, 99097315, -1)

        # Ordained
        AddTalkListData(24, 99097316, -1)

        # Desert Pyromancer
        AddTalkListData(25, 99097317, -1)

        # Manikin
        AddTalkListData(26, 99097318, -1)

        # Archdeacon
        AddTalkListData(27, 99097320, -1)

        # Prayer
        AddTalkListData(28, 99097321, -1)

        # Fire Keeper
        AddTalkListData(29, 99097322, -1)

        # Antiquated
        AddTalkListData(30, 99097325, -1)

        # Master
        AddTalkListData(31, 99097327, -1)

        # Saint
        AddTalkListData(32, 99097329, -1)

        # Raggedy
        AddTalkListData(33, 99097337, -1)

        # Charlatan
        AddTalkListData(34, 99097338, -1)

        # Pickpocket
        AddTalkListData(35, 99097340, -1)

        # Imported
        AddTalkListData(36, 99097345, -1)

        # Eastern Wolf
        AddTalkListData(37, 99097349, -1)

        # Carthus Swordsman
        AddTalkListData(38, 99097365, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # None
        if GetTalkListEntryResult() == 1:
            assert t400505_x52()
            assert t400505_x50(15003121)
            continue
        # Assassin
        elif GetTalkListEntryResult() == 2:
            assert t400505_x52()
            SetEventState(24007689, 1)
            assert t400505_x50(15003120)
            continue
        # Painting Guardian
        elif GetTalkListEntryResult() == 3:
            assert t400505_x52()
            SetEventState(24007690, 1)
            assert t400505_x50(15003120)
            continue
        # Serpentine
        elif GetTalkListEntryResult() == 4:
            assert t400505_x52()
            SetEventState(24007692, 1)
            assert t400505_x50(15003120)
            continue
        # Scholar
        elif GetTalkListEntryResult() == 5:
            assert t400505_x52()
            SetEventState(24007693, 1)
            assert t400505_x50(15003120)
            continue
        # Pyromancer
        elif GetTalkListEntryResult() == 6:
            assert t400505_x52()
            SetEventState(24007695, 1)
            assert t400505_x50(15003120)
            continue
        # Dragon Acolyte
        elif GetTalkListEntryResult() == 7:
            assert t400505_x52()
            SetEventState(24007697, 1)
            assert t400505_x50(15003120)
            continue
        # Karla
        elif GetTalkListEntryResult() == 8:
            assert t400505_x52()
            SetEventState(24007698, 1)
            assert t400505_x50(15003120)
            continue
        # Black Witch
        elif GetTalkListEntryResult() == 9:
            assert t400505_x52()
            SetEventState(24007699, 1)
            assert t400505_x50(15003120)
            continue
        # Sorcerer
        elif GetTalkListEntryResult() == 10:
            assert t400505_x52()
            SetEventState(24007702, 1)
            assert t400505_x50(15003120)
            continue
        # Court Sorcerer
        elif GetTalkListEntryResult() == 11:
            assert t400505_x52()
            SetEventState(24007703, 1)
            assert t400505_x50(15003120)
            continue
        # Old Sorcerer
        elif GetTalkListEntryResult() == 12:
            assert t400505_x52()
            SetEventState(24007704, 1)
            assert t400505_x50(15003120)
            continue
        # Venerable Sage
        elif GetTalkListEntryResult() == 13:
            assert t400505_x52()
            SetEventState(24007705, 1)
            assert t400505_x50(15003120)
            continue
        # Wanderer
        elif GetTalkListEntryResult() == 14:
            assert t400505_x52()
            SetEventState(24007707, 1)
            assert t400505_x50(15003120)
            continue
        # Moonlight
        elif GetTalkListEntryResult() == 15:
            assert t400505_x52()
            SetEventState(24007709, 1)
            assert t400505_x50(15003120)
            continue
        # Gold-hemmed
        elif GetTalkListEntryResult() == 16:
            assert t400505_x52()
            SetEventState(24007710, 1)
            assert t400505_x50(15003120)
            continue
        # Crimson
        elif GetTalkListEntryResult() == 17:
            assert t400505_x52()
            SetEventState(24007711, 1)
            assert t400505_x50(15003120)
            continue
        # Pale Shade
        elif GetTalkListEntryResult() == 18:
            assert t400505_x52()
            SetEventState(24007712, 1)
            assert t400505_x50(15003120)
            continue
        # Shadow
        elif GetTalkListEntryResult() == 19:
            assert t400505_x52()
            SetEventState(24007713, 1)
            assert t400505_x50(15003120)
            continue
        # Maiden
        elif GetTalkListEntryResult() == 20:
            assert t400505_x52()
            SetEventState(24007714, 1)
            assert t400505_x50(15003120)
            continue
        # Hexer
        elif GetTalkListEntryResult() == 21:
            assert t400505_x52()
            SetEventState(24007715, 1)
            assert t400505_x50(15003120)
            continue
        # Cornyx's
        elif GetTalkListEntryResult() == 22:
            assert t400505_x52()
            SetEventState(24007716, 1)
            assert t400505_x50(15003120)
            continue
        # Grave Warden
        elif GetTalkListEntryResult() == 23:
            assert t400505_x52()
            SetEventState(24007717, 1)
            assert t400505_x50(15003120)
            continue
        # Ordained
        elif GetTalkListEntryResult() == 24:
            assert t400505_x52()
            SetEventState(24007718, 1)
            assert t400505_x50(15003120)
            continue
        # Desert Pyromancer
        elif GetTalkListEntryResult() == 25:
            assert t400505_x52()
            SetEventState(24007719, 1)
            assert t400505_x50(15003120)
            continue
        # Manikin
        elif GetTalkListEntryResult() == 26:
            assert t400505_x52()
            SetEventState(24007720, 1)
            assert t400505_x50(15003120)
            continue
        # Archdeacon
        elif GetTalkListEntryResult() == 27:
            assert t400505_x52()
            SetEventState(24007722, 1)
            assert t400505_x50(15003120)
            continue
        # Prayer
        elif GetTalkListEntryResult() == 28:
            assert t400505_x52()
            SetEventState(24007723, 1)
            assert t400505_x50(15003120)
            continue
        # Fire Keeper
        elif GetTalkListEntryResult() == 29:
            assert t400505_x52()
            SetEventState(24007724, 1)
            assert t400505_x50(15003120)
            continue
        # Antiquated
        elif GetTalkListEntryResult() == 30:
            assert t400505_x52()
            SetEventState(24007727, 1)
            assert t400505_x50(15003120)
            continue
        # Master
        elif GetTalkListEntryResult() == 31:
            assert t400505_x52()
            SetEventState(24007729, 1)
            assert t400505_x50(15003120)
            continue
        # Saint
        elif GetTalkListEntryResult() == 32:
            assert t400505_x52()
            SetEventState(24007731, 1)
            assert t400505_x50(15003120)
            continue
        # Raggedy
        elif GetTalkListEntryResult() == 33:
            assert t400505_x52()
            SetEventState(24007739, 1)
            assert t400505_x50(15003120)
            continue
        # Charlatan
        elif GetTalkListEntryResult() == 34:
            assert t400505_x52()
            SetEventState(24007740, 1)
            assert t400505_x50(15003120)
            continue
        # Pickpocket
        elif GetTalkListEntryResult() == 35:
            assert t400505_x52()
            SetEventState(24007742, 1)
            assert t400505_x50(15003120)
            continue
        # Imported
        elif GetTalkListEntryResult() == 36:
            assert t400505_x52()
            SetEventState(24007747, 1)
            assert t400505_x50(15003120)
            continue
        # Eastern Wolf
        elif GetTalkListEntryResult() == 37:
            assert t400505_x52()
            SetEventState(24007751, 1)
            assert t400505_x50(15003120)
            continue
        # Carthus Swordsman
        elif GetTalkListEntryResult() == 38:
            assert t400505_x52()
            SetEventState(24007767, 1)
            assert t400505_x50(15003120)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0