# -*- coding: utf-8 -*-
def t111651_1():
    """ State 0,1 """
    assert DoesSelfHaveSpEffect(30000) == 1
    """ State 2 """
    while True:
        assert not (CheckSpecificPersonMenuIsOpen(63, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
        """ State 3 """
        assert GetCurrentStateElapsedTime() > 0.1
        """ State 4 """
        if not (CheckSpecificPersonMenuIsOpen(63, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)):
            break
        else:
            pass
    """ State 5 """
    if GetDistanceToPlayer() > 40:
        """ State 6 """
        pass
    else:
        """ State 7 """
        # talk:65000700:... Sounds like he's calmed down...
        t111651_x6(val1=40, val2=45, flag1=71118505, text1=65000700)

def t111651_x0():
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

def t111651_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111651_x2(text1=65000700, flag1=71118505, flag2=1, mode1=1):
    """ State 0,7 """
    assert t111651_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    if not flag2:
        """ State 1 """
        # talk:65000700:... Sounds like he's calmed down...
        TalkToPlayer(text1, -1, -1, flag2, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:65000700:... Sounds like he's calmed down...
        TalkToPlayer(text1, -1, -1, flag2, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode1:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t111651_x3(flag1=71118505, text1=65000700, val1=40, val2=45):
    """ State 0,1 """
    while True:
        call = t111651_x4(flag1=flag1, text1=text1, val1=val1, val2=val2)
        if call.Done():
            break
        elif not f114(2):
            """ State 2 """
            assert t111651_x5() and f114(2) == 1
    """ State 3 """
    return 0

def t111651_x4(flag1=71118505, text1=65000700, val1=40, val2=45):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val1
    """ State 3 """
    call = t111651_x2(text1=text1, flag1=flag1, flag2=1, mode1=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val2:
        """ State 2 """
        assert t111651_x5()
    """ State 4 """
    return 0

def t111651_x5():
    """ State 0,1 """
    assert t111651_x0()
    """ State 2 """
    return 0

def t111651_x6(val1=40, val2=45, flag1=71118505, text1=65000700):
    """ State 0,1 """
    while True:
        if GetEventStatus(flag1) == 1:
            """ State 2 """
            assert not GetEventStatus(flag1)
        elif not GetEventStatus(flag1):
            """ State 3 """
            assert t111651_x7(flag1=flag1, text1=text1, val1=val1, val2=val2)

def t111651_x7(flag1=71118505, text1=65000700, val1=40, val2=45):
    """ State 0,1 """
    call = t111651_x3(flag1=flag1, text1=text1, val1=val1, val2=val2)
    def WhilePaused():
        c1116()
    if call.Done():
        """ State 3 """
        return 0
    elif CheckSelfDeath() == 1:
        """ State 2 """
        t111651_x5()

