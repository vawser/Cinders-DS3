# -*- coding: utf-8 -*-
def t310180_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310180_x3()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310180_x4()
        assert not IsClientPlayer()

def t310180_x0():
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

def t310180_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310180_x2(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t310180_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310180_x3():
    """ State 0 """
    assert GetEventStatus(8220) == 1
    """ State 1 """
    assert t310180_x0()
    """ State 2 """
    return 0

def t310180_x4():
    """ State 0 """
    assert GetCurrentStateElapsedTime() > 7
    """ State 4 """
    # talk:18000400:I finally found you.
    assert t310180_x2(text1=18000400, flag1=0, mode1=1)
    """ State 2 """
    assert GetEventStatus(8220) == 1 and not CheckSelfDeath()
    """ State 1 """
    assert GetCurrentStateElapsedTime() > 3.5
    """ State 3 """
    # talk:18000500:Good night, grandad...
    t310180_x2(text1=18000500, flag1=0, mode1=1)

