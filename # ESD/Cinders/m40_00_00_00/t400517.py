# -*- coding: utf-8 -*-
def t400517_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400517_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400517_x1()
        assert not IsClientPlayer()

def t400517_x0():
    """State 0,1"""
    t400517_x3()
    Quit()

def t400517_x1():
    """State 0,1"""
    assert t400517_x2()
    """State 2"""
    return 0

def t400517_x2():
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

def t400517_x3():
    """State 0,1"""
    call = t400517_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400517_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400517_x5()
        if call.Done():
            """State 3"""
            call = t400517_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400517_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 2 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t400517_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400517_x2()
    Quit()

def t400517_x5():
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6120):
            break
    """State 4"""
    return 0

def t400517_x6():
    """State 0,6"""
    assert t400517_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400517_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400517_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400517_x2()
    """State 6"""
    return 0

def t400517_x8():
    """State 0,1"""
    assert t400517_x9()
    """State 24"""
    return 0

# Main Menu
def t400517_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Enter the Gauntlet (Set)
        AddTalkListDataIf(GetEventStatus(25003200) == 1, 60, 99060110, -1)
        # Enter the Gauntlet (Random)
        AddTalkListDataIf(GetEventStatus(25003201) == 1, 61, 99060110, -1)
        # Enter the Gauntlet (Endless)
        AddTalkListDataIf(GetEventStatus(25003202) == 1, 62, 99060110, -1)
        # Enter the Gauntlet (Reverse Set)
        AddTalkListDataIf(GetEventStatus(25003203) == 1, 63, 99060110, -1)
        # Enter the Gauntlet (Reverse Endless)
        AddTalkListDataIf(GetEventStatus(25003204) == 1, 64, 99060110, -1)
        # Enter the Gauntlet (Boss Select)
        AddTalkListDataIf(GetEventStatus(25003205) == 1, 65, 99060110, -1)
        
        # Gauntlet Configuration
        AddTalkListData(53, 99060126, -1)
        
        # Browse Inventory
        AddTalkListData(54, 99060127, -1)
        
        # Reallocate attributes
        AddTalkListData(55, 15027010, -1)
        
        # Talk
        AddTalkListData(2, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Gauntlet Configuration
        if GetTalkListEntryResult() == 53:
            """State 2"""
            assert t400517_x40()
        # Browse Inventory
        elif GetTalkListEntryResult() == 54:
            """State 3"""
            assert t400517_x50()
        # Reallocate attributes
        elif GetTalkListEntryResult() == 55:
            """State 4"""
            ReallocateAttributes()
            SetEventState(25009400, 1)
        # Enter the Gauntlet (Set)
        elif GetTalkListEntryResult() == 60:
            """State 5"""
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet (Random)
        elif GetTalkListEntryResult() == 61:
            """State 6"""
            GiveSpEffectToPlayer(260120010)
            return 0
        # Enter the Gauntlet (Endless)
        elif GetTalkListEntryResult() == 62:
            """State 7"""
            GiveSpEffectToPlayer(260120020)
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet (Reverse Set)
        elif GetTalkListEntryResult() == 63:
            """State 8"""
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet (Reverse Endless)
        elif GetTalkListEntryResult() == 64:
            """State 9"""
            GiveSpEffectToPlayer(260120020)
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet (Boss Select)
        elif GetTalkListEntryResult() == 65:
            """State 10"""
            assert t400517_x60()
        # Talk
        elif GetTalkListEntryResult() == 2:
            """State 11"""
            assert t400517_x10(text1=10134000, flag1=0, mode1=0)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 12"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 13"""
            return 0

def t400517_x10(text1=10134000, flag1=0, mode1=0):
    """State 0,4"""
    assert t400517_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t400517_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Gauntlet Type
def t400517_x30():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Ordered
        AddTalkListDataIf(not GetEventStatus(25003200), 1, 99060150, -1)
        
        # Random
        AddTalkListDataIf(not GetEventStatus(25003201), 2, 99060151, -1)
        
        # Endless
        AddTalkListDataIf(not GetEventStatus(25003202), 3, 99060152, -1)
        
        # Reverse Ordered
        AddTalkListDataIf(not GetEventStatus(25003203), 4, 99060153, -1)
        
        # Reverse Endless
        AddTalkListDataIf(not GetEventStatus(25003204), 5, 99060154, -1)
        
        # Boss Select
        AddTalkListDataIf(not GetEventStatus(25003205), 6, 99060155, -1)
        
        # Return
        AddTalkListData(99, 15000006, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Ordered
        if GetTalkListEntryResult() == 1:
            """State 2"""
            OpenGenericDialog(1, 99060160, 0, 0, 0)
            SetEventState(25003200, 1)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020)
        # Random
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenGenericDialog(1, 99060161, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 1)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020)
        # Endless
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            OpenGenericDialog(1, 99060162, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 1)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020)
        # Reverse Ordered
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            OpenGenericDialog(1, 99060163, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 1)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020)
        # Reverse Endless
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            OpenGenericDialog(1, 99060164, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 1)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020)
        # Boss Select
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            OpenGenericDialog(1, 99060165, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 1)
            GiveSpEffectToPlayer(260120020)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 8"""
            ReportConversationEndToHavokBehavior()
            return 0

# Gauntlet Configuration
def t400517_x40():
    """State 0,8"""
    MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        """State 2"""
        
        # Switch Gauntlet Type
        AddTalkListData(1, 99060125, -1)
        
        # Reset Progress
        AddTalkListData(2, 15013005, -1)
        
        # Enable DLC Bosses
        AddTalkListDataIf(GetEventStatus(25009805) == 1, 3, 99060128, -1)
        
        # Disable DLC Bosses
        AddTalkListDataIf(not GetEventStatus(25009805), 4, 99060129, -1)
        
        # Return
        AddTalkListData(99, 15000006, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 3"""
        ShowShopMessage(1)
        
        # Switch Gauntlet Type
        if GetTalkListEntryResult() == 1:
            """State 4"""
            assert t400517_x30()
        # Reset Progress
        elif GetTalkListEntryResult() == 2:
            """State 5"""
            ClearTalkListData()
            
            # Yes
            AddTalkListData(1, 15013006, -1)
            
            # No
            AddTalkListData(2, 15013007, -1)
            
            OpenConversationChoicesMenu(0)
            
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """State 6"""
            if GetTalkListEntryResult() == 1:
                """State 7"""
                GiveSpEffectToPlayer(260120020)
                # Progress reset.
                OpenGenericDialog(1, 15013008, 0, 0, 0)
                return 0
            else:
                """State 9"""
                return 0
        # Enable DLC Bosses
        elif GetTalkListEntryResult() == 3:
            """State 10"""
            OpenGenericDialog(1, 99060130, 0, 0, 0)
            SetEventState(25009805, 0)
        # Disable DLC Bosses
        elif GetTalkListEntryResult() == 4:
            """State 11"""
            OpenGenericDialog(1, 99060131, 0, 0, 0)
            SetEventState(25009805, 1)
        # Return
        elif GetTalkListEntryResult() == 99:
            """State 12"""
            ReportConversationEndToHavokBehavior()
            return 0

