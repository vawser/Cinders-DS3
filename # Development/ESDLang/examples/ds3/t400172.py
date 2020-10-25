# -*- coding: utf-8 -*-
def t400172_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400172_x3()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400172_x4()
        assert not IsClientPlayer()

def t400172_x0(z3=6170, flag2=6001, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
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
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t400172_x1():
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

def t400172_x2(z1=30, z2=9031, flag1=6080):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400172_x3():
    """ State 0,1 """
    while True:
        call = t400172_x5()
        assert GetEventStatus(1100) == 1 or GetEventStatus(1102) == 1 or GetEventStatus(1101) == 1
        """ State 2 """
        call = t400172_x6()
        assert not GetEventStatus(1100) and not GetEventStatus(1102) and not GetEventStatus(1101)

def t400172_x4():
    """ State 0,1 """
    assert t400172_x1()
    """ State 2 """
    return 0

def t400172_x5():
    """ State 0,1 """
    assert t400172_x0(z3=6170, flag2=6001, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
    """ State 2 """
    t400172_x2(z1=30, z2=9031, flag1=6080)

def t400172_x6():
    """ State 0 """

