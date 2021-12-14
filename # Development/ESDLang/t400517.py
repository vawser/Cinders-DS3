#-------------------------------------------
#-- Oathkeeper Xavius
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400517_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400517_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400517_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400517_x0():
    """ State 0,1 """
    while True:
        call = t400517_x3()

# Client Player
def t400517_x1():
    """ State 0,1 """
    assert t400517_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400517_x2():
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
def t400517_x3():
    """ State 0,1 """
    call = t400517_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400517_x4():
    """ State 0,5 """
    while True:
        call = t400517_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400517_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400517_x6() # Attack Check
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
                call = t400517_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400517_x2() # Clear Talk State
    
# Interaction State
def t400517_x5():
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
def t400517_x6():
    """ State 0,6 """
    assert t400517_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400517_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400517_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400517_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400517_x8():
    """ State 0,1 """
    assert t400517_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400517_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        #---- Gauntlet
        # Enter the Gauntlet - Ordered
        AddTalkListDataIf(GetEventStatus(25003200) == 1, 60, 99060110, -1)
        
        # Enter the Gauntlet - Random
        AddTalkListDataIf(GetEventStatus(25003201) == 1, 61, 99060110, -1)
        
        # Enter the Gauntlet - Endless
        AddTalkListDataIf(GetEventStatus(25003202) == 1, 62, 99060110, -1)

        # Enter the Gauntlet - Reverse Ordered
        AddTalkListDataIf(GetEventStatus(25003203) == 1, 63, 99060110, -1)
        
        # Enter the Gauntlet - Reverse Endless
        AddTalkListDataIf(GetEventStatus(25003204) == 1, 64, 99060110, -1)
        
        # Enter the Gauntlet - Boss Select
        AddTalkListDataIf(GetEventStatus(25003205) == 1, 65, 99060110, -1)
        
        # Gauntlet Configuration
        AddTalkListData(53, 99060126, -1)
        
        # Browse Inventory
        AddTalkListData(54, 99060127, -1)
        
        # Reallocate Attributes
        AddTalkListData(55, 15027010, -1)
    
        # Talk
        AddTalkListData(2, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Gauntlet Configuration
        if GetTalkListEntryResult() == 53:
            assert t400517_x40()
            continue
        # Browse Inventory
        elif GetTalkListEntryResult() == 54:
            assert t400517_x50()
            continue
        # Respec
        elif GetTalkListEntryResult() == 55:
            c1113()
            SetEventState(25009400, 1) # Reset Masteries
            continue
        # Enter the Gauntlet - Ordered
        elif GetTalkListEntryResult() == 60:
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet - Random
        elif GetTalkListEntryResult() == 61:
            GiveSpEffectToPlayer(260120010)
            return 0
        # Enter the Gauntlet - Endless
        elif GetTalkListEntryResult() == 62:
            GiveSpEffectToPlayer(260120020)
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet - Reversed Ordered
        elif GetTalkListEntryResult() == 63:
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet - Reversed Endless
        elif GetTalkListEntryResult() == 64:
            GiveSpEffectToPlayer(260120020)
            GiveSpEffectToPlayer(260120000)
            return 0
        # Enter the Gauntlet - Boss Select
        elif GetTalkListEntryResult() == 65:
            assert t400517_x60()
            continue
        # Talk
        elif GetTalkListEntryResult() == 2:
            assert t400517_x10(text1=10134000, flag1=0, mode1=0)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t400517_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400517_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400517_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------
# Utility
#----------------------------------------------------

# Gauntlet Type
def t400517_x30():
    c1110()
    while True:
        ClearTalkListData()
        
        # Ordered
        AddTalkListDataIf(GetEventStatus(25003200) == 0, 1, 99060150, -1)
        
        # Random
        AddTalkListDataIf(GetEventStatus(25003201) == 0, 2, 99060151, -1)
        
        # Endless
        AddTalkListDataIf(GetEventStatus(25003202) == 0, 3, 99060152, -1)
        
        # Reverse Ordered
        AddTalkListDataIf(GetEventStatus(25003203) == 0, 4, 99060153, -1)
        
        # Reverse Endless
        AddTalkListDataIf(GetEventStatus(25003204) == 0, 5, 99060154, -1)
        
        # Boss Select
        AddTalkListDataIf(GetEventStatus(25003205) == 0, 6, 99060155, -1)
        
        # Return
        AddTalkListData(99, 15000006, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Ordered
        if GetTalkListEntryResult() == 1:
            OpenGenericDialog(1, 99060160, 0, 0, 0)
            SetEventState(25003200, 1)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020) # Reset progress if done
            continue
        # Random
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 99060161, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 1)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020) # Reset progress if done
            continue
        # Endless
        elif GetTalkListEntryResult() == 3:
            OpenGenericDialog(1, 99060162, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 1)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020) # Reset progress if done
            continue
        # Reversed Ordered
        elif GetTalkListEntryResult() == 4:
            OpenGenericDialog(1, 99060163, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 1)
            SetEventState(25003204, 0)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020) # Reset progress if done
            continue
        # Reversed Endless
        elif GetTalkListEntryResult() == 5:
            OpenGenericDialog(1, 99060164, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 1)
            SetEventState(25003205, 0)
            GiveSpEffectToPlayer(260120020) # Reset progress if done
            continue
        # Boss Select
        elif GetTalkListEntryResult() == 6:
            OpenGenericDialog(1, 99060165, 0, 0, 0)
            SetEventState(25003200, 0)
            SetEventState(25003201, 0)
            SetEventState(25003202, 0)
            SetEventState(25003203, 0)
            SetEventState(25003204, 0)
            SetEventState(25003205, 1)
            GiveSpEffectToPlayer(260120020) # Reset progress if done
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
            
