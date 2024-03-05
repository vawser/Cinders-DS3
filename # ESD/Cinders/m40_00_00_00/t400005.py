# -*- coding: utf-8 -*-
def t400005_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400005_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400005_x1()
        assert not IsClientPlayer()

def t400005_x0():
    """State 0,1"""
    t400005_x3()
    Quit()

def t400005_x1():
    """State 0,1"""
    assert t400005_x2()
    """State 2"""
    return 0

def t400005_x2():
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

def t400005_x3():
    """State 0,1"""
    call = t400005_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400005_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400005_x5()
        if call.Done():
            """State 3"""
            call = t400005_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400005_x6()
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
                call = t400005_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400005_x2()
    Quit()

def t400005_x5():
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

def t400005_x6():
    """State 0,6"""
    assert t400005_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400005_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400005_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400005_x2()
    """State 6"""
    return 0

def t400005_x8():
    """State 0,1"""
    assert t400005_x9()
    """State 24"""
    return 0

def t400005_x9():
    """State 0"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    # Advance Journey
    AddTalkListData(20, 15028000, -1)
    
    # Leave
    AddTalkListData(99, 15000005, -1)
    
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 1"""
    ShowShopMessage(1)
    
    # Advance Journey
    if GetTalkListEntryResult() == 20:
        """State 2"""
        OpenGenericDialog(1, 15028010, 0, 0, 0)
        assert t400005_x10()
        """State 3"""
        return 0
    # Leave
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 4"""
        return 0

def t400005_x10():
    """State 0"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    # Are you sure?
    AddTalkListData(20, 15028001, -1)
    
    # Leave
    AddTalkListData(99, 15000005, -1)
    
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 1"""
    ShowShopMessage(1)
    
    # Are you sure?
    if GetTalkListEntryResult() == 20:
        """State 2"""
        assert t400005_x11()
        """State 3"""
        return 0
    # Leave
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 4"""
        return 0

def t400005_x11():
    """State 0"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    # Are you really sure?
    AddTalkListData(20, 15028002, -1)
    
    # Leave
    AddTalkListData(99, 15000005, -1)
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 1"""
    ShowShopMessage(1)
    
    # Are you really sure?
    if GetTalkListEntryResult() == 20:
        """State 2"""
        SetEventState(74000012, 1)
        SetEventState(14005617, 0)
        return 0
    # Leave
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 3"""
        return 0

def t400005_x50(z1=_, z2=_, z3=_):
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

