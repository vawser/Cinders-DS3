# -*- coding: utf-8 -*-
def t410990_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t410990_x2()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t410990_x3()
        assert not IsClientPlayer()

def t410990_x0(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t410990_x1():
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
    if not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t410990_x2():
    """ State 0,1 """
    while True:
        assert GetEventStatus(9900) == 1
        """ State 6 """
        # action:99000100:Begin journey <?nextLoopCount?> ?
        call = t410990_x0(action1=99000100)
        if call.Get() == 0:
            break
        elif call.Get() == 1:
            pass
        elif GetDistanceToPlayer() > 10:
            """ State 7 """
            assert t410990_x1() and GetDistanceToPlayer() < 8
            continue
        """ State 3 """
        Label('L0')
        """ State 5 """
        SetEventState(9902, 1)
        Quit()
    """ State 2,8 """
    # action:99000101:
    call = t410990_x0(action1=99000101)
    if call.Get() == 0:
        """ State 4 """
        SetEventState(9901, 1)
    elif call.Get() == 1:
        Goto('L0')

def t410990_x3():
    """ State 0,1 """
    assert t410990_x1()
    """ State 2 """
    return 0

