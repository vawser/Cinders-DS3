#-------------------------------------------
#-- Miracle Scribe
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t350500_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350500_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350500_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t350500_x0():
    """ State 0,1 """
    while True:
        call = t350500_x3()

# Client Player
def t350500_x1():
    """ State 0,1 """
    assert t350500_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t350500_x2():
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
def t350500_x3():
    """ State 0,1 """
    call = t350500_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t350500_x4():
    """ State 0,5 """
    while True:
        call = t350500_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t350500_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t350500_x6() # Attack Check
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
                call = t350500_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t350500_x2() # Clear Talk State
    
# Interaction State
def t350500_x5():
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
def t350500_x6():
    """ State 0,6 """
    assert t350500_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t350500_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t350500_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t350500_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t350500_x8():
    """ State 0,1 """
    assert t350500_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t350500_x9():
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
            assert t350500_x20()
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            assert t350500_x10(text1=10026000, flag1=0, mode1=0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t350500_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t350500_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t350500_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
     
# Ascension
def t350500_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Refined Lightning Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3509000, 4, 1, 0) == 1, 1, 99047000, -1)
        
        # Lightning Surge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3550000, 4, 1, 0) == 1, 2, 99047001, -1)
        
        # Storm Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3551000, 4, 1, 0) == 1, 3, 99047002, -1)
        
        # Homing Sunlight Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3552000, 4, 1, 0) == 1, 4, 99047003, -1)
        
        # Weakening Wrathful Orbs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3819000, 4, 1, 0) == 1, 5, 99047004, -1)
        
        # Wrathful Wave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3821000, 4, 1, 0) == 1, 6, 99047005, -1)
        
        # Quickened Holy Schism
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3820000, 4, 1, 0) == 1, 7, 99047006, -1)
        
        # Sunlight Stake
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3710000, 4, 1, 0) == 1, 8, 99047007, -1)
        
        # Sunlight Storm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3553000, 4, 1, 0) == 1, 9, 99047008, -1)
        
        # Repeating Heavenly Thunder
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3802000, 4, 1, 0) == 1, 10, 99047009, -1)
        
        # Lingering Overwhelming Power
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3818000, 4, 1, 0) == 1, 11, 99047010, -1)
        
        # Refined Way of White Corona
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3556000, 4, 1, 0) == 1, 12, 99047011, -1)
        
        # Quickened Halo
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3803000, 4, 1, 0) == 1, 13, 99047012, -1)
        
        # Refined Divine Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3813000, 4, 1, 0) == 1, 14, 99047013, -1)
        
        # Homing Lothric's Holy Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3814000, 4, 1, 0) == 1, 15, 99047014, -1)
        
        # Refined Force
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3530000, 4, 1, 0) == 1, 16, 99047015, -1)
        
        # Quickened Wrath of the Gods
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3531000, 4, 1, 0) == 1, 17, 99047016, -1)
        
        # Emit Wrath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3532000, 4, 1, 0) == 1, 18, 99047017, -1)
        
        # Repeating Pillars of Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3720000, 4, 1, 0) == 1, 19, 99047018, -1)
        
        # Angelic Punishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3812000, 4, 1, 0) == 1, 20, 99047019, -1)
        
        # Repeating Proof of a Pact
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3815000, 4, 1, 0) == 1, 21, 99047020, -1)
        
        # Extended Ghostly Assault
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3816000, 4, 1, 0) == 1, 22, 99047021, -1)
        
        # Extended Heal Aid
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3490000, 4, 1, 0) == 1, 23, 99047022, -1)
        
        # Extended Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3500000, 4, 1, 0) == 1, 24, 99047023, -1)
        
        # Extended Med Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3501000, 4, 1, 0) == 1, 25, 99047024, -1)
        
        # Extended Great Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3502000, 4, 1, 0) == 1, 26, 99047025, -1)
        
        # Extended Soothing Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3503000, 4, 1, 0) == 1, 27, 99047026, -1)
        
        # Extended Projected Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3557000, 4, 1, 0) == 1, 28, 99047027, -1)
        
        # Lingering Replenishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3504000, 4, 1, 0) == 1, 29, 99047028, -1)
        
        # Lingering Bountiful Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3507000, 4, 1, 0) == 1, 30, 99047029, -1)
        
        # Lingering Bountiful Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3505000, 4, 1, 0) == 1, 31, 99047030, -1)
        
        # Quickened Caressing Tears
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3508000, 4, 1, 0) == 1, 32, 99047031, -1)
        
        # Sunlight Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3590000, 4, 1, 0) == 1, 33, 99047032, -1)
        
        # Supreme Blessed Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3760000, 4, 1, 0) == 1, 34, 99047033, -1)
        
        # Supreme Darkmoon Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3591000, 4, 1, 0) == 1, 35, 99047034, -1)
        
        # Supreme Magic Barrier
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3561000, 4, 1, 0) == 1, 37, 99047036, -1)
        
        # Extended Sacred Oath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3563000, 4, 1, 0) == 1, 38, 99047037, -1)
        
        # Divine Relief
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3540000, 4, 1, 0) == 1, 39, 99047038, -1)
        
        # Lingering Perseverance
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3805000, 4, 1, 0) == 1, 40, 99047039, -1)
        
        # Tears of Denial
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3520000, 4, 1, 0) == 1, 41, 99047040, -1)
        
        # Refined Homeward
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3521000, 4, 1, 0) == 1, 42, 99047041, -1)
        
        # Gwynevere's Refined Abnegation
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3822000, 4, 1, 0) == 1, 43, 99047042, -1)
        
        # Lingering Lightning Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3823000, 4, 1, 0) == 1, 44, 99047043, -1)
        
        # Lingering Whirlwind
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3824000, 4, 1, 0) == 1, 45, 99047044, -1)
        
        # Blast Wave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3825000, 4, 1, 0) == 1, 46, 99047045, -1)
        
        # Squall
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3826000, 4, 1, 0) == 1, 47, 99047046, -1)
        
        # Slicing Wind
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3827000, 4, 1, 0) == 1, 48, 99047047, -1)
        
        # Gale Force
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3828000, 4, 1, 0) == 1, 49, 99047048, -1)
        
        # Cyclone Blast
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3829000, 4, 1, 0) == 1, 50, 99047049, -1)
        
        # Static Field
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3830000, 4, 1, 0) == 1, 51, 99047050, -1)
        
        # Tailwind
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3831000, 4, 1, 0) == 1, 52, 99047051, -1)
        
        # Shredding Winds
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3832000, 4, 1, 0) == 1, 53, 99047052, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Refined Lightning Arrow
        if GetTalkListEntryResult() == 1:
            assert t350500_x50(82000, 1090, 9, -10, 99048000, 99049000, 99040020)
            continue
        # Lightning Surge
        elif GetTalkListEntryResult() == 2:
            assert t350500_x50(82010, 1090, 9, -10, 99048001, 99049001, 99040020)
            continue
        # Storm Spear
        elif GetTalkListEntryResult() == 3:
            assert t350500_x50(82020, 1090, 14, -15, 99048002, 99049002, 99040021)
            continue
        # Homing Sunlight Spear
        elif GetTalkListEntryResult() == 4:
            assert t350500_x50(82030, 1090, 14, -15, 99048003, 99049003, 99040021)
            continue
        # Weakening Wrathful Orbs
        elif GetTalkListEntryResult() == 5:
            assert t350500_x50(82040, 1090, 19, -20, 99048004, 99049004, 99040022)
            continue
        # Wrathful Wave
        elif GetTalkListEntryResult() == 6:
            assert t350500_x50(82050, 1090, 9, -10, 99048005, 99049005, 99040020)
            continue
        # Quickened Holy Schism
        elif GetTalkListEntryResult() == 7:
            assert t350500_x50(82060, 1090, 14, -15, 99048006, 99049006, 99040021)
            continue
        # Sunlight Stake
        elif GetTalkListEntryResult() == 8:
            assert t350500_x50(82070, 1090, 14, -15, 99048007, 99049007, 99040021)
            continue
        # Sunlight Storm
        elif GetTalkListEntryResult() == 9:
            assert t350500_x50(82080, 1090, 14, -15, 99048008, 99049008, 99040021)
            continue
        # Repeating Heavenly Thunder
        elif GetTalkListEntryResult() == 10:
            assert t350500_x50(82090, 1090, 19, -20, 99048009, 99049009, 99040022)
            continue
        # Lingering Overwhelming Power
        elif GetTalkListEntryResult() == 11:
            assert t350500_x50(82100, 1090, 14, -15, 99048010, 99049010, 99040021)
            continue
        # Refined Way of White Corona
        elif GetTalkListEntryResult() == 12:
            assert t350500_x50(82110, 1090, 9, -10, 99048011, 99049011, 99040020)
            continue
        # Quickened Halo
        elif GetTalkListEntryResult() == 13:
            assert t350500_x50(82120, 1090, 14, -15, 99048012, 99049012, 99040021)
            continue
        # Refined Divine Arrow
        elif GetTalkListEntryResult() == 14:
            assert t350500_x50(82130, 1090, 9, -10, 99048013, 99049013, 99040020)
            continue
        # Homing Lothric's Holy Spear
        elif GetTalkListEntryResult() == 15:
            assert t350500_x50(82140, 1090, 14, -15, 99048014, 99049014, 99040021)
            continue
        # Refined Force
        elif GetTalkListEntryResult() == 16:
            assert t350500_x50(82150, 1090, 9, -10, 99048015, 99049015, 99040020)
            continue
        # Quickened Wrath of the Gods
        elif GetTalkListEntryResult() == 17:
            assert t350500_x50(82160, 1090, 19, -20, 99048016, 99049016, 99040022)
            continue
        # Emit Wrath
        elif GetTalkListEntryResult() == 18:
            assert t350500_x50(82170, 1090, 14, -15, 99048017, 99049017, 99040021)
            continue
        # Repeating Pillars of Light
        elif GetTalkListEntryResult() == 19:
            assert t350500_x50(82180, 1090, 14, -15, 99048018, 99049018, 99040021)
            continue
        # Angelic Punishment
        elif GetTalkListEntryResult() == 20:
            assert t350500_x50(82190, 1090, 19, -20, 99048019, 99049019, 99040022)
            continue
        # Repeating Proof of a Pact
        elif GetTalkListEntryResult() == 21:
            assert t350500_x50(82200, 1090, 14, -15, 99048020, 99049020, 99040021)
            continue
        # Extended Ghostly Assault
        elif GetTalkListEntryResult() == 22:
            assert t350500_x50(82210, 1090, 14, -15, 99048021, 99049021, 99040021)
            continue
        # Extended Heal Aid
        elif GetTalkListEntryResult() == 23:
            assert t350500_x50(82220, 1090, 9, -10, 99048022, 99049022, 99040020)
            continue
        # Extended Heal
        elif GetTalkListEntryResult() == 24:
            assert t350500_x50(82230, 1090, 9, -10, 99048023, 99049023, 99040020)
            continue
        # Extended Med Heal
        elif GetTalkListEntryResult() == 25:
            assert t350500_x50(82240, 1090, 9, -10, 99048024, 99049024, 99040020)
            continue
        # Extended Great Heal
        elif GetTalkListEntryResult() == 26:
            assert t350500_x50(82250, 1090, 9, -10, 99048025, 99049025, 99040020)
            continue
        # Extended Soothing Sunlight
        elif GetTalkListEntryResult() == 27:
            assert t350500_x50(82260, 1090, 9, -10, 99048026, 99049026, 99040020)
            continue
        # Extended Projected Heal
        elif GetTalkListEntryResult() == 28:
            assert t350500_x50(82270, 1090, 9, -10, 99048027, 99049027, 99040020)
            continue
        # Lingering Replenishment
        elif GetTalkListEntryResult() == 29:
            assert t350500_x50(82280, 1090, 14, -15, 99048028, 99049028, 99040021)
            continue
        # Lingering Bountiful Light
        elif GetTalkListEntryResult() == 30:
            assert t350500_x50(82290, 1090, 14, -15, 99048029, 99049029, 99040021)
            continue
        # Lingering Bountiful Sunlight
        elif GetTalkListEntryResult() == 31:
            assert t350500_x50(82300, 1090, 19, -20, 99048030, 99049030, 99040022)
            continue
        # Quickened Caressing Tears
        elif GetTalkListEntryResult() == 32:
            assert t350500_x50(82310, 1090, 9, -10, 99048031, 99049031, 99040020)
            continue
        # Sunlight Blade
        elif GetTalkListEntryResult() == 33:
            assert t350500_x50(82320, 1090, 14, -15, 99048032, 99049032, 99040021)
            continue
        # Supreme Blessed Weapon
        elif GetTalkListEntryResult() == 34:
            assert t350500_x50(82330, 1090, 14, -15, 99048033, 99049033, 99040021)
            continue
        # Supreme Darkmoon Blade
        elif GetTalkListEntryResult() == 35:
            assert t350500_x50(82340, 1090, 14, -15, 99048034, 99049034, 99040021)
            continue
        # Supreme Magic Barrier
        elif GetTalkListEntryResult() == 37:
            assert t350500_x50(82360, 1090, 14, -15, 99048036, 99049036, 99040021)
            continue
        # Extended Sacred Oath
        elif GetTalkListEntryResult() == 38:
            assert t350500_x50(82370, 1090, 9, -10, 99048037, 99049037, 99040020)
            continue
        # Divine Relief
        elif GetTalkListEntryResult() == 39:
            assert t350500_x50(82380, 1090, 14, -15, 99048038, 99049038, 99040021)
            continue
        # Lingering Perseverance
        elif GetTalkListEntryResult() == 40:
            assert t350500_x50(82390, 1090, 14, -15, 99048039, 99049039, 99040021)
            continue
        # Mass Tears of Denial
        elif GetTalkListEntryResult() == 41:
            assert t350500_x50(82400, 1090, 9, -10, 99048040, 99049040, 99040020)
            continue
        # Refined Homeward
        elif GetTalkListEntryResult() == 42:
            assert t350500_x50(82410, 1090, 9, -10, 99048041, 99049041, 99040020)
            continue
        # Gwynevere's Refined Abnegation
        elif GetTalkListEntryResult() == 43:
            assert t350500_x50(82420, 1090, 9, -10, 99048042, 99049042, 99040020)
            continue
        # Lingering Lightning Orb
        elif GetTalkListEntryResult() == 44:
            assert t350500_x50(82430, 1090, 9, -10, 99048043, 99049043, 99040020)
            continue
        # Lingering Whirlwind
        elif GetTalkListEntryResult() == 45:
            assert t350500_x50(82440, 1090, 9, -10, 99048044, 99049044, 99040020)
            continue
        # Distant Blast Wave
        elif GetTalkListEntryResult() == 46:
            assert t350500_x50(82450, 1090, 9, -10, 99048045, 99049045, 99040020)
            continue
        # Bloodthirsty Squall
        elif GetTalkListEntryResult() == 47:
            assert t350500_x50(82460, 1090, 9, -10, 99048046, 99049046, 99040020)
            continue
        # Swift Slicing Wind
        elif GetTalkListEntryResult() == 48:
            assert t350500_x50(82470, 1090, 9, -10, 99048047, 99049047, 99040020)
            continue
        # Weakening Gale Force
        elif GetTalkListEntryResult() == 49:
            assert t350500_x50(82480, 1090, 9, -10, 99048048, 99049048, 99040020)
            continue
        # Explosive Cyclone Blast
        elif GetTalkListEntryResult() == 50:
            assert t350500_x50(82490, 1090, 9, -10, 99048049, 99049049, 99040020)
            continue
        # Lingering Static Field
        elif GetTalkListEntryResult() == 51:
            assert t350500_x50(82500, 1090, 9, -10, 99048050, 99049050, 99040020)
            continue
        # Lingering Tailwind
        elif GetTalkListEntryResult() == 52:
            assert t350500_x50(82510, 1090, 9, -10, 99048051, 99049051, 99040020)
            continue
        # Lingering Shredding Winds
        elif GetTalkListEntryResult() == 53:
            assert t350500_x50(82520, 1090, 9, -10, 99048052, 99049052, 99040020)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
     
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Ascend
def t350500_x50(itemlot=_, material=_, compare_val=_, removal_val=_, msg_1=_, msg_2=_, msg_3=_):
    # Ascend X?
    call = t350500_x51(action2=msg_1)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, material, 3, compare_val, 0) == 1:
            assert t350500_x52(action1=msg_3) # Insufficient X
        else:
            PlayerEquipmentQuantityChange(3, material, removal_val)
            GetItemFromItemLot(itemlot)
            
            # Crafted
            assert t350500_x52(action1=msg_2)
    elif call.Get() == 1:
        pass
    return 0
    
def t350500_x51(action2=_):
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
        
def t350500_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0