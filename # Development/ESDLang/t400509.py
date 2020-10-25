#-------------------------------------------
#-- Grave of Ash - Firelink
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400509_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400509_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400509_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400509_x0():
    """ State 0,1 """
    while True:
        call = t400509_x3()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)

# Client Player
def t400509_x1():
    """ State 0,1 """
    assert t400509_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400509_x2():
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
def t400509_x3():
    """ State 0,1 """
    call = t400509_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400509_x4():
    """ State 0,5 """
    while True:
        call = t400509_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000) # Interaction State
        if call.Done():
            """ State 3 """
            call = t400509_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400509_x6() # Attack Check
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t400509_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400509_x2() # Clear Talk State
    
# Interaction State
def t400509_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z4):
            break
    """ State 4 """
    return 0

# Attack Check
def t400509_x6():
    """ State 0,6 """
    assert t400509_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """ State 2 """
    if GetDistanceToPlayer() > 12:
        """ State 7 """
        assert t400509_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400509_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400509_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400509_x8():
    """ State 0,1 """
    assert t400509_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400509_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Revive Champions of Yore
        AddTalkListData(1, 99002800, -1)
        
        # Warps
        AddTalkListData(2, 99002533, -1) 

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Warps
        if GetTalkListEntryResult() == 1:
            assert t400509_x60(99002600, 99002700, 100, 1)
            return 0
        elif GetTalkListEntryResult() == 2:
            assert t400509_x10()
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Warps
def t400509_x10():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Corrupted Gundyr
        AddTalkListDataIf(GetEventStatus(25001001) == 1, 10, 99002801, -1) 
        
        # Vordt
        AddTalkListDataIf(GetEventStatus(25001002) == 1, 11, 99002802, -1) 
        
        # Curse-rotted Greatwood
        AddTalkListDataIf(GetEventStatus(25001003) == 1, 12, 99002803, -1) 
        
        # Crystal Sage
        AddTalkListDataIf(GetEventStatus(25001004) == 1, 13, 99002804, -1) 
        
        # Deacons
        AddTalkListDataIf(GetEventStatus(25001005) == 1, 14, 99002805, -1) 
        
        # Abyss Watchers
        AddTalkListDataIf(GetEventStatus(25001006) == 1, 15, 99002806, -1) 
        
        # High Lord Wolnir
        AddTalkListDataIf(GetEventStatus(25001007) == 1, 16, 99002807, -1) 
        
        # Old Demon King
        AddTalkListDataIf(GetEventStatus(25001008) == 1, 17, 99002808, -1) 
        
        # Pontiff Sulyvahn
        AddTalkListDataIf(GetEventStatus(25001009) == 1, 18, 99002809, -1) 
        
        # Aldrich
        AddTalkListDataIf(GetEventStatus(25001010) == 1, 19, 99002810, -1) 
        
        # Yhorm
        AddTalkListDataIf(GetEventStatus(25001011) == 1, 20, 99002811, -1) 
        
        # Dancer
        AddTalkListDataIf(GetEventStatus(25001012) == 1, 21, 99002812, -1) 
        
        # Oceiros
        AddTalkListDataIf(GetEventStatus(25001013) == 1, 22, 99002813, -1) 
        
        # Dragonslayer Armour
        AddTalkListDataIf(GetEventStatus(25001014) == 1, 23, 99002814, -1) 
        
        # Ancient Wyvern
        AddTalkListDataIf(GetEventStatus(25001015) == 1, 24, 99002815, -1) 
        
        # Nameless King
        AddTalkListDataIf(GetEventStatus(25001016) == 1, 25, 99002816, -1) 
        
        # Champion Gundyr
        AddTalkListDataIf(GetEventStatus(25001017) == 1, 26, 99002817, -1) 
        
        # Twin Princes
        AddTalkListDataIf(GetEventStatus(25001018) == 1, 27, 99002818, -1) 
        
        # Soul of Cinder
        AddTalkListDataIf(GetEventStatus(25001019) == 1, 28, 99002819, -1) 
        
        # Sister Friede
        AddTalkListDataIf(GetEventStatus(25001020) == 1, 29, 99002820, -1) 
        
        # Lordran Remnants
        AddTalkListDataIf(GetEventStatus(25001021) == 1, 30, 99002821, -1) 
        
        # Demon Prince
        AddTalkListDataIf(GetEventStatus(25001022) == 1, 31, 99002822, -1) 
        
        # Darkeater Midir
        AddTalkListDataIf(GetEventStatus(25001023) == 1, 32, 99002823, -1) 
        
        # Slave Knight Gael
        AddTalkListDataIf(GetEventStatus(25001024) == 1, 33, 99002824, -1) 
        
        # Halflight
        AddTalkListDataIf(GetEventStatus(25001025) == 1, 34, 99002825, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Corrupted Gundyr
        if GetTalkListEntryResult() == 10:
            assert t400509_x61(99002901, 260100010, 1, 1)
            return 0
        # Vordt
        elif GetTalkListEntryResult() == 11:
            assert t400509_x61(99002902, 260100020, 1, 1)
            return 0
        # Curse-rotted Greatwood
        elif GetTalkListEntryResult() == 12:
            assert t400509_x61(99002903, 260100030, 1, 1)
            return 0
        # Crystal Sage
        elif GetTalkListEntryResult() == 13:
            assert t400509_x61(99002904, 260100040, 1, 1)
            return 0
        # Deacons
        elif GetTalkListEntryResult() == 14:
            assert t400509_x61(99002905, 260100050, 1, 1)
            return 0
        # Abyss Watchers
        elif GetTalkListEntryResult() == 15:
            assert t400509_x61(99002906, 260100060, 2, 1)
            return 0
        # High Lord Wolnir
        elif GetTalkListEntryResult() == 16:
            assert t400509_x61(99002907, 260100070, 1, 1)
            return 0
        # Old Demon King
        elif GetTalkListEntryResult() == 17:
            assert t400509_x61(99002908, 260100080, 1, 1)
            return 0
        # Pontiff Sulyvahn
        elif GetTalkListEntryResult() == 18:
            assert t400509_x61(99002909, 260100090, 2, 1)
            return 0
        # Aldrich
        elif GetTalkListEntryResult() == 19:
            assert t400509_x61(99002910, 260100100, 3, 1)
            return 0
        # Yhorm
        elif GetTalkListEntryResult() == 20:
            assert t400509_x61(99002911, 260100110, 2, 1)
            return 0
        # Dancer
        elif GetTalkListEntryResult() == 21:
            assert t400509_x61(99002912, 260100120, 1, 1)
            return 0
        # Oceiros
        elif GetTalkListEntryResult() == 22:
            assert t400509_x61(99002913, 260100130, 2, 1)
            return 0
        # Dragonslayer Armour
        elif GetTalkListEntryResult() == 23:
            assert t400509_x61(99002914, 260100140, 1, 1)
            return 0
        # Ancient Wyvern
        elif GetTalkListEntryResult() == 24:
            assert t400509_x61(99002915, 260100150, 1, 1)
            return 0
        # Nameless King
        elif GetTalkListEntryResult() == 25:
            assert t400509_x61(99002916, 260100160, 3, 1)
            return 0
        # Champion Gundyr
        elif GetTalkListEntryResult() == 26:
            assert t400509_x61(99002917, 260100170, 2, 1)
            return 0
        # Twin Princes
        elif GetTalkListEntryResult() == 27:
            assert t400509_x61(99002918, 260100180, 2, 1)
            return 0
        # Soul of Cinder
        elif GetTalkListEntryResult() == 28:
            assert t400509_x61(99002919, 260100190, 2, 1)
            return 0
        # Sister Friede
        elif GetTalkListEntryResult() == 29:
            assert t400509_x61(99002920, 260100200, 2, 1)
            return 0
        # Lordran Remnants
        elif GetTalkListEntryResult() == 30:
            assert t400509_x61(99002921, 260100210, 3, 1)
            return 0
        # Demon Prince
        elif GetTalkListEntryResult() == 31:
            assert t400509_x61(99002922, 260100220, 2, 1)
            return 0
        # Darkeater Midir
        elif GetTalkListEntryResult() == 32:
            assert t400509_x61(99002923, 260100230, 3, 1)
            return 0
        # Slave Knight Gael
        elif GetTalkListEntryResult() == 33:
            assert t400509_x61(99002924, 260100240, 3, 1)
            return 0
        # Halflight
        elif GetTalkListEntryResult() == 34:
            assert t400509_x61(99002925, 260100250, 2, 1)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
def t400509_x50(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t400509_x51(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 0, 3, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
        
# Revive - Enemies of Yore
def t400509_x60(text1=_, text2=_, base_cost=_, derived_stat=_):
    """ State 0,1 """
    SetAquittalCostMessageTag(base_cost, derived_stat)
    """ State 14 """
    call = t400509_x50(action1=text1)
    
    if call.Get() == 0:
        """ State 7 """
        if ComparePlayerAcquittalPrice(base_cost, derived_stat, 2) == 1:
            """ State 4,13 """
            assert t400509_x50(action1=13000050) # Lack souls
        else:
            
            """ State 5 """
            SubtractAcquittalCostFromPlayerSouls(base_cost, derived_stat)
            """ State 6 """
            # m51_1
            SetEventState(15100744, 0); # Glaive Master Hodir
            SetEventState(15100732, 0); # Freya the Wretched
            SetEventState(15100734, 0); # Nahor the Fallen
            SetEventState(15100736, 0); # Easterner Iazeel
            SetEventState(15100738, 0); # Seeker of the Spurned
            SetEventState(15100746, 0); # Moaning Knight
            SetEventState(15100748, 0); # Silver Knight Ledo 

            # m50
            SetEventState(15000730, 0); # Dulfish the Accursed
            SetEventState(15000180, 0); # Desert Pyromancer Zoey

            # m45
            SetEventState(14500738, 0); # Ezekiel the Duelist
            SetEventState(14500742, 0); # Eija the Shadow
            SetEventState(14500734, 0); # Frozen Knight Torbjorn
            SetEventState(14500736, 0); # Disciple of Alsanna

            # m41
            SetEventState(14100810, 0); # Lord Zakar

            # m40
            SetEventState(14000890, 0); # Blacksmith's Nightmare
            SetEventState(14000892, 0); # Ashen Keeper Sofija
            SetEventState(9500, 0); # Sword Master

            # m39
            SetEventState(13900730, 0); # Corrupted Knight Lloyd
            SetEventState(13900732, 0); # Jailer Eileen
            SetEventState(13900734, 0); # Ollis the Merciless
            SetEventState(13900736, 0); # Fester the Jester
            SetEventState(13900738, 0); # Vileblood Annalise
            SetEventState(13900740, 0); # Bewitched Knight Iwai
            SetEventState(13900742, 0); # Lord Takatsuji
            SetEventState(13900744, 0); # Lieutenant Ugali
            SetEventState(13900746, 0); # Lieutenant Hanji
            SetEventState(13900748, 0); # Alva, Seeker of the Spurned
            SetEventState(13900760, 0); # The Pursuer
            SetEventState(13900360, 0); # Court Sorcerer

            # m38
            SetEventState(13800790, 0); # Holy Knight Morton
            SetEventState(13800792, 0); # Tomb Raider Dyfan
            SetEventState(13800794, 0); # Chaos Servant Eygor
            SetEventState(13800763, 0); # The Father
            SetEventState(13800761, 0); # The Mother
            SetEventState(13800762, 0); # The Child
            SetEventState(13800398, 0); # Knight Slayer Tsorig

            # m37
            SetEventState(13700733, 0); # Boreal Outrider Knight
            SetEventState(13700734, 0); # Boreal Outrider Knight
            SetEventState(13700544, 0); # Deep Accursed
            SetEventState(13700761, 0); # Dragonrider
            SetEventState(13700766, 0); # Wandering Knight Osvaldo
            SetEventState(13700762, 0); # Devotee Scarlett
            SetEventState(13700764, 0); # The Pursuer
            SetEventState(13700198, 0); # Drang Knight (Hammer)
            SetEventState(13700199, 0); # Drang Knight (Twinspear)

            # m35
            SetEventState(13500196, 0); # Ravenous Crystal Lizard
            SetEventState(13500198, 0); # Morne's Armor
            SetEventState(13500746, 0); # Morric, the Fallen Knight
            SetEventState(13500742, 0); # Hallowed Knight Orthell
            SetEventState(13500744, 0); # Longfinger Kirk
            SetEventState(13500286, 0); # Thief
            SetEventState(13500285, 0); # Brigand

            # m34_1
            SetEventState(13410192, 0); # Boreal Outrider Knight
            SetEventState(13410256, 0); # Black Dragon Knight (Greataxe)
            SetEventState(13410257, 0); # Black Dragon Knight (Greatsword)
            SetEventState(13410258, 0); # Black Dragon Knight (Sword)
            SetEventState(13410730, 0); # The Pursuer
            SetEventState(13410732, 0); # Quintus the Monstrous
            SetEventState(13410204, 0); # Black Hand Gotthard
            SetEventState(13410202, 0); # Lion Knight Albert
            SetEventState(13410203, 0); # Daughter of Crystal Kriemhild

            # m33
            SetEventState(13300603, 0); # Ravenous Crystal Lizard
            SetEventState(13300742, 0); # The Forlorn
            SetEventState(13300744, 0); # Forgotten Locklin
            SetEventState(13300395, 0); # Butcher
            SetEventState(13300396, 0); # Exile Watchdog
            SetEventState(13300397, 0); # Exile Watchdog

            # m32
            SetEventState(13200430, 0); # Dragon Cultist
            SetEventState(13200431, 0); # Dragon Cultist
            SetEventState(13200432, 0); # Dragon Cultist
            SetEventState(13200433, 0); # Dragon Cultist
            SetEventState(13200434, 0); # Dragon Cultist
            SetEventState(13200435, 0); # Dragon Cultist
            SetEventState(13200730, 0); # Gaius the Mighty
            SetEventState(13200732, 0); # Dragon Hunter Karstark
            SetEventState(13200299, 0); # Havel the Rock

            # m31
            SetEventState(13100613, 0); # Boreal Outrider Knight
            SetEventState(13100615, 0); # Boreal Outrider Knight
            SetEventState(13100780, 0); # Eccentric Archibald

            # m30_1
            SetEventState(13010730, 0); # Luyila of Londor
            SetEventState(13010732, 0); # Dominatrix Sharron
            SetEventState(13010734, 0); # The Pursuer
            SetEventState(13010736, 0); # Tiny

            # m30
            SetEventState(13000720, 0); # Mirror Knight
            SetEventState(13000622, 0); # Boreal Outrider Knight
            SetEventState(13000732, 0); # Captain Morrel
            SetEventState(13000734, 0); # Huntmaster Ava
            SetEventState(13000736, 0); # The Pursuer
            SetEventState(13000730, 0); # Inquisitor Ashford
            
            """ State 16 """
            assert t400509_x51(action1=text2)
    elif call.Get() == 1:
        """ State 8 """
        pass

    return 0
    
# Warp
def t400509_x61(text1=_, speffect=_, base_cost=_, derived_stat=_):
    """ State 0,1 """
    SetAquittalCostMessageTag(base_cost, derived_stat)
    """ State 14 """
    call = t400509_x50(action1=text1)
    
    if call.Get() == 0:
        """ State 7 """
        if ComparePlayerAcquittalPrice(base_cost, derived_stat, 2) == 1:
            """ State 4,13 """
            assert t400509_x50(action1=13000050) # Lack souls
        else:
            """ State 5 """
            SubtractAcquittalCostFromPlayerSouls(base_cost, derived_stat)
            """ State 6 """
            GiveSpEffectToPlayer(speffect)
    elif call.Get() == 1:
        """ State 8 """
        pass

    return 0