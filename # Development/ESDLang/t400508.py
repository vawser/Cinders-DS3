#-------------------------------------------
#-- Ritualist Ellie
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400508_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400508_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400508_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400508_x0():
    """ State 0,1 """
    while True:
        call = t400508_x3()

# Client Player
def t400508_x1():
    """ State 0,1 """
    assert t400508_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400508_x2():
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
def t400508_x3():
    """ State 0,1 """
    call = t400508_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400508_x4():
    """ State 0,5 """
    while True:
        call = t400508_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400508_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400508_x6() # Attack Check
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
                call = t400508_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400508_x2() # Clear Talk State
    
# Interaction State
def t400508_x5():
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
def t400508_x6():
    """ State 0,6 """
    assert t400508_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400508_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400508_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400508_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0
    
# Menu Pre-loop
def t400508_x8():
    """ State 0,1 """
    assert t400508_x9()
    """ State 24 """
    return 0
    
def t400508_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Covenant
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 99062000, -1)
        
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 2, 15000010, -1)
        
        # Conjuration
        AddTalkListData(3, 99091100, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008240) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008240) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008240) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(4, 10010200, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Covenant
        if GetTalkListEntryResult() == 1:
            assert t400508_x12()
            continue
        # Purchase Item
        elif GetTalkListEntryResult() == 2:
            OpenRegularShop(280000, 280099)
            continue
        # Cojuration
        elif GetTalkListEntryResult() == 3:
            assert t400508_x20()
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008240, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400508_x10(text1=10122030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t400508_x10(text1=10122000, flag1=0, mode1=0)
                GetItemFromItemLot(90230)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400508_x10(text1=10122010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400508_x10(text1=10122020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400508_x10(text1=10122020, flag1=0, mode1=0)
            SetEventState(25008240, 0)
            return 0
        # Talk
        elif GetTalkListEntryResult() == 4:
            if GetEventStatus(25002006) == 1 and GetEventStatus(25008300) == 1:
                assert t400508_x10(text1=10022010, flag1=0, mode1=0)
            else:
                assert t400508_x10(text1=10022000, flag1=0, mode1=0)
                SetEventState(25008300, 1)
                
            continue
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

# Talk Function
def t400508_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400508_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400508_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------
# Covenant
#----------------------------------------------------
def t400508_x12():
    c1110()
    while True:
        ClearTalkListData()

        # Form Covenant
        AddTalkListDataIf(IsEquipmentIDObtained(2, 10180) == 0 and 
        IsEquipmentIDObtained(2, 10181) == 0 and 
        IsEquipmentIDObtained(2, 10182) == 0 and 
        IsEquipmentIDObtained(2, 10183) == 0 and 
        IsEquipmentIDObtained(2, 10184) == 0, 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Strengthen Bond - II
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10180) == 1, 3, 99062001, -1)
        
        # Strengthen Bond - III
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10181) == 1, 4, 99062001, -1)
        
        # Strengthen Bond - IV
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10182) == 1, 5, 99062001, -1)
        
        # Strengthen Bond - V
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10183) == 1, 6, 99062001, -1)
        
        # Strengthen Bond - None
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10180) == 0 and 
        IsEquipmentIDEquipped(2, 10181) == 0 and 
        IsEquipmentIDEquipped(2, 10182) == 0 and 
        IsEquipmentIDEquipped(2, 10183) == 0 and 
        IsEquipmentIDEquipped(2, 10184) == 0, 7, 99062001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001140)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            c1111(280100, 280199)
            continue
        # Strengthen Bond - II
        elif GetTalkListEntryResult() == 3:
            assert t400508_x60()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - III
        elif GetTalkListEntryResult() == 4:
            assert t400508_x61()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - IV
        elif GetTalkListEntryResult() == 5:
            assert t400508_x62()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - V
        elif GetTalkListEntryResult() == 6:
            assert t400508_x63()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - None
        elif GetTalkListEntryResult() == 7:
            assert t400508_x52(action1=99062005)
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
       
