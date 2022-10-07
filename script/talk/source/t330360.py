# -*- coding: utf-8 -*-
def t330360_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t330360_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t330360_x11()
        assert not IsClientPlayer()

def t330360_x0(z1=6000, flag2=1495, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
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

def t330360_x1():
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

def t330360_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t330360_x3(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t330360_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t330360_x4(lot1=62600):
    """ State 0,1 """
    # lot:62600:Blue Sentinels
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t330360_x5():
    """ State 0,1,2,3,4 """
    # talk:36000000: 
    assert t330360_x3(text1=36000000, flag1=0, mode1=1)
    """ State 5 """
    # lot:62600:Blue Sentinels
    assert t330360_x4(lot1=62600)
    SetEventState(25009730, 1) # Knight Lun appears
    """ State 6 """
    return 0

def t330360_x6():
    """ State 0,9 """
    assert t330360_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1496) and not GetEventStatus(1497):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t330360_x14()
            if call.Done():
                pass
            elif GetEventStatus(1496) == 1 or GetEventStatus(1497) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t330360_x15()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t330360_x1()
                elif not GetEventStatus(1496) and not GetEventStatus(1497):
                    """ State 8 """
                    pass
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        else:
            """ State 6 """
            pass
    else:
        Goto('L0')
    """ State 13 """
    return 0

def t330360_x7():
    """ State 0,7 """
    assert t330360_x1()
    """ State 1 """
    if GetEventStatus(1498) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            pass
        else:
            """ State 5,6 """
            assert t330360_x1()
    """ State 8 """
    return 0

def t330360_x8():
    """ State 0,3 """
    if GetEventStatus(1496) == 1 or GetEventStatus(1497) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            pass
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t330360_x9():
    """ State 0,1,2,3 """
    assert t330360_x1()
    """ State 4 """
    return 0

def t330360_x10():
    """ State 0,1 """
    while True:
        call = t330360_x12()
        assert not GetEventStatus(1480)
        """ State 2 """
        call = t330360_x13()
        assert GetEventStatus(1480) == 1

def t330360_x11():
    """ State 0,1 """
    assert t330360_x1()
    """ State 2 """
    return 0

def t330360_x12():
    """ State 0,2 """
    call = t330360_x16()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t330360_x7()

def t330360_x13():
    """ State 0 """

def t330360_x14():
    """ State 0,1,2,3 """
    # talk:36000200: 
    assert t330360_x3(text1=36000200, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t330360_x15():
    """ State 0,2,1,3 """
    assert t330360_x1()
    """ State 4 """
    return 0

def t330360_x16():
    """ State 0,5 """
    while True:
        call = t330360_x0(z1=6000, flag2=1495, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
        if call.Done():
            """ State 3 """
            call = t330360_x5()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or GetEventStatus(1496) == 1:
                """ State 1 """
                Label('L0')
                call = t330360_x6()
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
                call = t330360_x9()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t330360_x8()

