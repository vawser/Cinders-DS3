# -*- coding: utf-8 -*-
def t510780_1():
    """ State 0,1 """
    assert not GetEventStatus(15105805) or IsClientPlayer() == 1
    """ State 2 """
    while True:
        call = t510780_x8()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t510780_x9()
        assert not IsClientPlayer()

def t510780_x0():
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

def t510780_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t510780_x2(text1=_, z2=_, flag3=_, mode3=1):
    """ State 0,5 """
    assert t510780_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t510780_x3(text2=_, z1=_, flag2=1, mode2=1):
    """ State 0,5 """
    assert t510780_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(z1, 1)
    """ State 6 """
    return 0

def t510780_x4(text3=_, flag1=_, mode1=1):
    """ State 0,4 """
    assert t510780_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t510780_x5(text7=_, text8=_):
    """ State 0,1 """
    if GetEventStatus(1918) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if True:
            """ State 4,7 """
            assert t510780_x13(text7=text7, text8=text8)
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t510780_x6():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t510780_x0()
    """ State 5 """
    return 0

def t510780_x7(text4=_, text5=_, text6=_):
    """ State 0,1 """
    while True:
        if GetEventStatus(75100131) == 1 and not GetEventStatus(15100801):
            """ State 2,6 """
            call = t510780_x14(text4=text4, text5=text5)
            if call.Done() and (not GetEventStatus(75100131) and GetCurrentStateElapsedTime() > 1):
                continue
            elif GetEventStatus(15105805) == 1 and not GetEventStatus(75100101):
                pass
            elif GetDistanceToPlayer() > 95:
                """ State 8 """
                assert t510780_x0()
                continue
        elif GetEventStatus(15105805) == 1 and not GetEventStatus(75100101):
            pass
        """ State 3,5 """
        SetEventState(15105701, 1)
        """ State 7 """
        call = t510780_x2(text1=text6, z2=75100101, flag3=1, mode3=1)
        if call.Done():
            """ State 4 """
            SetEventState(75100132, 1)
            SetEventState(15105702, 1)
        elif GetDistanceToPlayer() > 95:
            """ State 9 """
            SetEventState(75100132, 1)
            assert t510780_x0()

def t510780_x8():
    """ State 0,1 """
    while True:
        call = t510780_x10()
        assert not GetEventStatus(1900)
        """ State 2 """
        call = t510780_x11()
        assert GetEventStatus(1900) == 1

def t510780_x9():
    """ State 0,1 """
    while True:
        call = t510780_x17()
        assert not GetEventStatus(1900)
        """ State 2 """
        call = t510780_x11()
        assert GetEventStatus(1900) == 1

def t510780_x10():
    """ State 0,1 """
    while True:
        call = t510780_x15(text4=88000000, text5=88000100, text6=88000200, text7=88000600, text8=88000300)
        assert GetEventStatus(15100723) == 1
        """ State 2 """
        call = t510780_x15(text4=88000700, text5=88000800, text6=88000900, text7=88001100, text8=88001000)
        assert not GetEventStatus(15100723)

def t510780_x11():
    """ State 0,1 """
    assert t510780_x0()
    """ State 2 """
    return 0

def t510780_x12(text4=_, text5=_, text6=_):
    """ State 0,3 """
    assert t510780_x0()
    """ State 2 """
    t510780_x7(text4=text4, text5=text5, text6=text6)

def t510780_x13(text7=_, text8=_):
    """ State 0,1 """
    if not GetEventStatus(75100132):
        """ State 3 """
        assert t510780_x3(text2=text7, z1=75100132, flag2=1, mode2=1)
        """ State 2 """
        SetEventState(15105702, 1)
    else:
        """ State 4 """
        assert t510780_x4(text3=text8, flag1=1, mode1=1)
    """ State 5 """
    return 0

def t510780_x14(text4=_, text5=_):
    """ State 0,1 """
    if not GetEventStatus(75100100):
        """ State 2 """
        assert t510780_x2(text1=text4, z2=75100100, flag3=0, mode3=1)
    else:
        """ State 3 """
        assert t510780_x4(text3=text5, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t510780_x15(text4=_, text5=_, text6=_, text7=_, text8=_):
    """ State 0,2 """
    while True:
        call = t510780_x12(text4=text4, text5=text5, text6=text6)
        if CheckSelfDeath() == 1:
            """ State 1 """
            call = t510780_x5(text7=text7, text8=text8)
            assert GetEventStatus(15105802) == 1
        elif GetEventStatus(15105802) == 1:
            pass
        """ State 3 """
        call = t510780_x16()
        assert not GetEventStatus(15105802)

def t510780_x16():
    """ State 0,1 """
    assert t510780_x4(text3=88001200, flag1=1, mode1=1)
    """ State 2 """
    return 0

def t510780_x17():
    """ State 0,1 """
    while True:
        call = t510780_x18(text1=88000200, text2=88000600, text3=88000300)
        assert GetEventStatus(15100723) == 1
        """ State 2 """
        call = t510780_x18(text1=88000900, text2=88001100, text3=88001000)
        assert GetEventStatus(15100723) == 1

def t510780_x18(text1=_, text2=_, text3=_):
    """ State 0,1 """
    while True:
        call = t510780_x19(text1=text1)
        if CheckSelfDeath() == 1:
            """ State 2 """
            call = t510780_x20(text2=text2, text3=text3)
            assert GetEventStatus(15105802) == 1
        elif GetEventStatus(15105802) == 1:
            pass
        """ State 3 """
        call = t510780_x21()
        assert not GetEventStatus(15105802)

def t510780_x19(text1=_):
    """ State 0,1 """
    assert t510780_x0()
    """ State 2 """
    t510780_x22(text1=text1)

def t510780_x20(text2=_, text3=_):
    """ State 0,1 """
    if GetEventStatus(1918) == 1:
        pass
    else:
        Goto('L0')
    """ State 2 """
    Quit()
    """ State 3 """
    Label('L0')
    if GetDistanceToPlayer() < 90:
        """ State 5,6 """
        call = t510780_x23(text2=text2, text3=text3)
        assert GetDistanceToPlayer() > 95
        """ State 7 """
        t510780_x0()
    else:
        """ State 4 """
        pass

def t510780_x21():
    """ State 0,1 """
    call = t510780_x4(text3=88001200, flag1=1, mode1=1)
    assert GetDistanceToPlayer() > 95
    """ State 2 """
    t510780_x0()

def t510780_x22(text1=_):
    """ State 0,1 """
    assert GetEventStatus(15105805) == 1 and not GetEventStatus(15105701)
    """ State 2 """
    if GetDistanceToPlayer() < 90:
        pass
    else:
        Goto('L0')
    """ State 3,6 """
    call = t510780_x2(text1=text1, z2=15105701, flag3=1, mode3=1)
    if call.Done():
        """ State 5 """
        SetEventState(15105702, 1)
        Quit()
    elif GetDistanceToPlayer() > 95:
        """ State 7 """
        t510780_x0()
        Quit()
    """ State 4 """
    Label('L0')

def t510780_x23(text2=_, text3=_):
    """ State 0,1 """
    if not GetEventStatus(15105702) and not GetEventStatus(15105811):
        """ State 2 """
        t510780_x3(text2=text2, z1=15105702, flag2=1, mode2=1)
    else:
        """ State 3 """
        t510780_x4(text3=text3, flag1=1, mode1=1)

