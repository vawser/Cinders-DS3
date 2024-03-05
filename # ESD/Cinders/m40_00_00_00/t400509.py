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
        
        # Divroce
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