#----------------------------------------------------
# Conjuration
#----------------------------------------------------
def t400508_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Skeleton
        AddTalkListData(1, 99092000, -1)
        
        # Hollow
        AddTalkListData(2, 99092001, -1)
        
        # Hound
        AddTalkListData(3, 99092002, -1)
        
        # Warrior
        AddTalkListData(4, 99092003, -1)
        
        # Sentinel
        AddTalkListData(5, 99092004, -1)
        
        # Lycanthrope
        AddTalkListData(6, 99092005, -1)
        
        # Knight
        AddTalkListData(7, 99092006, -1)
        
        # Watcher
        AddTalkListData(8, 99092007, -1)
        
        # Gargoyle
        AddTalkListData(9, 99092008, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Skeleton
        if GetTalkListEntryResult() == 1:
            assert t400508_x21()
            continue
        # Hollow
        elif GetTalkListEntryResult() == 2:
            assert t400508_x22()
            continue
        # Hound
        elif GetTalkListEntryResult() == 3:
            assert t400508_x23()
            continue
        # Warrior
        elif GetTalkListEntryResult() == 4:
            assert t400508_x24()
            continue
        # Sentinel
        elif GetTalkListEntryResult() == 5:
            assert t400508_x25()
            continue
        # Lycanthrope
        elif GetTalkListEntryResult() == 6:
            assert t400508_x26()
            continue
        # Knight
        elif GetTalkListEntryResult() == 7:
            assert t400508_x27()
            continue
        # Watcher
        elif GetTalkListEntryResult() == 8:
            assert t400508_x28()
            continue
        # Gargoyle
        elif GetTalkListEntryResult() == 9:
            assert t400508_x29()
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

#----------------------------------------------------
# Conjuration - Skeleton
#----------------------------------------------------
def t400508_x21():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007700, 25007701, 25007702, 25007703, 25007704, 25007705, 25007706, 25007707, 25007708)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007710, 25007711, 25007712, 25007713, 25007714, 25007715, 25007716, 25007717, 25007718, 25007719, 25007709, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007710, 25007711, 25007712, 25007713, 25007714, 25007715, 25007716, 25007717, 25007718, 25007719, 25007709, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
        
