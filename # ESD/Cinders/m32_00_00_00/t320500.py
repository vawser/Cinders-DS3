# -*- coding: utf-8 -*-
def t320500_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t320500_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t320500_x1()
        assert not IsClientPlayer()

def t320500_x0():
    """State 0"""
    while True:
        """State 1"""
        call = t320500_x3()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)

def t320500_x1():
    """State 0,1"""
    assert t320500_x2()
    """State 2"""
    return 0

def t320500_x2():
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

def t320500_x3():
    """State 0,1"""
    call = t320500_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t320500_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t320500_x5(actionbutton1=6120, flag1=1015, flag2=6000, flag3=6000, flag4=6000, flag5=6000)
        if call.Done():
            """State 3"""
            call = t320500_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t320500_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t320500_x7()
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t320500_x2()
    Quit()

def t320500_x5(actionbutton1=6120, flag1=1015, flag2=6000, flag3=6000, flag4=6000, flag5=6000):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 3"""
        assert (GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1 or GetEventStatus(flag3) ==
                1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1)
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3) and
              not GetEventStatus(flag4) and not GetEventStatus(flag5)):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
    """State 4"""
    return 0

def t320500_x6():
    """State 0,6"""
    assert t320500_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1"""
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """State 2"""
    if GetDistanceToPlayer() > 12:
        """State 7"""
        assert t320500_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t320500_x7():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 2,5"""
        assert GetDistanceToPlayer() > 12
    else:
        """State 3"""
        pass
    """State 4"""
    assert t320500_x2()
    """State 6"""
    return 0

def t320500_x8():
    """State 0,1"""
    assert t320500_x9()
    """State 24"""
    return 0

def t320500_x9():
    """State 0"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    
    
    AddTalkListDataIf(GetEventStatus(25001015) == 1 and GetEventStatus(13200800) == 1, 1, 99002850, -1)
    # action:15000005:"Leave"
    AddTalkListData(99, 15000005, -1)
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 1"""
    ShowShopMessage(1)
    if GetTalkListEntryResult() == 1:
        """State 2"""
        assert t320500_x52(action1=99002615, z1=80, z2=1)
        """State 3"""
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 4"""
        return 0

def t320500_x50(action1=_):
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

def t320500_x51(z3=_):
    """State 0,1"""
    OpenGenericDialog(8, z3, 0, 3, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t320500_x52(action1=99002615, z1=80, z2=1):
    """State 0,1"""
    SetAquittalCostMessageTag(z1, z2)
    """State 14"""
    call = t320500_x50(action1=action1)
    if call.Get() == 0:
        """State 7"""
        if ComparePlayerAcquittalPrice(z1, z2, 2) == 1:
            """State 4,13"""
            # action:13000050:"Insufficient souls"
            assert t320500_x50(action1=13000050)
        else:
            """State 5"""
            SubtractAcquittalCostFromPlayerSouls(z1, z2)
            """State 6"""
            SetEventState(13200800, 0)
            SetEventState(9305, 0)
            SetEventState(6305, 0)
            GiveSpEffectToPlayer(260100150)
    elif call.Get() == 1:
        """State 8"""
        pass
    """State 2"""
    return 0

