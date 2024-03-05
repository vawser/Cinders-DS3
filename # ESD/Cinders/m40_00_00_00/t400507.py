# -*- coding: utf-8 -*-
def t400507_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400507_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400507_x1()
        assert not IsClientPlayer()

def t400507_x0():
    """State 0,1"""
    t400507_x3()
    Quit()

def t400507_x1():
    """State 0,1"""
    assert t400507_x2()
    """State 2"""
    return 0

def t400507_x2():
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

def t400507_x3():
    """State 0,1"""
    call = t400507_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400507_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400507_x5()
        if call.Done():
            """State 3"""
            call = t400507_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400507_x6()
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
                call = t400507_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400507_x2()
    Quit()

def t400507_x5():
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

def t400507_x6():
    """State 0,6"""
    assert t400507_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400507_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400507_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400507_x2()
    """State 6"""
    return 0

def t400507_x8():
    """State 0,1"""
    SetEventState(73109000, 0)
    assert t400507_x9()
    """State 24"""
    return 0

# Main Menu
def t400507_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Purchase Exotic Weaponry
        AddTalkListData(1, 15003024, -1)
        
        # Tortured Soul
        AddTalkListDataIf(not GetEventStatus(25009530), 2, 99013100, -1)
        
        # Give Tortured Soul
        AddTalkListDataIf(not GetEventStatus(25009530) and ComparePlayerInventoryNumber(3, 2004, 2, 0, 0) == 1,
                          3, 99013101, -1)
        
        # Smithbox
        AddTalkListDataIf(not GetEventStatus(25009540), 4, 99013110, -1)
        
        # Give Smithbox
        AddTalkListDataIf(not GetEventStatus(25009540) and ComparePlayerInventoryNumber(3, 2006, 2, 0, 0) == 1,
                          5, 99013111, -1)
        
        # Learn Benjin's Dash
        AddTalkListDataIf(not GetEventStatus(25009750), 10, 99013130, -1)
        
        # Forget Benjin's Dash
        AddTalkListDataIf(GetEventStatus(25009750) == 1, 11, 99013140, -1)
        
        # Talk
        AddTalkListData(6, 10010200, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Purchase Exotic Weaponry
        if GetTalkListEntryResult() == 1:
            """State 2"""
            OpenRegularShop(270000, 279999)
        # Tortured Soul
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400507_x10(text1=10021010, flag1=0, mode1=0)
        # Give Tortured Soul
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            SetEventState(25009530, 1)
            PlayerEquipmentQuantityChange(3, 2004, -1)
            assert t400507_x10(text1=10021030, flag1=0, mode1=0)
        # Smithbox
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert t400507_x10(text1=10021020, flag1=0, mode1=0)
        # Give Smithbox
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            SetEventState(25009540, 1)
            # goods:2006:
            PlayerEquipmentQuantityChange(3, 2006, -1)
            assert t400507_x10(text1=10021030, flag1=0, mode1=0)
        # Talk
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert t400507_x10(text1=10021000, flag1=0, mode1=0)
        # Learn Benjin's Dash
        elif GetTalkListEntryResult() == 10:
            """State 8"""
            OpenGenericDialog(1, 99013131, 0, 0, 0)
            SetEventState(25009750, 1)
        # Forget Benjin's Dash
        elif GetTalkListEntryResult() == 11:
            """State 9"""
            OpenGenericDialog(1, 99013141, 0, 0, 0)
            SetEventState(25009750, 0)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 10"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 11"""
            return 0

def t400507_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t400507_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400507_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

def t400507_x50(z1=_, z2=_, z3=_):
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

