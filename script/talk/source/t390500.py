#-------------------------------------------
#-- Hex Scribe
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t390500_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t390500_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t390500_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t390500_x0():
    """ State 0,1 """
    while True:
        call = t390500_x3()

# Client Player
def t390500_x1():
    """ State 0,1 """
    assert t390500_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t390500_x2():
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
def t390500_x3():
    """ State 0,1 """
    call = t390500_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t390500_x4():
    """ State 0,5 """
    while True:
        call = t390500_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t390500_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t390500_x6() # Attack Check
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
                call = t390500_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t390500_x2() # Clear Talk State
    
# Interaction State
def t390500_x5():
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
def t390500_x6():
    """ State 0,6 """
    assert t390500_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t390500_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t390500_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t390500_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t390500_x8():
    """ State 0,1 """
    assert t390500_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t390500_x9():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Ascension
        AddTalkListData(1, 15004004, -1)
    
        # Talk
        AddTalkListData(3, 99010001, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Ascend Sorceries
        if GetTalkListEntryResult() == 1:
            assert t390500_x20()
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            assert t390500_x10(text1=10024000, flag1=0, mode1=0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Talk Function
def t390500_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t390500_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t390500_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
     
# Ascension
def t390500_x20():
    c1110()
    while True:
        ClearTalkListData()

        # Refined Deep Barb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4100000, 4, 1, 0) == 1, 1, 99050000, -1)
        
        # Deep Overflow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4101000, 4, 1, 0) == 1, 2, 99050001, -1)
        
        # Weakening Deep Soul
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4102000, 4, 1, 0) == 1, 3, 99050002, -1)
        
        # Quickened Soul Dregs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4103000, 4, 1, 0) == 1, 4, 99050003, -1)
        
        # Refined Surging Deep
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4107000, 4, 1, 0) == 1, 5, 99050004, -1)
        
        # Explosive Climax
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4112000, 4, 1, 0) == 1, 6, 99050005, -1)
        
        # Great Writhing Deep
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4111000, 4, 1, 0) == 1, 7, 99050006, -1)
        
        # Refined Dark Edge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4104000, 4, 1, 0) == 1, 8, 99050007, -1)
        
        # Heavy Abyssal Edge
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4105000, 4, 1, 0) == 1, 9, 99050008, -1)
        
        # Pursuers
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4113000, 4, 1, 0) == 1, 10, 99050009, -1)
        
        # Cursed Dark Bead
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4106000, 4, 1, 0) == 1, 11, 99050010, -1)
        
        # Lingering Cascading Deep
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4108000, 4, 1, 0) == 1, 12, 99050011, -1)
        
        # Repeating Dreg Torrent
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4110000, 4, 1, 0) == 1, 13, 99050012, -1)
        
        # Repeating Yearning Dregs
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4109000, 4, 1, 0) == 1, 14, 99050013, -1)
        
        # Black Fire Whip
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4201000, 4, 1, 0) == 1, 15, 99050014, -1)
        
        # Weakening Black Fire Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4202000, 4, 1, 0) == 1, 16, 99050015, -1)
        
        # Refined Black Fire Scatter
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4204000, 4, 1, 0) == 1, 17, 99050016, -1)
        
        # Scorching Black Fire Vestiges
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4203000, 4, 1, 0) == 1, 18, 99050017, -1)
        
        # Scorching Black Flame
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4205000, 4, 1, 0) == 1, 19, 99050018, -1)
        
        # Quickened Black Serpent
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4206000, 4, 1, 0) == 1, 20, 99050019, -1)
        
        # Scorching Mournful Flames
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4209000, 4, 1, 0) == 1, 21, 99050020, -1)
        
        # Forceful Dark Dance
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4207000, 4, 1, 0) == 1, 22, 99050021, -1)
        
        # Scorching Recollection
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4208000, 4, 1, 0) == 1, 23, 99050022, -1)
        
        # Refined Nibble
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4301000, 4, 1, 0) == 1, 24, 99050023, -1)
        
        # Gnawing Swarm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4302000, 4, 1, 0) == 1, 25, 99050024, -1)
        
        # Quickened Dorhys' Gnawing
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4303000, 4, 1, 0) == 1, 26, 99050025, -1)
        
        # Repeating Swarm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4304000, 4, 1, 0) == 1, 27, 99050026, -1)
        
        # Great Lifehunt Scythe
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4312000, 4, 1, 0) == 1, 28, 99050027, -1)
        
        # Gravelord Sword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4308000, 4, 1, 0) == 1, 29, 99050028, -1)
        
        # Curse of Agony
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4307000, 4, 1, 0) == 1, 30, 99050029, -1)
        
        # Refined Dead Again
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4311000, 4, 1, 0) == 1, 31, 99050030, -1)
        
        # Echo of Despair
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4114000, 4, 1, 0) == 1, 32, 99050031, -1)
        
        # Lingering Repel
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4115000, 4, 1, 0) == 1, 33, 99050032, -1)
        
        # Curse of Silence
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4309000, 4, 1, 0) == 1, 34, 99050033, -1)
        
        # Supreme Black Flame Arc
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4210000, 4, 1, 0) == 1, 35, 99050034, -1)
        
        # Supreme Dark Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4310000, 4, 1, 0) == 1, 36, 99050035, -1)
        
        # Supreme Pungent Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4314000, 4, 1, 0) == 1, 37, 99050036, -1)
        
        # Supreme Pulsating Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4313000, 4, 1, 0) == 1, 38, 99050037, -1)
        
        # Lingering Numbness
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4116000, 4, 1, 0) == 1, 39, 99050038, -1)
        
        # Lingering Atonement
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4306000, 4, 1, 0) == 1, 40, 99050039, -1)
        
        # Bottomless Deep Protection
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4305000, 4, 1, 0) == 1, 41, 99050040, -1)
        
        # Adjacent Black Star
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4318000, 4, 1, 0) == 1, 42, 99050041, -1)
        
        # Bloodthirsty Sacrifice
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4315000, 4, 1, 0) == 1, 43, 99050042, -1)
        
        # Bloodthirsty Resonance
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4316000, 4, 1, 0) == 1, 44, 99050043, -1)
        
        # Lingering Blood Orb
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4317000, 4, 1, 0) == 1, 45, 99050044, -1)
        
        # Blood Corruption
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4319000, 4, 1, 0) == 1, 46, 99050045, -1)
        
        # Blood Crystallization
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4320000, 4, 1, 0) == 1, 47, 99050046, -1)
        
        # Lacerating Ring
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 4321000, 4, 1, 0) == 1, 48, 99050047, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Refined Deep Barb
        if GetTalkListEntryResult() == 1:
            assert t390500_x50(83000, 1080, 9, -10, 99051000, 99052000, 99040030)
            continue
        # Deep Overflow
        elif GetTalkListEntryResult() == 2:
            assert t390500_x50(83010, 1080, 9, -10, 99051001, 99052001, 99040030)
            continue
        # Weakening Deep Soul
        elif GetTalkListEntryResult() == 3:
            assert t390500_x50(83020, 1080, 14, -15, 99051002, 99052002, 99040031)
            continue
        # Quickened Soul Dregs
        elif GetTalkListEntryResult() == 4:
            assert t390500_x50(83030, 1080, 19, -20, 99051003, 99052003, 99040032)
            continue
        # Refined Surging Deep
        elif GetTalkListEntryResult() == 5:
            assert t390500_x50(83040, 1080, 9, -10, 99051004, 99052004, 99040030)
            continue
        # Explosive Climax
        elif GetTalkListEntryResult() == 6:
            assert t390500_x50(83050, 1080, 19, -20, 99051005, 99052005, 99040032)
            continue
        # Great Writhing Deep
        elif GetTalkListEntryResult() == 7:
            assert t390500_x50(83060, 1080, 14, -15, 99051006, 99052006, 99040031)
            continue
        # Refined Dark Edge
        elif GetTalkListEntryResult() == 8:
            assert t390500_x50(83070, 1080, 9, -10, 99051007, 99052007, 99040030)
            continue
        # Heavy Abyssal Edge
        elif GetTalkListEntryResult() == 9:
            assert t390500_x50(83080, 1080, 14, -15, 99051008, 99052008, 99040031)
            continue
        # Pursuers
        elif GetTalkListEntryResult() == 10:
            assert t390500_x50(83090, 1080, 19, -20, 99051009, 99052009, 99040032)
            continue
        # Cursed Dark Bead
        elif GetTalkListEntryResult() == 11:
            assert t390500_x50(83100, 1080, 14, -15, 99051010, 99052010, 99040031)
            continue
        # Lingering Cascading Deep
        elif GetTalkListEntryResult() == 12:
            assert t390500_x50(83110, 1080, 9, -10, 99051011, 99052011, 99040030)
            continue
        # Repeating Dreg Torrent
        elif GetTalkListEntryResult() == 13:
            assert t390500_x50(83120, 1080, 14, -15, 99051012, 99052012, 99040031)
            continue
        # Repeating Yearning Dregs
        elif GetTalkListEntryResult() == 14:
            assert t390500_x50(83130, 1080, 14, -15, 99051013, 99052013, 99040031)
            continue
        # Black Fire Whip
        elif GetTalkListEntryResult() == 15:
            assert t390500_x50(83140, 1080, 14, -15, 99051014, 99052014, 99040031)
            continue
        # Weakening Black Fire Orb
        elif GetTalkListEntryResult() == 16:
            assert t390500_x50(83150, 1080, 14, -15, 99051015, 99052015, 99040031)
            continue
        # Refined Black Fire Scatter
        elif GetTalkListEntryResult() == 17:
            assert t390500_x50(83160, 1080, 9, -10, 99051016, 99052016, 99040030)
            continue
        # Scorching Black Fire Vestiges
        elif GetTalkListEntryResult() == 18:
            assert t390500_x50(83170, 1080, 19, -20, 99051017, 99052017, 99040032)
            continue
        # Scorching Black Flame
        elif GetTalkListEntryResult() == 19:
            assert t390500_x50(83180, 1080, 14, -15, 99051018, 99052018, 99040031)
            continue
        # Quickened Black Serpent
        elif GetTalkListEntryResult() == 20:
            assert t390500_x50(83190, 1080, 14, -15, 99051019, 99052019, 99040031)
            continue
        # Scorching Mournful Flames
        elif GetTalkListEntryResult() == 21:
            assert t390500_x50(83200, 1080, 19, -20, 99051020, 99052020, 99040032)
            continue
        # Forceful Dark Dance
        elif GetTalkListEntryResult() == 22:
            assert t390500_x50(83210, 1080, 14, -15, 99051021, 99052021, 99040031)
            continue
        # Scorching Recollection
        elif GetTalkListEntryResult() == 23:
            assert t390500_x50(83220, 1080, 19, -20, 99051022, 99052022, 99040032)
            continue
        # Refined Nibble
        elif GetTalkListEntryResult() == 24:
            assert t390500_x50(83230, 1080, 9, -10, 99051023, 99052023, 99040030)
            continue
        # Gnawing Swarm
        elif GetTalkListEntryResult() == 25:
            assert t390500_x50(83240, 1080, 14, -15, 99051024, 99052024, 99040031)
            continue
        # Quickened Dorhys' Gnawing
        elif GetTalkListEntryResult() == 26:
            assert t390500_x50(83250, 1080, 14, -15, 99051025, 99052025, 99040031)
            continue
        # Repeating Swarm
        elif GetTalkListEntryResult() == 27:
            assert t390500_x50(83260, 1080, 14, -15, 99051026, 99052026, 99040031)
            continue
        # Great Lifehunt Scythe
        elif GetTalkListEntryResult() == 28:
            assert t390500_x50(83270, 1080, 14, -15, 99051027, 99052027, 99040031)
            continue
        # Gravelord Sword
        elif GetTalkListEntryResult() == 29:
            assert t390500_x50(83280, 1080, 9, -10, 99051028, 99052028, 99040030)
            continue
        # Curse of Agony
        elif GetTalkListEntryResult() == 30:
            assert t390500_x50(83290, 1080, 9, -10, 99051029, 99052029, 99040030)
            continue
        # Refined Dead Again
        elif GetTalkListEntryResult() == 31:
            assert t390500_x50(83300, 1080, 9, -10, 99051030, 99052030, 99040030)
            continue
        # Echo of Despair
        elif GetTalkListEntryResult() == 32:
            assert t390500_x50(83310, 1080, 9, -10, 99051031, 99052031, 99040030)
            continue
        # Lingering Repel
        elif GetTalkListEntryResult() == 33:
            assert t390500_x50(83320, 1080, 14, -15, 99051032, 99052032, 99040031)
            continue
        # Curse of Silence
        elif GetTalkListEntryResult() == 34:
            assert t390500_x50(83330, 1080, 14, -15, 99051033, 99052033, 99040031)
            continue
        # Supreme Black Flame Arc
        elif GetTalkListEntryResult() == 35:
            assert t390500_x50(83340, 1080, 14, -15, 99051034, 99052034, 99040031)
            continue
        # Supreme Dark Blade
        elif GetTalkListEntryResult() == 36:
            assert t390500_x50(83350, 1080, 14, -15, 99051035, 99052035, 99040031)
            continue
        # Supreme Pungent Blade
        elif GetTalkListEntryResult() == 37:
            assert t390500_x50(83360, 1080, 9, -10, 99051036, 99052036, 99040030)
            continue
        # Supreme Pulsating Blade
        elif GetTalkListEntryResult() == 38:
            assert t390500_x50(83370, 1080, 9, -10, 99051037, 99052037, 99040030)
            continue
        # Lingering Numbness
        elif GetTalkListEntryResult() == 39:
            assert t390500_x50(83380, 1080, 19, -20, 99051038, 99052038, 99040032)
            continue
        # Lingering Atonement
        elif GetTalkListEntryResult() == 40:
            assert t390500_x50(83390, 1080, 9, -10, 99051039, 99052039, 99040030)
            continue
        # Bottomless Deep Protection
        elif GetTalkListEntryResult() == 41:
            assert t390500_x50(83400, 1080, 19, -20, 99051040, 99052040, 99040032)
            continue
        # Adjacent Black Star
        elif GetTalkListEntryResult() == 42:
            assert t390500_x50(83410, 1080, 19, -20, 99051041, 99052041, 99040032)
            continue
        # Bloodthirsty Sacrifice
        elif GetTalkListEntryResult() == 43:
            assert t390500_x50(83420, 1080, 9, -10, 99051042, 99052042, 99040030)
            continue
        # Bloodthirsty Resonance
        elif GetTalkListEntryResult() == 44:
            assert t390500_x50(83430, 1080, 9, -10, 99051043, 99052043, 99040030)
            continue
        # Lingering Blood Orb
        elif GetTalkListEntryResult() == 45:
            assert t390500_x50(83440, 1080, 9, -10, 99051044, 99052044, 99040030)
            continue
        # Great Blood Corruption
        elif GetTalkListEntryResult() == 46:
            assert t390500_x50(83450, 1080, 9, -10, 99051045, 99052045, 99040030)
            continue
        # Great Blood Crystallization
        elif GetTalkListEntryResult() == 47:
            assert t390500_x50(83460, 1080, 9, -10, 99051046, 99052046, 99040030)
            continue
        # Explosive Lacerating Ring
        elif GetTalkListEntryResult() == 48:
            assert t390500_x50(83470, 1080, 9, -10, 99051047, 99052047, 99040030)
            continue
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
     
#----------------------------------------------------------
# Utility
#----------------------------------------------------------     
# Ascend
def t390500_x50(itemlot=_, material=_, compare_val=_, removal_val=_, msg_1=_, msg_2=_, msg_3=_):
    # Ascend X?
    call = t390500_x51(action2=msg_1)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, material, 3, compare_val, 0) == 1:
            assert t390500_x52(action1=msg_3) # Insufficient X
        else:
            PlayerEquipmentQuantityChange(3, material, removal_val)
            GetItemFromItemLot(itemlot)
            
            # Crafted
            assert t390500_x52(action1=msg_2)
    elif call.Get() == 1:
        pass
    return 0
    
def t390500_x51(action2=_):
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
        
def t390500_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0