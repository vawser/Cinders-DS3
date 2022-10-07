# -*- coding: utf-8 -*-
def t410120_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t410120_x2()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t410120_x3()
        assert not IsClientPlayer()

def t410120_x0():
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

def t410120_x1():
    """ State 0,1 """
    c1112(10003120, -1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    return 0

def t410120_x2():
    """ State 0,1 """
    while True:
        call = t410120_x4()
        assert not GetEventStatus(74100100)
        """ State 2 """
        call = t410120_x5()
        assert GetEventStatus(74100100) == 1

def t410120_x3():
    """ State 0,1 """
    assert t410120_x0()
    """ State 2 """
    return 0

def t410120_x4():
    """ State 0,1 """
    assert GetEventStatus(74100100) == 1
    """ State 2 """
    t410120_x1()

def t410120_x5():
    """ State 0 """