#----------------------------------------------------
# Conjuration - Hollow
#----------------------------------------------------
def t400508_x22():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007720, 25007721, 25007722, 25007723, 25007724, 25007725, 25007726, 25007727, 25007728)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007730, 25007731, 25007732, 25007733, 25007734, 25007735, 25007736, 25007737, 25007738, 25007739, 25007729, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007730, 25007731, 25007732, 25007733, 25007734, 25007735, 25007736, 25007737, 25007738, 25007739, 25007729, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Conjuration - Hound
#----------------------------------------------------
def t400508_x23():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007740, 25007741, 25007742, 25007743, 25007744, 25007745, 25007746, 25007747, 25007748)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007750, 25007751, 25007752, 25007753, 25007754, 25007755, 25007756, 25007757, 25007758, 25007759, 25007749, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007750, 25007751, 25007752, 25007753, 25007754, 25007755, 25007756, 25007757, 25007758, 25007759, 25007749, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Conjuration - Warrior
#----------------------------------------------------
def t400508_x24():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007760, 25007761, 25007762, 25007763, 25007764, 25007765, 25007766, 25007767, 25007768)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007770, 25007771, 25007772, 25007773, 25007774, 25007775, 25007776, 25007777, 25007778, 25007779, 25007769, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007770, 25007771, 25007772, 25007773, 25007774, 25007775, 25007776, 25007777, 25007778, 25007779, 25007769, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Conjuration - Sentinel
#----------------------------------------------------
def t400508_x25():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007780, 25007781, 25007782, 25007783, 25007784, 25007785, 25007786, 25007787, 25007788)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007790, 25007791, 25007792, 25007793, 25007794, 25007795, 25007796, 25007797, 25007798, 25007799, 25007789, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007790, 25007791, 25007792, 25007793, 25007794, 25007795, 25007796, 25007797, 25007798, 25007799, 25007789, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Conjuration - Lycanthrope
#----------------------------------------------------
def t400508_x26():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007800, 25007801, 25007802, 25007803, 25007804, 25007805, 25007806, 25007807, 25007808)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007810, 25007811, 25007812, 25007813, 25007814, 25007815, 25007816, 25007817, 25007818, 25007819, 25007809, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007810, 25007811, 25007812, 25007813, 25007814, 25007815, 25007816, 25007817, 25007818, 25007819, 25007809, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Conjuration - Knight
#----------------------------------------------------
def t400508_x27():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007820, 25007821, 25007822, 25007823, 25007824, 25007825, 25007826, 25007827, 25007828)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007830, 25007831, 25007832, 25007833, 25007834, 25007835, 25007836, 25007837, 25007838, 25007839, 25007829, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007830, 25007831, 25007832, 25007833, 25007834, 25007835, 25007836, 25007837, 25007838, 25007839, 25007829, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Conjuration - Watcher
#----------------------------------------------------
def t400508_x28():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007840, 25007841, 25007842, 25007843, 25007844, 25007845, 25007846, 25007847, 25007848)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007850, 25007851, 25007852, 25007853, 25007854, 25007855, 25007856, 25007857, 25007858, 25007859, 25007849, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007850, 25007851, 25007852, 25007853, 25007854, 25007855, 25007856, 25007857, 25007858, 25007859, 25007849, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Conjuration - Gargoyle
#----------------------------------------------------
def t400508_x29():
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            assert t400508_x40(25007860, 25007861, 25007862, 25007863, 25007864, 25007865, 25007866, 25007867, 25007868)
            continue
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            assert t400508_x41(25007870, 25007871, 25007872, 25007873, 25007874, 25007875, 25007876, 25007877, 25007878, 25007879, 25007869, 0)
            continue
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            assert t400508_x41(25007870, 25007871, 25007872, 25007873, 25007874, 25007875, 25007876, 25007877, 25007878, 25007879, 25007869, 1)
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
def t400508_x40(flag1=_, flag2=_, flag3=_, flag4=_, flag5=_, flag6=_, flag7=_, flag8=_, flag9=_):
    c1110()
    while True:
        ClearTalkListData()

        # Body Emission: None
        AddTalkListData(1, 99091110, -1)
        
        # Body Emission: Fire
        AddTalkListData(2, 99091111, -1)
        
        # Body Emission: 
        #AddTalkListData(3, 99091112, -1)
        
        # Body Emission: 
        #AddTalkListData(4, 99091113, -1)
        
        # Body Emission: 
        #AddTalkListData(5, 99091114, -1)
        
        # Body Emission: 
        #AddTalkListData(6, 99091115, -1)
        
        # Body Emission: 
        #AddTalkListData(7, 99091116, -1)
        
        # Body Emission: 
        #AddTalkListData(8, 99091117, -1)
        
        # Body Emission: 
        #AddTalkListData(9, 99091118, -1)
        
        # Body Emission: 
        #AddTalkListData(10, 99091119, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Emission: None
        if GetTalkListEntryResult() == 1:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091210)
            return 0
        # Body Emission: Fire
        elif GetTalkListEntryResult() == 2:
            SetEventState(flag1, 1)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091211)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 3:
            SetEventState(flag1, 0)
            SetEventState(flag2, 1)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091212)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 4:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 1)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091213)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 5:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 1)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091214)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 6:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 1)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091215)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 7:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 1)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091216)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 8:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 1)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            assert t400508_x52(99091217)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 9:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 1)
            SetEventState(flag9, 0)
            assert t400508_x52(99091218)
            return 0
        # Body Emission: 
        elif GetTalkListEntryResult() == 10:
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 1)
            assert t400508_x52(99091219)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
          
