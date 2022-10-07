# -*- coding: utf-8 -*-
def t341320_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t341320_x7()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t341320_x8()
        assert not IsClientPlayer()

def t341320_x0():
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

def t341320_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t341320_x2(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t341320_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t341320_x3():
    """ State 0,1 """

def t341320_x4():
    """ State 0,1,3 """
    if GetDistanceToPlayer() < 70:
        """ State 4,7 """
        # talk:32000901:Mark my words, Ashen one...
        call = t341320_x2(text1=32000901, flag1=0, mode1=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 75:
            """ State 6 """
            assert t341320_x0()
    else:
        """ State 5 """
        pass
    """ State 8 """
    SetEventState(73410110, 1)
    return 0

def t341320_x5():
    """ State 0,2 """
    assert GetEventStatus(1400) == 1 or GetEventStatus(1415) == 1
    """ State 3 """
    if GetDistanceToPlayer() < 70:
        """ State 4,7 """
        # talk:32000800:This spot marks our grave.
        call = t341320_x2(text1=32000800, flag1=0, mode1=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 75:
            """ State 6 """
            assert t341320_x0()
    else:
        """ State 5 """
        pass
    """ State 8 """
    return 0

def t341320_x6():
    """ State 0,1,2,3 """
    assert t341320_x0()
    """ State 4 """
    return 0

def t341320_x7():
    """ State 0,1 """
    while True:
        call = t341320_x9()
        assert not GetEventStatus(1400) or not GetEventStatus(13415830)
        """ State 2 """
        call = t341320_x10()
        assert GetEventStatus(1400) == 1 and GetEventStatus(13415830) == 1

def t341320_x8():
    """ State 0,1 """
    assert t341320_x0()
    """ State 2 """
    return 0

def t341320_x9():
    """ State 0,2 """
    call = t341320_x11()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t341320_x4()

def t341320_x10():
    """ State 0 """

def t341320_x11():
    """ State 0,2 """
    SetEventState(73410101, 0)
    SetEventState(73410102, 1)
    """ State 1 """
    while True:
        SetEventState(73410100, 0)
        """ State 4 """
        call = t341320_x3()
        if IsPlayerDead() == 1:
            break
        elif GetEventStatus(73410100) == 1:
            """ State 6 """
            assert t341320_x12()
    """ State 3 """
    t341320_x5()

def t341320_x12():
    """ State 0,1 """
    if not GetEventStatus(73410102):
        """ State 2 """
        SetEventState(73410102, 1)
    else:
        """ State 3 """
        SetEventState(73410102, 0)
        """ State 4 """
        if not GetEventStatus(73410101):
            """ State 7 """
            # talk:32000110:Oh, dear brother...
            assert t341320_x2(text1=32000110, flag1=0, mode1=1)
            """ State 5 """
            SetEventState(73410101, 1)
        else:
            """ State 8 """
            # talk:32000120:I'm on my way...
            assert t341320_x2(text1=32000120, flag1=0, mode1=1)
            """ State 6 """
            SetEventState(73410101, 0)
    """ State 9 """
    return 0

