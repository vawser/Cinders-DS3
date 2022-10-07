#-------------------------------------------
#-- Pyromancy Scribe
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t380501_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t380501_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t380501_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t380501_x0():
    """ State 0,1 """
    while True:
        call = t380501_x3()

# Client Player
def t380501_x1():
    """ State 0,1 """
    assert t380501_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t380501_x2():
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
def t380501_x3():
    """ State 0,1 """
    call = t380501_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t380501_x4():
    """ State 0,5 """
    while True:
        call = t380501_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t380501_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t380501_x6() # Attack Check
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
                call = t380501_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t380501_x2() # Clear Talk State
    
# Interaction State
def t380501_x5():
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
def t380501_x6():
    """ State 0,6 """
    assert t380501_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t380501_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t380501_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t380501_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t380501_x8():
    """ State 0,1 """
    assert t380501_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t380501_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Ascension
        AddTalkListData(1, 15004002, -1)
    
        # Talk
        AddTalkListData(3, 99010001, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Ascend Sorceries
        if GetTalkListEntryResult() == 1:
            assert t380501_x20()
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            assert t380501_x10(text1=10025000, flag1=0, mode1=0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t380501_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t380501_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t380501_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
     
# Ascension
def t380501_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Incendiary Fireball
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2400000, 4, 1, 0) == 1, 1, 99044000, -1)
        
        # Weakening Fire Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2402000, 4, 1, 0) == 1, 2, 99044001, -1)
        
        # Homing Chaos Fire Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2450000, 4, 1, 0) == 1, 3, 99044002, -1)
        
        # Incendiary Bursting Fireball
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2620000, 4, 1, 0) == 1, 4, 99044003, -1)
        
        # Distant Profaned Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2455000, 4, 1, 0) == 1, 5, 99044004, -1)
        
        # Chaos Vortex
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2456000, 4, 1, 0) == 1, 6, 99044005, -1)
        
        # Great Seething Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2660000, 4, 1, 0) == 1, 7, 99044006, -1)
        
        # Refined Flame Fan
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2458000, 4, 1, 0) == 1, 8, 99044007, -1)
        
        # Incendiary Combustion
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2411000, 4, 1, 0) == 1, 9, 99044008, -1)
        
        # Refined Fire Surge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2405000, 4, 1, 0) == 1, 10, 99044009, -1)
        
        # Incendiary Fire Whip
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2452000, 4, 1, 0) == 1, 11, 99044010, -1)
        
        # Refined Sacred Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2640000, 4, 1, 0) == 1, 12, 99044011, -1)
        
        # Repeating Firestorm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2403000, 4, 1, 0) == 1, 13, 99044012, -1)
        
        # Repeating Chaos Storm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2451000, 4, 1, 0) == 1, 14, 99044013, -1)
        
        # Refined Lingering Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2701000, 4, 1, 0) == 1, 15, 99044014, -1)
        
        # Lingering Floating Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2457000, 4, 1, 0) == 1, 16, 99044015, -1)
        
        # Incinerating Chaos Beam
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2721000, 4, 1, 0) == 1, 17, 99044016, -1)
        
        # Great Cataclysm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2702000, 4, 1, 0) == 1, 18, 99044017, -1)
        
        # Swift Boulder Heave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2630000, 4, 1, 0) == 1, 19, 99044018, -1)
        
        # Great Fecal Expulsion
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2720000, 4, 1, 0) == 1, 20, 99044019, -1)
        
        # Homing Heave Earth
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2711000, 4, 1, 0) == 1, 21, 99044020, -1)
        
        # Quickened Earthquake
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2712000, 4, 1, 0) == 1, 22, 99044021, -1)
        
        # Summon Earthfall
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2710000, 4, 1, 0) == 1, 23, 99044022, -1)
        
        # Lingering Acid Surge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2422000, 4, 1, 0) == 1, 24, 99044023, -1)
        
        # Lingering Poison Mist
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2420000, 4, 1, 0) == 1, 25, 99044024, -1)
        
        # Lingering Toxic Mist
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2421000, 4, 1, 0) == 1, 26, 99044025, -1)
        
        # Lingering Immolation
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2714000, 4, 1, 0) == 1, 27, 99044026, -1)
        
        # Fortified Rapport
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2436000, 4, 1, 0) == 1, 28, 99044027, -1)
        
        # Fond Warmth
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2470000, 4, 1, 0) == 1, 29, 99044028, -1)
        
        # Supreme Carthus Flame Arc
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2435000, 4, 1, 0) == 1, 30, 99044029, -1)
        
        # Lingering Carthus Beacon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2650000, 4, 1, 0) == 1, 31, 99044030, -1)
        
        # Lingering Power Within
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2440000, 4, 1, 0) == 1, 32, 99044031, -1)
        
        # Great Flash Sweat
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2431000, 4, 1, 0) == 1, 33, 99044032, -1)
        
        # Refined Profuse Sweat
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2562000, 4, 1, 0) == 1, 34, 99044033, -1)
        
        # Lingering Iron Flesh
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2430000, 4, 1, 0) == 1, 35, 99044034, -1)
        
        # Lingering Rockflesh
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2713000, 4, 1, 0) == 1, 36, 99044035, -1)
        
        # Bloodthirsty Dust
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2722000, 4, 1, 0) == 1, 37, 99044036, -1)
        
        # Refined Magnetism
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2723000, 4, 1, 0) == 1, 38, 99044037, -1)
        
        # Great Geyser
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2725000, 4, 1, 0) == 1, 39, 99044038, -1)
        
        # Lingering Drizzle
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2726000, 4, 1, 0) == 1, 40, 99044039, -1)
        
        # Pulsating Mud
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2727000, 4, 1, 0) == 1, 41, 99044040, -1)
        
        # Bubble Wall
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2724000, 4, 1, 0) == 1, 42, 99044041, -1)
        
        # Maelstrom
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2728000, 4, 1, 0) == 1, 43, 99044042, -1)
        
        # Dance of Fire
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2729000, 4, 1, 0) == 1, 44, 99044043, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Incendiary Fireball
        if GetTalkListEntryResult() == 1:
            assert t380501_x50(81000, 1060, 9, -10, 99045000, 99046000, 99040040)
            continue
        # Weakening Fire Orb
        elif GetTalkListEntryResult() == 2:
            assert t380501_x50(81010, 1060, 9, -10, 99045001, 99046001, 99040040)
            continue
        # Homing Chaos Fire Orb
        elif GetTalkListEntryResult() == 3:
            assert t380501_x50(81020, 1060, 14, -15, 99045002, 99046002, 99040041)
            continue
        # Incendiary Bursting Fireball
        elif GetTalkListEntryResult() == 4:
            assert t380501_x50(81030, 1060, 9, -10, 99045003, 99046003, 99040040)
            continue
        # Distant Profaned Flame
        elif GetTalkListEntryResult() == 5:
            assert t380501_x50(81040, 1060, 14, -15, 99045004, 99046004, 99040041)
            continue
        # Chaos Vortex
        elif GetTalkListEntryResult() == 6:
            assert t380501_x50(81050, 1060, 14, -15, 99045005, 99046005, 99040041)
            continue
        # Great Seething Chaos
        elif GetTalkListEntryResult() == 7:
            assert t380501_x50(81060, 1060, 19, -20, 99045006, 99046006, 99040043)
            continue
        # Refined Flame Fan
        elif GetTalkListEntryResult() == 8:
            assert t380501_x50(81070, 1060, 9, -10, 99045007, 99046007, 99040040)
            continue
        # Incendiary Combustion
        elif GetTalkListEntryResult() == 9:
            assert t380501_x50(81080, 1060, 14, -15, 99045008, 99046008, 99040041)
            continue
        # Refined Fire Surge
        elif GetTalkListEntryResult() == 10:
            assert t380501_x50(81090, 1060, 9, -10, 99045009, 99046009, 99040040)
            continue
        # Incendiary Fire Whip
        elif GetTalkListEntryResult() == 11:
            assert t380501_x50(81100, 1060, 14, -15, 99045010, 99046010, 99040041)
            continue
        # Refined Sacred Flame
        elif GetTalkListEntryResult() == 12:
            assert t380501_x50(81110, 1060, 9, -10, 99045011, 99046011, 99040040)
            continue
        # Repeating Firestorm
        elif GetTalkListEntryResult() == 13:
            assert t380501_x50(81120, 1060, 14, -15, 99045012, 99046012, 99040041)
            continue
        # Repeating Chaos Storm
        elif GetTalkListEntryResult() == 14:
            assert t380501_x50(81130, 1060, 14, -15, 99045013, 99046013, 99040041)
            continue
        # Refined Lingering Chaos
        elif GetTalkListEntryResult() == 15:
            assert t380501_x50(81140, 1060, 9, -10, 99045014, 99046014, 99040040)
            continue
        # Lingering Floating Chaos
        elif GetTalkListEntryResult() == 16:
            assert t380501_x50(81150, 1060, 14, -15, 99045015, 99046015, 99040041)
            continue
        # Incinerating Chaos Beam
        elif GetTalkListEntryResult() == 17:
            assert t380501_x50(81160, 1060, 14, -15, 99045016, 99046016, 99040041)
            continue
        # Great Cataclysm
        elif GetTalkListEntryResult() == 18:
            assert t380501_x50(81170, 1060, 19, -20, 99045017, 99046017, 99040043)
            continue
        # Swift Boulder Heave
        elif GetTalkListEntryResult() == 19:
            assert t380501_x50(81180, 1060, 9, -10, 99045018, 99046018, 99040040)
            continue
        # Great Fecal Expulsion
        elif GetTalkListEntryResult() == 20:
            assert t380501_x50(81190, 1060, 14, -15, 99045019, 99046019, 99040041)
            continue
        # Homing Heave Earth
        elif GetTalkListEntryResult() == 21:
            assert t380501_x50(81200, 1060, 14, -15, 99045020, 99046020, 99040041)
            continue
        # Quickened Earthquake
        elif GetTalkListEntryResult() == 22:
            assert t380501_x50(81210, 1060, 14, -15, 99045021, 99046021, 99040041)
            continue
        # Summon Earthfall
        elif GetTalkListEntryResult() == 23:
            assert t380501_x50(81220, 1060, 19, -20, 99045022, 99046022, 99040043)
            continue
        # Lingering Acid Surge
        elif GetTalkListEntryResult() == 24:
            assert t380501_x50(81230, 1060, 9, -10, 99045023, 99046023, 99040040)
            continue
        # Lingering Poison Mist
        elif GetTalkListEntryResult() == 25:
            assert t380501_x50(81240, 1060, 14, -15, 99045024, 99046024, 99040041)
            continue
        # Lingering Toxic Mist
        elif GetTalkListEntryResult() == 26:
            assert t380501_x50(81250, 1060, 14, -15, 99045025, 99046025, 99040041)
            continue
        # Lingering Immolation
        elif GetTalkListEntryResult() == 27:
            assert t380501_x50(81260, 1060, 9, -10, 99045026, 99046026, 99040040)
            continue
        # Fortified Rapport
        elif GetTalkListEntryResult() == 28:
            assert t380501_x50(81270, 1060, 14, -15, 99045027, 99046027, 99040041)
            continue
        # Fond Warmth
        elif GetTalkListEntryResult() == 29:
            assert t380501_x50(81280, 1060, 14, -15, 99045028, 99046028, 99040041)
            continue
        # Supreme Carthus Flame Arc
        elif GetTalkListEntryResult() == 30:
            assert t380501_x50(81290, 1060, 14, -15, 99045029, 99046029, 99040041)
            continue
        # Lingering Carthus Beacon
        elif GetTalkListEntryResult() == 31:
            assert t380501_x50(81300, 1060, 14, -15, 99045030, 99046030, 99040041)
            continue
        # Lingering Power Within
        elif GetTalkListEntryResult() == 32:
            assert t380501_x50(81310, 1060, 14, -15, 99045031, 99046031, 99040041)
            continue
        # Great Flash Sweat
        elif GetTalkListEntryResult() == 33:
            assert t380501_x50(81320, 1060, 9, -10, 99045032, 99046032, 99040040)
            continue
        # Refined Profuse Sweat
        elif GetTalkListEntryResult() == 34:
            assert t380501_x50(81330, 1060, 9, -10, 99045033, 99046033, 99040040)
            continue
        # Lingering Iron Flesh
        elif GetTalkListEntryResult() == 35:
            assert t380501_x50(81340, 1060, 9, -10, 99045034, 99046034, 99040040)
            continue
        # Lingering Rockflesh
        elif GetTalkListEntryResult() == 36:
            assert t380501_x50(81350, 1060, 9, -10, 99045035, 99046035, 99040040)
            continue
        # Bloodthirsty Dust
        elif GetTalkListEntryResult() == 37:
            assert t380501_x50(81360, 1060, 9, -10, 99045036, 99046036, 99040040)
            continue
        # Refined Magnetism
        elif GetTalkListEntryResult() == 38:
            assert t380501_x50(81370, 1060, 9, -10, 99045037, 99046037, 99040040)
            continue
        # Great Geyser
        elif GetTalkListEntryResult() == 39:
            assert t380501_x50(81380, 1060, 14, -15, 99045038, 99046038, 99040041)
            continue
        # Lingering Drizzle
        elif GetTalkListEntryResult() == 40:
            assert t380501_x50(81390, 1060, 9, -10, 99045039, 99046039, 99040040)
            continue
        # Bloodthirsty Pulsating Mud
        elif GetTalkListEntryResult() == 41:
            assert t380501_x50(81400, 1060, 9, -10, 99045040, 99046040, 99040040)
            continue
        # Bubble Prison
        elif GetTalkListEntryResult() == 42:
            assert t380501_x50(81410, 1060, 9, -10, 99045041, 99046041, 99040040)
            continue
        # Lingering Maelstrom
        elif GetTalkListEntryResult() == 43:
            assert t380501_x50(81420, 1060, 9, -10, 99045042, 99046042, 99040040)
            continue
        # Distant Dance of Fire
        elif GetTalkListEntryResult() == 44:
            assert t380501_x50(81430, 1060, 9, -10, 99045043, 99046043, 99040040)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
     
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Ascend
def t380501_x50(itemlot=_, material=_, compare_val=_, removal_val=_, msg_1=_, msg_2=_, msg_3=_):
    # Ascend X?
    call = t380501_x51(action2=msg_1)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, material, 3, compare_val, 0) == 1:
            assert t380501_x52(action1=msg_3) # Insufficient X
        else:
            PlayerEquipmentQuantityChange(3, material, removal_val)
            GetItemFromItemLot(itemlot)
            
            # Crafted
            assert t380501_x52(action1=msg_2)
    elif call.Get() == 1:
        pass
    return 0
    
def t380501_x51(action2=_):
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
        
def t380501_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0