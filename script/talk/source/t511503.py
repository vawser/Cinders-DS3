#------------------------------
# Slave Knight Gael - Boss Resurrection
#------------------------------
# -*- coding: utf-8 -*-
def t511503_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t511503_x14()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t511503_x15()
        assert not IsClientPlayer()

def t511503_x0(action=_):
    """State 0,1"""
    OpenGenericDialog(8, action, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t511503_x1(action_button=_, flag=_):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(action_button):
            break
    """State 4"""
    return 0

def t511503_x2():
    """State 0,1"""
    if not CheckSpecificPersonTalkHasEnded(0):
        """State 7"""
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """State 6"""
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """State 2"""
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """State 3"""
        ForceCloseGenericDialog()
    else:
        pass
    """State 4"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 5"""
        ForceCloseMenu()
    else:
        pass
    """State 8"""
    return 0

def t511503_x3():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Talk to Player
def t511503_x4(text=_, end_mode=_):
    """State 0,5"""
    assert t511503_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not end_mode:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

# Talk to Player
def t511503_x5(text=_, end_mode=_):
    """State 0,5"""
    assert t511503_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not end_mode:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

# Talk to Player
def t511503_x6(text=_, end_mode=_):
    """State 0,4"""
    assert t511503_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not end_mode:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

# Dialog
def t511503_x7(action=_):
    """State 0,1"""
    OpenGenericDialog(7, action, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t511503_x9():
    assert t511503_x50()
    """State 24"""
    return 0

def t511503_x10():
    """State 0,6"""
    assert t511503_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1"""
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """State 2"""
    if GetDistanceToPlayer() < 10:
        """State 4,8"""
        call = t511503_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 7"""
            assert t511503_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t511503_x12():
    """State 0,1,2"""
    assert t511503_x2()
    """State 3"""
    return 0

def t511503_x13():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 2,5"""
        call = t511503_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 4"""
            Label('L0')
            assert t511503_x2()
    else:
        """State 3"""
        Goto('L0')
    """State 6"""
    return 0

def t511503_x14():
    """State 0"""
    while True:
        """State 1"""
        call = t511503_x16()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)
        """State 2"""
        call = t511503_x17()
        assert GetEventStatus(1000) == 1 or GetEventStatus(1001) == 1 or GetEventStatus(1002) == 1
    """Unused"""
    """State 3"""
    return 0

def t511503_x15():
    """State 0,1"""
    assert t511503_x2()
    """State 2"""
    return 0

def t511503_x16():
    """State 0,1"""
    call = t511503_x26()
    assert CheckSelfDeath() == 1
    """State 2"""
    Quit()
    """Unused"""
    """State 3"""
    return 0

def t511503_x17():
    """State 0"""
    Quit()
    """Unused"""
    """State 1"""
    return 0

def t511503_x18():
    return 0

def t511503_x19():
    return 0

def t511503_x26():
    """State 0"""
    while True:
        """State 5"""
        call = t511503_x1(6052, 6052)
        
        if call.Done():
            """State 3"""
            call = t511503_x9()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t511503_x10()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t511503_x13()
                if call.Done() and (GetDistanceToPlayer() < 7.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t511503_x12()
    Quit()
    """Unused"""
    """State 6"""
    return 0

#-------------------------------------
# Menu
#-------------------------------------
def t511503_x50():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Forge with Darkness
        # AddTalkListData(1, 80002000, -1)
        
        # Resurrection
        AddTalkListData(2, 80050000, -1)
        
        # Achievements
        # AddTalkListData(3, 80030000, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        
        # Forge with Darkness
        if GetTalkListEntryResult() == 1:
            OpenTranspositionShop(8100000, 8109999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        # Resurrection
        elif GetTalkListEntryResult() == 2:
            assert t511503_x51()
            return 0
        # Achievements
        elif GetTalkListEntryResult() == 3:
            return 0
        else:
            return 0
            
        assert CheckSpecificPersonTalkHasEnded(0) == 1
        
#------------------------------------------
# Resurrection
#------------------------------------------
def t511503_x51():
    while True:
        ClearTalkListData()
        
        # High Wall of Lothric   
        AddTalkListData(1, 80050010, -1)

        # Lothric Castle
        AddTalkListData(2, 80050011, -1)
        
        # Undead Settlement
        AddTalkListData(3, 80050012, -1)
        
        # Cathedral of the Deep 
        AddTalkListData(4, 80050013, -1)
        
        # Swamps of Farron
        AddTalkListData(5, 80050014, -1)
        
        # Depths of Carthus
        AddTalkListData(6, 80050015, -1)
        
        # Irithyll of the Boreal Valley
        AddTalkListData(7, 80050016, -1)
        
        # Profaned Depths
        AddTalkListData(8, 80050017, -1)
        
        # Blighted Cemetery
        AddTalkListData(14, 80050023, -1)
        
        # Archdragon Peak
        AddTalkListData(9, 80050018, -1)
        
        # Painted World of Ariandel
        AddTalkListData(10, 80050019, -1)
        
        # Dreg Heap
        AddTalkListData(11, 80050020, -1)
        
        # The Ringed City
        AddTalkListData(12, 80050021, -1)
        
        # Convergence of the Kingdoms
        AddTalkListData(15, 80050024, -1)
        
        # World's End
        AddTalkListData(13, 80050022, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        if GetTalkListEntryResult() == 1:
            assert t511503_x52()
            continue
        elif GetTalkListEntryResult() == 2:
            assert t511503_x53()
            continue
        elif GetTalkListEntryResult() == 3:
            assert t511503_x54()
            continue
        elif GetTalkListEntryResult() == 4:
            assert t511503_x55()
            continue
        elif GetTalkListEntryResult() == 5:
            assert t511503_x56()
            continue
        elif GetTalkListEntryResult() == 6:
            assert t511503_x57()
            continue
        elif GetTalkListEntryResult() == 7:
            assert t511503_x58()
            continue
        elif GetTalkListEntryResult() == 8:
            assert t511503_x59()
            continue
        elif GetTalkListEntryResult() == 9:
            assert t511503_x60()
            continue
        elif GetTalkListEntryResult() == 10:
            assert t511503_x61()
            continue
        elif GetTalkListEntryResult() == 11:
            assert t511503_x62()
            continue
        elif GetTalkListEntryResult() == 12:
            assert t511503_x63()
            continue
        elif GetTalkListEntryResult() == 13:
            assert t511503_x64()
            continue
        elif GetTalkListEntryResult() == 14:
            assert t511503_x65()
            continue
        elif GetTalkListEntryResult() == 15:
            assert t511503_x66()
            continue
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0
            
    return 0
            
# High Wall of Lothric
def t511503_x52():
    while True:
        ClearTalkListData()
        
        # Vordt of the Boreal Valley
        AddTalkListDataIf(GetEventStatus(9301) == 1, 1, 80050100, -1)
        # Oceiros, the Consumed King
        AddTalkListDataIf(GetEventStatus(9302) == 1, 2, 80050101, -1)
        # Dancer of the Boreal Valley
        AddTalkListDataIf(GetEventStatus(9300) == 1, 3, 80050102, -1)

        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Vordt of the Boreal Valley
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13000800, 0, 0, 0, 0, 25000151)
            return 0
        # Oceiros, the Consumed King
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13000830, 0, 0, 0, 0, 25000150)
            return 0
        # Dancer of the Boreal Valley
        elif GetTalkListEntryResult() == 3:
            assert t511503_x100(13000890, 0, 0, 0, 0, 25000152)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Lothric Castle
def t511503_x53():
    while True:
        ClearTalkListData()
        
        # Dragonslayer Armour
        AddTalkListDataIf(GetEventStatus(9308) == 1, 1, 80050108, -1)
        # Twisted Knight
        AddTalkListDataIf(GetEventStatus(9345) == 1, 3, 80050126, -1)
        # Mirror Knight
        AddTalkListDataIf(GetEventStatus(9341) == 1, 4, 80050127, -1)
        # The Twin Princes
        AddTalkListDataIf(GetEventStatus(9309) == 1, 2, 80050109, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Dragonslayer Armour
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13010800, 0, 0, 0, 0, 25000158)
            return 0
        # The Twin Princes
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13410830, 0, 0, 0, 0, 25000159)
            return 0
        # Twisted Knight
        elif GetTalkListEntryResult() == 3:
            assert t511503_x100(13010850, 0, 0, 0, 0, 25000177)
            return 0
        # Mirror Knight
        elif GetTalkListEntryResult() == 4:
            assert t511503_x100(13410870, 13410871, 13410872, 0, 0, 25000178)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
 
# Undead Settlement
def t511503_x54():
    while True:
        ClearTalkListData()
        
        # Curse-rotted Greatwood
        AddTalkListDataIf(GetEventStatus(9303) == 1, 1, 80050103, -1)
        # Aborr
        AddTalkListDataIf(GetEventStatus(9342) == 1, 2, 80050124, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Curse-rotted Greatwood
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13100800, 0, 0, 0, 0, 25000153)
            return 0
        # Aborr
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13100870, 13100871, 0, 0, 0, 25000175)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Cathedral of the Deep 
def t511503_x55():
    while True:
        ClearTalkListData()
        
        # Deacons of the Deep
        AddTalkListDataIf(GetEventStatus(9311) == 1, 1, 80050110, -1)
        # Cathedral Guardian
        AddTalkListDataIf(GetEventStatus(9340) == 1, 2, 80050128, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Deacons of the Deep
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13500800, 0, 0, 0, 0, 25000160)
            return 0
        # Cathedral Guardian
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13500810, 0, 0, 0, 0, 25000179)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Swamps of Farron
def t511503_x56():
    while True:
        ClearTalkListData()
        
        # Crystal Sage
        AddTalkListDataIf(GetEventStatus(9306) == 1, 1, 80050106, -1)
        # Abyss Watchers
        AddTalkListDataIf(GetEventStatus(9307) == 1, 2, 80050107, -1)

        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Crystal Sage
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13300850, 0, 0, 0, 0, 25000156)
            return 0
        # Abyss Watchers
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13300800, 0, 0, 0, 0, 25000157)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Depths of Carthus
def t511503_x57():
    while True:
        ClearTalkListData()
        
        # Wolnir
        AddTalkListDataIf(GetEventStatus(9315) == 1, 1, 80050113, -1)
        # Old Demon King
        AddTalkListDataIf(GetEventStatus(9317) == 1, 2, 80050114, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Wolnir
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13801800, 0, 0, 0, 0, 25000163)
            return 0
        # Old Demon King
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13800830, 0, 0, 0, 0, 25000164)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Irithyll of the Boreal Valley
def t511503_x58():
    while True:
        ClearTalkListData()
        
        # Pontiff Sulyvahn
        AddTalkListDataIf(GetEventStatus(9313) == 1, 1, 80050111, -1)
        # Aldrich
        AddTalkListDataIf(GetEventStatus(9314) == 2, 2, 80050112, -1)
        # Lordran Remnants
        AddTalkListDataIf(GetEventStatus(9323) == 2, 3, 80050129, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Pontiff Sulyvahn
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13700850, 0, 0, 0, 0, 25000161)
            return 0
        # Aldrich
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13700800, 0, 0, 0, 0, 25000162)
            return 0
        # Lordran Remnants
        elif GetTalkListEntryResult() == 3:
            assert t511503_x100(13700870, 13700871, 13700872, 13700873, 0, 25000180)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Profaned Depths