# Gauntlet Configuration
def t400517_x40():
    """ State 0,8 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        
        # Switch Gauntlet Type
        AddTalkListData(1, 99060125, -1)
        
        # Reset Progress
        AddTalkListData(2, 15013005, -1)
        
        # Enable DLC Bosses
        AddTalkListDataIf(GetEventStatus(25009805) == 1, 3, 99060128, -1)
        
        # Disable DLC Bosses
        AddTalkListDataIf(GetEventStatus(25009805) == 0, 4, 99060129, -1)
        
        # Return
        AddTalkListData(99, 15000006, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 3 """
        ShowShopMessage(1)
        
        # Switch Gauntlet Type
        if GetTalkListEntryResult() == 1:
            assert t400517_x30()
            continue
        # Reset Progress
        elif GetTalkListEntryResult() == 2:
            ClearTalkListData()

            AddTalkListData(1, 15013006, -1)
            AddTalkListData(2, 15013007, -1)
           
            OpenConversationChoicesMenu(0)
            
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            
            if GetTalkListEntryResult() == 1:
                GiveSpEffectToPlayer(260120020)
                OpenGenericDialog(1, 15013008, 0, 0, 0)
                return 0
            else:
                pass
                
            return 0
        # Enable DLC Bosses
        elif GetTalkListEntryResult() == 3:
            OpenGenericDialog(1, 99060130, 0, 0, 0)
            SetEventState(25009805, 0)
            continue
        # Disable DLC Bosses
        elif GetTalkListEntryResult() == 4:
            OpenGenericDialog(1, 99060131, 0, 0, 0)
            SetEventState(25009805, 1)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
            
# Inventory
def t400517_x50():
    """ State 0,8 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        
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
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 3 """
        ShowShopMessage(1)
        
        # Browse Weapons
        if GetTalkListEntryResult() == 1:
            c1111(800000, 800999)
            continue
        # Browse Spells
        elif GetTalkListEntryResult() == 2:
            c1111(803000, 803999)
            continue
        # Browse Armor
        elif GetTalkListEntryResult() == 3:
            c1111(801000, 801999)
            continue
        # Browse Accessories
        elif GetTalkListEntryResult() == 4:
            c1111(802000, 802999)
            continue
        # Browse Covenant Accessories
        elif GetTalkListEntryResult() == 6:
            c1111(804500, 804699)
            continue
        # Purchase Item
        elif GetTalkListEntryResult() == 5:
            OpenRegularShop(804000, 804499)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
            
