#-------------------------------------------
#-- Magnum Ursus
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400504_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400504_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400504_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400504_x0():
    """ State 0,1 """
    while True:
        call = t400504_x3()

# Client Player
def t400504_x1():
    """ State 0,1 """
    assert t400504_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400504_x2():
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
def t400504_x3():
    """ State 0,1 """
    call = t400504_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400504_x4():
    """ State 0,5 """
    while True:
        call = t400504_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t400504_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400504_x6() # Attack Check
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
                call = t400504_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400504_x2() # Clear Talk State
    
# Interaction State
def t400504_x5():
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
def t400504_x6():
    """ State 0,6 """
    assert t400504_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t400504_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400504_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t400504_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400504_x8():
    """ State 0,1 """
    assert t400504_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400504_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15010007, -1)
        
        # Browse Collection
        AddTalkListDataIf(GetEventStatus(25009850) == 0 and GetEventStatus(25009812) == 1, 4, 15010008, -1)
        
        # Affixes
        AddTalkListDataIf(GetEventStatus(25009814) == 0, 3, 99002532, -1)
        
        # Bestow the Lordvessel
        AddTalkListDataIf(GetEventStatus(25009520) == 0 and ComparePlayerInventoryNumber(3, 2002, 2, 0, 0) == 1, 5, 99003500, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008190) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008190) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008190) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(2, 99010001, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Lordvessel Items
        if GetTalkListEntryResult() == 1:
            OpenRegularShop(260000, 260499)
            continue
        # Mythic mode items
        elif GetTalkListEntryResult() == 4:
            c1111(260500, 260999)
            continue
        # Talk
        elif GetTalkListEntryResult() == 2:
            assert t400504_x10(text1=10018000, flag1=0, mode1=0)
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008190, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400504_x10(text1=10117030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t400504_x10(text1=10117000, flag1=0, mode1=0)
                GetItemFromItemLot(90180)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400504_x10(text1=10117010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400504_x10(text1=10117020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400504_x10(text1=10117020, flag1=0, mode1=0)
            SetEventState(25008190, 0)
            return 0
        # Bestow the Lordvessel
        elif GetTalkListEntryResult() == 5:
            SetEventState(25009520, 1)
            PlayerEquipmentQuantityChange(3, 2002, -1)
            assert t400504_x10(text1=10117000, flag1=0, mode1=0)
            continue
        # Affixes
        elif GetTalkListEntryResult() == 3:
            assert t400504_x20()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t400504_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400504_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400504_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
# Menu Loop
def t400504_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Affix Overview
        AddTalkListData(2, 99015001, -1)
        
        # Apply Affix
        AddTalkListData(1, 99015000, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Apply Affix
        if GetTalkListEntryResult() == 1:
            assert t400504_x40()
            continue
        # Affix Overview
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 99015020, 0, 0, 0)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Affixes     
#----------------------------------------------------
def t400504_x40():
    c1110()
    
    while True:
        ClearTalkListData()

        # Basic Affix
        AddTalkListData(1, 99015005, -1)
        
        # Fine Affix
        AddTalkListData(2, 99015006, -1)
        
        # Superior Affix
        AddTalkListData(3, 99015007, -1)
        
        # Exquisite Affix
        AddTalkListData(4, 99015008, -1)
        
        # Legendary Affix
        AddTalkListData(5, 99015009, -1)
        
        # Quit
        AddTalkListData(99, 15000180, -1)

        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Basic Affix 
        if GetTalkListEntryResult() == 1:
            assert t400504_x41()
            return 0
        # Fine Affix
        elif GetTalkListEntryResult() == 2:
            assert t400504_x42()
            return 0
        # Superior Affix 
        elif GetTalkListEntryResult() == 3:
            assert t400504_x43()
            return 0
        # Exquisite Affix 
        elif GetTalkListEntryResult() == 4:
            assert t400504_x44()
            return 0
        # Legendary Affix 
        elif GetTalkListEntryResult() == 5:
            assert t400504_x45()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Basic
#----------------------------------------------------------
def t400504_x41():
    c1110()
    
    while True:
        ClearTalkListData()
    
        # Life Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20000, 4, 1, 0) == 1, 1, 99015100, -1)
        # Dragonscale Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20830, 4, 1, 0) == 1, 52, 99015151, -1)
        # Symbol of the Penitent
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30050, 4, 1, 0) == 1, 56, 99015155, -1)
        
        # Chloranthy Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20010, 4, 1, 0) == 1, 2, 99015101, -1)
        # Havel's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20020, 4, 1, 0) == 1, 3, 99015102, -1)
        # Ring of Favor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20030, 4, 1, 0) == 1, 4, 99015103, -1)
        # Ring of Wisdom
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30210, 4, 1, 0) == 1, 62, 99015161, -1)
        
        # Skull Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20430, 4, 1, 0) == 1, 32, 99015131, -1)
        # Magic Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20490, 4, 1, 0) == 1, 36, 99015135, -1)
        # Lightning Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20500, 4, 1, 0) == 1, 37, 99015136, -1)
        # Fire Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20510, 4, 1, 0) == 1, 38, 99015137, -1)
        # Dark Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20520, 4, 1, 0) == 1, 39, 99015138, -1)
        
        # Elden Ring
        # AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30800, 4, 1, 0) == 1, 81, 99015180, -1)
        # Bellowing Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20340, 4, 1, 0) == 1, 25, 99015124, -1)
        # Witch's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20350, 4, 1, 0) == 1, 26, 99015125, -1)
        # Ring of the Sun's First Born
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20360, 4, 1, 0) == 1, 27, 99015126, -1)
        # Unholy Remains
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30020, 4, 1, 0) == 1, 55, 99015154, -1)
        
        # Ring of Steel Protection
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20040, 4, 1, 0) == 1, 5, 99015104, -1)
        # Flame Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20050, 4, 1, 0) == 1, 6, 99015105, -1)
        # Thunder Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20060, 4, 1, 0) == 1, 7, 99015106, -1)
        # Magic Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20070, 4, 1, 0) == 1, 8, 99015107, -1)
        # Dark Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20080, 4, 1, 0) == 1, 9, 99015108, -1)
        # Speckled Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20090, 4, 1, 0) == 1, 10, 99015109, -1)
        
        # Band of Stone
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30660, 4, 1, 0) == 1, 76, 99015175, -1)
        # Band of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30670, 4, 1, 0) == 1, 77, 99015176, -1)
        # Band of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30680, 4, 1, 0) == 1, 78, 99015177, -1)
        # Band of Sparks
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30690, 4, 1, 0) == 1, 79, 99015178, -1)
        # Band of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30700, 4, 1, 0) == 1, 80, 99015179, -1)
        
        # Bloodbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20100, 4, 1, 0) == 1, 11, 99015110, -1)
        # Poisonbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20110, 4, 1, 0) == 1, 12, 99015111, -1)
        # Cursebite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20120, 4, 1, 0) == 1, 13, 99015112, -1)
        # Chillbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 21000, 4, 1, 0) == 1, 53, 99015152, -1)
        # Fleshbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20130, 4, 1, 0) == 1, 14, 99015113, -1)
        
        # Tainted Chalice
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30930, 4, 1, 0) == 1, 85, 99015184, -1)
        # Ring of Punishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30890, 4, 1, 0) == 1, 82, 99015181, -1)
        # Accursed Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30940, 4, 1, 0) == 1, 86, 99015185, -1)
        # Frostflower Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30950, 4, 1, 0) == 1, 87, 99015186, -1)
        
        # Knight's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20460, 4, 1, 0) == 1, 33, 99015132, -1)
        # Hunter's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20470, 4, 1, 0) == 1, 34, 99015133, -1)
        # Scholar Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20150, 4, 1, 0) == 1, 16, 99015115, -1)
        # Priestess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20160, 4, 1, 0) == 1, 17, 99015116, -1)
        # Mercenary Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30390, 4, 1, 0) == 1, 68, 99015167, -1)
        # Heretic Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30400, 4, 1, 0) == 1, 69, 99015168, -1)
        # Merchant Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30410, 4, 1, 0) == 1, 70, 99015169, -1)
        # Physician Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30420, 4, 1, 0) == 1, 71, 99015170, -1)
        # Jester Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30430, 4, 1, 0) == 1, 72, 99015171, -1)
        
        # Wood Grain Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20140, 4, 1, 0) == 1, 15, 99015114, -1)
        # Red Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20170, 4, 1, 0) == 1, 18, 99015117, -1)
        # Blue Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20180, 4, 1, 0) == 1, 19, 99015118, -1)
        # Wolf Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20190, 4, 1, 0) == 1, 20, 99015119, -1)
        # Lingering Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20270, 4, 1, 0) == 1, 21, 99015120, -1)
        # Sage Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20280, 4, 1, 0) == 1, 22, 99015121, -1)
        # Dusk Crown Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20300, 4, 1, 0) == 1, 23, 99015122, -1)
        # Darkmoon Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20330, 4, 1, 0) == 1, 24, 99015123, -1)
        # Hawk Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20370, 4, 1, 0) == 1, 28, 99015127, -1)
        # Covetous Gold Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20390, 4, 1, 0) == 1, 29, 99015128, -1)
        # Covetous Silver Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20400, 4, 1, 0) == 1, 30, 99015129, -1)
        # Sun Princess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20410, 4, 1, 0) == 1, 31, 99015130, -1)
        # Knight Slayer's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20480, 4, 1, 0) == 1, 35, 99015134, -1)
        # Flynn's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20540, 4, 1, 0) == 1, 40, 99015139, -1)
        # Prisoner's Chain
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20550, 4, 1, 0) == 1, 41, 99015140, -1)
        # Ring of the Evil Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20590, 4, 1, 0) == 1, 42, 99015141, -1)
        # Ring of Calamity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20600, 4, 1, 0) == 1, 43, 99015142, -1)
        # Farron Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20610, 4, 1, 0) == 1, 44, 99015143, -1)
        # Lloyd's Sword Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20660, 4, 1, 0) == 1, 45, 99015144, -1)
        # Lloyd's Shield Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20670, 4, 1, 0) == 1, 46, 99015145, -1)
        # Estus Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20700, 4, 1, 0) == 1, 47, 99015146, -1)
        # Focusing Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20710, 4, 1, 0) == 1, 48, 99015147, -1)
        # Horsehoof Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20720, 4, 1, 0) == 1, 49, 99015148, -1)
        # Pontiff's Right Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20750, 4, 1, 0) == 1, 50, 99015149, -1)
        # Pontiff's Left Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20790, 4, 1, 0) == 1, 51, 99015150, -1)
        # Spirit Amethyst
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30010, 4, 1, 0) == 1, 54, 99015153, -1)
        # Tome of Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30080, 4, 1, 0) == 1, 57, 99015156, -1)
        # Londor Tincture
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30450, 4, 1, 0) == 1, 73, 99015172, -1)
        # Old Pygmy Brooch
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30500, 4, 1, 0) == 1, 74, 99015173, -1)
        # Bestial Band
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30650, 4, 1, 0) == 1, 75, 99015174, -1)

        # Demonsbane Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30170, 4, 1, 0) == 1, 58, 99015157, -1)
        # Crypt Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30180, 4, 1, 0) == 1, 59, 99015158, -1)
        # Blight Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30190, 4, 1, 0) == 1, 60, 99015159, -1)
        # Hallowed Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30200, 4, 1, 0) == 1, 61, 99015160, -1)

        # Ring of Retaliation
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30330, 4, 1, 0) == 1, 63, 99015162, -1)
        # Ring of Reprisal
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30340, 4, 1, 0) == 1, 64, 99015163, -1)
        # Ring of Spite
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30350, 4, 1, 0) == 1, 65, 99015164, -1)
        # Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30360, 4, 1, 0) == 1, 66, 99015165, -1)
        # Ring of Vengeance
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30370, 4, 1, 0) == 1, 67, 99015166, -1)
        
        # Ring of Momentum
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30870, 4, 1, 0) == 1, 90, 99015189, -1)
        # Bell of Grace
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30880, 4, 1, 0) == 1, 91, 99015190, -1)
        # Dashmaster's String
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30900, 4, 1, 0) == 1, 92, 99015191, -1)
        # Ring of Retreat
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31400, 4, 1, 0) == 1, 93, 99015192, -1)
        
        # Gower's Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31300, 4, 1, 0) == 1, 94, 99015193, -1)
        # Old Man's Gambit
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31080, 4, 1, 0) == 1, 95, 99015194, -1)
        
        # Hornet Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20380, 4, 1, 0) == 1, 96, 99015195, -1)
        # Assassin's Mark
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31200, 4, 1, 0) == 1, 97, 99015196, -1)
        # Elden Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30800, 4, 1, 0) == 1, 98, 99015197, -1)
        
        # Carthus Milkring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20450, 4, 1, 0) == 1, 99, 99015198, -1)
        # Greatwood Remnants
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30090, 4, 1, 0) == 1, 100, 99015199, -1)
        # Fool's Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30840, 4, 1, 0) == 1, 101, 99015200, -1)
        
        # Ring of Conjuration
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30990, 4, 1, 0) == 1, 102, 99015201, -1)
        
        # Wretched Pendant
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30040, 4, 1, 0) == 1, 103, 99015202, -1)
        
        # Ring of Blades
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31500, 4, 1, 0) == 1, 104, 99015203, -1)
        # Sigil of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31600, 4, 1, 0) == 1, 105, 99015204, -1)
        # Sigil of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31700, 4, 1, 0) == 1, 106, 99015205, -1)
        # Sigil of Thunder
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31800, 4, 1, 0) == 1, 107, 99015206, -1)
        # Sigil of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31900, 4, 1, 0) == 1, 108, 99015207, -1)
        
        # Eyri's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32000, 4, 1, 0) == 1, 109, 99015208, -1)
        # Ofydd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32100, 4, 1, 0) == 1, 110, 99015209, -1)
        # Ifanna's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32200, 4, 1, 0) == 1, 111, 99015210, -1)
        # Grufudd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32300, 4, 1, 0) == 1, 112, 99015211, -1)
        
        # Quit
        AddTalkListData(999, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Life Ring
        if GetTalkListEntryResult() == 1:
            assert t400504_x50(20000, 20001, 1, -2)
            return 0
        # Chloranthy Ring
        elif GetTalkListEntryResult() == 2:
            assert t400504_x50(20010, 20011, 1, -2)
            return 0
        # Havel's Ring
        elif GetTalkListEntryResult() == 3:
            assert t400504_x50(20020, 20021, 1, -2)
            return 0
        # Ring of Favor
        elif GetTalkListEntryResult() == 4:
            assert t400504_x50(20030, 20031, 1, -2)
            return 0
        # Ring of Steel Protection
        elif GetTalkListEntryResult() == 5:
            assert t400504_x50(20040, 20041, 1, -2)
            return 0
        # Flame Stoneplate Ring
        elif GetTalkListEntryResult() == 6:
            assert t400504_x50(20050, 20051, 1, -2)
            return 0
        # Thunder Stoneplate Ring
        elif GetTalkListEntryResult() == 7:
            assert t400504_x50(20060, 20061, 1, -2)
            return 0
        # Magic Stoneplate Ring
        elif GetTalkListEntryResult() == 8:
            assert t400504_x50(20070, 20071, 1, -2)
            return 0
        # Dark Stoneplate Ring
        elif GetTalkListEntryResult() == 9:
            assert t400504_x50(20080, 20081, 1, -2)
            return 0
        # Speckled Stoneplate Ring
        elif GetTalkListEntryResult() == 10:
            assert t400504_x50(20090, 20091, 1, -2)
            return 0
        # Bloodbite Ring
        elif GetTalkListEntryResult() == 11:
            assert t400504_x50(20100, 20101, 1, -2)
            return 0
        # Poisonbite Ring
        elif GetTalkListEntryResult() == 12:
            assert t400504_x50(20110, 20111, 1, -2)
            return 0
        # Cursebite Ring
        elif GetTalkListEntryResult() == 13:
            assert t400504_x50(20120, 20121, 1, -2)
            return 0
        # Fleshbite Ring
        elif GetTalkListEntryResult() == 14:
            assert t400504_x50(20130, 20131, 1, -2)
            return 0
        # Wood Grain Ring
        elif GetTalkListEntryResult() == 15:
            assert t400504_x50(20140, 20141, 1, -2)
            return 0
        # Scholar Ring
        elif GetTalkListEntryResult() == 16:
            assert t400504_x50(20150, 20151, 1, -2)
            return 0
        # Priestess Ring
        elif GetTalkListEntryResult() == 17:
            assert t400504_x50(20160, 20161, 1, -2)
            return 0
        # Red Tearstone Ring
        elif GetTalkListEntryResult() == 18:
            assert t400504_x50(20170, 20171, 1, -2)
            return 0
        # Blue Tearstone Ring
        elif GetTalkListEntryResult() == 19:
            assert t400504_x50(20180, 20181, 1, -2)
            return 0
        # Wolf Ring
        elif GetTalkListEntryResult() == 20:
            assert t400504_x50(20190, 20191, 1, -2)
            return 0
        # Lingering Dragoncrest Ring
        elif GetTalkListEntryResult() == 21:
            assert t400504_x50(20270, 20271, 1, -2)
            return 0
        # Sage Ring
        elif GetTalkListEntryResult() == 22:
            assert t400504_x50(20280, 20281, 1, -2)
            return 0
        # Dusk Crown Ring
        elif GetTalkListEntryResult() == 23:
            assert t400504_x50(20300, 20301, 1, -2)
            return 0
        # Darkmoon Ring
        elif GetTalkListEntryResult() == 24:
            assert t400504_x50(20330, 20331, 1, -2)
            return 0
        # Bellowing Dragoncrest Ring
        elif GetTalkListEntryResult() == 25:
            assert t400504_x50(20340, 20341, 1, -2)
            return 0
        # Witch's Ring
        elif GetTalkListEntryResult() == 26:
            assert t400504_x50(20350, 20351, 1, -2)
            return 0
        # Ring of the Sun's First Born
        elif GetTalkListEntryResult() == 27:
            assert t400504_x50(20360, 20361, 1, -2)
            return 0
        # Hawk Ring
        elif GetTalkListEntryResult() == 28:
            assert t400504_x50(20370, 20371, 1, -2)
            return 0
        # Covetous Gold Serpent Ring
        elif GetTalkListEntryResult() == 29:
            assert t400504_x50(20390, 20391, 1, -2)
            return 0
        # Covetous Silver Serpent Ring
        elif GetTalkListEntryResult() == 30:
            assert t400504_x50(20400, 20401, 1, -2)
            return 0
        # Sun Princess Ring
        elif GetTalkListEntryResult() == 31:
            assert t400504_x50(20410, 20411, 1, -2)
            return 0  
        # Skull Ring
        elif GetTalkListEntryResult() == 32:
            assert t400504_x50(20430, 20431, 1, -2)
            return 0
        # Knight's Ring
        elif GetTalkListEntryResult() == 33:
            assert t400504_x50(20460, 20461, 1, -2)
            return 0
        # Hunter's Ring
        elif GetTalkListEntryResult() == 34:
            assert t400504_x50(20470, 20471, 1, -2)
            return 0
        # Knight Slayer's Ring
        elif GetTalkListEntryResult() == 35:
            assert t400504_x50(20480, 20481, 1, -2)
            return 0
        # Magic Clutch Ring
        elif GetTalkListEntryResult() == 36:
            assert t400504_x50(20490, 20491, 1, -2)
            return 0
        # Lightning Clutch Ring
        elif GetTalkListEntryResult() == 37:
            assert t400504_x50(20500, 20501, 1, -2)
            return 0
        # Fire Clutch Ring
        elif GetTalkListEntryResult() == 38:
            assert t400504_x50(20510, 20511, 1, -2)
            return 0
        # Dark Clutch Ring
        elif GetTalkListEntryResult() == 39:
            assert t400504_x50(20520, 20521, 1, -2)
            return 0
        # Flynn's Ring
        elif GetTalkListEntryResult() == 40:
            assert t400504_x50(20540, 20541, 1, -2)
            return 0
        # Prisoner's Chain
        elif GetTalkListEntryResult() == 41:
            assert t400504_x50(20550, 20551, 1, -2)
            return 0
        # Ring of the Evil Eye
        elif GetTalkListEntryResult() == 42:
            assert t400504_x50(20590, 20591, 1, -2)
            return 0
        # Ring of Calamity
        elif GetTalkListEntryResult() == 43:
            assert t400504_x50(20600, 20601, 1, -2)
            return 0
        # Farron Ring
        elif GetTalkListEntryResult() == 44:
            assert t400504_x50(20610, 20611, 1, -2)
            return 0
        # Lloyd's Sword Ring
        elif GetTalkListEntryResult() == 45:
            assert t400504_x50(20660, 20661, 1, -2)
            return 0
        # Lloyd's Shield Ring
        elif GetTalkListEntryResult() == 46:
            assert t400504_x50(20670, 20671, 1, -2)
            return 0
        # Estus Ring
        elif GetTalkListEntryResult() == 47:
            assert t400504_x50(20700, 20701, 1, -2)
            return 0
        # Focusing Ring
        elif GetTalkListEntryResult() == 48:
            assert t400504_x50(20710, 20711, 1, -2)
            return 0
        # Horsehoof Ring
        elif GetTalkListEntryResult() == 49:
            assert t400504_x50(20720, 20721, 1, -2)
            return 0
        # Pontiff's Right Eye
        elif GetTalkListEntryResult() == 50:
            assert t400504_x50(20750, 20751, 1, -2)
            return 0
        # Pontiff's Left Eye
        elif GetTalkListEntryResult() == 51:
            assert t400504_x50(20790, 20791, 1, -2)
            return 0
        # Dragonscale Ring
        elif GetTalkListEntryResult() == 52:
            assert t400504_x50(20830, 20831, 1, -2)
            return 0
        # Chillbite Ring
        elif GetTalkListEntryResult() == 53:
            assert t400504_x50(21000, 21001, 1, -2)
            return 0
        # Spirit Amethyst
        elif GetTalkListEntryResult() == 54:
            assert t400504_x50(30010, 30011, 1, -2)
            return 0
        # Unholy Remains
        elif GetTalkListEntryResult() == 55:
            assert t400504_x50(30020, 30021, 1, -2)
            return 0
        # Symbol of the Penitent
        elif GetTalkListEntryResult() == 56:
            assert t400504_x50(30050, 30051, 1, -2)
            return 0
        # Tome of Sunlight
        elif GetTalkListEntryResult() == 57:
            assert t400504_x50(30080, 30081, 1, -2)
            return 0
        # Demonsbane Ring
        elif GetTalkListEntryResult() == 58:
            assert t400504_x50(30170, 30171, 1, -2)
            return 0
        # Crypt Ring
        elif GetTalkListEntryResult() == 59:
            assert t400504_x50(30180, 30181, 1, -2)
            return 0
        # Blight Ring
        elif GetTalkListEntryResult() == 60:
            assert t400504_x50(30190, 30191, 1, -2)
            return 0
        # Hallowed Ring
        elif GetTalkListEntryResult() == 61:
            assert t400504_x50(30200, 30201, 1, -2)
            return 0
        # Ring of Wisdom
        elif GetTalkListEntryResult() == 62:
            assert t400504_x50(30210, 30211, 1, -2)
            return 0
        # Ring of Retaliation
        elif GetTalkListEntryResult() == 63:
            assert t400504_x50(30330, 30331, 1, -2)
            return 0
        # Ring of Reprisal
        elif GetTalkListEntryResult() == 64:
            assert t400504_x50(30340, 30341, 1, -2)
            return 0
        # Ring of Spite
        elif GetTalkListEntryResult() == 65:
            assert t400504_x50(30350, 30351, 1, -2)
            return 0
        # Ring of Retribution
        elif GetTalkListEntryResult() == 66:
            assert t400504_x50(30360, 30361, 1, -2)
            return 0
        # Ring of Vengeance
        elif GetTalkListEntryResult() == 67:
            assert t400504_x50(30370, 30371, 1, -2)
            return 0
        # Mercenary Ring
        elif GetTalkListEntryResult() == 68:
            assert t400504_x50(30390, 30391, 1, -2)
            return 0
        # Heretic Ring
        elif GetTalkListEntryResult() == 69:
            assert t400504_x50(30400, 30401, 1, -2)
            return 0
        # Merchant Ring
        elif GetTalkListEntryResult() == 70:
            assert t400504_x50(30410, 30411, 1, -2)
            return 0
        # Physician Ring
        elif GetTalkListEntryResult() == 71:
            assert t400504_x50(30420, 30421, 1, -2)
            return 0
        # Jester Ring
        elif GetTalkListEntryResult() == 72:
            assert t400504_x50(30430, 30431, 1, -2)
            return 0
        # Londor Tincture
        elif GetTalkListEntryResult() == 73:
            assert t400504_x50(30450, 30451, 1, -2)
            return 0
        # Old Pygmy Brooch
        elif GetTalkListEntryResult() == 74:
            assert t400504_x50(30500, 30501, 1, -2)
            return 0
        # Bestial Band
        elif GetTalkListEntryResult() == 75:
            assert t400504_x50(30650, 30651, 1, -2)
            return 0
        # Band of Stone
        elif GetTalkListEntryResult() == 76:
            assert t400504_x50(30660, 30661, 1, -2)
            return 0
        # Band of Magic
        elif GetTalkListEntryResult() == 77:
            assert t400504_x50(30670, 30671, 1, -2)
            return 0
        # Band of Flame
        elif GetTalkListEntryResult() == 78:
            assert t400504_x50(30680, 30681, 1, -2)
            return 0
        # Band of Sparks
        elif GetTalkListEntryResult() == 79:
            assert t400504_x50(30690, 30691, 1, -2)
            return 0
        # Band of Darkness
        elif GetTalkListEntryResult() == 80:
            assert t400504_x50(30700, 30701, 1, -2)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 81:
            assert t400504_x50(30800, 30801, 1, -2)
            return 0
        # Ring of Punishment
        elif GetTalkListEntryResult() == 82:
            assert t400504_x50(30890, 30891, 1, -2)
            return 0
        # Tainted Chalice
        elif GetTalkListEntryResult() == 85:
            assert t400504_x50(30930, 30931, 1, -2)
            return 0
        # Accursed Sigil
        elif GetTalkListEntryResult() == 86:
            assert t400504_x50(30940, 30941, 1, -2)
            return 0
        # Frostflower Ring
        elif GetTalkListEntryResult() == 87:
            assert t400504_x50(30950, 30951, 1, -2)
            return 0
        # Ring of Momentum
        elif GetTalkListEntryResult() == 90:
            assert t400504_x50(30870, 30871, 1, -2)
            return 0 
        # Bell of Grace
        elif GetTalkListEntryResult() == 91:
            assert t400504_x50(30880, 30881, 1, -2)
            return 0
        # Dashmaster's String
        elif GetTalkListEntryResult() == 92:
            assert t400504_x50(30900, 30901, 1, -2)
            return 0
        # Ring of Retreat
        elif GetTalkListEntryResult() == 93:
            assert t400504_x50(31400, 31401, 1, -2)
            return 0
        # Gower's Ring of Retribution
        elif GetTalkListEntryResult() == 94:
            assert t400504_x50(31300, 31301, 1, -2)
            return 0
        # Old Man's Gambit
        elif GetTalkListEntryResult() == 95:
            assert t400504_x50(31080, 31081, 1, -2)
            return 0
        # Hornet Ring
        elif GetTalkListEntryResult() == 96:
            assert t400504_x50(20380, 20381, 1, -2)
            return 0
        # Assassin's Mark
        elif GetTalkListEntryResult() == 97:
            assert t400504_x50(31200, 31201, 1, -2)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 98:
            assert t400504_x50(30800, 30801, 1, -2)
            return 0
        # Carthus Milkring
        elif GetTalkListEntryResult() == 99:
            assert t400504_x50(20450, 20451, 1, -2)
            return 0
        # Greatwood Remnants
        elif GetTalkListEntryResult() == 100:
            assert t400504_x50(30090, 30091, 1, -2)
            return 0
        # Fool's Sigil
        elif GetTalkListEntryResult() == 101:
            assert t400504_x50(30840, 30841, 1, -2)
            return 0
        # Ring of Conjuration
        elif GetTalkListEntryResult() == 102:
            assert t400504_x50(30990, 30991, 1, -2)
            return 0
        # Wretched Pendant
        elif GetTalkListEntryResult() == 103:
            assert t400504_x50(30040, 30041, 1, -2)
            return 0
        # Ring of Blades
        elif GetTalkListEntryResult() == 104:
            assert t400504_x50(31500, 31501, 1, -2)
            return 0
        # Sigil of Magic
        elif GetTalkListEntryResult() == 105:
            assert t400504_x50(31600, 31601, 1, -2)
            return 0
        # Sigil of Flame
        elif GetTalkListEntryResult() == 106:
            assert t400504_x50(31700, 31701, 1, -2)
            return 0
        # Sigil of Thunder
        elif GetTalkListEntryResult() == 107:
            assert t400504_x50(31800, 31801, 1, -2)
            return 0
        # Sigil of Darkness
        elif GetTalkListEntryResult() == 108:
            assert t400504_x50(31900, 31901, 1, -2)
            return 0
        # Eyri's Signet
        elif GetTalkListEntryResult() == 109:
            assert t400504_x50(32000, 32001, 1, -2)
            return 0
        # Ofydd's Signet
        elif GetTalkListEntryResult() == 110:
            assert t400504_x50(32100, 32101, 1, -2)
            return 0
        # Ifanna's Signet
        elif GetTalkListEntryResult() == 111:
            assert t400504_x50(32200, 32201, 1, -2)
            return 0
        # Grufudd's Signet
        elif GetTalkListEntryResult() == 112:
            assert t400504_x50(32300, 32301, 1, -2)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Fine
#----------------------------------------------------------
def t400504_x42():
    c1110()
    
    while True:
        ClearTalkListData()

        # Life Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20001, 4, 1, 0) == 1, 1, 99015100, -1)
        # Dragonscale Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20831, 4, 1, 0) == 1, 52, 99015151, -1)
        # Symbol of the Penitent
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30051, 4, 1, 0) == 1, 56, 99015155, -1)
        
        # Chloranthy Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20011, 4, 1, 0) == 1, 2, 99015101, -1)
        # Havel's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20021, 4, 1, 0) == 1, 3, 99015102, -1)
        # Ring of Favor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20031, 4, 1, 0) == 1, 4, 99015103, -1)
        # Ring of Wisdom
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30211, 4, 1, 0) == 1, 62, 99015161, -1)
        
        # Skull Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20431, 4, 1, 0) == 1, 32, 99015131, -1)
        # Magic Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20491, 4, 1, 0) == 1, 36, 99015135, -1)
        # Lightning Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20501, 4, 1, 0) == 1, 37, 99015136, -1)
        # Fire Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20511, 4, 1, 0) == 1, 38, 99015137, -1)
        # Dark Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20521, 4, 1, 0) == 1, 39, 99015138, -1)
        
        # Elden Ring
        # AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30801, 4, 1, 0) == 1, 81, 99015180, -1)
        # Bellowing Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20341, 4, 1, 0) == 1, 25, 99015124, -1)
        # Witch's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20351, 4, 1, 0) == 1, 26, 99015125, -1)
        # Ring of the Sun's First Born
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20361, 4, 1, 0) == 1, 27, 99015126, -1)
        # Unholy Remains
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30021, 4, 1, 0) == 1, 55, 99015154, -1)
        
        # Ring of Steel Protection
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20041, 4, 1, 0) == 1, 5, 99015104, -1)
        # Flame Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20051, 4, 1, 0) == 1, 6, 99015105, -1)
        # Thunder Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20061, 4, 1, 0) == 1, 7, 99015106, -1)
        # Magic Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20071, 4, 1, 0) == 1, 8, 99015107, -1)
        # Dark Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20081, 4, 1, 0) == 1, 9, 99015108, -1)
        # Speckled Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20091, 4, 1, 0) == 1, 10, 99015109, -1)
        
        # Band of Stone
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30661, 4, 1, 0) == 1, 76, 99015175, -1)
        # Band of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30671, 4, 1, 0) == 1, 77, 99015176, -1)
        # Band of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30681, 4, 1, 0) == 1, 78, 99015177, -1)
        # Band of Sparks
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30691, 4, 1, 0) == 1, 79, 99015178, -1)
        # Band of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30701, 4, 1, 0) == 1, 80, 99015179, -1)
        
        # Bloodbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20101, 4, 1, 0) == 1, 11, 99015110, -1)
        # Poisonbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20111, 4, 1, 0) == 1, 12, 99015111, -1)
        # Cursebite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20121, 4, 1, 0) == 1, 13, 99015112, -1)
        # Chillbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 21001, 4, 1, 0) == 1, 53, 99015152, -1)
        # Fleshbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20131, 4, 1, 0) == 1, 14, 99015113, -1)
        
        # Tainted Chalice
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30931, 4, 1, 0) == 1, 85, 99015184, -1)
        # Ring of Punishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30891, 4, 1, 0) == 1, 82, 99015181, -1)
        # Accursed Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30941, 4, 1, 0) == 1, 86, 99015185, -1)
        # Frostflower Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30951, 4, 1, 0) == 1, 87, 99015186, -1)
        
        # Knight's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20461, 4, 1, 0) == 1, 33, 99015132, -1)
        # Hunter's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20471, 4, 1, 0) == 1, 34, 99015133, -1)
        # Scholar Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20151, 4, 1, 0) == 1, 16, 99015115, -1)
        # Priestess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20161, 4, 1, 0) == 1, 17, 99015116, -1)
        # Mercenary Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30391, 4, 1, 0) == 1, 68, 99015167, -1)
        # Heretic Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30401, 4, 1, 0) == 1, 69, 99015168, -1)
        # Merchant Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30411, 4, 1, 0) == 1, 70, 99015169, -1)
        # Physician Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30421, 4, 1, 0) == 1, 71, 99015170, -1)
        # Jester Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30431, 4, 1, 0) == 1, 72, 99015171, -1)
        
        # Wood Grain Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20141, 4, 1, 0) == 1, 15, 99015114, -1)
        # Red Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20171, 4, 1, 0) == 1, 18, 99015117, -1)
        # Blue Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20181, 4, 1, 0) == 1, 19, 99015118, -1)
        # Wolf Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20191, 4, 1, 0) == 1, 20, 99015119, -1)
        # Lingering Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20271, 4, 1, 0) == 1, 21, 99015120, -1)
        # Sage Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20281, 4, 1, 0) == 1, 22, 99015121, -1)
        # Dusk Crown Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20301, 4, 1, 0) == 1, 23, 99015122, -1)
        # Darkmoon Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20331, 4, 1, 0) == 1, 24, 99015123, -1)
        # Hawk Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20371, 4, 1, 0) == 1, 28, 99015127, -1)
        # Covetous Gold Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20391, 4, 1, 0) == 1, 29, 99015128, -1)
        # Covetous Silver Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20401, 4, 1, 0) == 1, 30, 99015129, -1)
        # Sun Princess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20411, 4, 1, 0) == 1, 31, 99015130, -1)
        # Knight Slayer's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20481, 4, 1, 0) == 1, 35, 99015134, -1)
        # Flynn's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20541, 4, 1, 0) == 1, 40, 99015139, -1)
        # Prisoner's Chain
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20551, 4, 1, 0) == 1, 41, 99015140, -1)
        # Ring of the Evil Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20591, 4, 1, 0) == 1, 42, 99015141, -1)
        # Ring of Calamity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20601, 4, 1, 0) == 1, 43, 99015142, -1)
        # Farron Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20611, 4, 1, 0) == 1, 44, 99015143, -1)
        # Lloyd's Sword Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20661, 4, 1, 0) == 1, 45, 99015144, -1)
        # Lloyd's Shield Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20671, 4, 1, 0) == 1, 46, 99015145, -1)
        # Estus Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20701, 4, 1, 0) == 1, 47, 99015146, -1)
        # Focusing Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20711, 4, 1, 0) == 1, 48, 99015147, -1)
        # Horsehoof Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20721, 4, 1, 0) == 1, 49, 99015148, -1)
        # Pontiff's Right Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20751, 4, 1, 0) == 1, 50, 99015149, -1)
        # Pontiff's Left Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20791, 4, 1, 0) == 1, 51, 99015150, -1)
        # Spirit Amethyst
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30011, 4, 1, 0) == 1, 54, 99015153, -1)
        # Tome of Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30081, 4, 1, 0) == 1, 57, 99015156, -1)
        # Londor Tincture
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30451, 4, 1, 0) == 1, 73, 99015172, -1)
        # Old Pygmy Brooch
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30501, 4, 1, 0) == 1, 74, 99015173, -1)
        # Bestial Band
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30651, 4, 1, 0) == 1, 75, 99015174, -1)

        # Demonsbane Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30171, 4, 1, 0) == 1, 58, 99015157, -1)
        # Crypt Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30181, 4, 1, 0) == 1, 59, 99015158, -1)
        # Blight Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30191, 4, 1, 0) == 1, 60, 99015159, -1)
        # Hallowed Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30201, 4, 1, 0) == 1, 61, 99015160, -1)

        # Ring of Retaliation
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30331, 4, 1, 0) == 1, 63, 99015162, -1)
        # Ring of Reprisal
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30341, 4, 1, 0) == 1, 64, 99015163, -1)
        # Ring of Spite
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30351, 4, 1, 0) == 1, 65, 99015164, -1)
        # Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30361, 4, 1, 0) == 1, 66, 99015165, -1)
        # Ring of Vengeance
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30371, 4, 1, 0) == 1, 67, 99015166, -1)
 
        # Ring of Momentum
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30871, 4, 1, 0) == 1, 90, 99015189, -1)
        # Bell of Grace
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30881, 4, 1, 0) == 1, 91, 99015190, -1)
        # Dashmaster's String
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30901, 4, 1, 0) == 1, 92, 99015191, -1)
        # Ring of Retreat
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31401, 4, 1, 0) == 1, 93, 99015192, -1)
        
        # Gower's Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31301, 4, 1, 0) == 1, 94, 99015193, -1)
        # Old Man's Gambit
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31081, 4, 1, 0) == 1, 95, 99015194, -1)
        
        # Hornet Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20381, 4, 1, 0) == 1, 96, 99015195, -1)
        # Assassin's Mark
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31201, 4, 1, 0) == 1, 97, 99015196, -1)
        # Elden Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30801, 4, 1, 0) == 1, 98, 99015197, -1)
        
        # Carthus Milkring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20451, 4, 1, 0) == 1, 99, 99015198, -1)
        # Greatwood Remnants
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30091, 4, 1, 0) == 1, 100, 99015199, -1)
        # Fool's Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30841, 4, 1, 0) == 1, 101, 99015200, -1)
        
        # Ring of Conjuration
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30991, 4, 1, 0) == 1, 102, 99015201, -1)
        
        # Wretched Pendant
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30041, 4, 1, 0) == 1, 103, 99015202, -1)
        
        # Ring of Blades
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31501, 4, 1, 0) == 1, 104, 99015203, -1)
        # Sigil of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31601, 4, 1, 0) == 1, 105, 99015204, -1)
        # Sigil of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31701, 4, 1, 0) == 1, 106, 99015205, -1)
        # Sigil of Thunder
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31801, 4, 1, 0) == 1, 107, 99015206, -1)
        # Sigil of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31901, 4, 1, 0) == 1, 108, 99015207, -1)
        
        # Eyri's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32001, 4, 1, 0) == 1, 109, 99015208, -1)
        # Ofydd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32101, 4, 1, 0) == 1, 110, 99015209, -1)
        # Ifanna's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32201, 4, 1, 0) == 1, 111, 99015210, -1)
        # Grufudd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32301, 4, 1, 0) == 1, 112, 99015211, -1)
        
        # Quit
        AddTalkListData(999, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Life Ring
        if GetTalkListEntryResult() == 1:
            assert t400504_x50(20001, 20002, 3, -4)
            return 0
        # Chloranthy Ring
        elif GetTalkListEntryResult() == 2:
            assert t400504_x50(20011, 20012, 3, -4)
            return 0
        # Havel's Ring
        elif GetTalkListEntryResult() == 3:
            assert t400504_x50(20021, 20022, 3, -4)
            return 0
        # Ring of Favor
        elif GetTalkListEntryResult() == 4:
            assert t400504_x50(20031, 20032, 3, -4)
            return 0
        # Ring of Steel Protection
        elif GetTalkListEntryResult() == 5:
            assert t400504_x50(20041, 20042, 3, -4)
            return 0
        # Flame Stoneplate Ring
        elif GetTalkListEntryResult() == 6:
            assert t400504_x50(20051, 20052, 3, -4)
            return 0
        # Thunder Stoneplate Ring
        elif GetTalkListEntryResult() == 7:
            assert t400504_x50(20061, 20062, 3, -4)
            return 0
        # Magic Stoneplate Ring
        elif GetTalkListEntryResult() == 8:
            assert t400504_x50(20071, 20072, 3, -4)
            return 0
        # Dark Stoneplate Ring
        elif GetTalkListEntryResult() == 9:
            assert t400504_x50(20081, 20082, 3, -4)
            return 0
        # Speckled Stoneplate Ring
        elif GetTalkListEntryResult() == 10:
            assert t400504_x50(20091, 20092, 3, -4)
            return 0
        # Bloodbite Ring
        elif GetTalkListEntryResult() == 11:
            assert t400504_x50(20101, 20102, 3, -4)
            return 0
        # Poisonbite Ring
        elif GetTalkListEntryResult() == 12:
            assert t400504_x50(20111, 20112, 3, -4)
            return 0
        # Cursebite Ring
        elif GetTalkListEntryResult() == 13:
            assert t400504_x50(20121, 20122, 3, -4)
            return 0
        # Fleshbite Ring
        elif GetTalkListEntryResult() == 14:
            assert t400504_x50(20131, 20132, 3, -4)
            return 0
        # Wood Grain Ring
        elif GetTalkListEntryResult() == 15:
            assert t400504_x50(20141, 20142, 3, -4)
            return 0
        # Scholar Ring
        elif GetTalkListEntryResult() == 16:
            assert t400504_x50(20151, 20152, 3, -4)
            return 0
        # Priestess Ring
        elif GetTalkListEntryResult() == 17:
            assert t400504_x50(20161, 20162, 3, -4)
            return 0
        # Red Tearstone Ring
        elif GetTalkListEntryResult() == 18:
            assert t400504_x50(20171, 20172, 3, -4)
            return 0
        # Blue Tearstone Ring
        elif GetTalkListEntryResult() == 19:
            assert t400504_x50(20181, 20182, 3, -4)
            return 0
        # Wolf Ring
        elif GetTalkListEntryResult() == 20:
            assert t400504_x50(20191, 20192, 3, -4)
            return 0
        # Lingering Dragoncrest Ring
        elif GetTalkListEntryResult() == 21:
            assert t400504_x50(20271, 20272, 3, -4)
            return 0
        # Sage Ring
        elif GetTalkListEntryResult() == 22:
            assert t400504_x50(20281, 20282, 3, -4)
            return 0
        # Dusk Crown Ring
        elif GetTalkListEntryResult() == 23:
            assert t400504_x50(20301, 20302, 3, -4)
            return 0
        # Darkmoon Ring
        elif GetTalkListEntryResult() == 24:
            assert t400504_x50(20331, 20332, 3, -4)
            return 0
        # Bellowing Dragoncrest Ring
        elif GetTalkListEntryResult() == 25:
            assert t400504_x50(20341, 20342, 3, -4)
            return 0
        # Witch's Ring
        elif GetTalkListEntryResult() == 26:
            assert t400504_x50(20351, 20352, 3, -4)
            return 0
        # Ring of the Sun's First Born
        elif GetTalkListEntryResult() == 27:
            assert t400504_x50(20361, 20362, 3, -4)
            return 0
        # Hawk Ring
        elif GetTalkListEntryResult() == 28:
            assert t400504_x50(20371, 20372, 3, -4)
            return 0
        # Covetous Gold Serpent Ring
        elif GetTalkListEntryResult() == 29:
            assert t400504_x50(20391, 20392, 3, -4)
            return 0
        # Covetous Silver Serpent Ring
        elif GetTalkListEntryResult() == 30:
            assert t400504_x50(20401, 20402, 3, -4)
            return 0
        # Sun Princess Ring
        elif GetTalkListEntryResult() == 31:
            assert t400504_x50(20411, 20412, 3, -4)
            return 0  
        # Skull Ring
        elif GetTalkListEntryResult() == 32:
            assert t400504_x50(20431, 20432, 3, -4)
            return 0
        # Knight's Ring
        elif GetTalkListEntryResult() == 33:
            assert t400504_x50(20461, 20462, 3, -4)
            return 0
        # Hunter's Ring
        elif GetTalkListEntryResult() == 34:
            assert t400504_x50(20471, 20472, 3, -4)
            return 0
        # Knight Slayer's Ring
        elif GetTalkListEntryResult() == 35:
            assert t400504_x50(20481, 20482, 3, -4)
            return 0
        # Magic Clutch Ring
        elif GetTalkListEntryResult() == 36:
            assert t400504_x50(20491, 20492, 3, -4)
            return 0
        # Lightning Clutch Ring
        elif GetTalkListEntryResult() == 37:
            assert t400504_x50(20501, 20502, 3, -4)
            return 0
        # Fire Clutch Ring
        elif GetTalkListEntryResult() == 38:
            assert t400504_x50(20511, 20512, 3, -4)
            return 0
        # Dark Clutch Ring
        elif GetTalkListEntryResult() == 39:
            assert t400504_x50(20521, 20522, 3, -4)
            return 0
        # Flynn's Ring
        elif GetTalkListEntryResult() == 40:
            assert t400504_x50(20541, 20542, 3, -4)
            return 0
        # Prisoner's Chain
        elif GetTalkListEntryResult() == 41:
            assert t400504_x50(20551, 20552, 3, -4)
            return 0
        # Ring of the Evil Eye
        elif GetTalkListEntryResult() == 42:
            assert t400504_x50(20591, 20592, 3, -4)
            return 0
        # Ring of Calamity
        elif GetTalkListEntryResult() == 43:
            assert t400504_x50(20601, 20602, 3, -4)
            return 0
        # Farron Ring
        elif GetTalkListEntryResult() == 44:
            assert t400504_x50(20611, 20612, 3, -4)
            return 0
        # Lloyd's Sword Ring
        elif GetTalkListEntryResult() == 45:
            assert t400504_x50(20661, 20662, 3, -4)
            return 0
        # Lloyd's Shield Ring
        elif GetTalkListEntryResult() == 46:
            assert t400504_x50(20671, 20672, 3, -4)
            return 0
        # Estus Ring
        elif GetTalkListEntryResult() == 47:
            assert t400504_x50(20701, 20702, 3, -4)
            return 0
        # Focusing Ring
        elif GetTalkListEntryResult() == 48:
            assert t400504_x50(20711, 20712, 3, -4)
            return 0
        # Horsehoof Ring
        elif GetTalkListEntryResult() == 49:
            assert t400504_x50(20721, 20722, 3, -4)
            return 0
        # Pontiff's Right Eye
        elif GetTalkListEntryResult() == 50:
            assert t400504_x50(20751, 20752, 3, -4)
            return 0
        # Pontiff's Left Eye
        elif GetTalkListEntryResult() == 51:
            assert t400504_x50(20791, 20792, 3, -4)
            return 0
        # Dragonscale Ring
        elif GetTalkListEntryResult() == 52:
            assert t400504_x50(20831, 20832, 3, -4)
            return 0
        # Chillbite Ring
        elif GetTalkListEntryResult() == 53:
            assert t400504_x50(21001, 21002, 3, -4)
            return 0
        # Spirit Amethyst
        elif GetTalkListEntryResult() == 54:
            assert t400504_x50(30011, 30012, 3, -4)
            return 0
        # Unholy Remains
        elif GetTalkListEntryResult() == 55:
            assert t400504_x50(30021, 30022, 3, -4)
            return 0
        # Symbol of the Penitent
        elif GetTalkListEntryResult() == 56:
            assert t400504_x50(30051, 30052, 3, -4)
            return 0
        # Tome of Sunlight
        elif GetTalkListEntryResult() == 57:
            assert t400504_x50(30081, 30082, 3, -4)
            return 0
        # Demonsbane Ring
        elif GetTalkListEntryResult() == 58:
            assert t400504_x50(30171, 30172, 3, -4)
            return 0
        # Crypt Ring
        elif GetTalkListEntryResult() == 59:
            assert t400504_x50(30181, 30182, 3, -4)
            return 0
        # Blight Ring
        elif GetTalkListEntryResult() == 60:
            assert t400504_x50(30191, 30192, 3, -4)
            return 0
        # Hallowed Ring
        elif GetTalkListEntryResult() == 61:
            assert t400504_x50(30201, 30202, 3, -4)
            return 0
        # Ring of Wisdom
        elif GetTalkListEntryResult() == 62:
            assert t400504_x50(30211, 30212, 3, -4)
            return 0
        # Ring of Retaliation
        elif GetTalkListEntryResult() == 63:
            assert t400504_x50(30331, 30332, 3, -4)
            return 0
        # Ring of Reprisal
        elif GetTalkListEntryResult() == 64:
            assert t400504_x50(30341, 30342, 3, -4)
            return 0
        # Ring of Spite
        elif GetTalkListEntryResult() == 65:
            assert t400504_x50(30351, 30352, 3, -4)
            return 0
        # Ring of Retribution
        elif GetTalkListEntryResult() == 66:
            assert t400504_x50(30361, 30362, 3, -4)
            return 0
        # Ring of Vengeance
        elif GetTalkListEntryResult() == 67:
            assert t400504_x50(30371, 30372, 3, -4)
            return 0
        # Mercenary Ring
        elif GetTalkListEntryResult() == 68:
            assert t400504_x50(30391, 30392, 3, -4)
            return 0
        # Heretic Ring
        elif GetTalkListEntryResult() == 69:
            assert t400504_x50(30401, 30402, 3, -4)
            return 0
        # Merchant Ring
        elif GetTalkListEntryResult() == 70:
            assert t400504_x50(30411, 30412, 3, -4)
            return 0
        # Physician Ring
        elif GetTalkListEntryResult() == 71:
            assert t400504_x50(30421, 30422, 3, -4)
            return 0
        # Jester Ring
        elif GetTalkListEntryResult() == 72:
            assert t400504_x50(30431, 30432, 3, -4)
            return 0
        # Londor Tincture
        elif GetTalkListEntryResult() == 73:
            assert t400504_x50(30451, 30452, 3, -4)
            return 0
        # Old Pygmy Brooch
        elif GetTalkListEntryResult() == 74:
            assert t400504_x50(30501, 30502, 3, -4)
            return 0
        # Bestial Band
        elif GetTalkListEntryResult() == 75:
            assert t400504_x50(30651, 30652, 3, -4)
            return 0
        # Band of Stone
        elif GetTalkListEntryResult() == 76:
            assert t400504_x50(30661, 30662, 3, -4)
            return 0
        # Band of Magic
        elif GetTalkListEntryResult() == 77:
            assert t400504_x50(30671, 30672, 3, -4)
            return 0
        # Band of Flame
        elif GetTalkListEntryResult() == 78:
            assert t400504_x50(30681, 30682, 3, -4)
            return 0
        # Band of Sparks
        elif GetTalkListEntryResult() == 79:
            assert t400504_x50(30691, 30692, 3, -4)
            return 0
        # Band of Darkness
        elif GetTalkListEntryResult() == 80:
            assert t400504_x50(30701, 30702, 3, -4)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 81:
            assert t400504_x50(30801, 30802, 3, -4)
            return 0
        # Ring of Punishment
        elif GetTalkListEntryResult() == 82:
            assert t400504_x50(30891, 30892, 3, -4)
            return 0
        # Tainted Chalice
        elif GetTalkListEntryResult() == 85:
            assert t400504_x50(30931, 30932, 3, -4)
            return 0
        # Accursed Sigil
        elif GetTalkListEntryResult() == 86:
            assert t400504_x50(30941, 30942, 3, -4)
            return 0
        # Frostflower Ring
        elif GetTalkListEntryResult() == 87:
            assert t400504_x50(30951, 30952, 3, -4)
            return 0
        # Ring of Momentum
        elif GetTalkListEntryResult() == 90:
            assert t400504_x50(30871, 30872, 3, -4)
            return 0 
        # Bell of Grace
        elif GetTalkListEntryResult() == 91:
            assert t400504_x50(30881, 30882, 3, -4)
            return 0
        # Dashmaster's String
        elif GetTalkListEntryResult() == 92:
            assert t400504_x50(30901, 30902, 3, -4)
            return 0
        # Ring of Retreat
        elif GetTalkListEntryResult() == 93:
            assert t400504_x50(31401, 31402, 3, -4)
            return 0
        # Gower's Ring of Retribution
        elif GetTalkListEntryResult() == 94:
            assert t400504_x50(31301, 31302, 3, -4)
            return 0
        # Old Man's Gambit
        elif GetTalkListEntryResult() == 95:
            assert t400504_x50(31081, 31082, 3, -4)
            return 0
        # Hornet Ring
        elif GetTalkListEntryResult() == 96:
            assert t400504_x50(20381, 20382, 3, -4)
            return 0
        # Assassin's Mark
        elif GetTalkListEntryResult() == 97:
            assert t400504_x50(31201, 31202, 3, -4)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 98:
            assert t400504_x50(30801, 30802, 3, -4)
            return 0
        # Carthus Milkring
        elif GetTalkListEntryResult() == 99:
            assert t400504_x50(20451, 20452, 3, -4)
            return 0
        # Greatwood Remnants
        elif GetTalkListEntryResult() == 100:
            assert t400504_x50(30091, 30092, 3, -4)
            return 0
        # Fool's Sigil
        elif GetTalkListEntryResult() == 101:
            assert t400504_x50(30841, 30842, 3, -4)
            return 0
        # Ring of Conjuration
        elif GetTalkListEntryResult() == 102:
            assert t400504_x50(30991, 30992, 3, -4)
            return 0
        # Wretched Pendant
        elif GetTalkListEntryResult() == 103:
            assert t400504_x50(30041, 30042, 3, -4)
            return 0
        # Ring of Blades
        elif GetTalkListEntryResult() == 104:
            assert t400504_x50(31501, 31502, 3, -4)
            return 0
        # Sigil of Magic
        elif GetTalkListEntryResult() == 105:
            assert t400504_x50(31601, 31602, 3, -4)
            return 0
        # Sigil of Flame
        elif GetTalkListEntryResult() == 106:
            assert t400504_x50(31701, 31702, 3, -4)
            return 0
        # Sigil of Thunder
        elif GetTalkListEntryResult() == 107:
            assert t400504_x50(31801, 31802, 3, -4)
            return 0
        # Sigil of Darkness
        elif GetTalkListEntryResult() == 108:
            assert t400504_x50(31901, 31902, 3, -4)
            return 0
        # Eyri's Signet
        elif GetTalkListEntryResult() == 109:
            assert t400504_x50(32001, 32002, 3, -4)
            return 0
        # Ofydd's Signet
        elif GetTalkListEntryResult() == 110:
            assert t400504_x50(32101, 32102, 3, -4)
            return 0
        # Ifanna's Signet
        elif GetTalkListEntryResult() == 111:
            assert t400504_x50(32201, 32202, 3, -4)
            return 0
        # Grufudd's Signet
        elif GetTalkListEntryResult() == 112:
            assert t400504_x50(32301, 32302, 3, -4)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Superior
#----------------------------------------------------------
def t400504_x43():
    c1110()
    
    while True:
        ClearTalkListData()

        # Life Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20002, 4, 1, 0) == 1, 1, 99015100, -1)
        # Dragonscale Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20832, 4, 1, 0) == 1, 52, 99015151, -1)
        # Symbol of the Penitent
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30052, 4, 1, 0) == 1, 56, 99015155, -1)
        
        # Chloranthy Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20012, 4, 1, 0) == 1, 2, 99015101, -1)
        # Havel's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20022, 4, 1, 0) == 1, 3, 99015102, -1)
        # Ring of Favor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20032, 4, 1, 0) == 1, 4, 99015103, -1)
        # Ring of Wisdom
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30212, 4, 1, 0) == 1, 62, 99015161, -1)
        
        # Skull Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20432, 4, 1, 0) == 1, 32, 99015131, -1)
        # Magic Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20492, 4, 1, 0) == 1, 36, 99015135, -1)
        # Lightning Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20502, 4, 1, 0) == 1, 37, 99015136, -1)
        # Fire Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20512, 4, 1, 0) == 1, 38, 99015137, -1)
        # Dark Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20522, 4, 1, 0) == 1, 39, 99015138, -1)
        
        # Elden Ring
        # AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30802, 4, 1, 0) == 1, 81, 99015180, -1)
        # Bellowing Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20342, 4, 1, 0) == 1, 25, 99015124, -1)
        # Witch's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20352, 4, 1, 0) == 1, 26, 99015125, -1)
        # Ring of the Sun's First Born
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20362, 4, 1, 0) == 1, 27, 99015126, -1)
        # Unholy Remains
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30022, 4, 1, 0) == 1, 55, 99015154, -1)
        
        # Ring of Steel Protection
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20042, 4, 1, 0) == 1, 5, 99015104, -1)
        # Flame Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20052, 4, 1, 0) == 1, 6, 99015105, -1)
        # Thunder Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20062, 4, 1, 0) == 1, 7, 99015106, -1)
        # Magic Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20072, 4, 1, 0) == 1, 8, 99015107, -1)
        # Dark Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20082, 4, 1, 0) == 1, 9, 99015108, -1)
        # Speckled Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20092, 4, 1, 0) == 1, 10, 99015109, -1)
        
        # Band of Stone
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30662, 4, 1, 0) == 1, 76, 99015175, -1)
        # Band of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30672, 4, 1, 0) == 1, 77, 99015176, -1)
        # Band of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30682, 4, 1, 0) == 1, 78, 99015177, -1)
        # Band of Sparks
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30692, 4, 1, 0) == 1, 79, 99015178, -1)
        # Band of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30702, 4, 1, 0) == 1, 80, 99015179, -1)
        
        # Bloodbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20102, 4, 1, 0) == 1, 11, 99015110, -1)
        # Poisonbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20112, 4, 1, 0) == 1, 12, 99015111, -1)
        # Cursebite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20122, 4, 1, 0) == 1, 13, 99015112, -1)
        # Chillbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 21002, 4, 1, 0) == 1, 53, 99015152, -1)
        # Fleshbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20132, 4, 1, 0) == 1, 14, 99015113, -1)
        
        # Tainted Chalice
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30932, 4, 1, 0) == 1, 85, 99015184, -1)
        # Ring of Punishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30892, 4, 1, 0) == 1, 82, 99015181, -1)
        # Accursed Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30942, 4, 1, 0) == 1, 86, 99015185, -1)
        # Frostflower Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30952, 4, 1, 0) == 1, 87, 99015186, -1)
        
        # Knight's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20462, 4, 1, 0) == 1, 33, 99015132, -1)
        # Hunter's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20472, 4, 1, 0) == 1, 34, 99015133, -1)
        # Scholar Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20152, 4, 1, 0) == 1, 16, 99015115, -1)
        # Priestess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20162, 4, 1, 0) == 1, 17, 99015116, -1)
        # Mercenary Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30392, 4, 1, 0) == 1, 68, 99015167, -1)
        # Heretic Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30402, 4, 1, 0) == 1, 69, 99015168, -1)
        # Merchant Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30412, 4, 1, 0) == 1, 70, 99015169, -1)
        # Physician Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30422, 4, 1, 0) == 1, 71, 99015170, -1)
        # Jester Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30432, 4, 1, 0) == 1, 72, 99015171, -1)
        
        # Wood Grain Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20142, 4, 1, 0) == 1, 15, 99015114, -1)
        # Red Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20172, 4, 1, 0) == 1, 18, 99015117, -1)
        # Blue Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20182, 4, 1, 0) == 1, 19, 99015118, -1)
        # Wolf Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20192, 4, 1, 0) == 1, 20, 99015119, -1)
        # Lingering Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20272, 4, 1, 0) == 1, 21, 99015120, -1)
        # Sage Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20282, 4, 1, 0) == 1, 22, 99015121, -1)
        # Dusk Crown Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20302, 4, 1, 0) == 1, 23, 99015122, -1)
        # Darkmoon Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20332, 4, 1, 0) == 1, 24, 99015123, -1)
        # Hawk Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20372, 4, 1, 0) == 1, 28, 99015127, -1)
        # Covetous Gold Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20392, 4, 1, 0) == 1, 29, 99015128, -1)
        # Covetous Silver Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20402, 4, 1, 0) == 1, 30, 99015129, -1)
        # Sun Princess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20412, 4, 1, 0) == 1, 31, 99015130, -1)
        # Knight Slayer's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20482, 4, 1, 0) == 1, 35, 99015134, -1)
        # Flynn's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20542, 4, 1, 0) == 1, 40, 99015139, -1)
        # Prisoner's Chain
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20552, 4, 1, 0) == 1, 41, 99015140, -1)
        # Ring of the Evil Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20592, 4, 1, 0) == 1, 42, 99015141, -1)
        # Ring of Calamity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20602, 4, 1, 0) == 1, 43, 99015142, -1)
        # Farron Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20612, 4, 1, 0) == 1, 44, 99015143, -1)
        # Lloyd's Sword Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20662, 4, 1, 0) == 1, 45, 99015144, -1)
        # Lloyd's Shield Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20672, 4, 1, 0) == 1, 46, 99015145, -1)
        # Estus Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20702, 4, 1, 0) == 1, 47, 99015146, -1)
        # Focusing Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20712, 4, 1, 0) == 1, 48, 99015147, -1)
        # Horsehoof Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20722, 4, 1, 0) == 1, 49, 99015148, -1)
        # Pontiff's Right Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20752, 4, 1, 0) == 1, 50, 99015149, -1)
        # Pontiff's Left Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20792, 4, 1, 0) == 1, 51, 99015150, -1)
        # Spirit Amethyst
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30012, 4, 1, 0) == 1, 54, 99015153, -1)
        # Tome of Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30082, 4, 1, 0) == 1, 57, 99015156, -1)
        # Londor Tincture
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30452, 4, 1, 0) == 1, 73, 99015172, -1)
        # Old Pygmy Brooch
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30502, 4, 1, 0) == 1, 74, 99015173, -1)
        # Bestial Band
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30652, 4, 1, 0) == 1, 75, 99015174, -1)

        # Demonsbane Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30172, 4, 1, 0) == 1, 58, 99015157, -1)
        # Crypt Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30182, 4, 1, 0) == 1, 59, 99015158, -1)
        # Blight Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30192, 4, 1, 0) == 1, 60, 99015159, -1)
        # Hallowed Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30202, 4, 1, 0) == 1, 61, 99015160, -1)

        # Ring of Retaliation
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30332, 4, 1, 0) == 1, 63, 99015162, -1)
        # Ring of Reprisal
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30342, 4, 1, 0) == 1, 64, 99015163, -1)
        # Ring of Spite
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30352, 4, 1, 0) == 1, 65, 99015164, -1)
        # Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30362, 4, 1, 0) == 1, 66, 99015165, -1)
        # Ring of Vengeance
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30372, 4, 1, 0) == 1, 67, 99015166, -1)

        # Ring of Momentum
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30872, 4, 1, 0) == 1, 90, 99015189, -1)
        # Bell of Grace
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30882, 4, 1, 0) == 1, 91, 99015190, -1)
        # Dashmaster's String
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30902, 4, 1, 0) == 1, 92, 99015191, -1)
        # Ring of Retreat
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31402, 4, 1, 0) == 1, 93, 99015192, -1)
        
        # Gower's Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31302, 4, 1, 0) == 1, 94, 99015193, -1)
        # Old Man's Gambit
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31082, 4, 1, 0) == 1, 95, 99015194, -1)
        
        # Hornet Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20382, 4, 1, 0) == 1, 96, 99015195, -1)
        # Assassin's Mark
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31202, 4, 1, 0) == 1, 97, 99015196, -1)
        # Elden Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30802, 4, 1, 0) == 1, 98, 99015197, -1)
        
        # Carthus Milkring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20452, 4, 1, 0) == 1, 99, 99015198, -1)
        # Greatwood Remnants
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30092, 4, 1, 0) == 1, 100, 99015199, -1)
        # Fool's Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30842, 4, 1, 0) == 1, 101, 99015200, -1)
        
        # Ring of Conjuration
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30992, 4, 1, 0) == 1, 102, 99015201, -1)
        
        # Wretched Pendant
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30042, 4, 1, 0) == 1, 103, 99015202, -1)
        
        # Ring of Blades
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31502, 4, 1, 0) == 1, 104, 99015203, -1)
        # Sigil of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31602, 4, 1, 0) == 1, 105, 99015204, -1)
        # Sigil of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31702, 4, 1, 0) == 1, 106, 99015205, -1)
        # Sigil of Thunder
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31802, 4, 1, 0) == 1, 107, 99015206, -1)
        # Sigil of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31902, 4, 1, 0) == 1, 108, 99015207, -1)
        
        # Eyri's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32002, 4, 1, 0) == 1, 109, 99015208, -1)
        # Ofydd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32102, 4, 1, 0) == 1, 110, 99015209, -1)
        # Ifanna's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32202, 4, 1, 0) == 1, 111, 99015210, -1)
        # Grufudd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32302, 4, 1, 0) == 1, 112, 99015211, -1)
        
        # Quit
        AddTalkListData(999, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Life Ring
        if GetTalkListEntryResult() == 1:
            assert t400504_x50(20002, 20003, 5, -6)
            return 0
        # Chloranthy Ring
        elif GetTalkListEntryResult() == 2:
            assert t400504_x50(20012, 20013, 5, -6)
            return 0
        # Havel's Ring
        elif GetTalkListEntryResult() == 3:
            assert t400504_x50(20022, 20023, 5, -6)
            return 0
        # Ring of Favor
        elif GetTalkListEntryResult() == 4:
            assert t400504_x50(20032, 20033, 5, -6)
            return 0
        # Ring of Steel Protection
        elif GetTalkListEntryResult() == 5:
            assert t400504_x50(20042, 20043, 5, -6)
            return 0
        # Flame Stoneplate Ring
        elif GetTalkListEntryResult() == 6:
            assert t400504_x50(20052, 20053, 5, -6)
            return 0
        # Thunder Stoneplate Ring
        elif GetTalkListEntryResult() == 7:
            assert t400504_x50(20062, 20063, 5, -6)
            return 0
        # Magic Stoneplate Ring
        elif GetTalkListEntryResult() == 8:
            assert t400504_x50(20072, 20073, 5, -6)
            return 0
        # Dark Stoneplate Ring
        elif GetTalkListEntryResult() == 9:
            assert t400504_x50(20082, 20083, 5, -6)
            return 0
        # Speckled Stoneplate Ring
        elif GetTalkListEntryResult() == 10:
            assert t400504_x50(20092, 20093, 5, -6)
            return 0
        # Bloodbite Ring
        elif GetTalkListEntryResult() == 11:
            assert t400504_x50(20102, 20103, 5, -6)
            return 0
        # Poisonbite Ring
        elif GetTalkListEntryResult() == 12:
            assert t400504_x50(20112, 20113, 5, -6)
            return 0
        # Cursebite Ring
        elif GetTalkListEntryResult() == 13:
            assert t400504_x50(20122, 20123, 5, -6)
            return 0
        # Fleshbite Ring
        elif GetTalkListEntryResult() == 14:
            assert t400504_x50(20132, 20133, 5, -6)
            return 0
        # Wood Grain Ring
        elif GetTalkListEntryResult() == 15:
            assert t400504_x50(20142, 20143, 5, -6)
            return 0
        # Scholar Ring
        elif GetTalkListEntryResult() == 16:
            assert t400504_x50(20152, 20153, 5, -6)
            return 0
        # Priestess Ring
        elif GetTalkListEntryResult() == 17:
            assert t400504_x50(20162, 20163, 5, -6)
            return 0
        # Red Tearstone Ring
        elif GetTalkListEntryResult() == 18:
            assert t400504_x50(20172, 20173, 5, -6)
            return 0
        # Blue Tearstone Ring
        elif GetTalkListEntryResult() == 19:
            assert t400504_x50(20182, 20183, 5, -6)
            return 0
        # Wolf Ring
        elif GetTalkListEntryResult() == 20:
            assert t400504_x50(20192, 20193, 5, -6)
            return 0
        # Lingering Dragoncrest Ring
        elif GetTalkListEntryResult() == 21:
            assert t400504_x50(20272, 20273, 5, -6)
            return 0
        # Sage Ring
        elif GetTalkListEntryResult() == 22:
            assert t400504_x50(20282, 20283, 5, -6)
            return 0
        # Dusk Crown Ring
        elif GetTalkListEntryResult() == 23:
            assert t400504_x50(20302, 20303, 5, -6)
            return 0
        # Darkmoon Ring
        elif GetTalkListEntryResult() == 24:
            assert t400504_x50(20332, 20333, 5, -6)
            return 0
        # Bellowing Dragoncrest Ring
        elif GetTalkListEntryResult() == 25:
            assert t400504_x50(20342, 20343, 5, -6)
            return 0
        # Witch's Ring
        elif GetTalkListEntryResult() == 26:
            assert t400504_x50(20352, 20353, 5, -6)
            return 0
        # Ring of the Sun's First Born
        elif GetTalkListEntryResult() == 27:
            assert t400504_x50(20362, 20363, 5, -6)
            return 0
        # Hawk Ring
        elif GetTalkListEntryResult() == 28:
            assert t400504_x50(20372, 20373, 5, -6)
            return 0
        # Covetous Gold Serpent Ring
        elif GetTalkListEntryResult() == 29:
            assert t400504_x50(20392, 20393, 5, -6)
            return 0
        # Covetous Silver Serpent Ring
        elif GetTalkListEntryResult() == 30:
            assert t400504_x50(20402, 20403, 5, -6)
            return 0
        # Sun Princess Ring
        elif GetTalkListEntryResult() == 31:
            assert t400504_x50(20412, 20413, 5, -6)
            return 0  
        # Skull Ring
        elif GetTalkListEntryResult() == 32:
            assert t400504_x50(20432, 20433, 5, -6)
            return 0
        # Knight's Ring
        elif GetTalkListEntryResult() == 33:
            assert t400504_x50(20462, 20463, 5, -6)
            return 0
        # Hunter's Ring
        elif GetTalkListEntryResult() == 34:
            assert t400504_x50(20472, 20473, 5, -6)
            return 0
        # Knight Slayer's Ring
        elif GetTalkListEntryResult() == 35:
            assert t400504_x50(20482, 20483, 5, -6)
            return 0
        # Magic Clutch Ring
        elif GetTalkListEntryResult() == 36:
            assert t400504_x50(20492, 20493, 5, -6)
            return 0
        # Lightning Clutch Ring
        elif GetTalkListEntryResult() == 37:
            assert t400504_x50(20502, 20503, 5, -6)
            return 0
        # Fire Clutch Ring
        elif GetTalkListEntryResult() == 38:
            assert t400504_x50(20512, 20513, 5, -6)
            return 0
        # Dark Clutch Ring
        elif GetTalkListEntryResult() == 39:
            assert t400504_x50(20522, 20523, 5, -6)
            return 0
        # Flynn's Ring
        elif GetTalkListEntryResult() == 40:
            assert t400504_x50(20542, 20543, 5, -6)
            return 0
        # Prisoner's Chain
        elif GetTalkListEntryResult() == 41:
            assert t400504_x50(20552, 20553, 5, -6)
            return 0
        # Ring of the Evil Eye
        elif GetTalkListEntryResult() == 42:
            assert t400504_x50(20592, 20593, 5, -6)
            return 0
        # Ring of Calamity
        elif GetTalkListEntryResult() == 43:
            assert t400504_x50(20602, 20603, 5, -6)
            return 0
        # Farron Ring
        elif GetTalkListEntryResult() == 44:
            assert t400504_x50(20612, 20613, 5, -6)
            return 0
        # Lloyd's Sword Ring
        elif GetTalkListEntryResult() == 45:
            assert t400504_x50(20662, 20663, 5, -6)
            return 0
        # Lloyd's Shield Ring
        elif GetTalkListEntryResult() == 46:
            assert t400504_x50(20672, 20673, 5, -6)
            return 0
        # Estus Ring
        elif GetTalkListEntryResult() == 47:
            assert t400504_x50(20702, 20703, 5, -6)
            return 0
        # Focusing Ring
        elif GetTalkListEntryResult() == 48:
            assert t400504_x50(20712, 20713, 5, -6)
            return 0
        # Horsehoof Ring
        elif GetTalkListEntryResult() == 49:
            assert t400504_x50(20722, 20723, 5, -6)
            return 0
        # Pontiff's Right Eye
        elif GetTalkListEntryResult() == 50:
            assert t400504_x50(20752, 20753, 5, -6)
            return 0
        # Pontiff's Left Eye
        elif GetTalkListEntryResult() == 51:
            assert t400504_x50(20792, 20793, 5, -6)
            return 0
        # Dragonscale Ring
        elif GetTalkListEntryResult() == 52:
            assert t400504_x50(20832, 20833, 5, -6)
            return 0
        # Chillbite Ring
        elif GetTalkListEntryResult() == 53:
            assert t400504_x50(21002, 21003, 5, -6)
            return 0
        # Spirit Amethyst
        elif GetTalkListEntryResult() == 54:
            assert t400504_x50(30012, 30013, 5, -6)
            return 0
        # Unholy Remains
        elif GetTalkListEntryResult() == 55:
            assert t400504_x50(30022, 30023, 5, -6)
            return 0
        # Symbol of the Penitent
        elif GetTalkListEntryResult() == 56:
            assert t400504_x50(30052, 30053, 5, -6)
            return 0
        # Tome of Sunlight
        elif GetTalkListEntryResult() == 57:
            assert t400504_x50(30082, 30083, 5, -6)
            return 0
        # Demonsbane Ring
        elif GetTalkListEntryResult() == 58:
            assert t400504_x50(30172, 30173, 5, -6)
            return 0
        # Crypt Ring
        elif GetTalkListEntryResult() == 59:
            assert t400504_x50(30182, 30183, 5, -6)
            return 0
        # Blight Ring
        elif GetTalkListEntryResult() == 60:
            assert t400504_x50(30192, 30193, 5, -6)
            return 0
        # Hallowed Ring
        elif GetTalkListEntryResult() == 61:
            assert t400504_x50(30202, 30203, 5, -6)
            return 0
        # Ring of Wisdom
        elif GetTalkListEntryResult() == 62:
            assert t400504_x50(30212, 30213, 5, -6)
            return 0
        # Ring of Retaliation
        elif GetTalkListEntryResult() == 63:
            assert t400504_x50(30332, 30333, 5, -6)
            return 0
        # Ring of Reprisal
        elif GetTalkListEntryResult() == 64:
            assert t400504_x50(30342, 30343, 5, -6)
            return 0
        # Ring of Spite
        elif GetTalkListEntryResult() == 65:
            assert t400504_x50(30352, 30353, 5, -6)
            return 0
        # Ring of Retribution
        elif GetTalkListEntryResult() == 66:
            assert t400504_x50(30362, 30363, 5, -6)
            return 0
        # Ring of Vengeance
        elif GetTalkListEntryResult() == 67:
            assert t400504_x50(30372, 30373, 5, -6)
            return 0
        # Mercenary Ring
        elif GetTalkListEntryResult() == 68:
            assert t400504_x50(30392, 30393, 5, -6)
            return 0
        # Heretic Ring
        elif GetTalkListEntryResult() == 69:
            assert t400504_x50(30402, 30403, 5, -6)
            return 0
        # Merchant Ring
        elif GetTalkListEntryResult() == 70:
            assert t400504_x50(30412, 30413, 5, -6)
            return 0
        # Physician Ring
        elif GetTalkListEntryResult() == 71:
            assert t400504_x50(30422, 30423, 5, -6)
            return 0
        # Jester Ring
        elif GetTalkListEntryResult() == 72:
            assert t400504_x50(30432, 30433, 5, -6)
            return 0
        # Londor Tincture
        elif GetTalkListEntryResult() == 73:
            assert t400504_x50(30452, 30453, 5, -6)
            return 0
        # Old Pygmy Brooch
        elif GetTalkListEntryResult() == 74:
            assert t400504_x50(30502, 30503, 5, -6)
            return 0
        # Bestial Band
        elif GetTalkListEntryResult() == 75:
            assert t400504_x50(30652, 30653, 5, -6)
            return 0
        # Band of Stone
        elif GetTalkListEntryResult() == 76:
            assert t400504_x50(30662, 30663, 5, -6)
            return 0
        # Band of Magic
        elif GetTalkListEntryResult() == 77:
            assert t400504_x50(30672, 30673, 5, -6)
            return 0
        # Band of Flame
        elif GetTalkListEntryResult() == 78:
            assert t400504_x50(30682, 30683, 5, -6)
            return 0
        # Band of Sparks
        elif GetTalkListEntryResult() == 79:
            assert t400504_x50(30692, 30693, 5, -6)
            return 0
        # Band of Darkness
        elif GetTalkListEntryResult() == 80:
            assert t400504_x50(30702, 30703, 5, -6)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 81:
            assert t400504_x50(30802, 30803, 5, -6)
            return 0
        # Ring of Punishment
        elif GetTalkListEntryResult() == 82:
            assert t400504_x50(30892, 30893, 5, -6)
            return 0
        # Tainted Chalice
        elif GetTalkListEntryResult() == 85:
            assert t400504_x50(30932, 30933, 5, -6)
            return 0
        # Accursed Sigil
        elif GetTalkListEntryResult() == 86:
            assert t400504_x50(30942, 30943, 5, -6)
            return 0
        # Frostflower Ring
        elif GetTalkListEntryResult() == 87:
            assert t400504_x50(30952, 30953, 5, -6)
            return 0
        # Ring of Momentum
        elif GetTalkListEntryResult() == 90:
            assert t400504_x50(30872, 30873, 5, -6)
            return 0 
        # Bell of Grace
        elif GetTalkListEntryResult() == 91:
            assert t400504_x50(30882, 30883, 5, -6)
            return 0
        # Dashmaster's String
        elif GetTalkListEntryResult() == 92:
            assert t400504_x50(30902, 30903, 5, -6)
            return 0
        # Ring of Retreat
        elif GetTalkListEntryResult() == 93:
            assert t400504_x50(31402, 31403, 5, -6)
            return 0
        # Gower's Ring of Retribution
        elif GetTalkListEntryResult() == 94:
            assert t400504_x50(31302, 31303, 5, -6)
            return 0
        # Old Man's Gambit
        elif GetTalkListEntryResult() == 95:
            assert t400504_x50(31082, 31083, 5, -6)
            return 0
        # Hornet Ring
        elif GetTalkListEntryResult() == 96:
            assert t400504_x50(20382, 20383, 5, -6)
            return 0
        # Assassin's Mark
        elif GetTalkListEntryResult() == 97:
            assert t400504_x50(31202, 31203, 5, -6)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 98:
            assert t400504_x50(30802, 30803, 5, -6)
            return 0
        # Carthus Milkring
        elif GetTalkListEntryResult() == 99:
            assert t400504_x50(20452, 20453, 5, -6)
            return 0
        # Greatwood Remnants
        elif GetTalkListEntryResult() == 100:
            assert t400504_x50(30092, 30093, 5, -6)
            return 0
        # Fool's Sigil
        elif GetTalkListEntryResult() == 101:
            assert t400504_x50(30842, 30843, 5, -6)
            return 0
        # Ring of Conjuration
        elif GetTalkListEntryResult() == 102:
            assert t400504_x50(30992, 30993, 5, -6)
            return 0
        # Wretched Pendant
        elif GetTalkListEntryResult() == 103:
            assert t400504_x50(30042, 30043, 5, -6)
            return 0
        # Ring of Blades
        elif GetTalkListEntryResult() == 104:
            assert t400504_x50(31502, 31503, 5, -6)
            return 0
        # Sigil of Magic
        elif GetTalkListEntryResult() == 105:
            assert t400504_x50(31602, 31603, 5, -6)
            return 0
        # Sigil of Flame
        elif GetTalkListEntryResult() == 106:
            assert t400504_x50(31702, 31703, 5, -6)
            return 0
        # Sigil of Thunder
        elif GetTalkListEntryResult() == 107:
            assert t400504_x50(31802, 31803, 5, -6)
            return 0
        # Sigil of Darkness
        elif GetTalkListEntryResult() == 108:
            assert t400504_x50(31902, 31903, 5, -6)
            return 0
        # Eyri's Signet
        elif GetTalkListEntryResult() == 109:
            assert t400504_x50(32002, 32003, 5, -6)
            return 0
        # Ofydd's Signet
        elif GetTalkListEntryResult() == 110:
            assert t400504_x50(32102, 32103, 5, -6)
            return 0
        # Ifanna's Signet
        elif GetTalkListEntryResult() == 111:
            assert t400504_x50(32202, 32203, 5, -6)
            return 0
        # Grufudd's Signet
        elif GetTalkListEntryResult() == 112:
            assert t400504_x50(32302, 32303, 5, -6)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Exquisite
#----------------------------------------------------------
def t400504_x44():
    c1110()
    
    while True:
        ClearTalkListData()

        # Life Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20003, 4, 1, 0) == 1, 1, 99015100, -1)
        # Dragonscale Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20833, 4, 1, 0) == 1, 52, 99015151, -1)
        # Symbol of the Penitent
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30053, 4, 1, 0) == 1, 56, 99015155, -1)
        
        # Chloranthy Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20013, 4, 1, 0) == 1, 2, 99015101, -1)
        # Havel's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20023, 4, 1, 0) == 1, 3, 99015102, -1)
        # Ring of Favor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20033, 4, 1, 0) == 1, 4, 99015103, -1)
        # Ring of Wisdom
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30213, 4, 1, 0) == 1, 62, 99015161, -1)
        
        # Skull Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20433, 4, 1, 0) == 1, 32, 99015131, -1)
        # Magic Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20493, 4, 1, 0) == 1, 36, 99015135, -1)
        # Lightning Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20503, 4, 1, 0) == 1, 37, 99015136, -1)
        # Fire Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20513, 4, 1, 0) == 1, 38, 99015137, -1)
        # Dark Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20523, 4, 1, 0) == 1, 39, 99015138, -1)
        
        # Elden Ring
        # AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30803, 4, 1, 0) == 1, 81, 99015180, -1)
        # Bellowing Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20343, 4, 1, 0) == 1, 25, 99015124, -1)
        # Witch's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20353, 4, 1, 0) == 1, 26, 99015125, -1)
        # Ring of the Sun's First Born
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20363, 4, 1, 0) == 1, 27, 99015126, -1)
        # Unholy Remains
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30023, 4, 1, 0) == 1, 55, 99015154, -1)
        
        # Ring of Steel Protection
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20043, 4, 1, 0) == 1, 5, 99015104, -1)
        # Flame Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20053, 4, 1, 0) == 1, 6, 99015105, -1)
        # Thunder Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20063, 4, 1, 0) == 1, 7, 99015106, -1)
        # Magic Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20073, 4, 1, 0) == 1, 8, 99015107, -1)
        # Dark Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20083, 4, 1, 0) == 1, 9, 99015108, -1)
        # Speckled Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20093, 4, 1, 0) == 1, 10, 99015109, -1)
        
        # Band of Stone
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30663, 4, 1, 0) == 1, 76, 99015175, -1)
        # Band of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30673, 4, 1, 0) == 1, 77, 99015176, -1)
        # Band of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30683, 4, 1, 0) == 1, 78, 99015177, -1)
        # Band of Sparks
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30693, 4, 1, 0) == 1, 79, 99015178, -1)
        # Band of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30703, 4, 1, 0) == 1, 80, 99015179, -1)
        
        # Bloodbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20103, 4, 1, 0) == 1, 11, 99015110, -1)
        # Poisonbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20113, 4, 1, 0) == 1, 12, 99015111, -1)
        # Cursebite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20123, 4, 1, 0) == 1, 13, 99015112, -1)
        # Chillbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 21003, 4, 1, 0) == 1, 53, 99015152, -1)
        # Fleshbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20133, 4, 1, 0) == 1, 14, 99015113, -1)
        
        # Tainted Chalice
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30933, 4, 1, 0) == 1, 85, 99015184, -1)
        # Ring of Punishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30893, 4, 1, 0) == 1, 82, 99015181, -1)
        # Accursed Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30943, 4, 1, 0) == 1, 86, 99015185, -1)
        # Frostflower Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30953, 4, 1, 0) == 1, 87, 99015186, -1)
        
        # Knight's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20463, 4, 1, 0) == 1, 33, 99015132, -1)
        # Hunter's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20473, 4, 1, 0) == 1, 34, 99015133, -1)
        # Scholar Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20153, 4, 1, 0) == 1, 16, 99015115, -1)
        # Priestess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20163, 4, 1, 0) == 1, 17, 99015116, -1)
        # Mercenary Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30393, 4, 1, 0) == 1, 68, 99015167, -1)
        # Heretic Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30403, 4, 1, 0) == 1, 69, 99015168, -1)
        # Merchant Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30413, 4, 1, 0) == 1, 70, 99015169, -1)
        # Physician Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30423, 4, 1, 0) == 1, 71, 99015170, -1)
        # Jester Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30433, 4, 1, 0) == 1, 72, 99015171, -1)
        
        # Wood Grain Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20143, 4, 1, 0) == 1, 15, 99015114, -1)
        # Red Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20173, 4, 1, 0) == 1, 18, 99015117, -1)
        # Blue Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20183, 4, 1, 0) == 1, 19, 99015118, -1)
        # Wolf Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20193, 4, 1, 0) == 1, 20, 99015119, -1)
        # Lingering Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20273, 4, 1, 0) == 1, 21, 99015120, -1)
        # Sage Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20283, 4, 1, 0) == 1, 22, 99015121, -1)
        # Dusk Crown Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20303, 4, 1, 0) == 1, 23, 99015122, -1)
        # Darkmoon Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20333, 4, 1, 0) == 1, 24, 99015123, -1)
        # Hawk Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20373, 4, 1, 0) == 1, 28, 99015127, -1)
        # Covetous Gold Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20393, 4, 1, 0) == 1, 29, 99015128, -1)
        # Covetous Silver Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20403, 4, 1, 0) == 1, 30, 99015129, -1)
        # Sun Princess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20413, 4, 1, 0) == 1, 31, 99015130, -1)
        # Knight Slayer's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20483, 4, 1, 0) == 1, 35, 99015134, -1)
        # Flynn's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20543, 4, 1, 0) == 1, 40, 99015139, -1)
        # Prisoner's Chain
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20553, 4, 1, 0) == 1, 41, 99015140, -1)
        # Ring of the Evil Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20593, 4, 1, 0) == 1, 42, 99015141, -1)
        # Ring of Calamity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20603, 4, 1, 0) == 1, 43, 99015142, -1)
        # Farron Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20613, 4, 1, 0) == 1, 44, 99015143, -1)
        # Lloyd's Sword Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20663, 4, 1, 0) == 1, 45, 99015144, -1)
        # Lloyd's Shield Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20673, 4, 1, 0) == 1, 46, 99015145, -1)
        # Estus Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20703, 4, 1, 0) == 1, 47, 99015146, -1)
        # Focusing Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20713, 4, 1, 0) == 1, 48, 99015147, -1)
        # Horsehoof Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20723, 4, 1, 0) == 1, 49, 99015148, -1)
        # Pontiff's Right Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20753, 4, 1, 0) == 1, 50, 99015149, -1)
        # Pontiff's Left Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20793, 4, 1, 0) == 1, 51, 99015150, -1)
        # Spirit Amethyst
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30013, 4, 1, 0) == 1, 54, 99015153, -1)
        # Tome of Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30083, 4, 1, 0) == 1, 57, 99015156, -1)
        # Londor Tincture
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30453, 4, 1, 0) == 1, 73, 99015172, -1)
        # Old Pygmy Brooch
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30503, 4, 1, 0) == 1, 74, 99015173, -1)
        # Bestial Band
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30653, 4, 1, 0) == 1, 75, 99015174, -1)

        # Demonsbane Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30173, 4, 1, 0) == 1, 58, 99015157, -1)
        # Crypt Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30183, 4, 1, 0) == 1, 59, 99015158, -1)
        # Blight Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30193, 4, 1, 0) == 1, 60, 99015159, -1)
        # Hallowed Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30203, 4, 1, 0) == 1, 61, 99015160, -1)

        # Ring of Retaliation
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30333, 4, 1, 0) == 1, 63, 99015162, -1)
        # Ring of Reprisal
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30343, 4, 1, 0) == 1, 64, 99015163, -1)
        # Ring of Spite
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30353, 4, 1, 0) == 1, 65, 99015164, -1)
        # Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30363, 4, 1, 0) == 1, 66, 99015165, -1)
        # Ring of Vengeance
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30373, 4, 1, 0) == 1, 67, 99015166, -1)
        
        # Ring of Momentum
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30873, 4, 1, 0) == 1, 90, 99015189, -1)
        # Bell of Grace
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30883, 4, 1, 0) == 1, 91, 99015190, -1)
        # Dashmaster's String
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30903, 4, 1, 0) == 1, 92, 99015191, -1)
        # Ring of Retreat
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31403, 4, 1, 0) == 1, 93, 99015192, -1)
        
        # Gower's Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31303, 4, 1, 0) == 1, 94, 99015193, -1)
        # Old Man's Gambit
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31083, 4, 1, 0) == 1, 95, 99015194, -1)
        
        # Hornet Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20383, 4, 1, 0) == 1, 96, 99015195, -1)
        # Assassin's Mark
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31203, 4, 1, 0) == 1, 97, 99015196, -1)
        # Elden Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30803, 4, 1, 0) == 1, 98, 99015197, -1)
        
        # Carthus Milkring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20453, 4, 1, 0) == 1, 99, 99015198, -1)
        # Greatwood Remnants
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30093, 4, 1, 0) == 1, 100, 99015199, -1)
        # Fool's Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30843, 4, 1, 0) == 1, 101, 99015200, -1)
        
        # Ring of Conjuration
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30993, 4, 1, 0) == 1, 102, 99015201, -1)
        
        # Wretched Pendant
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30043, 4, 1, 0) == 1, 103, 99015202, -1)
        
        # Ring of Blades
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31503, 4, 1, 0) == 1, 104, 99015203, -1)
        # Sigil of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31603, 4, 1, 0) == 1, 105, 99015204, -1)
        # Sigil of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31703, 4, 1, 0) == 1, 106, 99015205, -1)
        # Sigil of Thunder
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31803, 4, 1, 0) == 1, 107, 99015206, -1)
        # Sigil of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31903, 4, 1, 0) == 1, 108, 99015207, -1)
        
        # Eyri's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32003, 4, 1, 0) == 1, 109, 99015208, -1)
        # Ofydd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32103, 4, 1, 0) == 1, 110, 99015209, -1)
        # Ifanna's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32203, 4, 1, 0) == 1, 111, 99015210, -1)
        # Grufudd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32303, 4, 1, 0) == 1, 112, 99015211, -1)
        
        # Quit
        AddTalkListData(999, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Life Ring
        if GetTalkListEntryResult() == 1:
            assert t400504_x50(20003, 20004, 7, -8)
            return 0
        # Chloranthy Ring
        elif GetTalkListEntryResult() == 2:
            assert t400504_x50(20013, 20014, 7, -8)
            return 0
        # Havel's Ring
        elif GetTalkListEntryResult() == 3:
            assert t400504_x50(20023, 20024, 7, -8)
            return 0
        # Ring of Favor
        elif GetTalkListEntryResult() == 4:
            assert t400504_x50(20033, 20034, 7, -8)
            return 0
        # Ring of Steel Protection
        elif GetTalkListEntryResult() == 5:
            assert t400504_x50(20043, 20044, 7, -8)
            return 0
        # Flame Stoneplate Ring
        elif GetTalkListEntryResult() == 6:
            assert t400504_x50(20053, 20054, 7, -8)
            return 0
        # Thunder Stoneplate Ring
        elif GetTalkListEntryResult() == 7:
            assert t400504_x50(20063, 20064, 7, -8)
            return 0
        # Magic Stoneplate Ring
        elif GetTalkListEntryResult() == 8:
            assert t400504_x50(20073, 20074, 7, -8)
            return 0
        # Dark Stoneplate Ring
        elif GetTalkListEntryResult() == 9:
            assert t400504_x50(20083, 20084, 7, -8)
            return 0
        # Speckled Stoneplate Ring
        elif GetTalkListEntryResult() == 10:
            assert t400504_x50(20093, 20094, 7, -8)
            return 0
        # Bloodbite Ring
        elif GetTalkListEntryResult() == 11:
            assert t400504_x50(20103, 20104, 7, -8)
            return 0
        # Poisonbite Ring
        elif GetTalkListEntryResult() == 12:
            assert t400504_x50(20113, 20114, 7, -8)
            return 0
        # Cursebite Ring
        elif GetTalkListEntryResult() == 13:
            assert t400504_x50(20123, 20124, 7, -8)
            return 0
        # Fleshbite Ring
        elif GetTalkListEntryResult() == 14:
            assert t400504_x50(20133, 20134, 7, -8)
            return 0
        # Wood Grain Ring
        elif GetTalkListEntryResult() == 15:
            assert t400504_x50(20143, 20144, 7, -8)
            return 0
        # Scholar Ring
        elif GetTalkListEntryResult() == 16:
            assert t400504_x50(20153, 20154, 7, -8)
            return 0
        # Priestess Ring
        elif GetTalkListEntryResult() == 17:
            assert t400504_x50(20163, 20164, 7, -8)
            return 0
        # Red Tearstone Ring
        elif GetTalkListEntryResult() == 18:
            assert t400504_x50(20173, 20174, 7, -8)
            return 0
        # Blue Tearstone Ring
        elif GetTalkListEntryResult() == 19:
            assert t400504_x50(20183, 20184, 7, -8)
            return 0
        # Wolf Ring
        elif GetTalkListEntryResult() == 20:
            assert t400504_x50(20193, 20194, 7, -8)
            return 0
        # Lingering Dragoncrest Ring
        elif GetTalkListEntryResult() == 21:
            assert t400504_x50(20273, 20274, 7, -8)
            return 0
        # Sage Ring
        elif GetTalkListEntryResult() == 22:
            assert t400504_x50(20283, 20284, 7, -8)
            return 0
        # Dusk Crown Ring
        elif GetTalkListEntryResult() == 23:
            assert t400504_x50(20303, 20304, 7, -8)
            return 0
        # Darkmoon Ring
        elif GetTalkListEntryResult() == 24:
            assert t400504_x50(20333, 20334, 7, -8)
            return 0
        # Bellowing Dragoncrest Ring
        elif GetTalkListEntryResult() == 25:
            assert t400504_x50(20343, 20344, 7, -8)
            return 0
        # Witch's Ring
        elif GetTalkListEntryResult() == 26:
            assert t400504_x50(20353, 20354, 7, -8)
            return 0
        # Ring of the Sun's First Born
        elif GetTalkListEntryResult() == 27:
            assert t400504_x50(20363, 20364, 7, -8)
            return 0
        # Hawk Ring
        elif GetTalkListEntryResult() == 28:
            assert t400504_x50(20373, 20374, 7, -8)
            return 0
        # Covetous Gold Serpent Ring
        elif GetTalkListEntryResult() == 29:
            assert t400504_x50(20393, 20394, 7, -8)
            return 0
        # Covetous Silver Serpent Ring
        elif GetTalkListEntryResult() == 30:
            assert t400504_x50(20403, 20404, 7, -8)
            return 0
        # Sun Princess Ring
        elif GetTalkListEntryResult() == 31:
            assert t400504_x50(20413, 20414, 7, -8)
            return 0  
        # Skull Ring
        elif GetTalkListEntryResult() == 32:
            assert t400504_x50(20433, 20434, 7, -8)
            return 0
        # Knight's Ring
        elif GetTalkListEntryResult() == 33:
            assert t400504_x50(20463, 20464, 7, -8)
            return 0
        # Hunter's Ring
        elif GetTalkListEntryResult() == 34:
            assert t400504_x50(20473, 20474, 7, -8)
            return 0
        # Knight Slayer's Ring
        elif GetTalkListEntryResult() == 35:
            assert t400504_x50(20483, 20484, 7, -8)
            return 0
        # Magic Clutch Ring
        elif GetTalkListEntryResult() == 36:
            assert t400504_x50(20493, 20494, 7, -8)
            return 0
        # Lightning Clutch Ring
        elif GetTalkListEntryResult() == 37:
            assert t400504_x50(20503, 20504, 7, -8)
            return 0
        # Fire Clutch Ring
        elif GetTalkListEntryResult() == 38:
            assert t400504_x50(20513, 20514, 7, -8)
            return 0
        # Dark Clutch Ring
        elif GetTalkListEntryResult() == 39:
            assert t400504_x50(20523, 20524, 7, -8)
            return 0
        # Flynn's Ring
        elif GetTalkListEntryResult() == 40:
            assert t400504_x50(20543, 20544, 7, -8)
            return 0
        # Prisoner's Chain
        elif GetTalkListEntryResult() == 41:
            assert t400504_x50(20553, 20554, 7, -8)
            return 0
        # Ring of the Evil Eye
        elif GetTalkListEntryResult() == 42:
            assert t400504_x50(20593, 20594, 7, -8)
            return 0
        # Ring of Calamity
        elif GetTalkListEntryResult() == 43:
            assert t400504_x50(20603, 20604, 7, -8)
            return 0
        # Farron Ring
        elif GetTalkListEntryResult() == 44:
            assert t400504_x50(20613, 20614, 7, -8)
            return 0
        # Lloyd's Sword Ring
        elif GetTalkListEntryResult() == 45:
            assert t400504_x50(20663, 20664, 7, -8)
            return 0
        # Lloyd's Shield Ring
        elif GetTalkListEntryResult() == 46:
            assert t400504_x50(20673, 20674, 7, -8)
            return 0
        # Estus Ring
        elif GetTalkListEntryResult() == 47:
            assert t400504_x50(20703, 20704, 7, -8)
            return 0
        # Focusing Ring
        elif GetTalkListEntryResult() == 48:
            assert t400504_x50(20713, 20714, 7, -8)
            return 0
        # Horsehoof Ring
        elif GetTalkListEntryResult() == 49:
            assert t400504_x50(20723, 20724, 7, -8)
            return 0
        # Pontiff's Right Eye
        elif GetTalkListEntryResult() == 50:
            assert t400504_x50(20753, 20754, 7, -8)
            return 0
        # Pontiff's Left Eye
        elif GetTalkListEntryResult() == 51:
            assert t400504_x50(20793, 20794, 7, -8)
            return 0
        # Dragonscale Ring
        elif GetTalkListEntryResult() == 52:
            assert t400504_x50(20833, 20834, 7, -8)
            return 0
        # Chillbite Ring
        elif GetTalkListEntryResult() == 53:
            assert t400504_x50(21003, 21004, 7, -8)
            return 0
        # Spirit Amethyst
        elif GetTalkListEntryResult() == 54:
            assert t400504_x50(30013, 30014, 7, -8)
            return 0
        # Unholy Remains
        elif GetTalkListEntryResult() == 55:
            assert t400504_x50(30023, 30024, 7, -8)
            return 0
        # Symbol of the Penitent
        elif GetTalkListEntryResult() == 56:
            assert t400504_x50(30053, 30054, 7, -8)
            return 0
        # Tome of Sunlight
        elif GetTalkListEntryResult() == 57:
            assert t400504_x50(30083, 30084, 7, -8)
            return 0
        # Demonsbane Ring
        elif GetTalkListEntryResult() == 58:
            assert t400504_x50(30173, 30174, 7, -8)
            return 0
        # Crypt Ring
        elif GetTalkListEntryResult() == 59:
            assert t400504_x50(30183, 30184, 7, -8)
            return 0
        # Blight Ring
        elif GetTalkListEntryResult() == 60:
            assert t400504_x50(30193, 30194, 7, -8)
            return 0
        # Hallowed Ring
        elif GetTalkListEntryResult() == 61:
            assert t400504_x50(30203, 30204, 7, -8)
            return 0
        # Ring of Wisdom
        elif GetTalkListEntryResult() == 62:
            assert t400504_x50(30213, 30214, 7, -8)
            return 0
        # Ring of Retaliation
        elif GetTalkListEntryResult() == 63:
            assert t400504_x50(30333, 30334, 7, -8)
            return 0
        # Ring of Reprisal
        elif GetTalkListEntryResult() == 64:
            assert t400504_x50(30343, 30344, 7, -8)
            return 0
        # Ring of Spite
        elif GetTalkListEntryResult() == 65:
            assert t400504_x50(30353, 30354, 7, -8)
            return 0
        # Ring of Retribution
        elif GetTalkListEntryResult() == 66:
            assert t400504_x50(30363, 30364, 7, -8)
            return 0
        # Ring of Vengeance
        elif GetTalkListEntryResult() == 67:
            assert t400504_x50(30373, 30374, 7, -8)
            return 0
        # Mercenary Ring
        elif GetTalkListEntryResult() == 68:
            assert t400504_x50(30393, 30394, 7, -8)
            return 0
        # Heretic Ring
        elif GetTalkListEntryResult() == 69:
            assert t400504_x50(30403, 30404, 7, -8)
            return 0
        # Merchant Ring
        elif GetTalkListEntryResult() == 70:
            assert t400504_x50(30413, 30414, 7, -8)
            return 0
        # Physician Ring
        elif GetTalkListEntryResult() == 71:
            assert t400504_x50(30423, 30424, 7, -8)
            return 0
        # Jester Ring
        elif GetTalkListEntryResult() == 72:
            assert t400504_x50(30433, 30434, 7, -8)
            return 0
        # Londor Tincture
        elif GetTalkListEntryResult() == 73:
            assert t400504_x50(30453, 30454, 7, -8)
            return 0
        # Old Pygmy Brooch
        elif GetTalkListEntryResult() == 74:
            assert t400504_x50(30503, 30504, 7, -8)
            return 0
        # Bestial Band
        elif GetTalkListEntryResult() == 75:
            assert t400504_x50(30653, 30654, 7, -8)
            return 0
        # Band of Stone
        elif GetTalkListEntryResult() == 76:
            assert t400504_x50(30663, 30664, 7, -8)
            return 0
        # Band of Magic
        elif GetTalkListEntryResult() == 77:
            assert t400504_x50(30673, 30674, 7, -8)
            return 0
        # Band of Flame
        elif GetTalkListEntryResult() == 78:
            assert t400504_x50(30683, 30684, 7, -8)
            return 0
        # Band of Sparks
        elif GetTalkListEntryResult() == 79:
            assert t400504_x50(30693, 30694, 7, -8)
            return 0
        # Band of Darkness
        elif GetTalkListEntryResult() == 80:
            assert t400504_x50(30703, 30704, 7, -8)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 81:
            assert t400504_x50(30803, 30804, 7, -8)
            return 0
        # Ring of Punishment
        elif GetTalkListEntryResult() == 82:
            assert t400504_x50(30893, 30894, 7, -8)
            return 0
        # Tainted Chalice
        elif GetTalkListEntryResult() == 85:
            assert t400504_x50(30933, 30934, 7, -8)
            return 0
        # Accursed Sigil
        elif GetTalkListEntryResult() == 86:
            assert t400504_x50(30943, 30944, 7, -8)
            return 0
        # Frostflower Ring
        elif GetTalkListEntryResult() == 87:
            assert t400504_x50(30953, 30954, 7, -8)
            return 0
        # Ring of Momentum
        elif GetTalkListEntryResult() == 90:
            assert t400504_x50(30873, 30874, 7, -8)
            return 0 
        # Bell of Grace
        elif GetTalkListEntryResult() == 91:
            assert t400504_x50(30883, 30884, 7, -8)
            return 0
        # Dashmaster's String
        elif GetTalkListEntryResult() == 92:
            assert t400504_x50(30903, 30904, 7, -8)
            return 0
        # Ring of Retreat
        elif GetTalkListEntryResult() == 93:
            assert t400504_x50(31403, 31404, 7, -8)
            return 0
        # Gower's Ring of Retribution
        elif GetTalkListEntryResult() == 94:
            assert t400504_x50(31303, 31304, 7, -8)
            return 0
        # Old Man's Gambit
        elif GetTalkListEntryResult() == 95:
            assert t400504_x50(31083, 31084, 7, -8)
            return 0
        # Hornet Ring
        elif GetTalkListEntryResult() == 96:
            assert t400504_x50(20383, 20384, 7, -8)
            return 0
        # Assassin's Mark
        elif GetTalkListEntryResult() == 97:
            assert t400504_x50(31203, 31204, 7, -8)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 98:
            assert t400504_x50(30803, 30804, 7, -8)
            return 0
        # Carthus Milkring
        elif GetTalkListEntryResult() == 99:
            assert t400504_x50(20453, 20454, 7, -8)
            return 0
        # Greatwood Remnants
        elif GetTalkListEntryResult() == 100:
            assert t400504_x50(30093, 30094, 7, -8)
            return 0
        # Fool's Sigil
        elif GetTalkListEntryResult() == 101:
            assert t400504_x50(30843, 30844, 7, -8)
            return 0
        # Ring of Conjuration
        elif GetTalkListEntryResult() == 102:
            assert t400504_x50(30993, 30994, 7, -8)
            return 0
        # Wretched Pendant
        elif GetTalkListEntryResult() == 103:
            assert t400504_x50(30043, 30044, 7, -8)
            return 0
        # Ring of Blades
        elif GetTalkListEntryResult() == 104:
            assert t400504_x50(31503, 31504, 7, -8)
            return 0
        # Sigil of Magic
        elif GetTalkListEntryResult() == 105:
            assert t400504_x50(31603, 31604, 7, -8)
            return 0
        # Sigil of Flame
        elif GetTalkListEntryResult() == 106:
            assert t400504_x50(31703, 31704, 7, -8)
            return 0
        # Sigil of Thunder
        elif GetTalkListEntryResult() == 107:
            assert t400504_x50(31803, 31804, 7, -8)
            return 0
        # Sigil of Darkness
        elif GetTalkListEntryResult() == 108:
            assert t400504_x50(31903, 31904, 7, -8)
            return 0
        # Eyri's Signet
        elif GetTalkListEntryResult() == 109:
            assert t400504_x50(32003, 32004, 7, -8)
            return 0
        # Ofydd's Signet
        elif GetTalkListEntryResult() == 110:
            assert t400504_x50(32103, 32104, 7, -8)
            return 0
        # Ifanna's Signet
        elif GetTalkListEntryResult() == 111:
            assert t400504_x50(32203, 32204, 7, -8)
            return 0
        # Grufudd's Signet
        elif GetTalkListEntryResult() == 112:
            assert t400504_x50(32303, 32304, 7, -8)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Legendary
#----------------------------------------------------------
def t400504_x45():
    c1110()
    
    while True:
        ClearTalkListData()
    
        # Life Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20004, 4, 1, 0) == 1, 1, 99015100, -1)
        # Dragonscale Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20834, 4, 1, 0) == 1, 52, 99015151, -1)
        # Symbol of the Penitent
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30054, 4, 1, 0) == 1, 56, 99015155, -1)
        
        # Chloranthy Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20014, 4, 1, 0) == 1, 2, 99015101, -1)
        # Havel's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20024, 4, 1, 0) == 1, 3, 99015102, -1)
        # Ring of Favor
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20034, 4, 1, 0) == 1, 4, 99015103, -1)
        # Ring of Wisdom
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30214, 4, 1, 0) == 1, 62, 99015161, -1)
        
        # Skull Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20434, 4, 1, 0) == 1, 32, 99015131, -1)
        # Magic Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20494, 4, 1, 0) == 1, 36, 99015135, -1)
        # Lightning Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20504, 4, 1, 0) == 1, 37, 99015136, -1)
        # Fire Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20514, 4, 1, 0) == 1, 38, 99015137, -1)
        # Dark Clutch Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20524, 4, 1, 0) == 1, 39, 99015138, -1)
        
        # Elden Ring
        # AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30804, 4, 1, 0) == 1, 81, 99015180, -1)
        # Bellowing Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20344, 4, 1, 0) == 1, 25, 99015124, -1)
        # Witch's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20354, 4, 1, 0) == 1, 26, 99015125, -1)
        # Ring of the Sun's First Born
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20364, 4, 1, 0) == 1, 27, 99015126, -1)
        # Unholy Remains
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30024, 4, 1, 0) == 1, 55, 99015154, -1)
        
        # Ring of Steel Protection
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20044, 4, 1, 0) == 1, 5, 99015104, -1)
        # Flame Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20054, 4, 1, 0) == 1, 6, 99015105, -1)
        # Thunder Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20064, 4, 1, 0) == 1, 7, 99015106, -1)
        # Magic Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20074, 4, 1, 0) == 1, 8, 99015107, -1)
        # Dark Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20084, 4, 1, 0) == 1, 9, 99015108, -1)
        # Speckled Stoneplate Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20094, 4, 1, 0) == 1, 10, 99015109, -1)
        
        # Band of Stone
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30664, 4, 1, 0) == 1, 76, 99015175, -1)
        # Band of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30674, 4, 1, 0) == 1, 77, 99015176, -1)
        # Band of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30684, 4, 1, 0) == 1, 78, 99015177, -1)
        # Band of Sparks
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30694, 4, 1, 0) == 1, 79, 99015178, -1)
        # Band of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30704, 4, 1, 0) == 1, 80, 99015179, -1)
        
        # Bloodbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20104, 4, 1, 0) == 1, 11, 99015110, -1)
        # Poisonbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20114, 4, 1, 0) == 1, 12, 99015111, -1)
        # Cursebite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20124, 4, 1, 0) == 1, 13, 99015112, -1)
        # Chillbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 21004, 4, 1, 0) == 1, 53, 99015152, -1)
        # Fleshbite Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20134, 4, 1, 0) == 1, 14, 99015113, -1)
        
        # Tainted Chalice
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30934, 4, 1, 0) == 1, 85, 99015184, -1)
        # Ring of Punishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30894, 4, 1, 0) == 1, 82, 99015181, -1)
        # Accursed Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30944, 4, 1, 0) == 1, 86, 99015185, -1)
        # Frostflower Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30954, 4, 1, 0) == 1, 87, 99015186, -1)
        
        # Knight's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20464, 4, 1, 0) == 1, 33, 99015132, -1)
        # Hunter's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20474, 4, 1, 0) == 1, 34, 99015133, -1)
        # Scholar Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20154, 4, 1, 0) == 1, 16, 99015115, -1)
        # Priestess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20164, 4, 1, 0) == 1, 17, 99015116, -1)
        # Mercenary Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30394, 4, 1, 0) == 1, 68, 99015167, -1)
        # Heretic Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30404, 4, 1, 0) == 1, 69, 99015168, -1)
        # Merchant Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30414, 4, 1, 0) == 1, 70, 99015169, -1)
        # Physician Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30424, 4, 1, 0) == 1, 71, 99015170, -1)
        # Jester Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30434, 4, 1, 0) == 1, 72, 99015171, -1)
        
        # Wood Grain Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20144, 4, 1, 0) == 1, 15, 99015114, -1)
        # Red Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20174, 4, 1, 0) == 1, 18, 99015117, -1)
        # Blue Tearstone Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20184, 4, 1, 0) == 1, 19, 99015118, -1)
        # Wolf Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20194, 4, 1, 0) == 1, 20, 99015119, -1)
        # Lingering Dragoncrest Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20274, 4, 1, 0) == 1, 21, 99015120, -1)
        # Sage Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20284, 4, 1, 0) == 1, 22, 99015121, -1)
        # Dusk Crown Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20304, 4, 1, 0) == 1, 23, 99015122, -1)
        # Darkmoon Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20334, 4, 1, 0) == 1, 24, 99015123, -1)
        # Hawk Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20374, 4, 1, 0) == 1, 28, 99015127, -1)
        # Covetous Gold Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20394, 4, 1, 0) == 1, 29, 99015128, -1)
        # Covetous Silver Serpent Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20404, 4, 1, 0) == 1, 30, 99015129, -1)
        # Sun Princess Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20414, 4, 1, 0) == 1, 31, 99015130, -1)
        # Knight Slayer's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20484, 4, 1, 0) == 1, 35, 99015134, -1)
        # Flynn's Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20544, 4, 1, 0) == 1, 40, 99015139, -1)
        # Prisoner's Chain
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20554, 4, 1, 0) == 1, 41, 99015140, -1)
        # Ring of the Evil Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20594, 4, 1, 0) == 1, 42, 99015141, -1)
        # Ring of Calamity
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20604, 4, 1, 0) == 1, 43, 99015142, -1)
        # Farron Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20614, 4, 1, 0) == 1, 44, 99015143, -1)
        # Lloyd's Sword Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20664, 4, 1, 0) == 1, 45, 99015144, -1)
        # Lloyd's Shield Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20674, 4, 1, 0) == 1, 46, 99015145, -1)
        # Estus Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20704, 4, 1, 0) == 1, 47, 99015146, -1)
        # Focusing Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20714, 4, 1, 0) == 1, 48, 99015147, -1)
        # Horsehoof Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20724, 4, 1, 0) == 1, 49, 99015148, -1)
        # Pontiff's Right Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20754, 4, 1, 0) == 1, 50, 99015149, -1)
        # Pontiff's Left Eye
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20794, 4, 1, 0) == 1, 51, 99015150, -1)
        # Spirit Amethyst
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30014, 4, 1, 0) == 1, 54, 99015153, -1)
        # Tome of Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30084, 4, 1, 0) == 1, 57, 99015156, -1)
        # Londor Tincture
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30454, 4, 1, 0) == 1, 73, 99015172, -1)
        # Old Pygmy Brooch
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30504, 4, 1, 0) == 1, 74, 99015173, -1)
        # Bestial Band
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30654, 4, 1, 0) == 1, 75, 99015174, -1)

        # Demonsbane Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30174, 4, 1, 0) == 1, 58, 99015157, -1)
        # Crypt Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30184, 4, 1, 0) == 1, 59, 99015158, -1)
        # Blight Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30194, 4, 1, 0) == 1, 60, 99015159, -1)
        # Hallowed Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30204, 4, 1, 0) == 1, 61, 99015160, -1)

        # Ring of Retaliation
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30334, 4, 1, 0) == 1, 63, 99015162, -1)
        # Ring of Reprisal
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30344, 4, 1, 0) == 1, 64, 99015163, -1)
        # Ring of Spite
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30354, 4, 1, 0) == 1, 65, 99015164, -1)
        # Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30364, 4, 1, 0) == 1, 66, 99015165, -1)
        # Ring of Vengeance
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30374, 4, 1, 0) == 1, 67, 99015166, -1)
        
        # Ring of Momentum
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30874, 4, 1, 0) == 1, 90, 99015189, -1)
        # Bell of Grace
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30884, 4, 1, 0) == 1, 91, 99015190, -1)
        # Dashmaster's String
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30904, 4, 1, 0) == 1, 92, 99015191, -1)
        # Ring of Retreat
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31404, 4, 1, 0) == 1, 93, 99015192, -1)
        
        # Gower's Ring of Retribution
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31304, 4, 1, 0) == 1, 94, 99015193, -1)
        # Old Man's Gambit
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31084, 4, 1, 0) == 1, 95, 99015194, -1)
        
        # Hornet Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20384, 4, 1, 0) == 1, 96, 99015195, -1)
        # Assassin's Mark
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31204, 4, 1, 0) == 1, 97, 99015196, -1)
        # Elden Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30804, 4, 1, 0) == 1, 98, 99015197, -1)
        
        # Carthus Milkring
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 20454, 4, 1, 0) == 1, 99, 99015198, -1)
        # Greatwood Remnants
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30094, 4, 1, 0) == 1, 100, 99015199, -1)
        # Fool's Sigil
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30844, 4, 1, 0) == 1, 101, 99015200, -1)
        
        # Ring of Conjuration
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30994, 4, 1, 0) == 1, 102, 99015201, -1)
        
        # Wretched Pendant
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 30044, 4, 1, 0) == 1, 103, 99015202, -1)
        
        # Ring of Blades
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31504, 4, 1, 0) == 1, 104, 99015203, -1)
        # Sigil of Magic
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31604, 4, 1, 0) == 1, 105, 99015204, -1)
        # Sigil of Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31704, 4, 1, 0) == 1, 106, 99015205, -1)
        # Sigil of Thunder
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31804, 4, 1, 0) == 1, 107, 99015206, -1)
        # Sigil of Darkness
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 31904, 4, 1, 0) == 1, 108, 99015207, -1)
        
        # Eyri's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32004, 4, 1, 0) == 1, 109, 99015208, -1)
        # Ofydd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32104, 4, 1, 0) == 1, 110, 99015209, -1)
        # Ifanna's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32204, 4, 1, 0) == 1, 111, 99015210, -1)
        # Grufudd's Signet
        AddTalkListDataIf(ComparePlayerInventoryNumber(2, 32304, 4, 1, 0) == 1, 112, 99015211, -1)
        
        # Quit
        AddTalkListData(999, 15000180, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Life Ring
        if GetTalkListEntryResult() == 1:
            assert t400504_x50(20004, 20005, 9, -10)
            return 0
        # Chloranthy Ring
        elif GetTalkListEntryResult() == 2:
            assert t400504_x50(20014, 20015, 9, -10)
            return 0
        # Havel's Ring
        elif GetTalkListEntryResult() == 3:
            assert t400504_x50(20024, 20025, 9, -10)
            return 0
        # Ring of Favor
        elif GetTalkListEntryResult() == 4:
            assert t400504_x50(20034, 20035, 9, -10)
            return 0
        # Ring of Steel Protection
        elif GetTalkListEntryResult() == 5:
            assert t400504_x50(20044, 20045, 9, -10)
            return 0
        # Flame Stoneplate Ring
        elif GetTalkListEntryResult() == 6:
            assert t400504_x50(20054, 20055, 9, -10)
            return 0
        # Thunder Stoneplate Ring
        elif GetTalkListEntryResult() == 7:
            assert t400504_x50(20064, 20065, 9, -10)
            return 0
        # Magic Stoneplate Ring
        elif GetTalkListEntryResult() == 8:
            assert t400504_x50(20074, 20075, 9, -10)
            return 0
        # Dark Stoneplate Ring
        elif GetTalkListEntryResult() == 9:
            assert t400504_x50(20084, 20085, 9, -10)
            return 0
        # Speckled Stoneplate Ring
        elif GetTalkListEntryResult() == 10:
            assert t400504_x50(20094, 20095, 9, -10)
            return 0
        # Bloodbite Ring
        elif GetTalkListEntryResult() == 11:
            assert t400504_x50(20104, 20105, 9, -10)
            return 0
        # Poisonbite Ring
        elif GetTalkListEntryResult() == 12:
            assert t400504_x50(20114, 20115, 9, -10)
            return 0
        # Cursebite Ring
        elif GetTalkListEntryResult() == 13:
            assert t400504_x50(20124, 20125, 9, -10)
            return 0
        # Fleshbite Ring
        elif GetTalkListEntryResult() == 14:
            assert t400504_x50(20134, 20135, 9, -10)
            return 0
        # Wood Grain Ring
        elif GetTalkListEntryResult() == 15:
            assert t400504_x50(20144, 20145, 9, -10)
            return 0
        # Scholar Ring
        elif GetTalkListEntryResult() == 16:
            assert t400504_x50(20154, 20155, 9, -10)
            return 0
        # Priestess Ring
        elif GetTalkListEntryResult() == 17:
            assert t400504_x50(20164, 20165, 9, -10)
            return 0
        # Red Tearstone Ring
        elif GetTalkListEntryResult() == 18:
            assert t400504_x50(20174, 20175, 9, -10)
            return 0
        # Blue Tearstone Ring
        elif GetTalkListEntryResult() == 19:
            assert t400504_x50(20184, 20185, 9, -10)
            return 0
        # Wolf Ring
        elif GetTalkListEntryResult() == 20:
            assert t400504_x50(20194, 20195, 9, -10)
            return 0
        # Lingering Dragoncrest Ring
        elif GetTalkListEntryResult() == 21:
            assert t400504_x50(20274, 20275, 9, -10)
            return 0
        # Sage Ring
        elif GetTalkListEntryResult() == 22:
            assert t400504_x50(20284, 20285, 9, -10)
            return 0
        # Dusk Crown Ring
        elif GetTalkListEntryResult() == 23:
            assert t400504_x50(20304, 20305, 9, -10)
            return 0
        # Darkmoon Ring
        elif GetTalkListEntryResult() == 24:
            assert t400504_x50(20334, 20335, 9, -10)
            return 0
        # Bellowing Dragoncrest Ring
        elif GetTalkListEntryResult() == 25:
            assert t400504_x50(20344, 20345, 9, -10)
            return 0
        # Witch's Ring
        elif GetTalkListEntryResult() == 26:
            assert t400504_x50(20354, 20355, 9, -10)
            return 0
        # Ring of the Sun's First Born
        elif GetTalkListEntryResult() == 27:
            assert t400504_x50(20364, 20365, 9, -10)
            return 0
        # Hawk Ring
        elif GetTalkListEntryResult() == 28:
            assert t400504_x50(20374, 20375, 9, -10)
            return 0
        # Covetous Gold Serpent Ring
        elif GetTalkListEntryResult() == 29:
            assert t400504_x50(20394, 20395, 9, -10)
            return 0
        # Covetous Silver Serpent Ring
        elif GetTalkListEntryResult() == 30:
            assert t400504_x50(20404, 20405, 9, -10)
            return 0
        # Sun Princess Ring
        elif GetTalkListEntryResult() == 31:
            assert t400504_x50(20414, 20415, 9, -10)
            return 0  
        # Skull Ring
        elif GetTalkListEntryResult() == 32:
            assert t400504_x50(20434, 20435, 9, -10)
            return 0
        # Knight's Ring
        elif GetTalkListEntryResult() == 33:
            assert t400504_x50(20464, 20465, 9, -10)
            return 0
        # Hunter's Ring
        elif GetTalkListEntryResult() == 34:
            assert t400504_x50(20474, 20475, 9, -10)
            return 0
        # Knight Slayer's Ring
        elif GetTalkListEntryResult() == 35:
            assert t400504_x50(20484, 20485, 9, -10)
            return 0
        # Magic Clutch Ring
        elif GetTalkListEntryResult() == 36:
            assert t400504_x50(20494, 20495, 9, -10)
            return 0
        # Lightning Clutch Ring
        elif GetTalkListEntryResult() == 37:
            assert t400504_x50(20504, 20505, 9, -10)
            return 0
        # Fire Clutch Ring
        elif GetTalkListEntryResult() == 38:
            assert t400504_x50(20514, 20515, 9, -10)
            return 0
        # Dark Clutch Ring
        elif GetTalkListEntryResult() == 39:
            assert t400504_x50(20524, 20525, 9, -10)
            return 0
        # Flynn's Ring
        elif GetTalkListEntryResult() == 40:
            assert t400504_x50(20544, 20545, 9, -10)
            return 0
        # Prisoner's Chain
        elif GetTalkListEntryResult() == 41:
            assert t400504_x50(20554, 20555, 9, -10)
            return 0
        # Ring of the Evil Eye
        elif GetTalkListEntryResult() == 42:
            assert t400504_x50(20594, 20595, 9, -10)
            return 0
        # Ring of Calamity
        elif GetTalkListEntryResult() == 43:
            assert t400504_x50(20604, 20605, 9, -10)
            return 0
        # Farron Ring
        elif GetTalkListEntryResult() == 44:
            assert t400504_x50(20614, 20615, 9, -10)
            return 0
        # Lloyd's Sword Ring
        elif GetTalkListEntryResult() == 45:
            assert t400504_x50(20664, 20665, 9, -10)
            return 0
        # Lloyd's Shield Ring
        elif GetTalkListEntryResult() == 46:
            assert t400504_x50(20674, 20675, 9, -10)
            return 0
        # Estus Ring
        elif GetTalkListEntryResult() == 47:
            assert t400504_x50(20704, 20705, 9, -10)
            return 0
        # Focusing Ring
        elif GetTalkListEntryResult() == 48:
            assert t400504_x50(20714, 20715, 9, -10)
            return 0
        # Horsehoof Ring
        elif GetTalkListEntryResult() == 49:
            assert t400504_x50(20724, 20725, 9, -10)
            return 0
        # Pontiff's Right Eye
        elif GetTalkListEntryResult() == 50:
            assert t400504_x50(20754, 20755, 9, -10)
            return 0
        # Pontiff's Left Eye
        elif GetTalkListEntryResult() == 51:
            assert t400504_x50(20794, 20795, 9, -10)
            return 0
        # Dragonscale Ring
        elif GetTalkListEntryResult() == 52:
            assert t400504_x50(20834, 20835, 9, -10)
            return 0
        # Chillbite Ring
        elif GetTalkListEntryResult() == 53:
            assert t400504_x50(21004, 21005, 9, -10)
            return 0
        # Spirit Amethyst
        elif GetTalkListEntryResult() == 54:
            assert t400504_x50(30014, 30015, 9, -10)
            return 0
        # Unholy Remains
        elif GetTalkListEntryResult() == 55:
            assert t400504_x50(30024, 30025, 9, -10)
            return 0
        # Symbol of the Penitent
        elif GetTalkListEntryResult() == 56:
            assert t400504_x50(30054, 30055, 9, -10)
            return 0
        # Tome of Sunlight
        elif GetTalkListEntryResult() == 57:
            assert t400504_x50(30084, 30085, 9, -10)
            return 0
        # Demonsbane Ring
        elif GetTalkListEntryResult() == 58:
            assert t400504_x50(30174, 30175, 9, -10)
            return 0
        # Crypt Ring
        elif GetTalkListEntryResult() == 59:
            assert t400504_x50(30184, 30185, 9, -10)
            return 0
        # Blight Ring
        elif GetTalkListEntryResult() == 60:
            assert t400504_x50(30194, 30195, 9, -10)
            return 0
        # Hallowed Ring
        elif GetTalkListEntryResult() == 61:
            assert t400504_x50(30204, 30205, 9, -10)
            return 0
        # Ring of Wisdom
        elif GetTalkListEntryResult() == 62:
            assert t400504_x50(30214, 30215, 9, -10)
            return 0
        # Ring of Retaliation
        elif GetTalkListEntryResult() == 63:
            assert t400504_x50(30334, 30335, 9, -10)
            return 0
        # Ring of Reprisal
        elif GetTalkListEntryResult() == 64:
            assert t400504_x50(30344, 30345, 9, -10)
            return 0
        # Ring of Spite
        elif GetTalkListEntryResult() == 65:
            assert t400504_x50(30354, 30355, 9, -10)
            return 0
        # Ring of Retribution
        elif GetTalkListEntryResult() == 66:
            assert t400504_x50(30364, 30365, 9, -10)
            return 0
        # Ring of Vengeance
        elif GetTalkListEntryResult() == 67:
            assert t400504_x50(30374, 30375, 9, -10)
            return 0
        # Mercenary Ring
        elif GetTalkListEntryResult() == 68:
            assert t400504_x50(30394, 30395, 9, -10)
            return 0
        # Heretic Ring
        elif GetTalkListEntryResult() == 69:
            assert t400504_x50(30404, 30405, 9, -10)
            return 0
        # Merchant Ring
        elif GetTalkListEntryResult() == 70:
            assert t400504_x50(30414, 30415, 9, -10)
            return 0
        # Physician Ring
        elif GetTalkListEntryResult() == 71:
            assert t400504_x50(30424, 30425, 9, -10)
            return 0
        # Jester Ring
        elif GetTalkListEntryResult() == 72:
            assert t400504_x50(30434, 30435, 9, -10)
            return 0
        # Londor Tincture
        elif GetTalkListEntryResult() == 73:
            assert t400504_x50(30454, 30455, 9, -10)
            return 0
        # Old Pygmy Brooch
        elif GetTalkListEntryResult() == 74:
            assert t400504_x50(30504, 30505, 9, -10)
            return 0
        # Bestial Band
        elif GetTalkListEntryResult() == 75:
            assert t400504_x50(30654, 30655, 9, -10)
            return 0
        # Band of Stone
        elif GetTalkListEntryResult() == 76:
            assert t400504_x50(30664, 30665, 9, -10)
            return 0
        # Band of Magic
        elif GetTalkListEntryResult() == 77:
            assert t400504_x50(30674, 30675, 9, -10)
            return 0
        # Band of Flame
        elif GetTalkListEntryResult() == 78:
            assert t400504_x50(30684, 30685, 9, -10)
            return 0
        # Band of Sparks
        elif GetTalkListEntryResult() == 79:
            assert t400504_x50(30694, 30695, 9, -10)
            return 0
        # Band of Darkness
        elif GetTalkListEntryResult() == 80:
            assert t400504_x50(30704, 30705, 9, -10)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 81:
            assert t400504_x50(30804, 30805, 9, -10)
            return 0
        # Ring of Punishment
        elif GetTalkListEntryResult() == 82:
            assert t400504_x50(30894, 30895, 9, -10)
            return 0
        # Tainted Chalice
        elif GetTalkListEntryResult() == 85:
            assert t400504_x50(30934, 30935, 9, -10)
            return 0
        # Accursed Sigil
        elif GetTalkListEntryResult() == 86:
            assert t400504_x50(30944, 30945, 9, -10)
            return 0
        # Frostflower Ring
        elif GetTalkListEntryResult() == 87:
            assert t400504_x50(30954, 30955, 9, -10)
            return 0
        # Ring of Momentum
        elif GetTalkListEntryResult() == 90:
            assert t400504_x50(30874, 30875, 9, -10)
            return 0 
        # Bell of Grace
        elif GetTalkListEntryResult() == 91:
            assert t400504_x50(30884, 30885, 9, -10)
            return 0
        # Dashmaster's String
        elif GetTalkListEntryResult() == 92:
            assert t400504_x50(30904, 30905, 9, -10)
            return 0
        # Ring of Retreat
        elif GetTalkListEntryResult() == 93:
            assert t400504_x50(31404, 31405, 9, -10)
            return 0
        # Gower's Ring of Retribution
        elif GetTalkListEntryResult() == 94:
            assert t400504_x50(31304, 31305, 9, -10)
            return 0
        # Old Man's Gambit
        elif GetTalkListEntryResult() == 95:
            assert t400504_x50(31084, 31085, 9, -10)
            return 0
        # Hornet Ring
        elif GetTalkListEntryResult() == 96:
            assert t400504_x50(20384, 20385, 9, -10)
            return 0
        # Assassin's Mark
        elif GetTalkListEntryResult() == 97:
            assert t400504_x50(31204, 31205, 9, -10)
            return 0
        # Elden Ring
        elif GetTalkListEntryResult() == 98:
            assert t400504_x50(30804, 30805, 9, -10)
            return 0
        # Carthus Milkring
        elif GetTalkListEntryResult() == 99:
            assert t400504_x50(20454, 20455, 9, -10)
            return 0
        # Greatwood Remnants
        elif GetTalkListEntryResult() == 100:
            assert t400504_x50(30094, 30095, 9, -10)
            return 0
        # Fool's Sigil
        elif GetTalkListEntryResult() == 101:
            assert t400504_x50(30844, 30845, 9, -10)
            return 0
        # Ring of Conjuration
        elif GetTalkListEntryResult() == 102:
            assert t400504_x50(30994, 30995, 9, -10)
            return 0
        # Wretched Pendant
        elif GetTalkListEntryResult() == 103:
            assert t400504_x50(30044, 30045, 9, -10)
            return 0
        # Ring of Blades
        elif GetTalkListEntryResult() == 104:
            assert t400504_x50(31504, 31505, 9, -10)
            return 0
        # Sigil of Magic
        elif GetTalkListEntryResult() == 105:
            assert t400504_x50(31604, 31605, 9, -10)
            return 0
        # Sigil of Flame
        elif GetTalkListEntryResult() == 106:
            assert t400504_x50(31704, 31705, 9, -10)
            return 0
        # Sigil of Thunder
        elif GetTalkListEntryResult() == 107:
            assert t400504_x50(31804, 31805, 9, -10)
            return 0
        # Sigil of Darkness
        elif GetTalkListEntryResult() == 108:
            assert t400504_x50(31904, 31905, 9, -10)
            return 0
        # Eyri's Signet
        elif GetTalkListEntryResult() == 109:
            assert t400504_x50(32004, 32005, 9, -10)
            return 0
        # Ofydd's Signet
        elif GetTalkListEntryResult() == 110:
            assert t400504_x50(32104, 32105, 9, -10)
            return 0
        # Ifanna's Signet
        elif GetTalkListEntryResult() == 111:
            assert t400504_x50(32204, 32205, 9, -10)
            return 0
        # Grufudd's Signet
        elif GetTalkListEntryResult() == 112:
            assert t400504_x50(32304, 32305, 9, -10)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Affix
def t400504_x50(old_item=_, new_item=_, cost=_, remove_cost=_):
    # Affix this ring? 
    call = t400504_x51(action2=99015010)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 901, 3, cost, 0) == 1:
            # Insufficient Time-lost Essence
            assert t400504_x52(action1=99015012)
        else:
            PlayerEquipmentQuantityChange(3, 901, remove_cost)
            PlayerEquipmentQuantityChange(2, old_item, -1)
            PlayerEquipmentQuantityChange(2, new_item, 1)
            
            # Ring affixed
            assert t400504_x52(action1=99015013)
    elif call.Get() == 1:
        pass
    return 0
    
def t400504_x51(action2=_):
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
        
def t400504_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0