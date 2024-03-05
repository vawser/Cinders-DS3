# -*- coding: utf-8 -*-
def t400503_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400503_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400503_x1()
        assert not IsClientPlayer()

def t400503_x0():
    """State 0,1"""
    t400503_x3()
    Quit()

def t400503_x1():
    """State 0,1"""
    assert t400503_x2()
    """State 2"""
    return 0

def t400503_x2():
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

def t400503_x3():
    """State 0,1"""
    call = t400503_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400503_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400503_x5()
        if call.Done():
            """State 3"""
            call = t400503_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400503_x6()
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
                call = t400503_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400503_x2()
    Quit()

def t400503_x5():
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

def t400503_x6():
    """State 0,6"""
    assert t400503_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400503_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400503_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400503_x2()
    """State 6"""
    return 0

def t400503_x8():
    """State 0,1"""
    SetEventState(74009000, 0)
    SetEventState(74009001, 0)
    SetEventState(74009002, 0)
    SetEventState(74009003, 0)
    assert t400503_x9()
    """State 24"""
    return 0

# Main Menu
def t400503_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Learn the Magical Arts
        AddTalkListDataIf(not GetEventStatus(25009850), 1, 15003023, -1)
        
        # Magical Restraints
        AddTalkListData(2, 99095000, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008180) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
                          
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008180) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008180) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(8, 15000000, -1)
        
        # LEave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Learn the Magical Arts
        if GetTalkListEntryResult() == 1:
            """State 2"""
            OpenRegularShop(240000, 249999)
        # Magical Restraints
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400503_x20()
        # Talk
        elif GetTalkListEntryResult() == 8:
            """State 4"""
            assert t400503_x10(text1=10017000, flag1=0, mode1=0)
        # Propose Marriage
        elif GetTalkListEntryResult() == 10:
            """State 5"""
            SetEventState(25008180, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400503_x10(text1=10116030, flag1=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 6"""
            if GetEventStatus(25008900):
                """State 7"""
                assert t400503_x10(text1=10116000, flag1=0, mode1=0)
                """State 8"""
                GetItemFromItemLot(90170)
            elif GetEventStatus(25008901):
                """State 9"""
                assert t400503_x10(text1=10116010, flag1=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 10"""
                assert t400503_x10(text1=10116020, flag1=0, mode1=0)
        # Divorce
        elif GetTalkListEntryResult() == 12:
            """State 11"""
            assert t400503_x10(text1=10116020, flag1=0, mode1=0)
            """State 12"""
            SetEventState(25008180, 0)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 13"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 14"""
            return 0

def t400503_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t400503_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400503_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Magical Restraints
def t400503_x20():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Enable Restraint: Sprint
        AddTalkListDataIf(not GetEventStatus(25002501), 3, 99095011, -1)
        # Disable Restraint: Sprint
        AddTalkListDataIf(GetEventStatus(25002501) == 1, 4, 99095021, -1)
        
        # Enable Restraint: Run
        AddTalkListDataIf(not GetEventStatus(25002502), 5, 99095012, -1)
        # Disable Restraint: Run
        AddTalkListDataIf(GetEventStatus(25002502) == 1, 6, 99095022, -1)
        
        # Enable Restraint: Roll
        AddTalkListDataIf(not GetEventStatus(25002500), 1, 99095010, -1)
        # Disable Restraint: Roll
        AddTalkListDataIf(GetEventStatus(25002500) == 1, 2, 99095020, -1)
        
        # Enable Restraint: Backstep
        AddTalkListDataIf(not GetEventStatus(25002503), 7, 99095013, -1)
        # Disable Restraint: Backstep
        AddTalkListDataIf(GetEventStatus(25002503) == 1, 8, 99095023, -1)
        
        # Enable Restraint: Jump
        AddTalkListDataIf(not GetEventStatus(25002504), 9, 99095014, -1)
        # Disable Restraint: Jump
        AddTalkListDataIf(GetEventStatus(25002504) == 1, 10, 99095024, -1)
        
        # Enable Restraint: Kick
        AddTalkListDataIf(not GetEventStatus(25002505), 11, 99095015, -1)
        # Disable Restraint: Kick
        AddTalkListDataIf(GetEventStatus(25002505) == 1, 12, 99095025, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Enable Restraint: Roll
        if GetTalkListEntryResult() == 1:
            """State 2"""
            OpenGenericDialog(1, 99095200, 
            0, 0, 0)
            SetEventState(25002500, 1)
        # Disable Restraint: Roll
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenGenericDialog(1, 99095100, 
            0, 0, 0)
            SetEventState(25002500, 0)
        # Enable Restraint: Sprint
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            OpenGenericDialog(1, 99095201, 
            0, 0, 0)
            SetEventState(25002501, 1)
        # Disable Restraint: Sprint
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            OpenGenericDialog(1, 99095101, 
            0, 0, 0)
            SetEventState(25002501, 0)
        # Enable Restraint: Run
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            OpenGenericDialog(1, 99095202, 
            0, 0, 0)
            SetEventState(25002502, 1)
        # Disable Restraint: Run
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            OpenGenericDialog(1, 99095102, 
            0, 0, 0)
            SetEventState(25002502, 0)
        # Enable Restraint: Backstep
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            OpenGenericDialog(1, 99095203, 
            0, 0, 0)
            SetEventState(25002503, 1)
        # Disable Restraint: Backstep
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            OpenGenericDialog(1, 99095103, 
            0, 0, 0)
            SetEventState(25002503, 0)
        # Enable Restraint: Jump
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            OpenGenericDialog(1, 99095204, 
            0, 0, 0)
            SetEventState(25002504, 1)
        # Disable Restraint: Jump
        elif GetTalkListEntryResult() == 10:
            """State 11"""
            OpenGenericDialog(1, 99095104, 
            0, 0, 0)
            SetEventState(25002504, 0)
        # Enable Restraint: Kick
        elif GetTalkListEntryResult() == 11:
            """State 12"""
            OpenGenericDialog(1, 99095205, 
            0, 0, 0)
            SetEventState(25002505, 1)
        # Disable Restraint: Kick
        elif GetTalkListEntryResult() == 12:
            """State 13"""
            OpenGenericDialog(1, 99095105, 
            0, 0, 0)
            SetEventState(25002505, 0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 14"""
            return 0

def t400503_x50(z1=_, z2=_, z3=_):
    """State 0,1"""
    if GetEventStatus(z3) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)
        SetEventState(z3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

