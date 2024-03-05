# -*- coding: utf-8 -*-
def t370502_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t370502_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t370502_x1()
        assert not IsClientPlayer()

def t370502_x0():
    """State 0,1"""
    t370502_x3()
    Quit()

def t370502_x1():
    """State 0,1"""
    assert t370502_x2()
    """State 2"""
    return 0

def t370502_x2():
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

def t370502_x3():
    """State 0,1"""
    call = t370502_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t370502_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t370502_x5()
        if call.Done():
            """State 3"""
            call = t370502_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t370502_x6()
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
                call = t370502_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t370502_x2()
    Quit()

def t370502_x5():
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

def t370502_x6():
    """State 0,6"""
    assert t370502_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t370502_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t370502_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t370502_x2()
    """State 6"""
    return 0

def t370502_x8():
    """State 0,1"""
    assert t370502_x9()
    """State 24"""
    return 0

# Main Menu
def t370502_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Ascend Sorceries
        AddTalkListData(1, 15004001, -1)
        
        # Talk
        AddTalkListData(3, 99010001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Ascend Sorceries
        if GetTalkListEntryResult() == 1:
            assert t370502_x20()
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t370502_x10(text1=10024000, flag1=0, mode1=0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 5"""
            return 0
    return 0

def t370502_x10(text1=10024000, flag1=0, mode1=0):
    """State 0,4"""
    assert t370502_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t370502_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Ascension Menu
def t370502_x20():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # goods:1200000:Farron Dart
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1200000, 4, 1, 0) == 1, 1, 99041000, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1802000, 4, 1, 0) == 1, 2, 99041001, -1)
        # goods:1300000:Soul Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1300000, 4, 1, 0) == 1, 3, 99041002, -1)
        # goods:1306000:Soul Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1306000, 4, 1, 0) == 1, 4, 99041003, -1)
        # goods:1307000:Crystal Soul Spear
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1307000, 4, 1, 0) == 1, 5, 99041004, -1)
        # goods:1370000:White Dragon Breath
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1370000, 4, 1, 0) == 1, 6, 99041005, -1)
        # goods:1375000:Farron Flashsword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1375000, 4, 1, 0) == 1, 7, 99041006, -1)
        # goods:1374000:Soul Greatsword
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1374000, 4, 1, 0) == 1, 8, 99041007, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1376000, 4, 1, 0) == 1, 9, 99041008, -1)
        # goods:1304000:Homing Soulmass
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1304000, 4, 1, 0) == 1, 10, 99041009, -1)
        # goods:1305000:Homing Crystal Soulmass
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1305000, 4, 1, 0) == 1, 11, 99041010, -1)
        # goods:1210000:Great Farron Dart
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1210000, 4, 1, 0) == 1, 12, 99041011, -1)
        # goods:1301000:Great Soul Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1301000, 4, 1, 0) == 1, 13, 99041012, -1)
        # goods:1372000:Farron Hail
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1372000, 4, 1, 0) == 1, 14, 99041013, -1)
        # goods:1373000:Crystal Hail
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1373000, 4, 1, 0) == 1, 15, 99041014, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1805000, 4, 1, 0) == 1, 16, 99041015, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1800000, 4, 1, 0) == 1, 17, 99041016, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1803000, 4, 1, 0) == 1, 18, 99041017, -1)
        # goods:1620000:Soul Stream
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1620000, 4, 1, 0) == 1, 19, 99041018, -1)
        # goods:1303000:Great Heavy Soul Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1303000, 4, 1, 0) == 1, 20, 99041019, -1)
        # goods:1740000:Pestilent Mist
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1740000, 4, 1, 0) == 1, 21, 99041020, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1741000, 4, 1, 0) == 1, 22, 99041021, -1)
        # goods:1302000:Heavy Soul Arrow
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1302000, 4, 1, 0) == 1, 23, 99041022, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1807000, 4, 1, 0) == 1, 24, 99041023, -1)
        # goods:1651000:Twisted Wall of Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1651000, 4, 1, 0) == 1, 25, 99041024, -1)
        # goods:1356000:Aural Decoy
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1356000, 4, 1, 0) == 1, 26, 99041025, -1)
        # goods:1353000:Repair
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1353000, 4, 1, 0) == 1, 27, 99041026, -1)
        # goods:1312000:Crystal Magic Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1312000, 4, 1, 0) == 1, 30, 99041029, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1313000, 4, 1, 0) == 1, 31, 99041030, -1)
        # goods:1340000:Hidden Weapon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1340000, 4, 1, 0) == 1, 32, 99041031, -1)
        # goods:1331000:Great Magic Shield
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1331000, 4, 1, 0) == 1, 34, 99041033, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1801000, 4, 1, 0) == 1, 35, 99041034, -1)
        # goods:1354000:Spook
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1354000, 4, 1, 0) == 1, 36, 99041035, -1)
        # goods:1341000:Hidden Body
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1341000, 4, 1, 0) == 1, 37, 99041036, -1)
        # goods:1355000:Chameleon
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1355000, 4, 1, 0) == 1, 38, 99041037, -1)
        # goods:1350000:Cast Light
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1350000, 4, 1, 0) == 1, 39, 99041038, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808000, 4, 1, 0) == 1, 40, 99041039, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808100, 4, 1, 0) == 1, 41, 99041040, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808200, 4, 1, 0) == 1, 42, 99041041, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808300, 4, 1, 0) == 1, 43, 99041042, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808400, 4, 1, 0) == 1, 44, 99041043, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1808500, 4, 1, 0) == 1, 45, 99041044, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1809000, 4, 1, 0) == 1, 46, 99041045, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1810000, 4, 1, 0) == 1, 47, 99041046, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1811000, 4, 1, 0) == 1, 48, 99041047, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1812000, 4, 1, 0) == 1, 49, 99041048, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1813000, 4, 1, 0) == 1, 50, 99041049, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1814000, 4, 1, 0) == 1, 51, 99041050, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1815000, 4, 1, 0) == 1, 52, 99041051, -1)
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 1816000, 4, 1, 0) == 1, 53, 99041052, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t370502_x50(lot1=80000, goods1=1070, z1=9, z2=-10, action1=99042000, action2=99043000,
                    action3=99040010))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t370502_x50(lot1=80010, goods1=1070, z1=9, z2=-10, action1=99042001, action2=99043001,
                    action3=99040010))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t370502_x50(lot1=80020, goods1=1070, z1=9, z2=-10, action1=99042002, action2=99043002,
                    action3=99040010))
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t370502_x50(lot1=80030, goods1=1070, z1=14, z2=-15, action1=99042003, action2=99043003,
                    action3=99040011))
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t370502_x50(lot1=80040, goods1=1070, z1=14, z2=-15, action1=99042004, action2=99043004,
                    action3=99040011))
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert (t370502_x50(lot1=80050, goods1=1070, z1=14, z2=-15, action1=99042005, action2=99043005,
                    action3=99040011))
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert (t370502_x50(lot1=80060, goods1=1070, z1=9, z2=-10, action1=99042006, action2=99043006,
                    action3=99040010))
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert (t370502_x50(lot1=80070, goods1=1070, z1=14, z2=-15, action1=99042007, action2=99043007,
                    action3=99040011))
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert (t370502_x50(lot1=80080, goods1=1070, z1=14, z2=-15, action1=99042008, action2=99043008,
                    action3=99040011))
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            assert (t370502_x50(lot1=80090, goods1=1070, z1=19, z2=-20, action1=99042009, action2=99043009,
                    action3=99040012))
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            assert (t370502_x50(lot1=80100, goods1=1070, z1=19, z2=-20, action1=99042010, action2=99043010,
                    action3=99040012))
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            assert (t370502_x50(lot1=80110, goods1=1070, z1=9, z2=-10, action1=99042011, action2=99043011,
                    action3=99040010))
        elif GetTalkListEntryResult() == 13:
            """State 14"""
            assert (t370502_x50(lot1=80120, goods1=1070, z1=14, z2=-15, action1=99042012, action2=99043012,
                    action3=99040011))
        elif GetTalkListEntryResult() == 14:
            """State 15"""
            assert (t370502_x50(lot1=80130, goods1=1070, z1=9, z2=-10, action1=99042013, action2=99043013,
                    action3=99040010))
        elif GetTalkListEntryResult() == 15:
            """State 16"""
            assert (t370502_x50(lot1=80140, goods1=1070, z1=14, z2=-15, action1=99042014, action2=99043014,
                    action3=99040011))
        elif GetTalkListEntryResult() == 16:
            """State 17"""
            assert (t370502_x50(lot1=80150, goods1=1070, z1=14, z2=-15, action1=99042015, action2=99043015,
                    action3=99040011))
        elif GetTalkListEntryResult() == 17:
            """State 18"""
            assert (t370502_x50(lot1=80160, goods1=1070, z1=14, z2=-15, action1=99042016, action2=99043016,
                    action3=99040011))
        elif GetTalkListEntryResult() == 18:
            """State 19"""
            assert (t370502_x50(lot1=80170, goods1=1070, z1=14, z2=-15, action1=99042017, action2=99043017,
                    action3=99040011))
        elif GetTalkListEntryResult() == 19:
            """State 20"""
            assert (t370502_x50(lot1=80180, goods1=1070, z1=19, z2=-20, action1=99042018, action2=99043018,
                    action3=99040012))
        elif GetTalkListEntryResult() == 20:
            """State 21"""
            assert (t370502_x50(lot1=80190, goods1=1070, z1=19, z2=-20, action1=99042019, action2=99043019,
                    action3=99040012))
        elif GetTalkListEntryResult() == 21:
            """State 22"""
            assert (t370502_x50(lot1=80200, goods1=1070, z1=14, z2=-15, action1=99042020, action2=99043020,
                    action3=99040011))
        elif GetTalkListEntryResult() == 22:
            """State 23"""
            assert (t370502_x50(lot1=80210, goods1=1070, z1=9, z2=-10, action1=99042021, action2=99043021,
                    action3=99040010))
        elif GetTalkListEntryResult() == 23:
            """State 24"""
            assert (t370502_x50(lot1=80220, goods1=1070, z1=9, z2=-10, action1=99042022, action2=99043022,
                    action3=99040010))
        elif GetTalkListEntryResult() == 24:
            """State 25"""
            assert (t370502_x50(lot1=80230, goods1=1070, z1=9, z2=-10, action1=99042023, action2=99043023,
                    action3=99040010))
        elif GetTalkListEntryResult() == 25:
            """State 26"""
            assert (t370502_x50(lot1=80240, goods1=1070, z1=9, z2=-10, action1=99042024, action2=99043024,
                    action3=99040010))
        elif GetTalkListEntryResult() == 26:
            """State 27"""
            assert (t370502_x50(lot1=80250, goods1=1070, z1=9, z2=-10, action1=99042025, action2=99043025,
                    action3=99040010))
        elif GetTalkListEntryResult() == 27:
            """State 28"""
            assert (t370502_x50(lot1=80260, goods1=1070, z1=9, z2=-10, action1=99042026, action2=99043026,
                    action3=99040010))
        elif GetTalkListEntryResult() == 30:
            """State 29"""
            assert (t370502_x50(lot1=80290, goods1=1070, z1=14, z2=-15, action1=99042029, action2=99043029,
                    action3=99040011))
        elif GetTalkListEntryResult() == 31:
            """State 30"""
            assert (t370502_x50(lot1=80300, goods1=1070, z1=9, z2=-10, action1=99042030, action2=99043030,
                    action3=99040010))
        elif GetTalkListEntryResult() == 32:
            """State 31"""
            assert (t370502_x50(lot1=80310, goods1=1070, z1=9, z2=-10, action1=99042031, action2=99043031,
                    action3=99040010))
        elif GetTalkListEntryResult() == 34:
            """State 32"""
            assert (t370502_x50(lot1=80330, goods1=1070, z1=14, z2=-15, action1=99042033, action2=99043033,
                    action3=99040011))
        elif GetTalkListEntryResult() == 35:
            """State 33"""
            assert (t370502_x50(lot1=80340, goods1=1070, z1=14, z2=-15, action1=99042034, action2=99043034,
                    action3=99040011))
        elif GetTalkListEntryResult() == 36:
            """State 34"""
            assert (t370502_x50(lot1=80350, goods1=1070, z1=9, z2=-10, action1=99042035, action2=99043035,
                    action3=99040010))
        elif GetTalkListEntryResult() == 37:
            """State 35"""
            assert (t370502_x50(lot1=80360, goods1=1070, z1=9, z2=-10, action1=99042036, action2=99043036,
                    action3=99040010))
        elif GetTalkListEntryResult() == 38:
            """State 36"""
            assert (t370502_x50(lot1=80370, goods1=1070, z1=9, z2=-10, action1=99042037, action2=99043037,
                    action3=99040010))
        elif GetTalkListEntryResult() == 39:
            """State 37"""
            assert (t370502_x50(lot1=80380, goods1=1070, z1=9, z2=-10, action1=99042038, action2=99043038,
                    action3=99040010))
        elif GetTalkListEntryResult() == 40:
            """State 38"""
            assert (t370502_x50(lot1=80390, goods1=1070, z1=9, z2=-10, action1=99042039, action2=99043039,
                    action3=99040010))
        elif GetTalkListEntryResult() == 41:
            """State 39"""
            assert (t370502_x50(lot1=80400, goods1=1070, z1=9, z2=-10, action1=99042040, action2=99043040,
                    action3=99040010))
        elif GetTalkListEntryResult() == 42:
            """State 40"""
            assert (t370502_x50(lot1=80410, goods1=1070, z1=9, z2=-10, action1=99042041, action2=99043041,
                    action3=99040011))
        elif GetTalkListEntryResult() == 43:
            """State 41"""
            assert (t370502_x50(lot1=80420, goods1=1070, z1=14, z2=-15, action1=99042042, action2=99043042,
                    action3=99040011))
        elif GetTalkListEntryResult() == 44:
            """State 42"""
            assert (t370502_x50(lot1=80430, goods1=1070, z1=9, z2=-10, action1=99042043, action2=99043043,
                    action3=99040010))
        elif GetTalkListEntryResult() == 45:
            """State 43"""
            assert (t370502_x50(lot1=80440, goods1=1070, z1=14, z2=-15, action1=99042044, action2=99043044,
                    action3=99040011))
        elif GetTalkListEntryResult() == 46:
            """State 44"""
            assert (t370502_x50(lot1=80450, goods1=1070, z1=14, z2=-15, action1=99042045, action2=99043045,
                    action3=99040011))
        elif GetTalkListEntryResult() == 47:
            """State 45"""
            assert (t370502_x50(lot1=80460, goods1=1070, z1=9, z2=-10, action1=99042046, action2=99043046,
                    action3=99040010))
        elif GetTalkListEntryResult() == 48:
            """State 46"""
            assert (t370502_x50(lot1=80470, goods1=1070, z1=14, z2=-15, action1=99042047, action2=99043047,
                    action3=99040011))
        elif GetTalkListEntryResult() == 49:
            """State 47"""
            assert (t370502_x50(lot1=80480, goods1=1070, z1=14, z2=-15, action1=99042048, action2=99043048,
                    action3=99040011))
        elif GetTalkListEntryResult() == 50:
            """State 48"""
            assert (t370502_x50(lot1=80490, goods1=1070, z1=14, z2=-15, action1=99042049, action2=99043049,
                    action3=99040011))
        elif GetTalkListEntryResult() == 51:
            """State 49"""
            assert (t370502_x50(lot1=80500, goods1=1070, z1=14, z2=-15, action1=99042050, action2=99043050,
                    action3=99040011))
        elif GetTalkListEntryResult() == 52:
            """State 50"""
            assert (t370502_x50(lot1=80510, goods1=1070, z1=14, z2=-15, action1=99042051, action2=99043051,
                    action3=99040011))
        elif GetTalkListEntryResult() == 53:
            """State 51"""
            assert (t370502_x50(lot1=80520, goods1=1070, z1=14, z2=-15, action1=99042052, action2=99043052,
                    action3=99040011))
        elif GetTalkListEntryResult() == 99:
            """State 52"""
            ReportConversationEndToHavokBehavior()
            return 0

def t370502_x50(lot1=_, goods1=1070, z1=_, z2=_, action1=_, action2=_, action3=_):
    """State 0"""
    call = t370502_x51(action1=action1)
    if call.Get() == 0:
        """State 1"""
        if ComparePlayerInventoryNumber(3, goods1, 3, z1, 0) == 1:
            """State 2"""
            assert t370502_x52(action3=action3)
        else:
            """State 3"""
            PlayerEquipmentQuantityChange(3, goods1, z2)
            GetItemFromItemLot(lot1)
            assert t370502_x52(action3=action2)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t370502_x51(action1=_):
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

def t370502_x52(action3=_):
    """State 0,1"""
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

