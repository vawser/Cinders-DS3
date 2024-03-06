# -*- coding: utf-8 -*-
def t390500_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t390500_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t390500_x1()
        assert not IsClientPlayer()

def t390500_x0():
    """State 0,1"""
    t390500_x3()
    Quit()

def t390500_x1():
    """State 0,1"""
    assert t390500_x2()
    """State 2"""
    return 0

def t390500_x2():
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

def t390500_x3():
    """State 0,1"""
    call = t390500_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t390500_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t390500_x5()
        if call.Done():
            """State 3"""
            call = t390500_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t390500_x6()
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
                call = t390500_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t390500_x2()
    Quit()

def t390500_x5():
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

def t390500_x6():
    """State 0,6"""
    assert t390500_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t390500_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t390500_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t390500_x2()
    """State 6"""
    return 0

def t390500_x8():
    """State 0,1"""
    assert t390500_x9()
    """State 24"""
    return 0

# Main Menu
def t390500_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Ascend Hexes
        AddTalkListData(1, 15004004, -1)
        
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
        
        # Ascend Hexes
        if GetTalkListEntryResult() == 1:
            assert t390500_x20()
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            OpenRegularShop(813000, 813999)
        # Talk
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t390500_x10(text1=10024000, flag1=0, mode1=0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 5"""
            return 0
    return 0

def t390500_x10(text1=10024000, flag1=0, mode1=0):
    """State 0,4"""
    assert t390500_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t390500_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Ascension Menu
def t390500_x20():
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
            assert (t390500_x50(lot1=83000, goods1=1080, z1=9, z2=-10, action1=99051000, action2=99052000,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t390500_x50(lot1=83010, goods1=1080, z1=9, z2=-10, action1=99051001, action2=99052001,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t390500_x50(lot1=83020, goods1=1080, z1=14, z2=-15, action1=99051002, action2=99052002,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t390500_x50(lot1=83030, goods1=1080, z1=19, z2=-20, action1=99051003, action2=99052003,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t390500_x50(lot1=83040, goods1=1080, z1=9, z2=-10, action1=99051004, action2=99052004,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t390500_x50(lot1=83050, goods1=1080, z1=19, z2=-20, action1=99051005, action2=99052005,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t390500_x50(lot1=83060, goods1=1080, z1=14, z2=-15, action1=99051006, action2=99052006,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t390500_x50(lot1=83070, goods1=1080, z1=9, z2=-10, action1=99051007, action2=99052007,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t390500_x50(lot1=83080, goods1=1080, z1=14, z2=-15, action1=99051008, action2=99052008,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t390500_x50(lot1=83090, goods1=1080, z1=19, z2=-20, action1=99051009, action2=99052009,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t390500_x50(lot1=83100, goods1=1080, z1=14, z2=-15, action1=99051010, action2=99052010,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t390500_x50(lot1=83110, goods1=1080, z1=9, z2=-10, action1=99051011, action2=99052011,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t390500_x50(lot1=83120, goods1=1080, z1=14, z2=-15, action1=99051012, action2=99052012,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t390500_x50(lot1=83130, goods1=1080, z1=14, z2=-15, action1=99051013, action2=99052013,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t390500_x50(lot1=83140, goods1=1080, z1=14, z2=-15, action1=99051014, action2=99052014,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t390500_x50(lot1=83150, goods1=1080, z1=14, z2=-15, action1=99051015, action2=99052015,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t390500_x50(lot1=83160, goods1=1080, z1=9, z2=-10, action1=99051016, action2=99052016,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t390500_x50(lot1=83170, goods1=1080, z1=19, z2=-20, action1=99051017, action2=99052017,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t390500_x50(lot1=83180, goods1=1080, z1=14, z2=-15, action1=99051018, action2=99052018,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t390500_x50(lot1=83190, goods1=1080, z1=14, z2=-15, action1=99051019, action2=99052019,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t390500_x50(lot1=83200, goods1=1080, z1=19, z2=-20, action1=99051020, action2=99052020,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t390500_x50(lot1=83210, goods1=1080, z1=14, z2=-15, action1=99051021, action2=99052021,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t390500_x50(lot1=83220, goods1=1080, z1=19, z2=-20, action1=99051022, action2=99052022,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t390500_x50(lot1=83230, goods1=1080, z1=9, z2=-10, action1=99051023, action2=99052023,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t390500_x50(lot1=83240, goods1=1080, z1=14, z2=-15, action1=99051024, action2=99052024,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t390500_x50(lot1=83250, goods1=1080, z1=14, z2=-15, action1=99051025, action2=99052025,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t390500_x50(lot1=83260, goods1=1080, z1=14, z2=-15, action1=99051026, action2=99052026,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 28:
            """State 29"""
            assert (t390500_x50(lot1=83270, goods1=1080, z1=14, z2=-15, action1=99051027, action2=99052027,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 29:
            """State 30"""
            assert (t390500_x50(lot1=83280, goods1=1080, z1=9, z2=-10, action1=99051028, action2=99052028,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 30:
            """State 31"""
            assert (t390500_x50(lot1=83290, goods1=1080, z1=9, z2=-10, action1=99051029, action2=99052029,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 31:
            """State 32"""
            assert (t390500_x50(lot1=83300, goods1=1080, z1=9, z2=-10, action1=99051030, action2=99052030,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 32:
            """State 33"""
            assert (t390500_x50(lot1=83310, goods1=1080, z1=9, z2=-10, action1=99051031, action2=99052031,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 33:
            """State 34"""
            assert (t390500_x50(lot1=83320, goods1=1080, z1=14, z2=-15, action1=99051032, action2=99052032,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 34:
            """State 35"""
            assert (t390500_x50(lot1=83330, goods1=1080, z1=14, z2=-15, action1=99051033, action2=99052033,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 35:
            """State 36"""
            assert (t390500_x50(lot1=83340, goods1=1080, z1=14, z2=-15, action1=99051034, action2=99052034,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 36:
            """State 37"""
            assert (t390500_x50(lot1=83350, goods1=1080, z1=14, z2=-15, action1=99051035, action2=99052035,
                    action3=99040031))
            continue
        elif GetTalkListEntryResult() == 37:
            """State 38"""
            assert (t390500_x50(lot1=83360, goods1=1080, z1=9, z2=-10, action1=99051036, action2=99052036,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 38:
            """State 39"""
            assert (t390500_x50(lot1=83370, goods1=1080, z1=9, z2=-10, action1=99051037, action2=99052037,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 39:
            """State 40"""
            assert (t390500_x50(lot1=83380, goods1=1080, z1=19, z2=-20, action1=99051038, action2=99052038,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 40:
            """State 41"""
            assert (t390500_x50(lot1=83390, goods1=1080, z1=9, z2=-10, action1=99051039, action2=99052039,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 41:
            """State 42"""
            assert (t390500_x50(lot1=83400, goods1=1080, z1=19, z2=-20, action1=99051040, action2=99052040,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 42:
            """State 43"""
            assert (t390500_x50(lot1=83410, goods1=1080, z1=19, z2=-20, action1=99051041, action2=99052041,
                    action3=99040032))
            continue
        elif GetTalkListEntryResult() == 43:
            """State 44"""
            assert (t390500_x50(lot1=83420, goods1=1080, z1=9, z2=-10, action1=99051042, action2=99052042,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 44:
            """State 45"""
            assert (t390500_x50(lot1=83430, goods1=1080, z1=9, z2=-10, action1=99051043, action2=99052043,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 45:
            """State 46"""
            assert (t390500_x50(lot1=83440, goods1=1080, z1=9, z2=-10, action1=99051044, action2=99052044,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 46:
            """State 47"""
            assert (t390500_x50(lot1=83450, goods1=1080, z1=9, z2=-10, action1=99051045, action2=99052045,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 47:
            """State 48"""
            assert (t390500_x50(lot1=83460, goods1=1080, z1=9, z2=-10, action1=99051046, action2=99052046,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 48:
            """State 49"""
            assert (t390500_x50(lot1=83470, goods1=1080, z1=9, z2=-10, action1=99051047, action2=99052047,
                    action3=99040030))
            continue
        elif GetTalkListEntryResult() == 99:
            """State 50"""
            ReportConversationEndToHavokBehavior()
            return 0

def t390500_x50(lot1=_, goods1=1080, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t390500_x51(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t390500_x52(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t390500_x52(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t390500_x51(action1=_):
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

def t390500_x52(action3=_):
    """State 0,1"""
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

