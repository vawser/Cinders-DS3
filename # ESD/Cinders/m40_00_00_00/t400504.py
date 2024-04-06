# -*- coding: utf-8 -*-
def t400504_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400504_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400504_x1()
        assert not IsClientPlayer()

def t400504_x0():
    """State 0,1"""
    t400504_x3()
    Quit()

def t400504_x1():
    """State 0,1"""
    assert t400504_x2()
    """State 2"""
    return 0

def t400504_x2():
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

def t400504_x3():
    """State 0,1"""
    call = t400504_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400504_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400504_x5()
        if call.Done():
            """State 3"""
            call = t400504_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400504_x6()
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
                call = t400504_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400504_x2()
    Quit()

def t400504_x5():
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

def t400504_x6():
    """State 0,6"""
    assert t400504_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400504_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400504_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400504_x2()
    """State 6"""
    return 0

def t400504_x8():
    """State 0,1"""
    assert t400504_x9()
    """State 24"""
    return 0

# Main Menu
def t400504_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Browse Collection
        AddTalkListData(1, 15010007, -1)
        
        # Browse Secret Collection
        AddTalkListDataIf(GetEventStatus(25000103) == 1, 4, 15010008,
                          -1)
        
        # Rhythmic Attacks
        AddTalkListData(20, 99200003, -1)
        
        # Bestow Lordvessel
        AddTalkListDataIf(not GetEventStatus(25009520) and ComparePlayerInventoryNumber(3, 2002, 2, 0, 0) == 1,
                          5, 99003500, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008190) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
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
        """State 1"""
        ShowShopMessage(1)
        
        # Browse Collection
        if GetTalkListEntryResult() == 1:
            """State 2"""
            OpenRegularShop(260000, 260499)
         # Talk
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400504_x10(text1=10018000, flag1=0, mode1=0)
         # Rhythmic Attacks
        elif GetTalkListEntryResult() == 20:
            assert t400504_x30()
        # Browse Secret Collection
        elif GetTalkListEntryResult() == 4:
            """State 3"""
            OpenTranspositionShop(260500, 260999)
        # Bestow Lordvessel
        elif GetTalkListEntryResult() == 5:
            """State 13"""
            SetEventState(25009520, 1)
            # goods:2002:
            PlayerEquipmentQuantityChange(3, 2002, -1)
            assert t400504_x10(text1=10117000, flag1=0, mode1=0)
        # Propose Marriage
        elif GetTalkListEntryResult() == 10:
            """State 5"""
            SetEventState(25008190, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400504_x10(text1=10117030, flag1=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 6"""
            if GetEventStatus(25008900):
                """State 7"""
                assert t400504_x10(text1=10117000, flag1=0, mode1=0)
                """State 8"""
                GetItemFromItemLot(90180)
            elif GetEventStatus(25008901):
                """State 9"""
                assert t400504_x10(text1=10117010, flag1=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 10"""
                assert t400504_x10(text1=10117020, flag1=0, mode1=0)
        # Divorce
        elif GetTalkListEntryResult() == 12:
            """State 11"""
            assert t400504_x10(text1=10117020, flag1=0, mode1=0)
            """State 12"""
            SetEventState(25008190, 0)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 16"""
            return 0

# Talk Dialog
def t400504_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t400504_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

# Clear Talk Dialog
def t400504_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Rhythmic Attacks
def t400504_x30():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # What are rhythmic attacks?
        AddTalkListData(1, 99200000, -1)
        
        # Show rhythmic attacks markers
        AddTalkListDataIf(GetEventStatus(25000060) == 0, 2, 99200001, -1)
        
        # Hide rhythmic attacks markers
        AddTalkListDataIf(GetEventStatus(25000060) == 1, 3, 99200002, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # What are rhythmic attacks?
        if GetTalkListEntryResult() == 1:
            assert t400504_x10(text1=10018100, flag1=0, mode1=0)
        # Show rhythmic attacks markers
        elif GetTalkListEntryResult() == 2:
            assert t400504_x10(text1=10018110, flag1=0, mode1=0)
            SetEventState(25000060, 1)
        # Hide rhythmic attacks markers
        elif GetTalkListEntryResult() == 3:
            assert t400504_x10(text1=10018120, flag1=0, mode1=0)
            SetEventState(25000060, 0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0