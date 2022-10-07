# -*- coding: utf-8 -*-
def t400010_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400010_x2()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400010_x3()
        assert not IsClientPlayer()

def t400010_x0(z1=6000, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6001):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert ((GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1 or GetEventStatus(flag3) ==
                1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6)
                == 1) and GetEventStatus(flag7) == 1)
        """ State 2 """
        if (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3) and
            not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6)):
            pass
        elif (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
              and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif not GetEventStatus(flag7):
            pass
        elif CheckActionButtonArea(z1):
            break
    """ State 4 """
    return 0

def t400010_x1():
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
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t400010_x2():
    """ State 0,1 """
    while True:
        assert (t400010_x0(z1=6000, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000,
                flag7=6001))
        """ State 2 """
        call = t400010_x4()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 5:
            """ State 3 """
            assert t400010_x1()

def t400010_x3():
    """ State 0,1 """
    assert t400010_x1()
    """ State 2 """
    return 0

def t400010_x4():
    """ State 0,1 """
    OpenCharaMakeMenu()
    assert not CheckSpecificPersonMenuIsOpen(16, 0)
    """ State 2 """
    return 0