# Browse Inventory
def t400517_x50():
    """State 0,8"""
    MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        """State 2"""
        
        # Browse Weapons
        AddTalkListData(1, 15013001, -1)
        
        # Browse Spells
        AddTalkListData(2, 15013002, -1)
        
        # Browse Armor
        AddTalkListData(3, 15013003, -1)
        
        # Browse Accessories
        AddTalkListData(4, 15013004, -1)
        
        # Browse Covenant Accessories
        AddTalkListData(6, 15013011, -1)
        
        # Browse Items
        AddTalkListData(5, 15013009, -1)
        
        # Return
        AddTalkListData(99, 15000006, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 3"""
        ShowShopMessage(1)
        
        # Browse Weapons
        if GetTalkListEntryResult() == 1:
            """State 4"""
            OpenTranspositionShop(800000, 800999)
        # Browse Spells
        elif GetTalkListEntryResult() == 2:
            """State 5"""
            OpenTranspositionShop(803000, 803999)
        # Browse Armor
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            OpenTranspositionShop(801000, 801999)
        # Browse Accessories
        elif GetTalkListEntryResult() == 4:
            """State 7"""
            OpenTranspositionShop(802000, 802999)
        # Browse Covenant Accessories
        elif GetTalkListEntryResult() == 6:
            """State 9"""
            OpenTranspositionShop(804500, 804699)
        # Browse Items
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            OpenRegularShop(804000, 804499)
        # Return
        elif GetTalkListEntryResult() == 99:
            """State 11"""
            ReportConversationEndToHavokBehavior()
            return 0

# Boss Select
def t400517_x60():
    """State 0,8"""
    MainBonfireMenuFlag()
    """State 1"""
    ClearTalkListData()
    """State 2"""
    
    # Corrupted Gundyr
    AddTalkListDataIf(not GetEventStatus(25002001), 1, 99060200, -1)
    
    # Vordt of the Boreal Valley
    AddTalkListDataIf(not GetEventStatus(25002002), 2, 99060201, -1)
    
    # Curse-rotted Greatwood
    AddTalkListDataIf(not GetEventStatus(25002003), 3, 99060202, -1)
    
    # Crystal Sage
    AddTalkListDataIf(not GetEventStatus(25002004), 4, 99060203, -1)
    
    # Deacons of the Deep 
    AddTalkListDataIf(not GetEventStatus(25002005), 5, 99060204, -1)
    
    # Abyss Watchers
    AddTalkListDataIf(not GetEventStatus(25002006), 6, 99060205, -1)
    
    # High Lord Wolnir
    AddTalkListDataIf(not GetEventStatus(25002007), 7, 99060206, -1)
    
    # Old Demon King
    AddTalkListDataIf(not GetEventStatus(25002008), 8, 99060207, -1)
    
    # Pontiff Sulyvahn
    AddTalkListDataIf(not GetEventStatus(25002009), 9, 99060208, -1)
    
    # Aldrich
    AddTalkListDataIf(not GetEventStatus(25002010), 10, 99060209, -1)
    
    # Yhorm the Giant
    AddTalkListDataIf(not GetEventStatus(25002011), 11, 99060210, -1)
    
    # Dancer of the Boreal Valley
    AddTalkListDataIf(not GetEventStatus(25002012), 12, 99060211, -1)
    
    # Oceiros, the Consumed King
    AddTalkListDataIf(not GetEventStatus(25002013), 13, 99060212, -1)
    
    # Dragonslayer Armour
    AddTalkListDataIf(not GetEventStatus(25002014), 14, 99060213, -1)
    
    # Ancient Wyvern
    AddTalkListDataIf(not GetEventStatus(25002015), 15, 99060214, -1)
    
    # Nameless King
    AddTalkListDataIf(not GetEventStatus(25002016), 16, 99060215, -1)
    
    # Champion Gundyr
    AddTalkListDataIf(not GetEventStatus(25002017), 17, 99060216, -1)
    
    # Twin Princes
    AddTalkListDataIf(not GetEventStatus(25002018), 18, 99060217, -1)
    
    # Soul of Cinder
    AddTalkListDataIf(not GetEventStatus(25002019), 19, 99060218, -1)
    
    # Sister Friede
    AddTalkListDataIf(not GetEventStatus(25002020) and not GetEventStatus(25009805), 20, 99060219, -1)
    
    # Lordran Remnants
    AddTalkListDataIf(not GetEventStatus(25002021), 21, 99060220, -1)
    
    # Demon Prince
    AddTalkListDataIf(not GetEventStatus(25002022) and not GetEventStatus(25009805), 22, 99060221, -1)
    
    # Darkeater Midir
    AddTalkListDataIf(not GetEventStatus(25002023) and not GetEventStatus(25009805), 23, 99060222, -1)
    
    # Slave Knight Gael
    AddTalkListDataIf(not GetEventStatus(25002024) and not GetEventStatus(25009805), 24, 99060223, -1)
    
    # Halflight
    AddTalkListDataIf(not GetEventStatus(25002025) and not GetEventStatus(25009805), 25, 99060224, -1)
    
    # Prince Dorthinus
    AddTalkListDataIf(not GetEventStatus(25002026) and not GetEventStatus(25009805), 26, 99060225, -1)
    
    # Cathedral Guardian
    AddTalkListDataIf(not GetEventStatus(25002027), 27, 99060226, -1)
    
    # Mirror Knight
    AddTalkListDataIf(not GetEventStatus(25002028), 28, 99060227, -1)
    
    # Aborr
    AddTalkListDataIf(not GetEventStatus(25002029), 29, 99060228, -1)
    
    # Princess Yngvil
    AddTalkListDataIf(not GetEventStatus(25002030) and not GetEventStatus(25009805), 30, 99060229, -1)
    
    # Trio of Explorers
    AddTalkListDataIf(not GetEventStatus(25002031), 31, 99060230, -1)
    
    # Twisted Knight
    AddTalkListDataIf(not GetEventStatus(25002032), 32, 99060231, -1)
    
    # Fallen Protector
    AddTalkListDataIf(not GetEventStatus(25002033), 33, 99060232, -1)
    
    # The Marauder
    AddTalkListDataIf(not GetEventStatus(25002035), 35, 99060234, -1)
    
    # Return
    AddTalkListData(99, 15000006, -1)
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 3"""
    ShowShopMessage(1)
    
    # Corrupted Gundyr
    if GetTalkListEntryResult() == 1:
        """State 4"""
        GiveSpEffectToPlayer(260100010)
        return 0
    # Vordt of the Boreal Valley
    elif GetTalkListEntryResult() == 2:
        """State 5"""
        GiveSpEffectToPlayer(260100020)
        return 0
    # Curse-rotted Greatwood
    elif GetTalkListEntryResult() == 3:
        """State 6"""
        GiveSpEffectToPlayer(260100030)
        return 0
    # Crystal Sage
    elif GetTalkListEntryResult() == 4:
        """State 7"""
        GiveSpEffectToPlayer(260100040)
        return 0
    # Deacons of the Deep 
    elif GetTalkListEntryResult() == 5:
        """State 9"""
        GiveSpEffectToPlayer(260100050)
        return 0
    # Abyss Watchers
    elif GetTalkListEntryResult() == 6:
        """State 10"""
        GiveSpEffectToPlayer(260100060)
        return 0
    # High Lord Wolnir
    elif GetTalkListEntryResult() == 7:
        """State 11"""
        GiveSpEffectToPlayer(260100070)
        return 0
    # Old Demon King
    elif GetTalkListEntryResult() == 8:
        """State 12"""
        GiveSpEffectToPlayer(260100080)
        return 0
    # Pontiff Sulyvahn
    elif GetTalkListEntryResult() == 9:
        """State 13"""
        GiveSpEffectToPlayer(260100090)
        return 0
    # Aldrich
    elif GetTalkListEntryResult() == 10:
        """State 14"""
        GiveSpEffectToPlayer(260100100)
        return 0
    # Yhorm the Giant
    elif GetTalkListEntryResult() == 11:
        """State 15"""
        GiveSpEffectToPlayer(260100110)
        return 0
    # Dancer of the Boreal Valley
    elif GetTalkListEntryResult() == 12:
        """State 16"""
        GiveSpEffectToPlayer(260100120)
        return 0
    # Oceiros, the Consumed King
    elif GetTalkListEntryResult() == 13:
        """State 17"""
        GiveSpEffectToPlayer(260100130)
        return 0
    # Dragonslayer Armour
    elif GetTalkListEntryResult() == 14:
        """State 18"""
        GiveSpEffectToPlayer(260100140)
        return 0
    # Ancient Wyvern
    elif GetTalkListEntryResult() == 15:
        """State 19"""
        GiveSpEffectToPlayer(260100150)
        return 0
    # Nameless King
    elif GetTalkListEntryResult() == 16:
        """State 20"""
        GiveSpEffectToPlayer(260100160)
        return 0
    # Champion Gundyr
    elif GetTalkListEntryResult() == 17:
        """State 21"""
        GiveSpEffectToPlayer(260100170)
        return 0
    # Twin Princes
    elif GetTalkListEntryResult() == 18:
        """State 22"""
        GiveSpEffectToPlayer(260100180)
        return 0
    # Soul of Cinder
    elif GetTalkListEntryResult() == 19:
        """State 23"""
        GiveSpEffectToPlayer(260100190)
        return 0
    # Sister Friede
    elif GetTalkListEntryResult() == 20:
        """State 24"""
        GiveSpEffectToPlayer(260100200)
        return 0
    # Lordran Remnants
    elif GetTalkListEntryResult() == 21:
        """State 25"""
        GiveSpEffectToPlayer(260100210)
        return 0
    # Demon Prince
    elif GetTalkListEntryResult() == 22:
        """State 26"""
        GiveSpEffectToPlayer(260100220)
        return 0
    # Darkeater Midir
    elif GetTalkListEntryResult() == 23:
        """State 27"""
        GiveSpEffectToPlayer(260100230)
        return 0
    # Slave Knight Gael
    elif GetTalkListEntryResult() == 24:
        """State 28"""
        GiveSpEffectToPlayer(260100240)
        return 0
    # Halflight
    elif GetTalkListEntryResult() == 25:
        """State 29"""
        GiveSpEffectToPlayer(260100250)
        return 0
    # Prince Dorthinus
    elif GetTalkListEntryResult() == 26:
        """State 30"""
        GiveSpEffectToPlayer(260100270)
        return 0
    # Cathedral Guardian
    elif GetTalkListEntryResult() == 27:
        """State 31"""
        GiveSpEffectToPlayer(260100280)
        return 0
    # Mirror Knight
    elif GetTalkListEntryResult() == 28:
        """State 32"""
        GiveSpEffectToPlayer(260100290)
        return 0
    # Aborr
    elif GetTalkListEntryResult() == 29:
        """State 33"""
        GiveSpEffectToPlayer(260100300)
        return 0
    # Princess Yngvil
    elif GetTalkListEntryResult() == 30:
        """State 34"""
        GiveSpEffectToPlayer(260100310)
        return 0
    # Trio of Explorers
    elif GetTalkListEntryResult() == 31:
        """State 35"""
        GiveSpEffectToPlayer(260100320)
        return 0
    # Twisted Knight
    elif GetTalkListEntryResult() == 32:
        """State 36"""
        GiveSpEffectToPlayer(260100330)
        return 0
    # Fallen Protector
    elif GetTalkListEntryResult() == 33:
        """State 37"""
        GiveSpEffectToPlayer(260100340)
        return 0
    # The Marauder
    elif GetTalkListEntryResult() == 35:
        """State 38"""
        GiveSpEffectToPlayer(260100360)
        return 0
    # Return
    elif GetTalkListEntryResult() == 99:
        """State 39"""
        ReportConversationEndToHavokBehavior()
        return 0

