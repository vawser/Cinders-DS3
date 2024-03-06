# -*- coding: utf-8 -*-
def t380000_1():
    """State 0,1"""
    t380000_x4()
    Quit()

def t380000_x0():
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

def t380000_x1(gesture1=17, z1=9019, flag3=6067):
    """State 0,1"""
    if GetEventStatus(flag3) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(gesture1)
        OpenItemAcquisitionMenu(3, z1, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

def t380000_x2(actionbutton1=_, flag1=6001, flag2=6000):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        assert CompareBonfireState(1)
        """State 4"""
        assert GetEventStatus(flag1) == 1 and not GetEventStatus(flag2)
        """State 3"""
        if CompareBonfireState(0):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
        elif (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
              and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif not GetEventStatus(flag1) or GetEventStatus(flag2) == 1:
            pass
    """State 5"""
    return 0

def t380000_x3(action1=10010713):
    """State 0,1"""
    # action:10010713:"Game installation incomplete.\nCannot travel between bonfires."
    OpenGenericDialog(1, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t380000_x4():
    """State 0"""
    while True:
        """State 1"""
        call = t380000_x5()
        assert IsMultiplayerInProgress() == 1
        """State 2"""
        call = t380000_x8()
        assert not IsMultiplayerInProgress()

def t380000_x5():
    """State 0,1"""
    if CompareBonfireLevel(5, 0) == 1:
        """State 2"""
        Label('L0')
    else:
        """State 3,15"""
        call = t380000_x2(actionbutton1=6100, flag1=6001, flag2=6000)
        if call.Done():
            """State 7"""
            TurnCharacterToFaceEntity(-1, 10000, -1)
            assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
            """State 4"""
            OfferHumanity()
            assert CompareBonfireLevel(5, 0) == 1
            """State 11"""
            RequestUnlockTrophy(41)
            """State 9"""
            UpdatePlayerRespawnPoint()
            Goto('L0')
        elif CompareBonfireLevel(5, 0) == 1:
            pass
    """State 14"""
    assert t380000_x2(actionbutton1=6101, flag1=6001, flag2=6000)
    """State 5"""
    ClearPlayerDamageInfo()
    """State 6"""
    SetTalkTime(1)
    """State 8"""
    TurnCharacterToFaceEntity(-1, 10000, -1)
    assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
    """State 10"""
    UpdatePlayerRespawnPoint()
    """State 12"""
    StartBonfireAnimLoop()
    call = t380000_x9()
    def ExitPause():
        EndBonfireKindleAnimLoop()
    if call.Done():
        Goto('L0')
    elif HasPlayerBeenAttacked() == 1 or GetDistanceToPlayer() > 3 or CompareBonfireState(0):
        """State 13"""
        assert t380000_x10()
        Goto('L0')

def t380000_x6():
    """State 0,6"""
    call = t380000_x0()
    if call.Done() and CompareBonfireLevel(5, 0) == 1:
        pass
    elif call.Done():
        """State 2,7"""
        call = t380000_x2(actionbutton1=6100, flag1=6001, flag2=6000)
        if call.Done():
            """State 4"""
            TurnCharacterToFaceEntity(-1, 10000, -1)
            assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
            """State 3"""
            OfferHumanity()
            """State 5"""
            UpdatePlayerRespawnPoint()
            assert CompareBonfireLevel(5, 0) == 1
        elif CompareBonfireLevel(5, 0) == 1:
            pass
    """State 1"""
    Quit()

def t380000_x7():
    """State 0,1"""
    assert t380000_x0()
    """State 2"""
    return 0

def t380000_x8():
    """State 0"""
    while True:
        """State 1"""
        call = t380000_x6()
        assert IsClientPlayer() == 1
        """State 2"""
        call = t380000_x7()
        assert not IsClientPlayer()

# Main Menu
def t380000_x9():
    """State 0,10"""
    assert GetCurrentStateElapsedTime() > 2
    """State 21"""
    assert t380000_x1(gesture1=17, z1=9019, flag3=6067)
    """State 17"""
    MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        """State 2"""
        
        # Travel
        AddTalkListData(1, 16000000, -1)
        
        # Level Up
        AddTalkListData(2, 16000001, -1)
        
        # Attunement
        AddTalkListData(3, 16000002, -1)
        
        # Organize Storage Box
        AddTalkListData(4, 16000009, -1)
        
        # Forge Item
        AddTalkListData(5, 16000007, -1)
        
        # Sacrifice Item
        AddTalkListData(6, 16000008, -1)
        
        # Open Smithbox
        AddTalkListDataIf(GetEventStatus(25009850) == 1, 7, 16000003, -1)
        
        # Open Spellkit
        AddTalkListDataIf(GetEventStatus(25009851) == 1 or 
        GetEventStatus(25009852) == 1 or
        GetEventStatus(25009853) == 1 or 
        GetEventStatus(25009854) == 1, 8, 16000011, -1)
        
        # Open Hunter's Toolkit
        AddTalkListDataIf(GetEventStatus(25009855) == 1, 9, 16000016, -1)
        
        # Leave
        AddTalkListData(99, 16000010, -1)
        
        """State 4"""
        ShowShopMessage(1)
        
        # Travel
        if GetTalkListEntryResult() == 1:
            """State 3"""
            if GetEventStatus(2030) == 1:
                """State 18,8"""
                StartWarpMenuInit(-1)
                assert GetCurrentStateElapsedFrames() > 1
                """State 12"""
                if WasWarpMenuDestinationSelected() == 1:
                    break
                elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                    """State 13"""
                    pass
            else:
                """State 16,20"""
                # action:10010713:"Game installation incomplete.\nCannot travel between bonfires."
                assert t380000_x3(action1=10010713)
        # Level Up
        elif GetTalkListEntryResult() == 2:
            """State 70,71"""
            OpenSoul()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        # Attunement
        elif GetTalkListEntryResult() == 3:
            """State 6,7"""
            OpenMagicEquip(1000, 1000)
            assert not (CheckSpecificPersonMenuIsOpen(11, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Organize Storage Box
        elif GetTalkListEntryResult() == 4:
            """State 14,15"""
            OpenRepository()
            assert not (CheckSpecificPersonMenuIsOpen(3, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Forge Item
        elif GetTalkListEntryResult() == 5:
            """State 91,92"""
            OpenRegularShop(36000, 36999)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        # Sacrifice Item
        elif GetTalkListEntryResult() == 6:
            """State 93,94"""
            OpenSellShop(-1, -1)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        # Open Smithbox
        elif GetTalkListEntryResult() == 7:
            assert t380000_x20()
            continue
        # Open Spellkit
        elif GetTalkListEntryResult() == 8:
            assert t380000_x30()
            continue
        # Open Hunter's Toolkit
        elif GetTalkListEntryResult() == 9:
            assert t380000_x80()
            continue
        # Leave
        elif (GetTalkListEntryResult() == 99 or not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not
              CheckSpecificPersonGenericDialogIsOpen(0))):
            """State 5,22"""
            return 0
    """State 11,19"""
    SetEventState(74000013, 1)
    """State 9"""
    Quit()

def t380000_x10():
    """State 0,1"""
    assert t380000_x0()
    """State 2"""
    return 0

# Smithbox Menu
def t380000_x20():
    while True:
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Reinforce Equipment
        AddTalkListDataIf(not GetEventStatus(25000055), 1, 16000004, -1)
        
        # Infuse Equipment
        AddTalkListData(2, 16000005, -1)
        
        # Repair Equipment
        AddTalkListData(3, 16000006, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Reinforce Equipment
        if GetTalkListEntryResult() == 1:
            """State 87,88"""
            CombineMenuFlagAndEventFlag(6001, 232)
            CombineMenuFlagAndEventFlag(6001, 233)
            CombineMenuFlagAndEventFlag(6001, 234)
            CombineMenuFlagAndEventFlag(6001, 235)
            """State 89"""
            OpenEnhanceShop(0)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        # Infuse Equipment
        elif GetTalkListEntryResult() == 2:
            """State 84,85"""
            CombineMenuFlagAndEventFlag(6001, 344)
            CombineMenuFlagAndEventFlag(6001, 337)
            CombineMenuFlagAndEventFlag(6001, 334)
            CombineMenuFlagAndEventFlag(300, 332)
            CombineMenuFlagAndEventFlag(300, 333)
            CombineMenuFlagAndEventFlag(300, 342)
            CombineMenuFlagAndEventFlag(301, 335)
            CombineMenuFlagAndEventFlag(301, 345)
            CombineMenuFlagAndEventFlag(301, 340)
            CombineMenuFlagAndEventFlag(302, 336)
            CombineMenuFlagAndEventFlag(302, 338)
            CombineMenuFlagAndEventFlag(302, 339)
            CombineMenuFlagAndEventFlag(303, 341)
            CombineMenuFlagAndEventFlag(303, 343)
            CombineMenuFlagAndEventFlag(303, 346)
            CombineMenuFlagAndEventFlag(6000, 347)
            CombineMenuFlagAndEventFlag(6001, 331)
            CombineMenuFlagAndEventFlag(6001, 232)
            CombineMenuFlagAndEventFlag(6001, 233)
            CombineMenuFlagAndEventFlag(6001, 234)
            CombineMenuFlagAndEventFlag(6001, 235)
            """State 86"""
            OpenEquipmentChangeOfPurposeShop()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        # Repair Equipment
        elif GetTalkListEntryResult() == 3:
            """State 90"""
            OpenRepairShop()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0
            
# Spellkit Menu
def t380000_x30():
    while True:
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Sorcerer's Spellkit
        AddTalkListDataIf(GetEventStatus(25009851), 1, 16000012, -1)
        
        # Pyromancer's Spellkit
        AddTalkListDataIf(GetEventStatus(25009852), 2, 16000013, -1)
        
        # Priest's Spellkit
        AddTalkListDataIf(GetEventStatus(25009853), 3, 16000014, -1)
        
        # Hexer's Spellkit
        AddTalkListDataIf(GetEventStatus(25009854), 4, 16000015, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Sorcerer's Spellkit
        if GetTalkListEntryResult() == 1:
            assert t380000_x40()
            continue
        # Pyromancer's Spellkit
        elif GetTalkListEntryResult() == 2:
            assert t380000_x50()
            continue
        # Priest's Spellkit
        elif GetTalkListEntryResult() == 3:
            assert t380000_x60()
            continue
        # Hexer's Spellkit
        elif GetTalkListEntryResult() == 4:
            assert t380000_x70()
            continue
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0
            

# Sorcerer's Spellkit
def t380000_x40():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Bloodthirsty Farron Dart
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1200000, 4, 
        1, 0) == 1, 1, 99041000, -1)
        
        # Swift Soul Wave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1802000, 4, 
        1, 0) == 1, 2, 99041001, -1)
        
        # Explosive Soul Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1300000, 4, 
        1, 0) == 1, 3, 99041002, -1)
        
        # Swift Soul Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1306000, 4, 
        1, 0) == 1, 4, 99041003, -1)
        
        # Homing Crystal Soul Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1307000, 4, 
        1, 0) == 1, 5, 99041004, -1)
        
        # Extended White Dragon Breath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1370000, 4, 
        1, 0) == 1, 6, 99041005, -1)
        
        # Bloodthirsty Flashsword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1375000, 4, 
        1, 0) == 1, 7, 99041006, -1)
        
        # Heavy Soul Greatsword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1374000, 4, 
        1, 0) == 1, 8, 99041007, -1)
        
        # Heavy Old Moonlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1376000, 4, 
        1, 0) == 1, 9, 99041008, -1)
        
        # Surging Soulmass
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1304000, 4, 
        1, 0) == 1, 10, 99041009, -1)
        
        # Weakening Crystal Soulmass
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1305000, 4, 
        1, 0) == 1, 11, 99041010, -1)
        
        # Repeating Soul Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1210000, 4, 
        1, 0) == 1, 12, 99041011, -1)
        
        # Repeating Crystal Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1301000, 4, 
        1, 0) == 1, 13, 99041012, -1)
        
        # Farron Swarm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1372000, 4, 
        1, 0) == 1, 14, 99041013, -1)
        
        # Focused Crystal Hail
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1373000, 4, 
        1, 0) == 1, 15, 99041014, -1)
        
        # Swift Orbs of Judgment
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1805000, 4, 
        1, 0) == 1, 16, 99041015, -1)
        
        # Repeating Crystal Storm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1800000, 4, 
        1, 0) == 1, 17, 99041016, -1)
        
        # Repeating Blizzard
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1803000, 4, 
        1, 0) == 1, 18, 99041017, -1)
        
        # Quickened Soul Stream
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1620000, 4, 
        1, 0) == 1, 19, 99041018, -1)
        
        # Crystal Soul Geyser
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1303000, 4, 
        1, 0) == 1, 20, 99041019, -1)
        
        # Lingering Pestilent Mist
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1740000, 4,
        1, 0) == 1, 21, 99041020, -1)
        
        # Lingering Snap Freeze
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1741000, 4, 
        1, 0) == 1, 22, 99041021, -1)
        
        # Refined Shockwave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1302000, 4, 
        1, 0) == 1, 23, 99041022, -1)
        
        # Refined Blinding Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1807000, 4, 
        1, 0) == 1, 24, 99041023, -1)
        
        # Impenetrable Wall of Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1651000, 4, 
        1, 0) == 1, 25, 99041024, -1)
        
        # Refined Aural Decoy
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1356000, 4, 
        1, 0) == 1, 26, 99041025, -1)
        
        # Skilled Repair
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1353000, 4, 
        1, 0) == 1, 27, 99041026, -1)
        
        # Moonlight Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1312000, 4, 
        1, 0) == 1, 30, 99041029, -1)
        
        # Supreme Frozen Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1313000, 4, 
        1, 0) == 1, 31, 99041030, -1)
        
        # Refined Hidden Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1340000, 4, 
        1, 0) == 1, 32, 99041031, -1)
        
        # Supreme Magic Shield
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1331000, 4, 
        1, 0) == 1, 34, 99041033, -1)
        
        # Lingering Unleash Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1801000, 4, 
        1, 0) == 1, 35, 99041034, -1)
        
        # Mass Spook
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1354000, 4, 
        1, 0) == 1, 36, 99041035, -1)
        
        # Mass Hidden Body
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1341000, 4, 
        1, 0) == 1, 37, 99041036, -1)
        
        # Refined Chameleon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1355000, 4, 
        1, 0) == 1, 38, 99041037, -1)
        
        # Refined Cast Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1350000, 4, 
        1, 0) == 1, 39, 99041038, -1)
        
        # Frigid Roar
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808000, 4, 
        1, 0) == 1, 40, 99041039, -1)
        
        # Lingering Hail of Blades
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808100, 4, 
        1, 0) == 1, 41, 99041040, -1)
        
        # Explosive Ice
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808200, 4, 
        1, 0) == 1, 42, 99041041, -1)
        
        # Chilling Rime
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808300, 4, 
        1, 0) == 1, 43, 99041042, -1)
        
        # Refined Path of Frost
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808400, 4, 
        1, 0) == 1, 44, 99041043, -1)
        
        # Quickened Discs of Dorthinus
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808500, 4, 
        1, 0) == 1, 45, 99041044, -1)
        
        # Refined Teleport
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1809000, 4, 
        1, 0) == 1, 46, 99041045, -1)
        
        # Soul Explosion
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1810000, 4, 
        1, 0) == 1, 47, 99041046, -1)
        
        # Explosive Crystal Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1811000, 4, 
        1, 0) == 1, 48, 99041047, -1)
        
        # Lingering Soul Instability
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1812000, 4, 
        1, 0) == 1, 49, 99041048, -1)
        
        # Bloodthirsty Ice Burn
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1813000, 4, 
        1, 0) == 1, 50, 99041049, -1)
        
        # Lingering Frigid Orbs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1814000, 4, 
        1, 0) == 1, 51, 99041050, -1)
        
        # Quickened Frozen Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1815000, 4, 
        1, 0) == 1, 52, 99041051, -1)
        
        # Great Rupturing Frostfire
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1816000, 4, 
        1, 0) == 1, 53, 99041052, -1)
        
        # Great Frostfire Volley
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1817000, 4, 
        1, 0) == 1, 54, 99041053, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Bloodthirsty Farron Dart
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t380000_x41(lot1=80000, goods1=1070, z1=9, z2=-10, action1=99042000, action2=99043000,
                    action3=99040010))
            continue
        # Swift Soul Wave
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t380000_x41(lot1=80010, goods1=1070, z1=9, z2=-10, action1=99042001, action2=99043001,
                    action3=99040010))
            continue
        # Explosive Soul Arrow
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t380000_x41(lot1=80020, goods1=1070, z1=9, z2=-10, action1=99042002, action2=99043002,
                    action3=99040010))
            continue
        # Swift Soul Spear
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t380000_x41(lot1=80030, goods1=1070, z1=14, z2=-15, action1=99042003, action2=99043003,
                    action3=99040011))
            continue
        # Homing Crystal Soul Spear
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t380000_x41(lot1=80040, goods1=1070, z1=14, z2=-15, action1=99042004, action2=99043004,
                    action3=99040011))
            continue
        # Extended White Dragon Breath
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t380000_x41(lot1=80050, goods1=1070, z1=14, z2=-15, action1=99042005, action2=99043005,
                    action3=99040011))
            continue
        # Bloodthirsty Flashsword
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t380000_x41(lot1=80060, goods1=1070, z1=9, z2=-10, action1=99042006, action2=99043006,
                    action3=99040010))
            continue
        # Heavy Soul Greatsword
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t380000_x41(lot1=80070, goods1=1070, z1=14, z2=-15, action1=99042007, action2=99043007,
                    action3=99040011))
            continue
        # Heavy Old Moonlight
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t380000_x41(lot1=80080, goods1=1070, z1=14, z2=-15, action1=99042008, action2=99043008,
                    action3=99040011))
            continue
        # Surging Soulmass
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t380000_x41(lot1=80090, goods1=1070, z1=19, z2=-20, action1=99042009, action2=99043009,
                    action3=99040012))
            continue
        # Weakening Crystal Soulmass
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t380000_x41(lot1=80100, goods1=1070, z1=19, z2=-20, action1=99042010, action2=99043010,
                    action3=99040012))
            continue
        # Repeating Soul Orb
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t380000_x41(lot1=80110, goods1=1070, z1=9, z2=-10, action1=99042011, action2=99043011,
                    action3=99040010))
            continue
        # Repeating Crystal Orb
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t380000_x41(lot1=80120, goods1=1070, z1=14, z2=-15, action1=99042012, action2=99043012,
                    action3=99040011))
            continue
        # Farron Swarm
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t380000_x41(lot1=80130, goods1=1070, z1=9, z2=-10, action1=99042013, action2=99043013,
                    action3=99040010))
            continue
        # Focused Crystal Hail
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t380000_x41(lot1=80140, goods1=1070, z1=14, z2=-15, action1=99042014, action2=99043014,
                    action3=99040011))
            continue
        # Swift Orbs of Judgment
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t380000_x41(lot1=80150, goods1=1070, z1=14, z2=-15, action1=99042015, action2=99043015,
                    action3=99040011))
            continue
        # Repeating Crystal Storm
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t380000_x41(lot1=80160, goods1=1070, z1=14, z2=-15, action1=99042016, action2=99043016,
                    action3=99040011))
            continue
        # Repeating Blizzard
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t380000_x41(lot1=80170, goods1=1070, z1=14, z2=-15, action1=99042017, action2=99043017,
                    action3=99040011))
            continue
        # Quickened Soul Stream
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t380000_x41(lot1=80180, goods1=1070, z1=19, z2=-20, action1=99042018, action2=99043018,
                    action3=99040012))
            continue
        # Crystal Soul Geyser
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t380000_x41(lot1=80190, goods1=1070, z1=19, z2=-20, action1=99042019, action2=99043019,
                    action3=99040012))
            continue
        # Lingering Pestilent Mist
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t380000_x41(lot1=80200, goods1=1070, z1=14, z2=-15, action1=99042020, action2=99043020,
                    action3=99040011))
            continue
        # Lingering Snap Freeze
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t380000_x41(lot1=80210, goods1=1070, z1=9, z2=-10, action1=99042021, action2=99043021,
                    action3=99040010))
            continue
        # Refined Shockwave
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t380000_x41(lot1=80220, goods1=1070, z1=9, z2=-10, action1=99042022, action2=99043022,
                    action3=99040010))
            continue
        # Refined Blinding Light
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t380000_x41(lot1=80230, goods1=1070, z1=9, z2=-10, action1=99042023, action2=99043023,
                    action3=99040010))
            continue
        # Impenetrable Wall of Light
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t380000_x41(lot1=80240, goods1=1070, z1=9, z2=-10, action1=99042024, action2=99043024,
                    action3=99040010))
            continue
        # Refined Aural Decoy
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t380000_x41(lot1=80250, goods1=1070, z1=9, z2=-10, action1=99042025, action2=99043025,
                    action3=99040010))
            continue
        # Skilled Repair
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t380000_x41(lot1=80260, goods1=1070, z1=9, z2=-10, action1=99042026, action2=99043026,
                    action3=99040010))
            continue
        # Moonlight Weapon
        elif GetTalkListEntryResult() == 30:
            """State 29"""
            assert (t380000_x41(lot1=80290, goods1=1070, z1=14, z2=-15, action1=99042029, action2=99043029,
                    action3=99040011))
            continue
        # Supreme Frozen Weapon
        elif GetTalkListEntryResult() == 31:
            """State 30"""
            assert (t380000_x41(lot1=80300, goods1=1070, z1=9, z2=-10, action1=99042030, action2=99043030,
                    action3=99040010))
            continue
        # Refined Hidden Weapon
        elif GetTalkListEntryResult() == 32:
            """State 31"""
            assert (t380000_x41(lot1=80310, goods1=1070, z1=9, z2=-10, action1=99042031, action2=99043031,
                    action3=99040010))
            continue
        # Supreme Magic Shield
        elif GetTalkListEntryResult() == 34:
            """State 32"""
            assert (t380000_x41(lot1=80330, goods1=1070, z1=14, z2=-15, action1=99042033, action2=99043033,
                    action3=99040011))
            continue
        # Lingering Unleash Magic
        elif GetTalkListEntryResult() == 35:
            """State 33"""
            assert (t380000_x41(lot1=80340, goods1=1070, z1=14, z2=-15, action1=99042034, action2=99043034,
                    action3=99040011))
            continue
        # Mass Spook
        elif GetTalkListEntryResult() == 36:
            """State 34"""
            assert (t380000_x41(lot1=80350, goods1=1070, z1=9, z2=-10, action1=99042035, action2=99043035,
                    action3=99040010))
            continue
        # Mass Hidden Body
        elif GetTalkListEntryResult() == 37:
            """State 35"""
            assert (t380000_x41(lot1=80360, goods1=1070, z1=9, z2=-10, action1=99042036, action2=99043036,
                    action3=99040010))
            continue
        # Refined Chameleon
        elif GetTalkListEntryResult() == 38:
            """State 36"""
            assert (t380000_x41(lot1=80370, goods1=1070, z1=9, z2=-10, action1=99042037, action2=99043037,
                    action3=99040010))
            continue
        # Refined Cast Light
        elif GetTalkListEntryResult() == 39:
            """State 37"""
            assert (t380000_x41(lot1=80380, goods1=1070, z1=9, z2=-10, action1=99042038, action2=99043038,
                    action3=99040010))
            continue
        # Frigid Roar
        elif GetTalkListEntryResult() == 40:
            """State 38"""
            assert (t380000_x41(lot1=80390, goods1=1070, z1=9, z2=-10, action1=99042039, action2=99043039,
                    action3=99040010))
            continue
        # Lingering Hail of Blades
        elif GetTalkListEntryResult() == 41:
            """State 39"""
            assert (t380000_x41(lot1=80400, goods1=1070, z1=9, z2=-10, action1=99042040, action2=99043040,
                    action3=99040010))
            continue
        # Explosive Ice
        elif GetTalkListEntryResult() == 42:
            """State 40"""
            assert (t380000_x41(lot1=80410, goods1=1070, z1=9, z2=-10, action1=99042041, action2=99043041,
                    action3=99040011))
            continue
        # Chilling Rime
        elif GetTalkListEntryResult() == 43:
            """State 41"""
            assert (t380000_x41(lot1=80420, goods1=1070, z1=14, z2=-15, action1=99042042, action2=99043042,
                    action3=99040011))
            continue
        # Refined Path of Frost
        elif GetTalkListEntryResult() == 44:
            """State 42"""
            assert (t380000_x41(lot1=80430, goods1=1070, z1=9, z2=-10, action1=99042043, action2=99043043,
                    action3=99040010))
            continue
        # Quickened Discs of Dorthinus
        elif GetTalkListEntryResult() == 45:
            """State 43"""
            assert (t380000_x41(lot1=80440, goods1=1070, z1=14, z2=-15, action1=99042044, action2=99043044,
                    action3=99040011))
            continue
        # Refined Teleport
        elif GetTalkListEntryResult() == 46:
            """State 44"""
            assert (t380000_x41(lot1=80450, goods1=1070, z1=14, z2=-15, action1=99042045, action2=99043045,
                    action3=99040011))
            continue
        # Soul Explosion
        elif GetTalkListEntryResult() == 47:
            """State 45"""
            assert (t380000_x41(lot1=80460, goods1=1070, z1=9, z2=-10, action1=99042046, action2=99043046,
                    action3=99040010))
            continue
        # Explosive Crystal Orb
        elif GetTalkListEntryResult() == 48:
            """State 46"""
            assert (t380000_x41(lot1=80470, goods1=1070, z1=14, z2=-15, action1=99042047, action2=99043047,
                    action3=99040011))
            continue
        # Lingering Soul Instability
        elif GetTalkListEntryResult() == 49:
            """State 47"""
            assert (t380000_x41(lot1=80480, goods1=1070, z1=14, z2=-15, action1=99042048, action2=99043048,
                    action3=99040011))
            continue
        # Bloodthirsty Ice Burn
        elif GetTalkListEntryResult() == 50:
            """State 48"""
            assert (t380000_x41(lot1=80490, goods1=1070, z1=14, z2=-15, action1=99042049, action2=99043049,
                    action3=99040011))
            continue
        # Lingering Frigid Orbs
        elif GetTalkListEntryResult() == 51:
            """State 49"""
            assert (t380000_x41(lot1=80500, goods1=1070, z1=14, z2=-15, action1=99042050, action2=99043050,
                    action3=99040011))
            continue
        # Quickened Frozen Chaos
        elif GetTalkListEntryResult() == 52:
            """State 50"""
            assert (t380000_x41(lot1=80510, goods1=1070, z1=14, z2=-15, action1=99042051, action2=99043051,
                    action3=99040011))
            continue
        # Great Rupturing Frostfire
        elif GetTalkListEntryResult() == 53:
            """State 51"""
            assert (t380000_x41(lot1=80520, goods1=1070, z1=14, z2=-15, action1=99042052, action2=99043052,
                    action3=99040011))
            continue
        # Great Frostfire Volley
        elif GetTalkListEntryResult() == 54:
            assert (t380000_x41(lot1=80530, goods1=1070, z1=14, z2=-15, action1=99042053, action2=99043053,
                    action3=99040011))
            continue
        elif GetTalkListEntryResult() == 99:
            """State 52"""
            ReportConversationEndToHavokBehavior()
            return 0

