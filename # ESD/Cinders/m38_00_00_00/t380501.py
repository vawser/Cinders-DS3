# -*- coding: utf-8 -*-
def t380501_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t380501_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t380501_x1()
        assert not IsClientPlayer()

def t380501_x0():
    """State 0,1"""
    t380501_x3()
    Quit()

def t380501_x1():
    """State 0,1"""
    assert t380501_x2()
    """State 2"""
    return 0

def t380501_x2():
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

def t380501_x3():
    """State 0,1"""
    call = t380501_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t380501_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t380501_x5()
        if call.Done():
            """State 3"""
            call = t380501_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t380501_x6()
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
                call = t380501_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t380501_x2()
    Quit()

def t380501_x5():
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

def t380501_x6():
    """State 0,6"""
    assert t380501_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t380501_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t380501_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t380501_x2()
    """State 6"""
    return 0

def t380501_x8():
    """State 0,1"""
    assert t380501_x9()
    """State 24"""
    return 0

# Main Menu
def t380501_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Ascend Pyromancies
        AddTalkListData(1, 15004002, -1)
        
        # View Inventory
        AddTalkListData(2, 15004005, -1)
        
        # Talk
        AddTalkListData(3, 99010001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Ascend Pyromancies
        if GetTalkListEntryResult() == 1:
            assert t380501_x20()
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            OpenRegularShop(811000, 811999)
        # Talk
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t380501_x10(text1=10025000, flag1=0, mode1=0)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 5"""
            return 0
    return 0

def t380501_x10(text1=10025000, flag1=0, mode1=0):
    """State 0,4"""
    assert t380501_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t380501_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Ascension Menu
def t380501_x20():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Brume Fireball
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2400000, 4, 
        1, 0) == 1, 1, 99044000, -1)
        
        # Weakening Fire Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2402000, 4, 
        1, 0) == 1, 2, 99044001, -1)
        
        # Homing Chaos Fire Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2450000, 4, 
        1, 0) == 1, 3, 99044002, -1)
        
        # Brume Bursting Fireball
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2620000, 4, 
        1, 0) == 1, 4, 99044003, -1)
        
        # Distant Profaned Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2455000, 4, 
        1, 0) == 1, 5, 99044004, -1)
        
        # Chaos Vortex
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2456000, 4, 
        1, 0) == 1, 6, 99044005, -1)
        
        # Great Seething Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2660000, 4, 
        1, 0) == 1, 7, 99044006, -1)
        
        # Bloodthirsty Flame Fan
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2458000, 4, 
        1, 0) == 1, 8, 99044007, -1)
        
        # Brume Combustion
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2411000, 4, 
        1, 0) == 1, 9, 99044008, -1)
        
        # Bloodthirsty Fire Surge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2405000, 4, 
        1, 0) == 1, 10, 99044009, -1)
        
        # Chaos Fire Whip
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2452000, 4, 
        1, 0) == 1, 11, 99044010, -1)
        
        # Bloodthirsty Sacred Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2640000, 4, 
        1, 0) == 1, 12, 99044011, -1)
        
        # Outcry
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2403000, 4, 
        1, 0) == 1, 13, 99044012, -1)
        
        # Repeating Chaos Storm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2451000, 4, 
        1, 0) == 1, 14, 99044013, -1)
        
        # Bloodthirsty Lingering Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2701000, 4, 
        1, 0) == 1, 15, 99044014, -1)
        
        # Lingering Floating Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2457000, 4, 
        1, 0) == 1, 16, 99044015, -1)
        
        # Incinerating Chaos Beam
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2721000, 4, 
        1, 0) == 1, 17, 99044016, -1)
        
        # Great Cataclysm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2702000, 4, 
        1, 0) == 1, 18, 99044017, -1)
        
        # Swift Boulder Heave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2630000, 4,
        1, 0) == 1, 19, 99044018, -1)
        
        # Great Fecal Expulsion
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2720000, 4, 
        1, 0) == 1, 20, 99044019, -1)
        
        # Homing Heave Earth
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2711000, 4, 
        1, 0) == 1, 21, 99044020, -1)
        
        # Quickened Earthquake
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2712000, 4, 
        1, 0) == 1, 22, 99044021, -1)
        
        # Summon Earthfall
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2710000, 4, 
        1, 0) == 1, 23, 99044022, -1)
        
        # Lingering Acid Surge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2422000, 4, 
        1, 0) == 1, 24, 99044023, -1)
        
        # Lingering Poison Mist
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2420000, 4, 
        1, 0) == 1, 25, 99044024, -1)
        
        # Lingering Toxic Mist
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2421000, 4, 
        1, 0) == 1, 26, 99044025, -1)
        
        # Lingering Immolation
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2714000, 4, 
        1, 0) == 1, 27, 99044026, -1)
        
        # Fortified Rapport
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2436000, 4, 
        1, 0) == 1, 28, 99044027, -1)
        
        # Fond Warmth
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2470000, 4, 
        1, 0) == 1, 29, 99044028, -1)
        
        # Chaos Flame Arc
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2435000, 4, 
        1, 0) == 1, 30, 99044029, -1)
        
        # Lingering Carthus Beacon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2650000, 4, 
        1, 0) == 1, 31, 99044030, -1)
        
        # Lingering Power Within
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2440000, 4,
        1, 0) == 1, 32, 99044031, -1)
        
        # Great Flash Sweat
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2431000, 4, 
        1, 0) == 1, 33, 99044032, -1)
        
        # Refined Profuse Sweat
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2562000, 4, 
        1, 0) == 1, 34, 99044033, -1)
        
        # Lingering Iron Flesh
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2430000, 4, 
        1, 0) == 1, 35, 99044034, -1)
        
        # Lingering Rockflesh
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2713000, 4, 
        1, 0) == 1, 36, 99044035, -1)
        
        # Bloodthirsty Dust
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2722000, 4, 
        1, 0) == 1, 37, 99044036, -1)
        
        # Refined Magnetism
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2723000, 4, 
        1, 0) == 1, 38, 99044037, -1)
        
        # Great Geyser
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2725000, 4, 
        1, 0) == 1, 39, 99044038, -1)
        
        # Lingering Drizzle
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2726000, 4, 
        1, 0) == 1, 40, 99044039, -1)
        
        # Bloodthirsty Pulsating Mud
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2727000, 4, 
        1, 0) == 1, 41, 99044040, -1)
        
        # Bubble Prison
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2724000, 4, 
        1, 0) == 1, 42, 99044041, -1)
        
        # Lingering Maelstrom
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2728000, 4, 
        1, 0) == 1, 43, 99044042, -1)
        
        # Distant Dance of Fire
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2729000, 4, 
        1, 0) == 1, 44, 99044043, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t380501_x50(lot1=81000, goods1=1060, z1=9, z2=-10, action1=99045000, action2=99046000,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t380501_x50(lot1=81010, goods1=1060, z1=9, z2=-10, action1=99045001, action2=99046001,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t380501_x50(lot1=81020, goods1=1060, z1=14, z2=-15, action1=99045002, action2=99046002,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t380501_x50(lot1=81030, goods1=1060, z1=9, z2=-10, action1=99045003, action2=99046003,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t380501_x50(lot1=81040, goods1=1060, z1=14, z2=-15, action1=99045004, action2=99046004,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t380501_x50(lot1=81050, goods1=1060, z1=14, z2=-15, action1=99045005, action2=99046005,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t380501_x50(lot1=81060, goods1=1060, z1=19, z2=-20, action1=99045006, action2=99046006,
                    action3=99040043))
            continue
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t380501_x50(lot1=81070, goods1=1060, z1=9, z2=-10, action1=99045007, action2=99046007,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t380501_x50(lot1=81080, goods1=1060, z1=14, z2=-15, action1=99045008, action2=99046008,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t380501_x50(lot1=81090, goods1=1060, z1=9, z2=-10, action1=99045009, action2=99046009,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t380501_x50(lot1=81100, goods1=1060, z1=14, z2=-15, action1=99045010, action2=99046010,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t380501_x50(lot1=81110, goods1=1060, z1=9, z2=-10, action1=99045011, action2=99046011,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t380501_x50(lot1=81120, goods1=1060, z1=14, z2=-15, action1=99045012, action2=99046012,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t380501_x50(lot1=81130, goods1=1060, z1=14, z2=-15, action1=99045013, action2=99046013,
                    action3=99040041))
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t380501_x50(lot1=81140, goods1=1060, z1=9, z2=-10, action1=99045014, action2=99046014,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t380501_x50(lot1=81150, goods1=1060, z1=14, z2=-15, action1=99045015, action2=99046015,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t380501_x50(lot1=81160, goods1=1060, z1=14, z2=-15, action1=99045016, action2=99046016,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t380501_x50(lot1=81170, goods1=1060, z1=19, z2=-20, action1=99045017, action2=99046017,
                    action3=99040043))
            continue
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t380501_x50(lot1=81180, goods1=1060, z1=9, z2=-10, action1=99045018, action2=99046018,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t380501_x50(lot1=81190, goods1=1060, z1=14, z2=-15, action1=99045019, action2=99046019,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t380501_x50(lot1=81200, goods1=1060, z1=14, z2=-15, action1=99045020, action2=99046020,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t380501_x50(lot1=81210, goods1=1060, z1=14, z2=-15, action1=99045021, action2=99046021,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t380501_x50(lot1=81220, goods1=1060, z1=19, z2=-20, action1=99045022, action2=99046022,
                    action3=99040043))
            continue
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t380501_x50(lot1=81230, goods1=1060, z1=9, z2=-10, action1=99045023, action2=99046023,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t380501_x50(lot1=81240, goods1=1060, z1=14, z2=-15, action1=99045024, action2=99046024,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t380501_x50(lot1=81250, goods1=1060, z1=14, z2=-15, action1=99045025, action2=99046025,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t380501_x50(lot1=81260, goods1=1060, z1=9, z2=-10, action1=99045026, action2=99046026,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 28:
            """State 29"""
            assert (t380501_x50(lot1=81270, goods1=1060, z1=14, z2=-15, action1=99045027, action2=99046027,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 29:
            """State 30"""
            assert (t380501_x50(lot1=81280, goods1=1060, z1=14, z2=-15, action1=99045028, action2=99046028,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 30:
            """State 31"""
            assert (t380501_x50(lot1=81290, goods1=1060, z1=14, z2=-15, action1=99045029, action2=99046029,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 31:
            """State 32"""
            assert (t380501_x50(lot1=81300, goods1=1060, z1=14, z2=-15, action1=99045030, action2=99046030,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 32:
            """State 33"""
            assert (t380501_x50(lot1=81310, goods1=1060, z1=14, z2=-15, action1=99045031, action2=99046031,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 33:
            """State 34"""
            assert (t380501_x50(lot1=81320, goods1=1060, z1=9, z2=-10, action1=99045032, action2=99046032,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 34:
            """State 35"""
            assert (t380501_x50(lot1=81330, goods1=1060, z1=9, z2=-10, action1=99045033, action2=99046033,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 35:
            """State 36"""
            assert (t380501_x50(lot1=81340, goods1=1060, z1=9, z2=-10, action1=99045034, action2=99046034,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 36:
            """State 37"""
            assert (t380501_x50(lot1=81350, goods1=1060, z1=9, z2=-10, action1=99045035, action2=99046035,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 37:
            """State 38"""
            assert (t380501_x50(lot1=81360, goods1=1060, z1=9, z2=-10, action1=99045036, action2=99046036,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 38:
            """State 39"""
            assert (t380501_x50(lot1=81370, goods1=1060, z1=9, z2=-10, action1=99045037, action2=99046037,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 39:
            """State 40"""
            assert (t380501_x50(lot1=81380, goods1=1060, z1=14, z2=-15, action1=99045038, action2=99046038,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 40:
            """State 41"""
            assert (t380501_x50(lot1=81390, goods1=1060, z1=9, z2=-10, action1=99045039, action2=99046039,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 41:
            """State 42"""
            assert (t380501_x50(lot1=81400, goods1=1060, z1=9, z2=-10, action1=99045040, action2=99046040,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 42:
            """State 43"""
            assert (t380501_x50(lot1=81410, goods1=1060, z1=9, z2=-10, action1=99045041, action2=99046041,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 43:
            """State 44"""
            assert (t380501_x50(lot1=81420, goods1=1060, z1=9, z2=-10, action1=99045042, action2=99046042,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 44:
            """State 45"""
            assert (t380501_x50(lot1=81430, goods1=1060, z1=9, z2=-10, action1=99045043, action2=99046043,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 99:
            """State 46"""
            ReportConversationEndToHavokBehavior()
            return 0

def t380501_x50(lot1=_, goods1=1060, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t380501_x51(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t380501_x52(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t380501_x52(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t380501_x51(action1=_):
    """State 0,1"""
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t380501_x52(action3=_):
    """State 0,1"""
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

