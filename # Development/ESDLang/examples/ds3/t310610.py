# -*- coding: utf-8 -*-
def t310610_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310610_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310610_x11()
        assert not IsClientPlayer()

def t310610_x0(z1=6610, flag2=1475, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1 or GetEventStatus(flag4) ==
                1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag2) and not GetEventStatus(flag3) and not GetEventStatus(flag4) and
              not GetEventStatus(flag5) and not GetEventStatus(flag6)):
            pass
        elif CheckActionButtonArea(z1):
            break
    """ State 4 """
    return 0

def t310610_x1():
    """ State 0,1 """
    if not CheckSpecificPersonTalkHasEnded(0):
        """ State 7 """
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """ State 6 """
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """ State 2 """
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t310610_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310610_x3(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t310610_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t310610_x4(lot1=62500):
    """ State 0,1 """
    # lot:62500:Young White Branch
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t310610_x5():
    """ State 0,1 """
    if not GetEventStatus(50006250):
        """ State 2,10 """
        # talk:60000000:Who are you?
        assert t310610_x3(text1=60000000, flag1=0, mode1=0)
        """ State 4 """
        ClearTalkListData()
        c1110()
        """ State 5 """
        # action:14025000:Make peace
        AddTalkListData(1, 14025000, -1)
        # action:14025001:Leave
        AddTalkListData(2, 14025001, -1)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 7,12 """
            # talk:60000100:I help anytime.
            assert t310610_x3(text1=60000100, flag1=0, mode1=1)
            """ State 9 """
            SetEventState(73100260, 1)
            """ State 13 """
            # lot:62500:Young White Branch
            assert t310610_x4(lot1=62500)
        elif GetTalkListEntryResult() == 2 or not GetTalkListEntryResult():
            """ State 8 """
            ReportConversationEndToHavokBehavior()
    else:
        """ State 3,11 """
        # talk:60000100:I help anytime.
        assert t310610_x3(text1=60000100, flag1=0, mode1=1)
        """ State 14 """
        # lot:62500:Young White Branch
        assert t310610_x4(lot1=62500)
    """ State 15 """
    return 0

def t310610_x6():
    """ State 0,3 """
    assert t310610_x1()
    """ State 2 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,4 """
    return 0

def t310610_x7():
    """ State 0,1 """
    if GetEventStatus(1478) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t310610_x1()
    """ State 5 """
    return 0

def t310610_x8():
    """ State 0,1,2 """
    assert t310610_x1()
    """ State 3 """
    return 0

def t310610_x9():
    """ State 0,4 """
    assert t310610_x1()
    """ State 1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3 """
        pass
    """ State 5 """
    return 0

def t310610_x10():
    """ State 0,1 """
    while True:
        call = t310610_x12()
        assert not GetEventStatus(1460) and not GetEventStatus(1462)
        """ State 2 """
        call = t310610_x13()
        assert GetEventStatus(1460) == 1 or GetEventStatus(1462) == 1

def t310610_x11():
    """ State 0,1 """
    assert t310610_x1()
    """ State 2 """
    return 0

def t310610_x12():
    """ State 0,1 """
    call = t310610_x14()
    assert CheckSelfDeath() == 1
    """ State 2 """
    t310610_x7()

def t310610_x13():
    """ State 0 """

def t310610_x14():
    """ State 0,5 """
    while True:
        call = t310610_x0(z1=6610, flag2=1475, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
        if call.Done():
            """ State 3 """
            call = t310610_x5()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or GetEventStatus(1476) == 1:
                """ State 1 """
                Label('L0')
                call = t310610_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t310610_x9()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t310610_x8()