# Boss Select
def t400517_x60():
    """ State 0,8 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        
        # Corrupted Gundyr
        AddTalkListDataIf(GetEventStatus(25002001) == 0, 1, 99060200, -1)
        
        # Vordt
        AddTalkListDataIf(GetEventStatus(25002002) == 0, 2, 99060201, -1)
        
        # Curse-rotted Greatwood
        AddTalkListDataIf(GetEventStatus(25002003) == 0, 3, 99060202, -1)
        
        # Crystal Sage
        AddTalkListDataIf(GetEventStatus(25002004) == 0, 4, 99060203, -1)
        
        # Deacons
        AddTalkListDataIf(GetEventStatus(25002005) == 0, 5, 99060204, -1)
        
        # Abyss Watchers
        AddTalkListDataIf(GetEventStatus(25002006) == 0, 6, 99060205, -1)
        
        # High Lord Wolnir
        AddTalkListDataIf(GetEventStatus(25002007) == 0, 7, 99060206, -1)
        
        # Old Demon King
        AddTalkListDataIf(GetEventStatus(25002008) == 0, 8, 99060207, -1)
        
        # Pontiff Sulyvahn
        AddTalkListDataIf(GetEventStatus(25002009) == 0, 9, 99060208, -1)
        
        # Aldrich
        AddTalkListDataIf(GetEventStatus(25002010) == 0, 10, 99060209, -1)
        
        # Yhorm
        AddTalkListDataIf(GetEventStatus(25002011) == 0, 11, 99060210, -1)
        
        # Dancer
        AddTalkListDataIf(GetEventStatus(25002012) == 0, 12, 99060211, -1)
        
        # Oceiros
        AddTalkListDataIf(GetEventStatus(25002013) == 0, 13, 99060212, -1)
        
        # Dragonslayer Armour
        AddTalkListDataIf(GetEventStatus(25002014) == 0, 14, 99060213, -1)
        
        # Ancient Wyvern
        AddTalkListDataIf(GetEventStatus(25002015) == 0, 15, 99060214, -1)
        
        # Nameless King
        AddTalkListDataIf(GetEventStatus(25002016) == 0, 16, 99060215, -1)
        
        # Champion Gundyr
        AddTalkListDataIf(GetEventStatus(25002017) == 0, 17, 99060216, -1)
        
        # Twin Princes
        AddTalkListDataIf(GetEventStatus(25002018) == 0, 18, 99060217, -1)
        
        # Soul of Cinder
        AddTalkListDataIf(GetEventStatus(25002019) == 0, 19, 99060218, -1)
        
        # Sister Friede
        AddTalkListDataIf(GetEventStatus(25002020) == 0 and GetEventStatus(25009805) == 0, 20, 99060219, -1)
        
        # Lordran Remnants
        AddTalkListDataIf(GetEventStatus(25002021) == 0, 21, 99060220, -1)
        
        # Demon Prince
        AddTalkListDataIf(GetEventStatus(25002022) == 0 and GetEventStatus(25009805) == 0, 22, 99060221, -1)
        
        # Darkeater Midir
        AddTalkListDataIf(GetEventStatus(25002023) == 0 and GetEventStatus(25009805) == 0, 23, 99060222, -1)
        
        # Slave Knight Gael
        AddTalkListDataIf(GetEventStatus(25002024) == 0 and GetEventStatus(25009805) == 0, 24, 99060223, -1)
        
        # Halflight
        AddTalkListDataIf(GetEventStatus(25002025) == 0 and GetEventStatus(25009805) == 0, 25, 99060224, -1)
        
        # Prince Dorthinus
        AddTalkListDataIf(GetEventStatus(25002026) == 0 and GetEventStatus(25009805) == 0, 26, 99060225, -1)
        
        # Cathedral Guardian
        AddTalkListDataIf(GetEventStatus(25002027) == 0, 27, 99060226, -1)
        
        # Mirror Knight
        AddTalkListDataIf(GetEventStatus(25002028) == 0, 28, 99060227, -1)
        
        # Aborr
        AddTalkListDataIf(GetEventStatus(25002029) == 0, 29, 99060228, -1)
        
        # Princess Yngvil
        AddTalkListDataIf(GetEventStatus(25002030) == 0 and GetEventStatus(25009805) == 0, 30, 99060229, -1)
        
        # The Rock
        AddTalkListDataIf(GetEventStatus(25002031) == 0, 31, 99060230, -1)
        
        # Twisted Knight
        AddTalkListDataIf(GetEventStatus(25002032) == 0, 32, 99060231, -1)
        
        # Fallen Protector
        AddTalkListDataIf(GetEventStatus(25002033) == 0, 33, 99060232, -1)
        
        # Titanite Abomination
        # AddTalkListDataIf(GetEventStatus(25002034) == 0, 34, 99060233, -1)
        
        # The Marauder
        AddTalkListDataIf(GetEventStatus(25002035) == 0, 35, 99060234, -1)
        
        # Return
        AddTalkListData(99, 15000006, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 3 """
        ShowShopMessage(1)
        
        # Corrupted Gundyr
        if GetTalkListEntryResult() == 1:
            GiveSpEffectToPlayer(260100010)
            return 0
        # Vordt
        elif GetTalkListEntryResult() == 2:
            GiveSpEffectToPlayer(260100020)
            return 0
        # Curse-rotted Greatwood
        elif GetTalkListEntryResult() == 3:
            GiveSpEffectToPlayer(260100030)
            return 0
        # Crystal Sage
        elif GetTalkListEntryResult() == 4:
            GiveSpEffectToPlayer(260100040)
            return 0
        # Deacons
        elif GetTalkListEntryResult() == 5:
            GiveSpEffectToPlayer(260100050)
            return 0
        # Abyss Watchers
        elif GetTalkListEntryResult() == 6:
            GiveSpEffectToPlayer(260100060)
            return 0
        # High Lord Wolnir
        elif GetTalkListEntryResult() == 7:
            GiveSpEffectToPlayer(260100070)
            return 0
        # Old Demon King
        elif GetTalkListEntryResult() == 8:
            GiveSpEffectToPlayer(260100080)
            return 0
        # Pontiff Sulyvahn
        elif GetTalkListEntryResult() == 9:
            GiveSpEffectToPlayer(260100090)
            return 0
        # Aldrich
        elif GetTalkListEntryResult() == 10:
            GiveSpEffectToPlayer(260100100)
            return 0
        # Yhorm
        elif GetTalkListEntryResult() == 11:
            GiveSpEffectToPlayer(260100110)
            return 0
        # Dancer
        elif GetTalkListEntryResult() == 12:
            GiveSpEffectToPlayer(260100120)
            return 0
        # Oceiros
        elif GetTalkListEntryResult() == 13:
            GiveSpEffectToPlayer(260100130)
            return 0
        # Dragonslayer Armour
        elif GetTalkListEntryResult() == 14:
            GiveSpEffectToPlayer(260100140)
            return 0
        # Ancient Wyvern
        elif GetTalkListEntryResult() == 15:
            GiveSpEffectToPlayer(260100150)
            return 0
        # Nameless King
        elif GetTalkListEntryResult() == 16:
            GiveSpEffectToPlayer(260100160)
            return 0
        # Champion Gundyr
        elif GetTalkListEntryResult() == 17:
            GiveSpEffectToPlayer(260100170)
            return 0
        # Twin Princes
        elif GetTalkListEntryResult() == 18:
            GiveSpEffectToPlayer(260100180)
            return 0
        # Soul of Cinder
        elif GetTalkListEntryResult() == 19:
            GiveSpEffectToPlayer(260100190)
            return 0
        # Sister Friede
        elif GetTalkListEntryResult() == 20:
            GiveSpEffectToPlayer(260100200)
            return 0
        # Lordran Remnants
        elif GetTalkListEntryResult() == 21:
            GiveSpEffectToPlayer(260100210)
            return 0
        # Demon Prince
        elif GetTalkListEntryResult() == 22:
            GiveSpEffectToPlayer(260100220)
            return 0
        # Darkeater Midir
        elif GetTalkListEntryResult() == 23:
            GiveSpEffectToPlayer(260100230)
            return 0
        # Slave Knight Gael
        elif GetTalkListEntryResult() == 24:
            GiveSpEffectToPlayer(260100240)
            return 0
        # Halflight
        elif GetTalkListEntryResult() == 25:
            GiveSpEffectToPlayer(260100250)
            return 0
        # Prince Dorthinus
        elif GetTalkListEntryResult() == 26:
            GiveSpEffectToPlayer(260100270)
            return 0
        # Cathedral Guardian
        elif GetTalkListEntryResult() == 27:
            GiveSpEffectToPlayer(260100280)
            return 0
        # Mirror Knight
        elif GetTalkListEntryResult() == 28:
            GiveSpEffectToPlayer(260100290)
            return 0
        # Aborr
        elif GetTalkListEntryResult() == 29:
            GiveSpEffectToPlayer(260100300)
            return 0
        # Princess Yngvil
        elif GetTalkListEntryResult() == 30:
            GiveSpEffectToPlayer(260100310)
            return 0
        # The Rock
        elif GetTalkListEntryResult() == 31:
            GiveSpEffectToPlayer(260100320)
            return 0
        # Twisted Knight
        elif GetTalkListEntryResult() == 32:
            GiveSpEffectToPlayer(260100330)
            return 0
        # Fallen Protector
        elif GetTalkListEntryResult() == 33:
            GiveSpEffectToPlayer(260100340)
            return 0
        # Titanite Abomination
        # elif GetTalkListEntryResult() == 34:
            # GiveSpEffectToPlayer(260100350)
            # return 0
        # The Marauder
        elif GetTalkListEntryResult() == 35:
            GiveSpEffectToPlayer(260100360)
            return 0
        
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
            