def t380000_x41(lot1=_, goods1=1070, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t380000_x100(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t380000_x101(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t380000_x101(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0


# Pyromancer's Spellkit
def t380000_x50():
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
            assert (t380000_x51(lot1=81000, goods1=1060, z1=9, z2=-10, action1=99045000, action2=99046000,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t380000_x51(lot1=81010, goods1=1060, z1=9, z2=-10, action1=99045001, action2=99046001,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t380000_x51(lot1=81020, goods1=1060, z1=14, z2=-15, action1=99045002, action2=99046002,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t380000_x51(lot1=81030, goods1=1060, z1=9, z2=-10, action1=99045003, action2=99046003,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t380000_x51(lot1=81040, goods1=1060, z1=14, z2=-15, action1=99045004, action2=99046004,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t380000_x51(lot1=81050, goods1=1060, z1=14, z2=-15, action1=99045005, action2=99046005,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t380000_x51(lot1=81060, goods1=1060, z1=19, z2=-20, action1=99045006, action2=99046006,
                    action3=99040043))
            continue
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t380000_x51(lot1=81070, goods1=1060, z1=9, z2=-10, action1=99045007, action2=99046007,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t380000_x51(lot1=81080, goods1=1060, z1=14, z2=-15, action1=99045008, action2=99046008,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t380000_x51(lot1=81090, goods1=1060, z1=9, z2=-10, action1=99045009, action2=99046009,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t380000_x51(lot1=81100, goods1=1060, z1=14, z2=-15, action1=99045010, action2=99046010,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t380000_x51(lot1=81110, goods1=1060, z1=9, z2=-10, action1=99045011, action2=99046011,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t380000_x51(lot1=81120, goods1=1060, z1=14, z2=-15, action1=99045012, action2=99046012,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t380000_x51(lot1=81130, goods1=1060, z1=14, z2=-15, action1=99045013, action2=99046013,
                    action3=99040041))
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t380000_x51(lot1=81140, goods1=1060, z1=9, z2=-10, action1=99045014, action2=99046014,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t380000_x51(lot1=81150, goods1=1060, z1=14, z2=-15, action1=99045015, action2=99046015,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t380000_x51(lot1=81160, goods1=1060, z1=14, z2=-15, action1=99045016, action2=99046016,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t380000_x51(lot1=81170, goods1=1060, z1=19, z2=-20, action1=99045017, action2=99046017,
                    action3=99040043))
            continue
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t380000_x51(lot1=81180, goods1=1060, z1=9, z2=-10, action1=99045018, action2=99046018,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t380000_x51(lot1=81190, goods1=1060, z1=14, z2=-15, action1=99045019, action2=99046019,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t380000_x51(lot1=81200, goods1=1060, z1=14, z2=-15, action1=99045020, action2=99046020,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t380000_x51(lot1=81210, goods1=1060, z1=14, z2=-15, action1=99045021, action2=99046021,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t380000_x51(lot1=81220, goods1=1060, z1=19, z2=-20, action1=99045022, action2=99046022,
                    action3=99040043))
            continue
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t380000_x51(lot1=81230, goods1=1060, z1=9, z2=-10, action1=99045023, action2=99046023,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t380000_x51(lot1=81240, goods1=1060, z1=14, z2=-15, action1=99045024, action2=99046024,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t380000_x51(lot1=81250, goods1=1060, z1=14, z2=-15, action1=99045025, action2=99046025,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t380000_x51(lot1=81260, goods1=1060, z1=9, z2=-10, action1=99045026, action2=99046026,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 28:
            """State 29"""
            assert (t380000_x51(lot1=81270, goods1=1060, z1=14, z2=-15, action1=99045027, action2=99046027,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 29:
            """State 30"""
            assert (t380000_x51(lot1=81280, goods1=1060, z1=14, z2=-15, action1=99045028, action2=99046028,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 30:
            """State 31"""
            assert (t380000_x51(lot1=81290, goods1=1060, z1=14, z2=-15, action1=99045029, action2=99046029,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 31:
            """State 32"""
            assert (t380000_x51(lot1=81300, goods1=1060, z1=14, z2=-15, action1=99045030, action2=99046030,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 32:
            """State 33"""
            assert (t380000_x51(lot1=81310, goods1=1060, z1=14, z2=-15, action1=99045031, action2=99046031,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 33:
            """State 34"""
            assert (t380000_x51(lot1=81320, goods1=1060, z1=9, z2=-10, action1=99045032, action2=99046032,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 34:
            """State 35"""
            assert (t380000_x51(lot1=81330, goods1=1060, z1=9, z2=-10, action1=99045033, action2=99046033,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 35:
            """State 36"""
            assert (t380000_x51(lot1=81340, goods1=1060, z1=9, z2=-10, action1=99045034, action2=99046034,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 36:
            """State 37"""
            assert (t380000_x51(lot1=81350, goods1=1060, z1=9, z2=-10, action1=99045035, action2=99046035,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 37:
            """State 38"""
            assert (t380000_x51(lot1=81360, goods1=1060, z1=9, z2=-10, action1=99045036, action2=99046036,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 38:
            """State 39"""
            assert (t380000_x51(lot1=81370, goods1=1060, z1=9, z2=-10, action1=99045037, action2=99046037,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 39:
            """State 40"""
            assert (t380000_x51(lot1=81380, goods1=1060, z1=14, z2=-15, action1=99045038, action2=99046038,
                    action3=99040041))
            continue
        elif GetTalkListEntryResult() == 40:
            """State 41"""
            assert (t380000_x51(lot1=81390, goods1=1060, z1=9, z2=-10, action1=99045039, action2=99046039,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 41:
            """State 42"""
            assert (t380000_x51(lot1=81400, goods1=1060, z1=9, z2=-10, action1=99045040, action2=99046040,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 42:
            """State 43"""
            assert (t380000_x51(lot1=81410, goods1=1060, z1=9, z2=-10, action1=99045041, action2=99046041,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 43:
            """State 44"""
            assert (t380000_x51(lot1=81420, goods1=1060, z1=9, z2=-10, action1=99045042, action2=99046042,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 44:
            """State 45"""
            assert (t380000_x51(lot1=81430, goods1=1060, z1=9, z2=-10, action1=99045043, action2=99046043,
                    action3=99040040))
            continue
        elif GetTalkListEntryResult() == 99:
            """State 46"""
            ReportConversationEndToHavokBehavior()
            return 0

def t380000_x51(lot1=_, goods1=1060, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t380000_x100(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t380000_x101(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t380000_x101(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

# Priest's Spellkit
def t380000_x60():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Bloodthirsty Lightning Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3509000, 4, 
        1, 0) == 1, 1, 99047000, -1)
        
        # Lightning Surge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3550000, 4, 
        1, 0) == 1, 2, 99047001, -1)
        
        # Storm Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3551000, 4, 
        1, 0) == 1, 3, 99047002, -1)
        
        # Fulgurant Sunlight Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3552000, 4, 
        1, 0) == 1, 4, 99047003, -1)
        
        # Weakening Wrathful Orbs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3819000, 4, 
        1, 0) == 1, 5, 99047004, -1)
        
        # Wrathful Wave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3821000, 4,
        1, 0) == 1, 6, 99047005, -1)
        
        # Quickened Holy Schism
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3820000, 4, 
        1, 0) == 1, 7, 99047006, -1)
        
        # Sunlight Stake
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3710000, 4, 
        1, 0) == 1, 8, 99047007, -1)
        
        # Sunlight Storm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3553000, 4, 
        1, 0) == 1, 9, 99047008, -1)
        
        # Repeating Heavenly Thunder
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3802000, 4, 
        1, 0) == 1, 10, 99047009, -1)
        
        # Lingering Overwhelming Power
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3818000, 4, 
        1, 0) == 1, 11, 99047010, -1)
        
        # Bloodthirsty Way of White Corona
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3556000, 4, 
        1, 0) == 1, 12, 99047011, -1)
        
        # Quickened Halo
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3803000, 4, 
        1, 0) == 1, 13, 99047012, -1)
        
        # Bloodthirsty Divine Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3813000, 4, 
        1, 0) == 1, 14, 99047013, -1)
        
        # Homing Lothric's Holy Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3814000, 4, 
        1, 0) == 1, 15, 99047014, -1)
        
        # Refined Force
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3530000, 4, 
        1, 0) == 1, 16, 99047015, -1)
        
        # Quickened Wrath of the Gods
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3531000, 4, 
        1, 0) == 1, 17, 99047016, -1)
        
        # Emit Wrath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3532000, 4, 
        1, 0) == 1, 18, 99047017, -1)
        
        # Repeating Pillars of Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3720000, 4, 
        1, 0) == 1, 19, 99047018, -1)
        
        # Angelic Punishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3812000, 4, 
        1, 0) == 1, 20, 99047019, -1)
        
        # Repeating Proof of a Pact
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3815000, 4, 
        1, 0) == 1, 21, 99047020, -1)
        
        # Extended Ghostly Assault
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3816000, 4, 
        1, 0) == 1, 22, 99047021, -1)
        
        # Extended Heal Aid
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3490000, 4, 
        1, 0) == 1, 23, 99047022, -1)
        
        # Extended Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3500000, 4, 
        1, 0) == 1, 24, 99047023, -1)
        
        # Extended Med Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3501000, 4, 
        1, 0) == 1, 25, 99047024, -1)
        
        # Extended Great Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3502000, 4, 
        1, 0) == 1, 26, 99047025, -1)
        
        # Extended Soothing Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3503000, 4, 
        1, 0) == 1, 27, 99047026, -1)
        
        # Extended Projected Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3557000, 4, 
        1, 0) == 1, 28, 99047027, -1)
        
        # Lingering Replenishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3504000, 4, 
        1, 0) == 1, 29, 99047028, -1)
        
        # Lingering Bountiful Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3507000, 4, 
        1, 0) == 1, 30, 99047029, -1)
        
        # Lingering Bountiful Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3505000, 4, 
        1, 0) == 1, 31, 99047030, -1)
        
        # Quickened Caressing Tears
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3508000, 4, 
        1, 0) == 1, 32, 99047031, -1)
        
        # Sunlight Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3590000, 4, 
        1, 0) == 1, 33, 99047032, -1)
        
        # Holy Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3760000, 4, 
        1, 0) == 1, 34, 99047033, -1)
        
        # Supreme Darkmoon Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3591000, 4, 
        1, 0) == 1, 35, 99047034, -1)
        
        # Supreme Magic Barrier
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3561000, 4, 
        1, 0) == 1, 37, 99047036, -1)
        
        # Extended Sacred Oath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3563000, 4, 
        1, 0) == 1, 38, 99047037, -1)
        
        # Divine Relief
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3540000, 4, 
        1, 0) == 1, 39, 99047038, -1)
        
        # Lingering Perseverance
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3805000, 4, 
        1, 0) == 1, 40, 99047039, -1)
        
        # Mass Tears of Denial
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3520000, 4, 
        1, 0) == 1, 41, 99047040, -1)
        
        # Refined Homeward
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3521000, 4, 
        1, 0) == 1, 42, 99047041, -1)
    
        # Gwynevere's Refined Abnegation
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3822000, 4, 
        1, 0) == 1, 43, 99047042, -1)
        
        # Lingering Lightning Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3823000, 4, 
        1, 0) == 1, 44, 99047043, -1)
        
        # Lingering Whirlwind
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3824000, 4, 
        1, 0) == 1, 45, 99047044, -1)
        
        # Distant Blast Wave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3825000, 4, 
        1, 0) == 1, 46, 99047045, -1)
        
        # Bloodthirsty Squall
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3826000, 4, 
        1, 0) == 1, 47, 99047046, -1)
        
        # Swift Slicing Wind
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3827000, 4, 
        1, 0) == 1, 48, 99047047, -1)
        
        # Weakening Gale Force
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3828000, 4, 
        1, 0) == 1, 49, 99047048, -1)
        
        # Explosive Cyclone Blast
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3829000, 4, 
        1, 0) == 1, 50, 99047049, -1)
        
        # Lingering Static Field
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3830000, 4, 
        1, 0) == 1, 51, 99047050, -1)
        
        # Lingering Tailwind
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3831000, 4, 
        1, 0) == 1, 52, 99047051, -1)
        
        # Lingering Shredding Winds
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3832000, 4, 
        1, 0) == 1, 53, 99047052, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t380000_x61(lot1=82000, goods1=1090, z1=9, z2=-10, action1=99048000, action2=99049000,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t380000_x61(lot1=82010, goods1=1090, z1=9, z2=-10, action1=99048001, action2=99049001,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t380000_x61(lot1=82020, goods1=1090, z1=14, z2=-15, action1=99048002, action2=99049002,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t380000_x61(lot1=82030, goods1=1090, z1=14, z2=-15, action1=99048003, action2=99049003,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t380000_x61(lot1=82040, goods1=1090, z1=19, z2=-20, action1=99048004, action2=99049004,
                    action3=99040022))
            continue
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t380000_x61(lot1=82050, goods1=1090, z1=9, z2=-10, action1=99048005, action2=99049005,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t380000_x61(lot1=82060, goods1=1090, z1=14, z2=-15, action1=99048006, action2=99049006,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t380000_x61(lot1=82070, goods1=1090, z1=14, z2=-15, action1=99048007, action2=99049007,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t380000_x61(lot1=82080, goods1=1090, z1=14, z2=-15, action1=99048008, action2=99049008,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t380000_x61(lot1=82090, goods1=1090, z1=19, z2=-20, action1=99048009, action2=99049009,
                    action3=99040022))
            continue
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t380000_x61(lot1=82100, goods1=1090, z1=14, z2=-15, action1=99048010, action2=99049010,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t380000_x61(lot1=82110, goods1=1090, z1=9, z2=-10, action1=99048011, action2=99049011,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t380000_x61(lot1=82120, goods1=1090, z1=14, z2=-15, action1=99048012, action2=99049012,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t380000_x61(lot1=82130, goods1=1090, z1=9, z2=-10, action1=99048013, action2=99049013,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t380000_x61(lot1=82140, goods1=1090, z1=14, z2=-15, action1=99048014, action2=99049014,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t380000_x61(lot1=82150, goods1=1090, z1=9, z2=-10, action1=99048015, action2=99049015,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t380000_x61(lot1=82160, goods1=1090, z1=19, z2=-20, action1=99048016, action2=99049016,
                    action3=99040022))
            continue
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t380000_x61(lot1=82170, goods1=1090, z1=14, z2=-15, action1=99048017, action2=99049017,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t380000_x61(lot1=82180, goods1=1090, z1=14, z2=-15, action1=99048018, action2=99049018,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t380000_x61(lot1=82190, goods1=1090, z1=19, z2=-20, action1=99048019, action2=99049019,
                    action3=99040022))
            continue
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t380000_x61(lot1=82200, goods1=1090, z1=14, z2=-15, action1=99048020, action2=99049020,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t380000_x61(lot1=82210, goods1=1090, z1=14, z2=-15, action1=99048021, action2=99049021,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t380000_x61(lot1=82220, goods1=1090, z1=9, z2=-10, action1=99048022, action2=99049022,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t380000_x61(lot1=82230, goods1=1090, z1=9, z2=-10, action1=99048023, action2=99049023,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t380000_x61(lot1=82240, goods1=1090, z1=9, z2=-10, action1=99048024, action2=99049024,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t380000_x61(lot1=82250, goods1=1090, z1=9, z2=-10, action1=99048025, action2=99049025,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t380000_x61(lot1=82260, goods1=1090, z1=9, z2=-10, action1=99048026, action2=99049026,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 28:
            """State 29"""
            assert (t380000_x61(lot1=82270, goods1=1090, z1=9, z2=-10, action1=99048027, action2=99049027,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 29:
            """State 30"""
            assert (t380000_x61(lot1=82280, goods1=1090, z1=14, z2=-15, action1=99048028, action2=99049028,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 30:
            """State 31"""
            assert (t380000_x61(lot1=82290, goods1=1090, z1=14, z2=-15, action1=99048029, action2=99049029,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 31:
            """State 32"""
            assert (t380000_x61(lot1=82300, goods1=1090, z1=19, z2=-20, action1=99048030, action2=99049030,
                    action3=99040022))
            continue
        elif GetTalkListEntryResult() == 32:
            """State 33"""
            assert (t380000_x61(lot1=82310, goods1=1090, z1=9, z2=-10, action1=99048031, action2=99049031,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 33:
            """State 34"""
            assert (t380000_x61(lot1=82320, goods1=1090, z1=14, z2=-15, action1=99048032, action2=99049032,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 34:
            """State 35"""
            assert (t380000_x61(lot1=82330, goods1=1090, z1=14, z2=-15, action1=99048033, action2=99049033,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 35:
            """State 36"""
            assert (t380000_x61(lot1=82340, goods1=1090, z1=14, z2=-15, action1=99048034, action2=99049034,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 37:
            """State 37"""
            assert (t380000_x61(lot1=82360, goods1=1090, z1=14, z2=-15, action1=99048036, action2=99049036,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 38:
            """State 38"""
            assert (t380000_x61(lot1=82370, goods1=1090, z1=9, z2=-10, action1=99048037, action2=99049037,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 39:
            """State 39"""
            assert (t380000_x61(lot1=82380, goods1=1090, z1=14, z2=-15, action1=99048038, action2=99049038,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 40:
            """State 40"""
            assert (t380000_x61(lot1=82390, goods1=1090, z1=14, z2=-15, action1=99048039, action2=99049039,
                    action3=99040021))
            continue
        elif GetTalkListEntryResult() == 41:
            """State 41"""
            assert (t380000_x61(lot1=82400, goods1=1090, z1=9, z2=-10, action1=99048040, action2=99049040,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 42:
            """State 42"""
            assert (t380000_x61(lot1=82410, goods1=1090, z1=9, z2=-10, action1=99048041, action2=99049041,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 43:
            """State 43"""
            assert (t380000_x61(lot1=82420, goods1=1090, z1=9, z2=-10, action1=99048042, action2=99049042,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 44:
            """State 44"""
            assert (t380000_x61(lot1=82430, goods1=1090, z1=9, z2=-10, action1=99048043, action2=99049043,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 45:
            """State 45"""
            assert (t380000_x61(lot1=82440, goods1=1090, z1=9, z2=-10, action1=99048044, action2=99049044,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 46:
            """State 46"""
            assert (t380000_x61(lot1=82450, goods1=1090, z1=9, z2=-10, action1=99048045, action2=99049045,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 47:
            """State 47"""
            assert (t380000_x61(lot1=82460, goods1=1090, z1=9, z2=-10, action1=99048046, action2=99049046,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 48:
            """State 48"""
            assert (t380000_x61(lot1=82470, goods1=1090, z1=9, z2=-10, action1=99048047, action2=99049047,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 49:
            """State 49"""
            assert (t380000_x61(lot1=82480, goods1=1090, z1=9, z2=-10, action1=99048048, action2=99049048,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 50:
            """State 50"""
            assert (t380000_x61(lot1=82490, goods1=1090, z1=9, z2=-10, action1=99048049, action2=99049049,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 51:
            """State 51"""
            assert (t380000_x61(lot1=82500, goods1=1090, z1=9, z2=-10, action1=99048050, action2=99049050,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 52:
            """State 52"""
            assert (t380000_x61(lot1=82510, goods1=1090, z1=9, z2=-10, action1=99048051, action2=99049051,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 53:
            """State 53"""
            assert (t380000_x61(lot1=82520, goods1=1090, z1=9, z2=-10, action1=99048052, action2=99049052,
                    action3=99040020))
            continue
        elif GetTalkListEntryResult() == 99:
            """State 54"""
            ReportConversationEndToHavokBehavior()
            return 0

def t380000_x61(lot1=_, goods1=1090, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t380000_x100(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t380000_x101(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t380000_x101(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0


# Hexer's Spellkit
def t380000_x70():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Bloodthirsty Deep Barb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4100000, 4, 
        1, 0) == 1, 1, 99050000, -1)
        
        # Deep Overflow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4101000, 4, 
        1, 0) == 1, 2, 99050001, -1)
        
        # Weakening Deep Soul
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4102000, 4, 
        1, 0) == 1, 3, 99050002, -1)
        
        # Quickened Soul Dregs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4103000, 4, 
        1, 0) == 1, 4, 99050003, -1)
        
        # Bloodthirsty Surging Deep
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4107000, 4, 
        1, 0) == 1, 5, 99050004, -1)
        
        # Explosive Climax
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4112000, 4, 
        1, 0) == 1, 6, 99050005, -1)
        
        # Great Writhing Deep
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4111000, 4, 
        1, 0) == 1, 7, 99050006, -1)
        
        # Bloodthirsty Dark Edge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4104000, 4, 
        1, 0) == 1, 8, 99050007, -1)
        
        # Heavy Abyssal Edge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4105000, 4, 
        1, 0) == 1, 9, 99050008, -1)
        
        # Pursuers
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4113000, 4, 
        1, 0) == 1, 10, 99050009, -1)
        
        # Great Dark Bead
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4106000, 4, 
        1, 0) == 1, 11, 99050010, -1)
        
        # Lingering Cascading Deep
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4108000, 4, 
        1, 0) == 1, 12, 99050011, -1)
        
        # Repeating Dreg Torrent
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4110000, 4, 
        1, 0) == 1, 13, 99050012, -1)
        
        # Repeating Yearning Dregs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4109000, 4, 
        1, 0) == 1, 14, 99050013, -1)
        
        # Black Fire Whip
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4201000, 4, 
        1, 0) == 1, 15, 99050014, -1)
        
        # Weakening Black Fire Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4202000, 4, 
        1, 0) == 1, 16, 99050015, -1)
        
        # Great Black Fire Scatter
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4204000, 4, 
        1, 0) == 1, 17, 99050016, -1)
        
        # Scorching Black Fire Vestiges
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4203000, 4, 
        1, 0) == 1, 18, 99050017, -1)
        
        # Scorching Black Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4205000, 4, 
        1, 0) == 1, 19, 99050018, -1)
        
        # Quickened Black Serpent
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4206000, 4, 
        1, 0) == 1, 20, 99050019, -1)
        
        # Scorching Mournful Flames
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4209000, 4, 
        1, 0) == 1, 21, 99050020, -1)
        
        # Forceful Dark Dance
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4207000, 4, 
        1, 0) == 1, 22, 99050021, -1)
        
        # Scorching Recollection
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4208000, 4, 
        1, 0) == 1, 23, 99050022, -1)
        
        # Bloodthirsty Nibble
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4301000, 4, 
        1, 0) == 1, 24, 99050023, -1)
        
        # Gnawing Swarm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4302000, 4, 
        1, 0) == 1, 25, 99050024, -1)
        
        # Quickened Dorhys' Gnawing
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4303000, 4, 
        1, 0) == 1, 26, 99050025, -1)
        
        # Repeating Swarm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4304000, 4, 
        1, 0) == 1, 27, 99050026, -1)
        
        # Great Lifehunt Scythe
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4312000, 4, 
        1, 0) == 1, 28, 99050027, -1)
        
        # Gravelord Sword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4308000, 4, 
        1, 0) == 1, 29, 99050028, -1)
        
        # Curse of Agony
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4307000, 4, 
        1, 0) == 1, 30, 99050029, -1)
        
        # Refined Dead Again
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4311000, 4, 
        1, 0) == 1, 31, 99050030, -1)
        
        # Echo of Despair
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4114000, 4,
        1, 0) == 1, 32, 99050031, -1)
        
        # Lingering Repel
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4115000, 4, 
        1, 0) == 1, 33, 99050032, -1)
        
        # Curse of Silence
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4309000, 4, 
        1, 0) == 1, 34, 99050033, -1)
        
        # Void Flame Arc
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4210000, 4, 
        1, 0) == 1, 35, 99050034, -1)
        
        # Abyssal Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4310000, 4, 
        1, 0) == 1, 36, 99050035, -1)
        
        # Noxious Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4314000, 4, 
        1, 0) == 1, 37, 99050036, -1)
        
        # Myiatic Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4313000, 4, 
        1, 0) == 1, 38, 99050037, -1)
        
        # Lingering Numbness
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4116000, 4, 
        1, 0) == 1, 39, 99050038, -1)
        
        # Lingering Atonement
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4306000, 4, 
        1, 0) == 1, 40, 99050039, -1)
        
        # Bottomless Deep Protection
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4305000, 4, 
        1, 0) == 1, 41, 99050040, -1)
        
        # Homing Black Star
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4318000, 4, 
        1, 0) == 1, 42, 99050041, -1)
        
        # Bloodthirsty Sacrifice
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4315000, 4, 
        1, 0) == 1, 43, 99050042, -1)
        
        # Bloodthirsty Resonance
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4316000, 4, 
        1, 0) == 1, 44, 99050043, -1)
        
        # Lingering Blood Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4317000, 4, 
        1, 0) == 1, 45, 99050044, -1)
        
        # Great Blood Corruption
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4319000, 4, 
        1, 0) == 1, 46, 99050045, -1)
        
        # Great Blood Crystallization
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4320000, 4, 
        1, 0) == 1, 47, 99050046, -1)
        
        # Explosive Lacerating Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4321000, 4, 
        1, 0) == 1, 48, 99050047, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t380000_x71(lot1=83000, goods1=1080, z1=9, z2=-10, action1=99051000, action2=99052000,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t380000_x71(lot1=83010, goods1=1080, z1=9, z2=-10, action1=99051001, action2=99052001,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t380000_x71(lot1=83020, goods1=1080, z1=14, z2=-15, action1=99051002, action2=99052002,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t380000_x71(lot1=83030, goods1=1080, z1=19, z2=-20, action1=99051003, action2=99052003,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t380000_x71(lot1=83040, goods1=1080, z1=9, z2=-10, action1=99051004, action2=99052004,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t380000_x71(lot1=83050, goods1=1080, z1=19, z2=-20, action1=99051005, action2=99052005,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t380000_x71(lot1=83060, goods1=1080, z1=14, z2=-15, action1=99051006, action2=99052006,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t380000_x71(lot1=83070, goods1=1080, z1=9, z2=-10, action1=99051007, action2=99052007,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t380000_x71(lot1=83080, goods1=1080, z1=14, z2=-15, action1=99051008, action2=99052008,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t380000_x71(lot1=83090, goods1=1080, z1=19, z2=-20, action1=99051009, action2=99052009,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t380000_x71(lot1=83100, goods1=1080, z1=14, z2=-15, action1=99051010, action2=99052010,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t380000_x71(lot1=83110, goods1=1080, z1=9, z2=-10, action1=99051011, action2=99052011,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t380000_x71(lot1=83120, goods1=1080, z1=14, z2=-15, action1=99051012, action2=99052012,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t380000_x71(lot1=83130, goods1=1080, z1=14, z2=-15, action1=99051013, action2=99052013,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t380000_x71(lot1=83140, goods1=1080, z1=14, z2=-15, action1=99051014, action2=99052014,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t380000_x71(lot1=83150, goods1=1080, z1=14, z2=-15, action1=99051015, action2=99052015,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t380000_x71(lot1=83160, goods1=1080, z1=9, z2=-10, action1=99051016, action2=99052016,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t380000_x71(lot1=83170, goods1=1080, z1=19, z2=-20, action1=99051017, action2=99052017,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t380000_x71(lot1=83180, goods1=1080, z1=14, z2=-15, action1=99051018, action2=99052018,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t380000_x71(lot1=83190, goods1=1080, z1=14, z2=-15, action1=99051019, action2=99052019,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t380000_x71(lot1=83200, goods1=1080, z1=19, z2=-20, action1=99051020, action2=99052020,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t380000_x71(lot1=83210, goods1=1080, z1=14, z2=-15, action1=99051021, action2=99052021,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t380000_x71(lot1=83220, goods1=1080, z1=19, z2=-20, action1=99051022, action2=99052022,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t380000_x71(lot1=83230, goods1=1080, z1=9, z2=-10, action1=99051023, action2=99052023,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t380000_x71(lot1=83240, goods1=1080, z1=14, z2=-15, action1=99051024, action2=99052024,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t380000_x71(lot1=83250, goods1=1080, z1=14, z2=-15, action1=99051025, action2=99052025,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t380000_x71(lot1=83260, goods1=1080, z1=14, z2=-15, action1=99051026, action2=99052026,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 28:
            """State 29"""
            assert (t380000_x71(lot1=83270, goods1=1080, z1=14, z2=-15, action1=99051027, action2=99052027,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 29:
            """State 30"""
            assert (t380000_x71(lot1=83280, goods1=1080, z1=9, z2=-10, action1=99051028, action2=99052028,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 30:
            """State 31"""
            assert (t380000_x71(lot1=83290, goods1=1080, z1=9, z2=-10, action1=99051029, action2=99052029,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 31:
            """State 32"""
            assert (t380000_x71(lot1=83300, goods1=1080, z1=9, z2=-10, action1=99051030, action2=99052030,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 32:
            """State 33"""
            assert (t380000_x71(lot1=83310, goods1=1080, z1=9, z2=-10, action1=99051031, action2=99052031,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 33:
            """State 34"""
            assert (t380000_x71(lot1=83320, goods1=1080, z1=14, z2=-15, action1=99051032, action2=99052032,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 34:
            """State 35"""
            assert (t380000_x71(lot1=83330, goods1=1080, z1=14, z2=-15, action1=99051033, action2=99052033,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 35:
            """State 36"""
            assert (t380000_x71(lot1=83340, goods1=1080, z1=14, z2=-15, action1=99051034, action2=99052034,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 36:
            """State 37"""
            assert (t380000_x71(lot1=83350, goods1=1080, z1=14, z2=-15, action1=99051035, action2=99052035,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 37:
            """State 38"""
            assert (t380000_x71(lot1=83360, goods1=1080, z1=9, z2=-10, action1=99051036, action2=99052036,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 38:
            """State 39"""
            assert (t380000_x71(lot1=83370, goods1=1080, z1=9, z2=-10, action1=99051037, action2=99052037,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 39:
            """State 40"""
            assert (t380000_x71(lot1=83380, goods1=1080, z1=19, z2=-20, action1=99051038, action2=99052038,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 40:
            """State 41"""
            assert (t380000_x71(lot1=83390, goods1=1080, z1=9, z2=-10, action1=99051039, action2=99052039,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 41:
            """State 42"""
            assert (t380000_x71(lot1=83400, goods1=1080, z1=19, z2=-20, action1=99051040, action2=99052040,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 42:
            """State 43"""
            assert (t380000_x71(lot1=83410, goods1=1080, z1=19, z2=-20, action1=99051041, action2=99052041,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 43:
            """State 44"""
            assert (t380000_x71(lot1=83420, goods1=1080, z1=9, z2=-10, action1=99051042, action2=99052042,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 44:
            """State 45"""
            assert (t380000_x71(lot1=83430, goods1=1080, z1=9, z2=-10, action1=99051043, action2=99052043,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 45:
            """State 46"""
            assert (t380000_x71(lot1=83440, goods1=1080, z1=9, z2=-10, action1=99051044, action2=99052044,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 46:
            """State 47"""
            assert (t380000_x71(lot1=83450, goods1=1080, z1=9, z2=-10, action1=99051045, action2=99052045,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 47:
            """State 48"""
            assert (t380000_x71(lot1=83460, goods1=1080, z1=9, z2=-10, action1=99051046, action2=99052046,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 48:
            """State 49"""
            assert (t380000_x71(lot1=83470, goods1=1080, z1=9, z2=-10, action1=99051047, action2=99052047,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 99:
            """State 50"""
            ReportConversationEndToHavokBehavior()
            return 0

def t380000_x71(lot1=_, goods1=1080, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t380000_x100(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t380000_x101(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t380000_x101(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

# Hunter's Toolkit Menu
def t380000_x80():
    while True:
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Enable Hunter's Dash
        AddTalkListDataIf(GetEventStatus(25009750) == 0, 1, 16000017, -1)
        
        # Disable Hunter's Dash
        AddTalkListDataIf(GetEventStatus(25009750) == 1, 2, 16000018, -1)

        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Enable Hunter's Dash
        if GetTalkListEntryResult() == 1:
            SetEventState(25009750, 1)
            continue
        # Disable Hunter's Dash
        elif GetTalkListEntryResult() == 2:
            SetEventState(25009750, 0)
            continue
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0
            
def t380000_x100(action1=_):
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

def t380000_x101(action3=_):
    """State 0,1"""
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0