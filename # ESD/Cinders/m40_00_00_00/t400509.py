# -*- coding: utf-8 -*-
def t400509_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400509_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400509_x1()
        assert not IsClientPlayer()

def t400509_x0():
    """State 0,1"""
    t400509_x3()
    Quit()

def t400509_x1():
    """State 0,1"""
    assert t400509_x2()
    """State 2"""
    return 0

def t400509_x2():
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

def t400509_x3():
    """State 0,1"""
    call = t400509_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400509_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400509_x5()
        if call.Done():
            """State 3"""
            call = t400509_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400509_x6()
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
                call = t400509_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400509_x2()
    Quit()

def t400509_x5():
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

def t400509_x6():
    """State 0,6"""
    assert t400509_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400509_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400509_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400509_x2()
    """State 6"""
    return 0

def t400509_x8():
    """State 0,1"""
    assert t400509_x9()
    """State 24"""
    return 0

# Main Menu
def t400509_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Castigations: Player
        AddTalkListData(20, 80020000, -1)
        
        # Castigations: Enemy
        AddTalkListData(21, 80020001, -1)
        
        # Purchase Item
        AddTalkListData(1, 15000010, -1)
        
        # Give Farron Coal
        AddTalkListDataIf(not GetEventStatus(25009580) and ComparePlayerInventoryNumber(3, 2103, 2, 0, 0) == 1,
                          30, 99030620, -1)
        
        # Give Sage's Coal
        AddTalkListDataIf(not GetEventStatus(25009581) and ComparePlayerInventoryNumber(3, 2104, 2, 0, 0) == 1,
                          31, 99030621, -1)
        
        # Give Giant's Coal
        AddTalkListDataIf(not GetEventStatus(25009582) and ComparePlayerInventoryNumber(3, 2105, 2, 0, 0) == 1,
                          32, 99030622, -1)
        
        # Give Profaned Coal
        AddTalkListDataIf(not GetEventStatus(25009583) and ComparePlayerInventoryNumber(3, 2106, 2, 0, 0) == 1,
                          33, 99030623, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008250) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008250) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008250) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(3, 10010200, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Propose Marriage
        if GetTalkListEntryResult() == 10:
            """State 2"""
            SetEventState(25008250, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400509_x10(text1=10123030, flag1=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 3"""
            if GetEventStatus(25008900):
                """State 4"""
                assert t400509_x10(text1=10123000, flag1=0, mode1=0)
                """State 5"""
                GetItemFromItemLot(90240)
            elif GetEventStatus(25008901):
                """State 6"""
                assert t400509_x10(text1=10123010, flag1=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 7"""
                assert t400509_x10(text1=10123020, flag1=0, mode1=0)
        # Divroce
        elif GetTalkListEntryResult() == 12:
            """State 8"""
            assert t400509_x10(text1=10123020, flag1=0, mode1=0)
            """State 9"""
            SetEventState(25008250, 0)
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            """State 10"""
            assert t400509_x10(text1=10023000, flag1=0, mode1=0)
        # Purchase Item
        elif GetTalkListEntryResult() == 1:
            """State 13"""
            OpenRegularShop(290000, 290999)
        # Give Farron Coal
        elif GetTalkListEntryResult() == 30:
            """State 14"""
            SetEventState(25009580, 1)
            # goods:2103:Farron Coal
            PlayerEquipmentQuantityChange(3, 2103, -1)
            assert t400509_x10(text1=10023010, flag1=0, mode1=0)
        # Give Sage's Coal
        elif GetTalkListEntryResult() == 31:
            """State 15"""
            SetEventState(25009581, 1)
            # goods:2104:Sage's Coal
            PlayerEquipmentQuantityChange(3, 2104, -1)
            assert t400509_x10(text1=10023010, flag1=0, mode1=0)
        # Give Giants's Coal
        elif GetTalkListEntryResult() == 32:
            """State 16"""
            SetEventState(25009582, 1)
            # goods:2105:Giant's Coal
            PlayerEquipmentQuantityChange(3, 2105, -1)
            assert t400509_x10(text1=10023010, flag1=0, mode1=0)
        # Give Profaned Coal
        elif GetTalkListEntryResult() == 33:
            """State 17"""
            SetEventState(25009583, 1)
            # goods:2106:Profaned Coal
            PlayerEquipmentQuantityChange(3, 2106, -1)
            assert t400509_x10(text1=10023010, flag1=0, mode1=0)
        # Castigations: Player
        elif GetTalkListEntryResult() == 20:
            assert t400509_x30()
            return 0
        # Castigations: Enemy
        elif GetTalkListEntryResult() == 21:
            assert t400509_x31()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 18"""
            return 0

def t400509_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t400509_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400509_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Castigations: Player
def t400509_x30():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Abyssal Maw
        AddTalkListDataIf(not GetEventStatus(25000900), 100, 80020100, -1)
        
        # Abyssal Maw (enabled)
        AddTalkListDataIf(GetEventStatus(25000900) == 1, 200, 80020200, -1)
        
        # Brittle Bones
        AddTalkListDataIf(not GetEventStatus(25000901), 103, 80020101, -1)
        
        # Brittle Bones (enabled)
        AddTalkListDataIf(GetEventStatus(25000901) == 1, 203, 80020201, -1)
        
        # Fresh Meat
        AddTalkListDataIf(not GetEventStatus(25000902), 101, 80020102, -1)
        
        # Fresh Meat (enabled)
        AddTalkListDataIf(GetEventStatus(25000902) == 1, 201, 80020202, -1)
        
        # Fading Flasks
        AddTalkListDataIf(not GetEventStatus(25000903), 102, 80020103, -1)
        
        # Fading Flasks (enabled)
        AddTalkListDataIf(GetEventStatus(25000903) == 1, 202, 80020203, -1)
        
        # Lethargic Mind
        AddTalkListDataIf(not GetEventStatus(25000904), 104, 80020104, -1)
        
        # Lethargic Mind (enabled)
        AddTalkListDataIf(GetEventStatus(25000904) == 1, 204, 80020204, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Abyssal Maw
        if GetTalkListEntryResult() == 100:
            """State 2"""
            assert t400509_x40(z1=25000900, z2=1, action1=80020300)
        # Abyssal Maw (enabled)
        elif GetTalkListEntryResult() == 200:
            """State 3"""
            assert t400509_x40(z1=25000900, z2=0, action1=80020400)
        # Brittle Bones
        elif GetTalkListEntryResult() == 101:
            """State 4"""
            assert t400509_x40(z1=25000902, z2=1, action1=80020302)
        # Brittle Bones (enabled)
        elif GetTalkListEntryResult() == 201:
            """State 5"""
            assert t400509_x40(z1=25000902, z2=0, action1=80020402)
        # Fresh Meat
        elif GetTalkListEntryResult() == 102:
            """State 6"""
            assert t400509_x40(z1=25000903, z2=1, action1=80020303)
        # Fresh Meat (enabled)
        elif GetTalkListEntryResult() == 202:
            """State 7"""
            assert t400509_x40(z1=25000903, z2=0, action1=80020403)
        # Fading Flasks
        elif GetTalkListEntryResult() == 103:
            """State 8"""
            assert t400509_x40(z1=25000901, z2=1, action1=80020301)
        # Fading Flasks (enabled)
        elif GetTalkListEntryResult() == 203:
            """State 9"""
            assert t400509_x40(z1=25000901, z2=0, action1=80020401)
        # Lethargic Mind
        elif GetTalkListEntryResult() == 104:
            """State 10"""
            assert t400509_x40(z1=25000904, z2=1, action1=80020304)
        # Lethargic Mind (enabled)
        elif GetTalkListEntryResult() == 204:
            """State 11"""
            assert t400509_x40(z1=25000904, z2=0, action1=80020404)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0

# Castigations: Enemy
def t400509_x31():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Stout Hearts
        AddTalkListDataIf(not GetEventStatus(25000907), 100, 80020107, -1)
        
        # Stout Hearts (enabled)
        AddTalkListDataIf(GetEventStatus(25000907) == 1, 200, 80020207, -1)
        
        # Regenerative Skin
        AddTalkListDataIf(not GetEventStatus(25000908), 101, 80020108, -1)
        
        # Regenerative Skin (enabled)
        AddTalkListDataIf(GetEventStatus(25000908) == 1, 201, 80020208, -1)
        
        # Wounded Fury
        AddTalkListDataIf(not GetEventStatus(25000905), 102, 80020105, -1)
        
        # Wounded Fury (enabled)
        AddTalkListDataIf(GetEventStatus(25000905) == 1, 202, 80020205, -1)
        
        # Thick Hides
        AddTalkListDataIf(not GetEventStatus(25000906), 103, 80020106, -1)
        
        # Thick Hides (enabled)
        AddTalkListDataIf(GetEventStatus(25000906) == 1, 203, 80020206, -1)
        
        # Spectral Shift
        AddTalkListDataIf(not GetEventStatus(25000909), 104, 80020109, -1)
        
        # Spectral Shift (enabled)
        AddTalkListDataIf(GetEventStatus(25000909) == 1, 204, 80020209, -1)
        
        # Relentlessness
        AddTalkListDataIf(not GetEventStatus(25000910), 105, 80020110, -1)
        
        # Relentlessness (enabled)
        AddTalkListDataIf(GetEventStatus(25000910) == 1, 205, 80020210, -1)
        
        # Alacrity
        AddTalkListDataIf(not GetEventStatus(25000911), 106, 80020111, -1)
        
        # Alacrity (enabled)
        AddTalkListDataIf(GetEventStatus(25000911) == 1, 206, 80020211, -1)
        
        # Feeding Frenzy
        AddTalkListDataIf(not GetEventStatus(25000912), 107, 80020112, -1)
        
        # Feeding Frenzy (enabled)
        AddTalkListDataIf(GetEventStatus(25000912) == 1, 207, 80020212, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        ShowShopMessage(1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Stout Hearts
        if GetTalkListEntryResult() == 100:
            """State 2"""
            assert t400509_x40(z1=25000907, z2=1, action1=80020307)
        # Stout Hearts (enableD)
        elif GetTalkListEntryResult() == 200:
            """State 3"""
            assert t400509_x40(z1=25000907, z2=0, action1=80020407)
        # Regenerative Skin
        elif GetTalkListEntryResult() == 101:
            """State 4"""
            assert t400509_x40(z1=25000908, z2=1, action1=80020308)
        # Regenerative Skin (enabled)
        elif GetTalkListEntryResult() == 201:
            """State 5"""
            assert t400509_x40(z1=25000908, z2=0, action1=80020408)
        # Wounded Fury
        elif GetTalkListEntryResult() == 102:
            """State 6"""
            assert t400509_x40(z1=25000905, z2=1, action1=80020305)
        # Wounded Fury (enabled)
        elif GetTalkListEntryResult() == 202:
            """State 7"""
            assert t400509_x40(z1=25000905, z2=0, action1=80020405)
        # Thick Hides
        elif GetTalkListEntryResult() == 103:
            """State 8"""
            assert t400509_x40(z1=25000906, z2=1, action1=80020306)
        # Thick Hides (enabled)
        elif GetTalkListEntryResult() == 203:
            """State 9"""
            assert t400509_x40(z1=25000906, z2=0, action1=80020406)
        # Spectral Shift
        elif GetTalkListEntryResult() == 104:
            """State 10"""
            assert t400509_x40(z1=25000909, z2=1, action1=80020309)
        # Spectral Shift (enabled)
        elif GetTalkListEntryResult() == 204:
            """State 11"""
            assert t400509_x40(z1=25000909, z2=0, action1=80020409)
        # Relentlessness
        elif GetTalkListEntryResult() == 105:
            """State 12"""
            assert t400509_x40(z1=25000910, z2=1, action1=80020310)
        # Relentlessness (enabled)
        elif GetTalkListEntryResult() == 205:
            """State 13"""
            assert t400509_x40(z1=25000910, z2=0, action1=80020410)
        # Alacrity
        elif GetTalkListEntryResult() == 106:
            """State 14"""
            assert t400509_x40(z1=25000911, z2=1, action1=80020311)
        # Alacrity (enabled)
        elif GetTalkListEntryResult() == 206:
            """State 15"""
            assert t400509_x40(z1=25000911, z2=0, action1=80020411)
        # Feeding Frenzy
        elif GetTalkListEntryResult() == 107:
            """State 16"""
            assert t400509_x40(z1=25000912, z2=1, action1=80020312)
        # Feeding Frenzy (enabled)
        elif GetTalkListEntryResult() == 207:
            """State 17"""
            assert t400509_x40(z1=25000912, z2=0, action1=80020412)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 18"""
            return 0

# Option Dialog
def t400509_x40(z1=_, z2=_, action1=_):
    """State 0"""
    assert t400509_x41(action1=action1)
    """State 1"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    # Yes
    AddTalkListData(1, 80000103, -1)
    
    # No
    AddTalkListData(2, 80000104, -1)
    
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """State 2"""
    if GetTalkListEntryResult() == 1:
        """State 3"""
        SetEventState(z1, z2)
        return 0
    elif GetTalkListEntryResult() == 2:
        """State 4"""
        return 1
    else:
        """State 5"""
        return 2

def t400509_x41(action1=_):
    """State 0,1"""
    OpenGenericDialog(8, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

