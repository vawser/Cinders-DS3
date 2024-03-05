# -*- coding: utf-8 -*-
def t350500_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t350500_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t350500_x1()
        assert not IsClientPlayer()

def t350500_x0():
    """State 0,1"""
    t350500_x3()
    Quit()

def t350500_x1():
    """State 0,1"""
    assert t350500_x2()
    """State 2"""
    return 0

def t350500_x2():
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

def t350500_x3():
    """State 0,1"""
    call = t350500_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t350500_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t350500_x5()
        if call.Done():
            """State 3"""
            call = t350500_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t350500_x6()
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
                call = t350500_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t350500_x2()
    Quit()

def t350500_x5():
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

def t350500_x6():
    """State 0,6"""
    assert t350500_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t350500_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t350500_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t350500_x2()
    """State 6"""
    return 0

def t350500_x8():
    """State 0,1"""
    assert t350500_x9()
    """State 24"""
    return 0

# Main Menu
def t350500_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Ascend Miracles
        AddTalkListData(1, 15004003, -1)
        
        # Talk
        AddTalkListData(3, 99010001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
         
         # Ascend Miracles
        if GetTalkListEntryResult() == 1:
            assert t350500_x20()
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t350500_x10(text1=10026000, flag1=0, mode1=0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 5"""
            return 0
    """State 3"""
    return 0

def t350500_x10(text1=10026000, flag1=0, mode1=0):
    """State 0,4"""
    assert t350500_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350500_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Ascension Menu
def t350500_x20():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3509000, 4, 1, 0) == 1, 1, 99047000, -1)
        # goods:3550000:Lightning Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3550000, 4, 1, 0) == 1, 2, 99047001, -1)
        # goods:3551000:Great Lightning Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3551000, 4, 1, 0) == 1, 3, 99047002, -1)
        # goods:3552000:Sunlight Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3552000, 4, 1, 0) == 1, 4, 99047003, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3819000, 4, 1, 0) == 1, 5, 99047004, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3821000, 4, 1, 0) == 1, 6, 99047005, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3820000, 4, 1, 0) == 1, 7, 99047006, -1)
        # goods:3710000:Lightning Stake
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3710000, 4, 1, 0) == 1, 8, 99047007, -1)
        # goods:3553000:Lightning Storm
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3553000, 4, 1, 0) == 1, 9, 99047008, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3802000, 4, 1, 0) == 1, 10, 99047009, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3818000, 4, 1, 0) == 1, 11, 99047010, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3556000, 4, 1, 0) == 1, 12, 99047011, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3803000, 4, 1, 0) == 1, 13, 99047012, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3813000, 4, 1, 0) == 1, 14, 99047013, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3814000, 4, 1, 0) == 1, 15, 99047014, -1)
        # goods:3530000:Force
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3530000, 4, 1, 0) == 1, 16, 99047015, -1)
        # goods:3531000:Wrath of the Gods
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3531000, 4, 1, 0) == 1, 17, 99047016, -1)
        # goods:3532000:Emit Force
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3532000, 4, 1, 0) == 1, 18, 99047017, -1)
        # goods:3720000:Divine Pillars of Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3720000, 4, 1, 0) == 1, 19, 99047018, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3812000, 4, 1, 0) == 1, 20, 99047019, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3815000, 4, 1, 0) == 1, 21, 99047020, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3816000, 4, 1, 0) == 1, 22, 99047021, -1)
        # goods:3490000:Heal Aid
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3490000, 4, 1, 0) == 1, 23, 99047022, -1)
        # goods:3500000:Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3500000, 4, 1, 0) == 1, 24, 99047023, -1)
        # goods:3501000:Med Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3501000, 4, 1, 0) == 1, 25, 99047024, -1)
        # goods:3502000:Great Heal
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3502000, 4, 1, 0) == 1, 26, 99047025, -1)
        # goods:3503000:Soothing Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3503000, 4, 1, 0) == 1, 27, 99047026, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3557000, 4, 1, 0) == 1, 28, 99047027, -1)
        # goods:3504000:Replenishment
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3504000, 4, 1, 0) == 1, 29, 99047028, -1)
        # goods:3507000:Bountiful Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3507000, 4, 1, 0) == 1, 30, 99047029, -1)
        # goods:3505000:Bountiful Sunlight
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3505000, 4, 1, 0) == 1, 31, 99047030, -1)
        # goods:3508000:Caressing Tears
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3508000, 4, 1, 0) == 1, 32, 99047031, -1)
        # goods:3590000:Lightning Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3590000, 4, 1, 0) == 1, 33, 99047032, -1)
        # goods:3760000:Blessed Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3760000, 4, 1, 0) == 1, 34, 99047033, -1)
        # goods:3591000:Darkmoon Blade
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3591000, 4, 1, 0) == 1, 35, 99047034, -1)
        # goods:3561000:Great Magic Barrier
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3561000, 4, 1, 0) == 1, 37, 99047036, -1)
        # goods:3563000:Sacred Oath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3563000, 4, 1, 0) == 1, 38, 99047037, -1)
        # goods:3540000:Seek Guidance
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3540000, 4, 1, 0) == 1, 39, 99047038, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3805000, 4, 1, 0) == 1, 40, 99047039, -1)
        # goods:3520000:Tears of Denial
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3520000, 4, 1, 0) == 1, 41, 99047040, -1)
        # goods:3521000:Homeward
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3521000, 4, 1, 0) == 1, 42, 99047041, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3822000, 4, 1, 0) == 1, 43, 99047042, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3823000, 4, 1, 0) == 1, 44, 99047043, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3824000, 4, 1, 0) == 1, 45, 99047044, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3825000, 4, 1, 0) == 1, 46, 99047045, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3826000, 4, 1, 0) == 1, 47, 99047046, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3827000, 4, 1, 0) == 1, 48, 99047047, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3828000, 4, 1, 0) == 1, 49, 99047048, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3829000, 4, 1, 0) == 1, 50, 99047049, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3830000, 4, 1, 0) == 1, 51, 99047050, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3831000, 4, 1, 0) == 1, 52, 99047051, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 3832000, 4, 1, 0) == 1, 53, 99047052, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t350500_x50(lot1=82000, goods1=1090, z1=9, z2=-10, action1=99048000, action2=99049000,
                    action3=99040020))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t350500_x50(lot1=82010, goods1=1090, z1=9, z2=-10, action1=99048001, action2=99049001,
                    action3=99040020))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t350500_x50(lot1=82020, goods1=1090, z1=14, z2=-15, action1=99048002, action2=99049002,
                    action3=99040021))
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t350500_x50(lot1=82030, goods1=1090, z1=14, z2=-15, action1=99048003, action2=99049003,
                    action3=99040021))
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t350500_x50(lot1=82040, goods1=1090, z1=19, z2=-20, action1=99048004, action2=99049004,
                    action3=99040022))
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t350500_x50(lot1=82050, goods1=1090, z1=9, z2=-10, action1=99048005, action2=99049005,
                    action3=99040020))
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t350500_x50(lot1=82060, goods1=1090, z1=14, z2=-15, action1=99048006, action2=99049006,
                    action3=99040021))
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t350500_x50(lot1=82070, goods1=1090, z1=14, z2=-15, action1=99048007, action2=99049007,
                    action3=99040021))
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t350500_x50(lot1=82080, goods1=1090, z1=14, z2=-15, action1=99048008, action2=99049008,
                    action3=99040021))
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t350500_x50(lot1=82090, goods1=1090, z1=19, z2=-20, action1=99048009, action2=99049009,
                    action3=99040022))
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t350500_x50(lot1=82100, goods1=1090, z1=14, z2=-15, action1=99048010, action2=99049010,
                    action3=99040021))
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t350500_x50(lot1=82110, goods1=1090, z1=9, z2=-10, action1=99048011, action2=99049011,
                    action3=99040020))
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t350500_x50(lot1=82120, goods1=1090, z1=14, z2=-15, action1=99048012, action2=99049012,
                    action3=99040021))
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t350500_x50(lot1=82130, goods1=1090, z1=9, z2=-10, action1=99048013, action2=99049013,
                    action3=99040020))
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t350500_x50(lot1=82140, goods1=1090, z1=14, z2=-15, action1=99048014, action2=99049014,
                    action3=99040021))
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t350500_x50(lot1=82150, goods1=1090, z1=9, z2=-10, action1=99048015, action2=99049015,
                    action3=99040020))
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t350500_x50(lot1=82160, goods1=1090, z1=19, z2=-20, action1=99048016, action2=99049016,
                    action3=99040022))
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t350500_x50(lot1=82170, goods1=1090, z1=14, z2=-15, action1=99048017, action2=99049017,
                    action3=99040021))
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t350500_x50(lot1=82180, goods1=1090, z1=14, z2=-15, action1=99048018, action2=99049018,
                    action3=99040021))
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t350500_x50(lot1=82190, goods1=1090, z1=19, z2=-20, action1=99048019, action2=99049019,
                    action3=99040022))
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t350500_x50(lot1=82200, goods1=1090, z1=14, z2=-15, action1=99048020, action2=99049020,
                    action3=99040021))
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t350500_x50(lot1=82210, goods1=1090, z1=14, z2=-15, action1=99048021, action2=99049021,
                    action3=99040021))
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t350500_x50(lot1=82220, goods1=1090, z1=9, z2=-10, action1=99048022, action2=99049022,
                    action3=99040020))
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t350500_x50(lot1=82230, goods1=1090, z1=9, z2=-10, action1=99048023, action2=99049023,
                    action3=99040020))
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t350500_x50(lot1=82240, goods1=1090, z1=9, z2=-10, action1=99048024, action2=99049024,
                    action3=99040020))
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t350500_x50(lot1=82250, goods1=1090, z1=9, z2=-10, action1=99048025, action2=99049025,
                    action3=99040020))
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t350500_x50(lot1=82260, goods1=1090, z1=9, z2=-10, action1=99048026, action2=99049026,
                    action3=99040020))
        elif GetTalkListEntryResult() == 28:
            """State 29"""
            assert (t350500_x50(lot1=82270, goods1=1090, z1=9, z2=-10, action1=99048027, action2=99049027,
                    action3=99040020))
        elif GetTalkListEntryResult() == 29:
            """State 30"""
            assert (t350500_x50(lot1=82280, goods1=1090, z1=14, z2=-15, action1=99048028, action2=99049028,
                    action3=99040021))
        elif GetTalkListEntryResult() == 30:
            """State 31"""
            assert (t350500_x50(lot1=82290, goods1=1090, z1=14, z2=-15, action1=99048029, action2=99049029,
                    action3=99040021))
        elif GetTalkListEntryResult() == 31:
            """State 32"""
            assert (t350500_x50(lot1=82300, goods1=1090, z1=19, z2=-20, action1=99048030, action2=99049030,
                    action3=99040022))
        elif GetTalkListEntryResult() == 32:
            """State 33"""
            assert (t350500_x50(lot1=82310, goods1=1090, z1=9, z2=-10, action1=99048031, action2=99049031,
                    action3=99040020))
        elif GetTalkListEntryResult() == 33:
            """State 34"""
            assert (t350500_x50(lot1=82320, goods1=1090, z1=14, z2=-15, action1=99048032, action2=99049032,
                    action3=99040021))
        elif GetTalkListEntryResult() == 34:
            """State 35"""
            assert (t350500_x50(lot1=82330, goods1=1090, z1=14, z2=-15, action1=99048033, action2=99049033,
                    action3=99040021))
        elif GetTalkListEntryResult() == 35:
            """State 36"""
            assert (t350500_x50(lot1=82340, goods1=1090, z1=14, z2=-15, action1=99048034, action2=99049034,
                    action3=99040021))
        elif GetTalkListEntryResult() == 37:
            """State 37"""
            assert (t350500_x50(lot1=82360, goods1=1090, z1=14, z2=-15, action1=99048036, action2=99049036,
                    action3=99040021))
        elif GetTalkListEntryResult() == 38:
            """State 38"""
            assert (t350500_x50(lot1=82370, goods1=1090, z1=9, z2=-10, action1=99048037, action2=99049037,
                    action3=99040020))
        elif GetTalkListEntryResult() == 39:
            """State 39"""
            assert (t350500_x50(lot1=82380, goods1=1090, z1=14, z2=-15, action1=99048038, action2=99049038,
                    action3=99040021))
        elif GetTalkListEntryResult() == 40:
            """State 40"""
            assert (t350500_x50(lot1=82390, goods1=1090, z1=14, z2=-15, action1=99048039, action2=99049039,
                    action3=99040021))
        elif GetTalkListEntryResult() == 41:
            """State 41"""
            assert (t350500_x50(lot1=82400, goods1=1090, z1=9, z2=-10, action1=99048040, action2=99049040,
                    action3=99040020))
        elif GetTalkListEntryResult() == 42:
            """State 42"""
            assert (t350500_x50(lot1=82410, goods1=1090, z1=9, z2=-10, action1=99048041, action2=99049041,
                    action3=99040020))
        elif GetTalkListEntryResult() == 43:
            """State 43"""
            assert (t350500_x50(lot1=82420, goods1=1090, z1=9, z2=-10, action1=99048042, action2=99049042,
                    action3=99040020))
        elif GetTalkListEntryResult() == 44:
            """State 44"""
            assert (t350500_x50(lot1=82430, goods1=1090, z1=9, z2=-10, action1=99048043, action2=99049043,
                    action3=99040020))
        elif GetTalkListEntryResult() == 45:
            """State 45"""
            assert (t350500_x50(lot1=82440, goods1=1090, z1=9, z2=-10, action1=99048044, action2=99049044,
                    action3=99040020))
        elif GetTalkListEntryResult() == 46:
            """State 46"""
            assert (t350500_x50(lot1=82450, goods1=1090, z1=9, z2=-10, action1=99048045, action2=99049045,
                    action3=99040020))
        elif GetTalkListEntryResult() == 47:
            """State 47"""
            assert (t350500_x50(lot1=82460, goods1=1090, z1=9, z2=-10, action1=99048046, action2=99049046,
                    action3=99040020))
        elif GetTalkListEntryResult() == 48:
            """State 48"""
            assert (t350500_x50(lot1=82470, goods1=1090, z1=9, z2=-10, action1=99048047, action2=99049047,
                    action3=99040020))
        elif GetTalkListEntryResult() == 49:
            """State 49"""
            assert (t350500_x50(lot1=82480, goods1=1090, z1=9, z2=-10, action1=99048048, action2=99049048,
                    action3=99040020))
        elif GetTalkListEntryResult() == 50:
            """State 50"""
            assert (t350500_x50(lot1=82490, goods1=1090, z1=9, z2=-10, action1=99048049, action2=99049049,
                    action3=99040020))
        elif GetTalkListEntryResult() == 51:
            """State 51"""
            assert (t350500_x50(lot1=82500, goods1=1090, z1=9, z2=-10, action1=99048050, action2=99049050,
                    action3=99040020))
        elif GetTalkListEntryResult() == 52:
            """State 52"""
            assert (t350500_x50(lot1=82510, goods1=1090, z1=9, z2=-10, action1=99048051, action2=99049051,
                    action3=99040020))
        elif GetTalkListEntryResult() == 53:
            """State 53"""
            assert (t350500_x50(lot1=82520, goods1=1090, z1=9, z2=-10, action1=99048052, action2=99049052,
                    action3=99040020))
        elif GetTalkListEntryResult() == 99:
            """State 54"""
            ReportConversationEndToHavokBehavior()
            return 0

def t350500_x50(lot1=_, goods1=1090, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t350500_x51(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t350500_x52(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t350500_x52(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t350500_x51(action1=_):
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

def t350500_x52(action3=_):
    """State 0,1"""
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