#----------------------------------------------------
# Body Aura/Tint
#----------------------------------------------------
def t400508_x41(flag1=_, flag2=_, flag3=_, flag4=_, flag5=_, flag6=_, flag7=_, flag8=_, flag9=_, flag10=_, tint_flag=_, tint_value=_):
    c1110()
    while True:
        ClearTalkListData()

        # Body Aura: None
        AddTalkListData(1, 99091150, -1)
        
        # Body Aura: Red
        AddTalkListData(2, 99091151, -1)
        
        # Body Aura: Orange
        AddTalkListData(3, 99091152, -1)
        
        # Body Aura: Yellow
        AddTalkListData(4, 99091153, -1)
        
        # Body Aura: Green
        AddTalkListData(5, 99091154, -1)
        
        # Body Aura: Cyan
        AddTalkListData(6, 99091155, -1)
        
        # Body Aura: Blue
        AddTalkListData(7, 99091156, -1)
        
        # Body Aura: Indigo
        AddTalkListData(8, 99091157, -1)
        
        # Body Aura: Violet
        AddTalkListData(9, 99091158, -1)
        
        # Body Aura: Pink
        AddTalkListData(10, 99091159, -1)
        
        # Body Aura: Rainbow
        AddTalkListData(11, 99091160, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Body Aura: None
        if GetTalkListEntryResult() == 1:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091250)
            return 0
        # Body Aura: Red
        elif GetTalkListEntryResult() == 2:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 1)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091251)
            return 0
        # Body Aura: Orange
        elif GetTalkListEntryResult() == 3:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 1)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091252)
            return 0
        # Body Aura: Yellow
        elif GetTalkListEntryResult() == 4:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 1)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091253)
            return 0
        # Body Aura: Green
        elif GetTalkListEntryResult() == 5:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 1)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091254)
            return 0
        # Body Aura: Cyan
        elif GetTalkListEntryResult() == 6:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 1)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091255)
            return 0
        # Body Aura: Blue
        elif GetTalkListEntryResult() == 7:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 1)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091256)
            return 0
        # Body Aura: Indigo
        elif GetTalkListEntryResult() == 8:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 1)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091257)
            return 0
        # Body Aura: Violet
        elif GetTalkListEntryResult() == 9:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 1)
            SetEventState(flag9, 0)
            SetEventState(flag10, 0)
            assert t400508_x52(99091258)
            return 0
        # Body Aura: Pink
        elif GetTalkListEntryResult() == 10:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 1)
            SetEventState(flag10, 0)
            assert t400508_x52(99091259)
            return 0
        # Body Aura: Rainbow
        elif GetTalkListEntryResult() == 11:
            SetEventState(tint_flag, tint_value)
            SetEventState(flag1, 0)
            SetEventState(flag2, 0)
            SetEventState(flag3, 0)
            SetEventState(flag4, 0)
            SetEventState(flag5, 0)
            SetEventState(flag6, 0)
            SetEventState(flag7, 0)
            SetEventState(flag8, 0)
            SetEventState(flag9, 0)
            SetEventState(flag10, 1)
            assert t400508_x52(99091260)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
    
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Affix
def t400508_x50(old_item=_, new_item=_, cost=_, remove_cost=_):
    call = t400508_x51(action2=99016010)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 382, 3, cost, 0) == 1:
            assert t400508_x52(action1=99016012)
        else:
            PlayerEquipmentQuantityChange(3, 382, remove_cost)
            PlayerEquipmentQuantityChange(2, old_item, -1)
            PlayerEquipmentQuantityChange(2, new_item, 1)
            
            assert t400508_x52(action1=99016013)
    elif call.Get() == 1:
        pass
    return 0
    
def t400508_x51(action2=_):
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
        
def t400508_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    
# Strengthen Bond - II
def t400508_x60():
    call = t400508_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 382, 3, 9, 0) == 1:
            assert t400508_x52(action1=99062260)
        else:
            PlayerEquipmentQuantityChange(3, 382, -10)
            PlayerEquipmentQuantityChange(2, 10180, -1)
            PlayerEquipmentQuantityChange(2, 10181, 1)
            
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - III
def t400508_x61():
    call = t400508_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 382, 3, 19, 0) == 1:
            assert t400508_x52(action1=99062261)
        else:
            PlayerEquipmentQuantityChange(3, 382, -20)
            PlayerEquipmentQuantityChange(2, 10181, -1)
            PlayerEquipmentQuantityChange(2, 10182, 1)
            
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - IV
def t400508_x62():
    call = t400508_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 382, 3, 29, 0) == 1:
            assert t400508_x52(action1=99062262)
        else:
            PlayerEquipmentQuantityChange(3, 382, -30)
            PlayerEquipmentQuantityChange(2, 10182, -1)
            PlayerEquipmentQuantityChange(2, 10183, 1)
            
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - V
def t400508_x63():
    call = t400508_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 382, 3, 49, 0) == 1:
            assert t400508_x52(action1=99062263)
        else:
            PlayerEquipmentQuantityChange(3, 382, -50)
            PlayerEquipmentQuantityChange(2, 10183, -1)
            PlayerEquipmentQuantityChange(2, 10184, 1)
            
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
