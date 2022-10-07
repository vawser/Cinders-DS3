# -*- coding: utf-8 -*-
def t450560_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450560_x7()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450560_x8()
        assert not IsClientPlayer()

def t450560_x0(z2=6000, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
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
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t450560_x1():
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

def t450560_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450560_x3(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t450560_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450560_x4():
    """ State 0,1 """
    if GetEventStatus(9322) == 1:
        """ State 2 """
        pass
    else:
        """ State 6 """
        assert GetCurrentStateElapsedTime() > 6
        """ State 3 """
        if GetDistanceToPlayer() < 70:
            """ State 4,8 """
            call = t450560_x3(text1=66000202, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 72:
                """ State 7 """
                assert t450560_x1()
        else:
            """ State 5 """
            pass
    """ State 9 """
    return 0

def t450560_x5():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t450560_x1()
    """ State 5 """
    return 0

def t450560_x6():
    """ State 0,1 """
    def ExitPause():
        SetEventState(74500300, 1)
    assert t450560_x3(text1=66000000, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t450560_x7():
    """ State 0,1 """
    while True:
        call = t450560_x9()
        assert not GetEventStatus(1720) or GetEventStatus(14505802) == 1
        """ State 2 """
        call = t450560_x10()
        assert GetEventStatus(1720) == 1 and not GetEventStatus(14505802)

def t450560_x8():
    """ State 0,1 """
    assert t450560_x1()
    """ State 2 """
    return 0

def t450560_x9():
    """ State 0,2 """
    call = t450560_x11(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t450560_x4()

def t450560_x10():
    """ State 0,1 """
    assert t450560_x1()
    """ State 2 """
    return 0

def t450560_x11(z1=-1):
    """ State 0,2 """
    while True:
        call = t450560_x0(z2=6000, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
        assert not GetEventStatus(74500300) and GetEventStatus(74500331) == 1
        """ State 3 """
        call = t450560_x6()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 90:
            """ State 1 """
            assert t450560_x5()

