# -*- coding: utf-8 -*-
def t450530_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450530_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450530_x12()
        assert not IsClientPlayer()

def t450530_x0(z4=6630, flag4=1675, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z4):
            break
    """ State 4 """
    return 0

def t450530_x1():
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

def t450530_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450530_x3(text3=_, z3=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t450530_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t450530_x4(text2=63000000, z2=74500150, flag2=0, mode2=1):
    """ State 0,5 """
    assert t450530_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 6 """
    return 0

def t450530_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t450530_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450530_x6():
    """ State 0,1 """
    if GetEventStatus(74500181) == 1:
        """ State 8 """
        assert t450530_x5(text1=63000300, flag1=0, mode1=1)
        """ State 2 """
        SetEventState(74500181, 0)
    else:
        """ State 3 """
        if not GetEventStatus(74500150):
            """ State 9 """
            assert t450530_x4(text2=63000000, z2=74500150, flag2=0, mode2=1)
        else:
            """ State 4 """
            if not GetEventStatus(74500152):
                """ State 10 """
                assert t450530_x5(text1=63000100, flag1=0, mode1=1)
                """ State 7 """
                SetEventState(74500152, 1)
            else:
                """ State 11 """
                assert t450530_x5(text1=63000200, flag1=0, mode1=1)
                """ State 6 """
                SetEventState(74500152, 0)
            """ State 5 """
            SetEventState(74500151, 1)
    """ State 12 """
    return 0

def t450530_x7():
    """ State 0,6 """
    assert t450530_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t450530_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t450530_x1()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t450530_x8():
    """ State 0,8 """
    assert t450530_x1()
    """ State 1 """
    if GetEventStatus(1678) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t450530_x5(text1=63001200, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t450530_x1()
        else:
            """ State 5 """
            pass
    """ State 9 """
    return 0

def t450530_x9():
    """ State 0,3 """
    if GetEventStatus(1676) == 1 or GetEventStatus(1677) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            pass
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t450530_x10():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t450530_x1()
    """ State 5 """
    return 0

def t450530_x11():
    """ State 0,1 """
    while True:
        call = t450530_x13()
        assert not GetEventStatus(1660)
        """ State 2 """
        call = t450530_x14()
        assert GetEventStatus(1660) == 1

def t450530_x12():
    """ State 0,1 """
    assert t450530_x1()
    """ State 2 """
    return 0

def t450530_x13():
    """ State 0,1 """
    call = t450530_x16(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 2 """
    t450530_x8()

def t450530_x14():
    """ State 0,1 """
    assert t450530_x1()
    """ State 2 """
    return 0

def t450530_x15():
    """ State 0,1 """
    if not GetEventStatus(74500171):
        """ State 3 """
        assert t450530_x3(text3=63001110, z3=74500171, flag3=0, mode3=1)
    elif not GetEventStatus(74500172):
        """ State 4 """
        assert t450530_x3(text3=63001120, z3=74500172, flag3=0, mode3=1)
    elif not GetEventStatus(74500173):
        """ State 5 """
        assert t450530_x3(text3=63001130, z3=74500173, flag3=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(74500171, 0)
        SetEventState(74500172, 0)
        SetEventState(74500173, 0)
        """ State 6 """
        assert t450530_x5(text1=63001140, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t450530_x16(z1=-1):
    """ State 0,5 """
    while True:
        call = t450530_x0(z4=6630, flag4=1675, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t450530_x6()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t450530_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t450530_x7()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
    """ State 2 """
    t450530_x9()