def t511503_x59():
    while True:
        ClearTalkListData()
        
        # Yhorm the Giant
        AddTalkListDataIf(GetEventStatus(9318) == 1, 1, 80050115, -1)
        # Fallen Protector
        AddTalkListDataIf(GetEventStatus(9346) == 1, 2, 80050130, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Yhorm the Giant
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13900800, 0, 0, 0, 0, 25000165)
            return 0
        # Fallen Protector
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13900860, 13900862, 0, 0, 0, 25000181)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Archdragon Peak
def t511503_x60():
    while True:
        ClearTalkListData()
        
        # Ancient Wyvern
        AddTalkListDataIf(GetEventStatus(9305) == 1, 1, 80050105, -1)
        # The Nameless King
        AddTalkListDataIf(GetEventStatus(9304) == 1, 2, 80050104, -1)
        # Trio of Explorers
        AddTalkListDataIf(GetEventStatus(9344) == 1, 3, 80050125, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Ancient Wyvern
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(13200800, 0, 0, 0, 0, 25000155)
            return 0
        # The Nameless King
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(13200850, 0, 0, 0, 0, 25000154)
            return 0
        # Trio of Explorers
        elif GetTalkListEntryResult() == 3:
            assert t511503_x100(13200870, 13200871, 13200872, 0, 0, 25000176)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Painted World of Ariandel
def t511503_x61():
    while True:
        ClearTalkListData()
        
        # Sister Friede
        AddTalkListDataIf(GetEventStatus(9322) == 1, 1, 80050116, -1)
        # Princess Yngvil
        AddTalkListDataIf(GetEventStatus(9343) == 1, 2, 80050132, -1)
        # Prince Dorthinus
        AddTalkListDataIf(GetEventStatus(9328) == 1, 3, 80050131, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Sister Friede
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(14500800, 0, 0, 0, 0, 25000166)
            return 0
        # Princess Yngvil
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(14500860, 0, 0, 0, 0, 25000183)
            return 0
        # Prince Dorthinus
        elif GetTalkListEntryResult() == 3:
            assert t511503_x100(14500960, 0, 0, 0, 0, 25000182)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Dreg Heap
def t511503_x62():
    while True:
        ClearTalkListData()
        
        # The Demon Prince
        AddTalkListDataIf(GetEventStatus(9324) == 1, 1, 80050118, -1)

        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # The Demon Prince
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(15000800, 0, 0, 0, 0, 25000168)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# The Ringed City
def t511503_x63():
    while True:
        ClearTalkListData()
        
        # Halflight, Spear of the Church
        AddTalkListDataIf(GetEventStatus(9325) == 1, 1, 80050119, -1)
        # Darkeater Midir
        AddTalkListDataIf(GetEventStatus(9326) == 2, 2, 80050120, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Halflight, Spear of the Church
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(15100800, 0, 0, 0, 0, 25000169)
            return 0
        # Darkeater Midir
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(15100850, 0, 0, 0, 0, 25000170)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# World's End
def t511503_x64():
    while True:
        ClearTalkListData()
        
        # Slave Knight Gael
        AddTalkListDataIf(GetEventStatus(9327) == 1, 1, 80050121, -1)

        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Slave Knight Gael
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(15110800, 0, 0, 0, 0, 25000171)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0

# Blighted Cemetery
def t511503_x65():
    while True:
        ClearTalkListData()
        
        # Champion Gundyr
        AddTalkListDataIf(GetEventStatus(9319) == 1, 1, 80050122, -1)
        # The Marauder
        AddTalkListDataIf(GetEventStatus(9348) == 1, 2, 80050133, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Champion Gundyr
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(14000800, 0, 0, 0, 0, 25000172)
            return 0
        # The Marauder
        elif GetTalkListEntryResult() == 2:
            assert t511503_x100(14000850, 0, 0, 0, 0, 25000184)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Convergence of the Kingdoms
def t511503_x66():
    while True:
        ClearTalkListData()
        
        # Soul of Cinder
        AddTalkListDataIf(GetEventStatus(9321) == 1, 1, 80050123, -1)

        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
         
        # Soul of Cinder
        if GetTalkListEntryResult() == 1:
            assert t511503_x100(14100800, 0, 0, 0, 0, 25000173)
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0

    return 0
    
# Boss Menu 
def t511503_x100(flag1=_, flag2=_, flag3=_, flag4=_, flag5=_, teleport_flag=_):
    while True:
        ClearTalkListData()
        
        # Resurrect
        AddTalkListDataIf(GetEventStatus(flag1) == 1, 1, 80050001, -1)
        # Travel
        AddTalkListData(2, 80050002, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        
        # Resurrect
        if GetTalkListEntryResult() == 1:
            # Resurrect
            if ComparePlayerInventoryNumber(3, 2180, 4, 1, 0) == 1:
                call = t511503_x110(80051000)
                
                if call.Done() and GetGenericDialogButtonResult() == 1:
                    PlayerEquipmentQuantityChange(3, 2180, -1)
                    SetEventState(flag1, 0)
                    SetEventState(flag2, 0)
                    SetEventState(flag3, 0)
                    SetEventState(flag4, 0)
                    SetEventState(flag5, 0)
                elif call.Done():
                    return 0
            else:
                assert t511503_x110(80051001)
                return 0
        # Travel
        elif GetTalkListEntryResult() == 2:
            call = t511503_x110(80051010)
                
            if call.Done() and GetGenericDialogButtonResult() == 1:
                SetEventState(teleport_flag, 1)
            elif call.Done():
                return 0
                
            return 0
        elif GetTalkListEntryResult() == 99 or not GetTalkListEntryResult():
            return 0
        
        return 0
        
def t511503_x110(action=_):
    OpenGenericDialog(8, action, 3, 4, 2)
    
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    
    if GetGenericDialogButtonResult() == 1:
        return 0
    else:
        return 1