#-------------------------------------------
#-- Sorcery Scribe
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t370502_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370502_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370502_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t370502_x0():
    """ State 0,1 """
    while True:
        call = t370502_x3()

# Client Player
def t370502_x1():
    """ State 0,1 """
    assert t370502_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t370502_x2():
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
def t370502_x3():
    """ State 0,1 """
    call = t370502_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t370502_x4():
    """ State 0,5 """
    while True:
        call = t370502_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t370502_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t370502_x6() # Attack Check
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
                call = t370502_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t370502_x2() # Clear Talk State
    
# Interaction State
def t370502_x5():
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
def t370502_x6():
    """ State 0,6 """
    assert t370502_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t370502_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t370502_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t370502_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t370502_x8():
    """ State 0,1 """
    assert t370502_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t370502_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Ascension
        AddTalkListData(1, 15004001, -1)
    
        # Talk
        AddTalkListData(3, 99010001, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Ascend Sorceries
        if GetTalkListEntryResult() == 1:
            assert t370502_x20()
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            assert t370502_x10(text1=10024000, flag1=0, mode1=0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t370502_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t370502_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t370502_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
     
# Ascension
def t370502_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Refined Farron Dart
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1200000, 4, 1, 0) == 1, 1, 99041000, -1)
        
        # Swift Soul Wave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1802000, 4, 1, 0) == 1, 2, 99041001, -1)
        
        # Explosive Soul Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1300000, 4, 1, 0) == 1, 3, 99041002, -1)
        
        # Explosive Soul Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1306000, 4, 1, 0) == 1, 4, 99041003, -1)
        
        # Homing Crystal Soul Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1307000, 4, 1, 0) == 1, 5, 99041004, -1)
        
        # Extended White Dragon Breath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1370000, 4, 1, 0) == 1, 6, 99041005, -1)
        
        # Refined Farron Flashsword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1375000, 4, 1, 0) == 1, 7, 99041006, -1)
        
        # Heavy Soul Greatsword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1374000, 4, 1, 0) == 1, 8, 99041007, -1)
        
        # Heavy Old Moonlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1376000, 4, 1, 0) == 1, 9, 99041008, -1)
        
        # Surging Soulmass
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1304000, 4, 1, 0) == 1, 10, 99041009, -1)
        
        # Weakening Crystal Soulmass
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1305000, 4, 1, 0) == 1, 11, 99041010, -1)
        
        # Repeating Soul Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1210000, 4, 1, 0) == 1, 12, 99041011, -1)
        
        # Repeating Crystal Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1301000, 4, 1, 0) == 1, 13, 99041012, -1)
        
        # Homing Farron Hail
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1372000, 4, 1, 0) == 1, 14, 99041013, -1)
        
        # Focused Crystal Hail
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1373000, 4, 1, 0) == 1, 15, 99041014, -1)
        
        # Swift Orbs of Judgment
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1805000, 4, 1, 0) == 1, 16, 99041015, -1)
        
        # Repeating Crystal Storm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1800000, 4, 1, 0) == 1, 17, 99041016, -1)
        
        # Repeating Blizzard
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1803000, 4, 1, 0) == 1, 18, 99041017, -1)
        
        # Quickened Soul Stream
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1620000, 4, 1, 0) == 1, 19, 99041018, -1)
        
        # Crystal Soul Geyser
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1303000, 4, 1, 0) == 1, 20, 99041019, -1)
        
        # Lingering Pestilent Mist
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1740000, 4, 1, 0) == 1, 21, 99041020, -1)
        
        # Lingering Snap Freeze
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1741000, 4, 1, 0) == 1, 22, 99041021, -1)
        
        # Refined Shockwave
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1302000, 4, 1, 0) == 1, 23, 99041022, -1)
        
        # Refined Blinding Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1807000, 4, 1, 0) == 1, 24, 99041023, -1)
        
        # Impenetrable Wall of Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1651000, 4, 1, 0) == 1, 25, 99041024, -1)
        
        # Refined Aural Decoy
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1356000, 4, 1, 0) == 1, 26, 99041025, -1)
        
        # Skilled Repair
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1353000, 4, 1, 0) == 1, 27, 99041026, -1)
        
        # Supreme Magic Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1312000, 4, 1, 0) == 1, 30, 99041029, -1)
        
        # Supreme Frozen Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1313000, 4, 1, 0) == 1, 31, 99041030, -1)
        
        # Refined Hidden Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1340000, 4, 1, 0) == 1, 32, 99041031, -1)
        
        # Supreme Magic Shield
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1331000, 4, 1, 0) == 1, 34, 99041033, -1)
        
        # Lingering Unleash Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1801000, 4, 1, 0) == 1, 35, 99041034, -1)
        
        # Mass Spook
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1354000, 4, 1, 0) == 1, 36, 99041035, -1)
        
        # Mass Hidden Body
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1341000, 4, 1, 0) == 1, 37, 99041036, -1)
        
        # Refined Chameleon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1355000, 4, 1, 0) == 1, 38, 99041037, -1)
        
        # Refined Cast Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1350000, 4, 1, 0) == 1, 39, 99041038, -1)
        
        # Frigid Roar
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808000, 4, 1, 0) == 1, 40, 99041039, -1)
        
        # Focused Hail of Blades
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808100, 4, 1, 0) == 1, 41, 99041040, -1)
        
        # Explosive Ice
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808200, 4, 1, 0) == 1, 42, 99041041, -1)
        
        # Chilling Rime
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808300, 4, 1, 0) == 1, 43, 99041042, -1)
        
        # Refined Path of Frost
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808400, 4, 1, 0) == 1, 44, 99041043, -1)
        
        # Quickened Discs of Dorthinus
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808500, 4, 1, 0) == 1, 45, 99041044, -1)
        
        # Refined Teleport
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1809000, 4, 1, 0) == 1, 46, 99041045, -1)
        
        # Soul Explosion
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1810000, 4, 1, 0) == 1, 47, 99041046, -1)
        
        # Crystal Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1811000, 4, 1, 0) == 1, 48, 99041047, -1)
        
        # Soul Instability
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1812000, 4, 1, 0) == 1, 49, 99041048, -1)
        
        # Ice Burn
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1813000, 4, 1, 0) == 1, 50, 99041049, -1)
        
        # Frigid Orbs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1814000, 4, 1, 0) == 1, 51, 99041050, -1)
        
        # Frozen Chaos
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1815000, 4, 1, 0) == 1, 52, 99041051, -1)
        
        # Rupturing Frostfire
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1816000, 4, 1, 0) == 1, 53, 99041052, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Refined Farron Dart
        if GetTalkListEntryResult() == 1:
            assert t370502_x50(80000, 1070, 9, -10, 99042000, 99043000, 99040010)
            continue
        # Swift Soul Wave
        elif GetTalkListEntryResult() == 2:
            assert t370502_x50(80010, 1070, 9, -10, 99042001, 99043001, 99040010)
            continue
        # Explosive Soul Arrow
        elif GetTalkListEntryResult() == 3:
            assert t370502_x50(80020, 1070, 9, -10, 99042002, 99043002, 99040010)
            continue
        # Explosive Soul Spear
        elif GetTalkListEntryResult() == 4:
            assert t370502_x50(80030, 1070, 14, -15, 99042003, 99043003, 99040011)
            continue
        # Homing Crystal Soul Spear
        elif GetTalkListEntryResult() == 5:
            assert t370502_x50(80040, 1070, 14, -15, 99042004, 99043004, 99040011)
            continue
        # Extended White Dragon Breath
        elif GetTalkListEntryResult() == 6:
            assert t370502_x50(80050, 1070, 14, -15, 99042005, 99043005, 99040011)
            continue
        # Refined Farron Flashsword
        elif GetTalkListEntryResult() == 7:
            assert t370502_x50(80060, 1070, 9, -10, 99042006, 99043006, 99040010)
            continue
        # Heavy Soul Greatsword
        elif GetTalkListEntryResult() == 8:
            assert t370502_x50(80070, 1070, 14, -15, 99042007, 99043007, 99040011)
            continue
        # Heavy Old Moonlight
        elif GetTalkListEntryResult() == 9:
            assert t370502_x50(80080, 1070, 14, -15, 99042008, 99043008, 99040011)
            continue
        # Surging Soulmass
        elif GetTalkListEntryResult() == 10:
            assert t370502_x50(80090, 1070, 19, -20, 99042009, 99043009, 99040012)
            continue
        # Weakening Crystal Soulmass
        elif GetTalkListEntryResult() == 11:
            assert t370502_x50(80100, 1070, 19, -20, 99042010, 99043010, 99040012)
            continue
        # Repeating Soul Orb
        elif GetTalkListEntryResult() == 12:
            assert t370502_x50(80110, 1070, 9, -10, 99042011, 99043011, 99040010)
            continue
        # Repeating Crystal Orb
        elif GetTalkListEntryResult() == 13:
            assert t370502_x50(80120, 1070, 14, -15, 99042012, 99043012, 99040011)
            continue
        # Homing Farron Hail
        elif GetTalkListEntryResult() == 14:
            assert t370502_x50(80130, 1070, 9, -10, 99042013, 99043013, 99040010)
            continue
        # Focused Crystal Hail
        elif GetTalkListEntryResult() == 15:
            assert t370502_x50(80140, 1070, 14, -15, 99042014, 99043014, 99040011)
            continue
        # Swift Orbs of Judgment
        elif GetTalkListEntryResult() == 16:
            assert t370502_x50(80150, 1070, 14, -15, 99042015, 99043015, 99040011)
            continue
        # Swift Repeating Crystal Storm
        elif GetTalkListEntryResult() == 17:
            assert t370502_x50(80160, 1070, 14, -15, 99042016, 99043016, 99040011)
            continue
        # Swift Repeating Blizzard
        elif GetTalkListEntryResult() == 18:
            assert t370502_x50(80170, 1070, 14, -15, 99042017, 99043017, 99040011)
            continue
        # Quickened Soul Stream
        elif GetTalkListEntryResult() == 19:
            assert t370502_x50(80180, 1070, 19, -20, 99042018, 99043018, 99040012)
            continue
        # Crystal Soul Geyser
        elif GetTalkListEntryResult() == 20:
            assert t370502_x50(80190, 1070, 19, -20, 99042019, 99043019, 99040012)
            continue
        # Lingering Pestilent Mist
        elif GetTalkListEntryResult() == 21:
            assert t370502_x50(80200, 1070, 14, -15, 99042020, 99043020, 99040011)
            continue
        # Lingering Snap Freeze
        elif GetTalkListEntryResult() == 22:
            assert t370502_x50(80210, 1070, 9, -10, 99042021, 99043021, 99040010)
            continue
        # Refined Shockwave
        elif GetTalkListEntryResult() == 23:
            assert t370502_x50(80220, 1070, 9, -10, 99042022, 99043022, 99040010)
            continue
        # Refined Blinding Light
        elif GetTalkListEntryResult() == 24:
            assert t370502_x50(80230, 1070, 9, -10, 99042023, 99043023, 99040010)
            continue
        # Impenetrable Wall of Light
        elif GetTalkListEntryResult() == 25:
            assert t370502_x50(80240, 1070, 9, -10, 99042024, 99043024, 99040010)
            continue
        # Refined Aural Decoy
        elif GetTalkListEntryResult() == 26:
            assert t370502_x50(80250, 1070, 9, -10, 99042025, 99043025, 99040010)
            continue
        # Skilled Repair
        elif GetTalkListEntryResult() == 27:
            assert t370502_x50(80260, 1070, 9, -10, 99042026, 99043026, 99040010)
            continue
        # Supreme Magic Weapon
        elif GetTalkListEntryResult() == 30:
            assert t370502_x50(80290, 1070, 14, -15, 99042029, 99043029, 99040011)
            continue
        # Supreme Frozen Weapon
        elif GetTalkListEntryResult() == 31:
            assert t370502_x50(80300, 1070, 9, -10, 99042030, 99043030, 99040010)
            continue
        # Refined Hidden Weapon
        elif GetTalkListEntryResult() == 32:
            assert t370502_x50(80310, 1070, 9, -10, 99042031, 99043031, 99040010)
            continue
        # Supreme Magic Shield
        elif GetTalkListEntryResult() == 34:
            assert t370502_x50(80330, 1070, 14, -15, 99042033, 99043033, 99040011)
            continue
        # Lingering Unleash Magic
        elif GetTalkListEntryResult() == 35:
            assert t370502_x50(80340, 1070, 14, -15, 99042034, 99043034, 99040011)
            continue
        # Mass Spook
        elif GetTalkListEntryResult() == 36:
            assert t370502_x50(80350, 1070, 9, -10, 99042035, 99043035, 99040010)
            continue
        # Mass Hidden
        elif GetTalkListEntryResult() == 37:
            assert t370502_x50(80360, 1070, 9, -10, 99042036, 99043036, 99040010)
            continue
        # Refined Chameleon
        elif GetTalkListEntryResult() == 38:
            assert t370502_x50(80370, 1070, 9, -10, 99042037, 99043037, 99040010)
            continue
        # Refined Cast Light
        elif GetTalkListEntryResult() == 39:
            assert t370502_x50(80380, 1070, 9, -10, 99042038, 99043038, 99040010)
            continue
        # Frigid Roar
        elif GetTalkListEntryResult() == 40:
            assert t370502_x50(80390, 1070, 9, -10, 99042039, 99043039, 99040010)
            continue
        # Focused Hail of Blades
        elif GetTalkListEntryResult() == 41:
            assert t370502_x50(80400, 1070, 9, -10, 99042040, 99043040, 99040010)
            continue
        # Explosive Ice
        elif GetTalkListEntryResult() == 42:
            assert t370502_x50(80410, 1070, 9, -10, 99042041, 99043041, 99040011)
            continue
        # Chilling Rime
        elif GetTalkListEntryResult() == 43:
            assert t370502_x50(80420, 1070, 14, -15, 99042042, 99043042, 99040011)
            continue
        # Refined Path of Frost
        elif GetTalkListEntryResult() == 44:
            assert t370502_x50(80430, 1070, 9, -10, 99042043, 99043043, 99040010)
            continue
        # Quickened Discs of Dorthinus
        elif GetTalkListEntryResult() == 45:
            assert t370502_x50(80440, 1070, 14, -15, 99042044, 99043044, 99040011)
            continue
        # Refined Teleport
        elif GetTalkListEntryResult() == 46:
            assert t370502_x50(80450, 1070, 14, -15, 99042045, 99043045, 99040011)
            continue
        # Soul Explosion
        elif GetTalkListEntryResult() == 47:
            assert t370502_x50(80460, 1070, 9, -10, 99042046, 99043046, 99040010)
            continue
        # Explosive Crystal Orb
        elif GetTalkListEntryResult() == 48:
            assert t370502_x50(80470, 1070, 14, -15, 99042047, 99043047, 99040011)
            continue
        # Lingering Soul Instability
        elif GetTalkListEntryResult() == 49:
            assert t370502_x50(80480, 1070, 14, -15, 99042048, 99043048, 99040011)
            continue
        # Bloodthirsty Ice Burn
        elif GetTalkListEntryResult() == 50:
            assert t370502_x50(80490, 1070, 14, -15, 99042049, 99043049, 99040011)
            continue
        # Lingering Frigid Orbs
        elif GetTalkListEntryResult() == 51:
            assert t370502_x50(80500, 1070, 14, -15, 99042050, 99043050, 99040011)
            continue
        # Quickened Frozen Chaos
        elif GetTalkListEntryResult() == 52:
            assert t370502_x50(80510, 1070, 14, -15, 99042051, 99043051, 99040011)
            continue
        # Great Rupturing Frostfire
        elif GetTalkListEntryResult() == 53:
            assert t370502_x50(80520, 1070, 14, -15, 99042052, 99043052, 99040011)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
     
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Ascend
def t370502_x50(itemlot=_, material=_, compare_val=_, removal_val=_, msg_1=_, msg_2=_, msg_3=_):
    # Ascend X?
    call = t370502_x51(action2=msg_1)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, material, 3, compare_val, 0) == 1:
            assert t370502_x52(action1=msg_3) # Insufficient X
        else:
            PlayerEquipmentQuantityChange(3, material, removal_val)
            GetItemFromItemLot(itemlot)
            
            # Crafted
            assert t370502_x52(action1=msg_2)
    elif call.Get() == 1:
        pass
    return 0
    
def t370502_x51(action2=_):
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
        
def t370502_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0