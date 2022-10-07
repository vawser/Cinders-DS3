# -*- coding: utf-8 -*-
def t450561_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450561_x8()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450561_x9()
        assert not IsClientPlayer()

def t450561_x0(z3=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag3) == 1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) ==
                1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag3) and not GetEventStatus(flag4) and not GetEventStatus(flag5) and
              not GetEventStatus(flag6) and not GetEventStatus(flag7)):
            pass
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t450561_x1():
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

def t450561_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450561_x3(text2=66000202, z2=74500301, flag2=1, mode2=1):
    """ State 0,5 """
    assert t450561_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t450561_x4(text1=66000202, flag1=0, mode1=1):
    """ State 0,4 """
    assert t450561_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450561_x5():
    """ State 0,8 """
    t450561_x1()

def t450561_x6():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t450561_x1()
    """ State 5 """
    return 0

def t450561_x7():
    """ State 0,1 """
    def ExitPause():
        SetEventState(14505751, 1)
    assert t450561_x3(text2=66000202, z2=74500301, flag2=1, mode2=1)
    """ State 2 """
    return 0

def t450561_x8():
    """ State 0,1 """
    while True:
        call = t450561_x10()
        assert not GetEventStatus(1720) or not GetEventStatus(14505802)
        """ State 2 """
        call = t450561_x11()
        assert GetEventStatus(1720) == 1 and GetEventStatus(14505802) == 1

def t450561_x9():
    """ State 0,1 """
    assert t450561_x1()
    """ State 2 """
    return 0

def t450561_x10():
    """ State 0,2 """
    call = t450561_x12(z1=-1)
    assert GetEventStatus(9322) == 1
    """ State 1 """
    t450561_x5()

def t450561_x11():
    """ State 0,1 """
    assert t450561_x1()
    """ State 2 """
    return 0

def t450561_x12(z1=-1):
    """ State 0,1 """
    while True:
        call = t450561_x0(z3=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        assert GetEventStatus(74500332) == 1 and not GetEventStatus(74500301) and GetDistanceToPlayer() < 80
        """ State 2 """
        call = t450561_x7()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 90:
            """ State 3 """
            assert t450561_x6()

