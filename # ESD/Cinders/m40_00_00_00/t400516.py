# -*- coding: utf-8 -*-
def t400516_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400516_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400516_x1()
        assert not IsClientPlayer()

def t400516_x0():
    """State 0,1"""
    t400516_x3()
    Quit()

def t400516_x1():
    """State 0,1"""
    assert t400516_x2()
    """State 2"""
    return 0

def t400516_x2():
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

def t400516_x3():
    """State 0,1"""
    call = t400516_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400516_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400516_x5()
        if call.Done():
            """State 3"""
            call = t400516_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400516_x6()
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
                call = t400516_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400516_x2()
    Quit()

def t400516_x5():
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

def t400516_x6():
    """State 0,6"""
    assert t400516_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400516_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400516_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400516_x2()
    """State 6"""
    return 0

def t400516_x8():
    """State 0,1"""
    assert t400516_x9()
    """State 24"""
    return 0

# Main Menu
def t400516_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Training Dummies
        AddTalkListData(1, 15003040, -1)
        
        # Train Outside
        AddTalkListDataIf(not GetEventStatus(25009793), 2, 15003050,
                          -1)
        
        # Train Inside
        AddTalkListDataIf(GetEventStatus(25009793) == 1, 3, 15003051, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Training Dummies
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400516_x20()
        # Train Outside
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            SetEventState(25009793, 1)
            return 0
        # Train Inside
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            SetEventState(25009793, 0)
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

def t400516_x10(z1=_, z2=_, z3=_):
    """State 0,4"""
    assert t400516_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(z1, -1, -1, z2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not z3:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t400516_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Training Dummies
def t400516_x20():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Enable Immovable Dummy
        AddTalkListDataIf(not GetEventStatus(25009790), 1, 15003041, -1)
        # Disable Immovable Dummy
        AddTalkListDataIf(GetEventStatus(25009790) == 1, 2, 15003044, -1)
        
        # Enable Movable Dummy
        AddTalkListDataIf(not GetEventStatus(25009791), 3, 15003042, -1)
        # Disable Movable Dummy
        AddTalkListDataIf(GetEventStatus(25009791) == 1, 4, 15003045, -1)
        
        # Enable Aggressive Dummy
        AddTalkListDataIf(not GetEventStatus(25009792), 5, 15003043, -1)
        # Disable Aggressive Dummy
        AddTalkListDataIf(GetEventStatus(25009792) == 1, 6, 15003046, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Enable Immovable Dummy
        if GetTalkListEntryResult() == 1:
            """State 2"""
            SetEventState(25009790, 1)
        # Disable Immovable Dummy
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            SetEventState(25009790, 0)
        # Enable Movable Dummy
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            SetEventState(25009791, 1)
        # Disable Movable Dummy
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            SetEventState(25009791, 0)
        # Enable Aggressive Dummy
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            SetEventState(25009792, 1)
        # Disable Aggressive Dummy
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            SetEventState(25009792, 0)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 8"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 9"""
            return 0

