# -*- coding: utf-8 -*-
def t450551_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450551_x5()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450551_x6()
        assert not IsClientPlayer()

def t450551_x0():
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

def t450551_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450551_x2(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t450551_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450551_x3():
    """ State 0,8 """
    assert t450551_x0()
    """ State 9 """
    return 0

def t450551_x4():
    """ State 0,3 """
    if True:
        """ State 1 """
        if GetDistanceToPlayer() < 70:
            """ State 4,7 """
            call = t450551_x11()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 72:
                """ State 6 """
                assert t450551_x0()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t450551_x5():
    """ State 0,1 """
    while True:
        call = t450551_x7()
        assert not GetEventStatus(14505810) or GetEventStatus(14505802) == 1
        """ State 2 """
        call = t450551_x8()
        assert GetEventStatus(14505810) == 1 and not GetEventStatus(14505802)

def t450551_x6():
    """ State 0,1 """
    assert t450551_x0()
    """ State 2 """
    return 0

def t450551_x7():
    """ State 0,1 """
    call = t450551_x9(z1=-1)
    assert CheckSelfDeath() == 1 or GetEventStatus(9322) == 1
    """ State 2 """
    t450551_x3()

def t450551_x8():
    """ State 0,1 """
    assert t450551_x0()
    """ State 2 """
    return 0

def t450551_x9(z1=-1):
    """ State 0,1 """
    assert IsPlayerDead() == 1
    """ State 2 """
    t450551_x4()

def t450551_x10():
    """ State 0,1 """
    assert t450551_x2(text1=65000900, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t450551_x11():
    """ State 0,2 """
    if not GetEventStatus(14505802):
        """ State 1 """
        if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042) == 1 or
            GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
            """ State 5 """
            assert t450551_x2(text1=65001700, flag1=0, mode1=1)
        else:
            """ State 4 """
            assert t450551_x2(text1=65001500, flag1=0, mode1=1)
    else:
        """ State 3 """
        if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042) == 1 or
            GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
            """ State 7 """
            assert t450551_x2(text1=65001800, flag1=0, mode1=1)
        else:
            """ State 6 """
            assert t450551_x2(text1=65001600, flag1=0, mode1=1)
    """ State 8 """
    return 0

