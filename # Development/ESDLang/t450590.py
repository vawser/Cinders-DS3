# -*- coding: utf-8 -*-
def t450590_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450590_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450590_x13()
        assert not IsClientPlayer()

def t450590_x0(z4=6690, flag4=1795, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t450590_x1():
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

def t450590_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450590_x3(text3=_, z3=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t450590_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450590_x4(text2=_, z2=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t450590_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450590_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t450590_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450590_x6():
    """ State 0,1 """
    if not GetEventStatus(74500351):
        """ State 3 """
        assert t450590_x4(text2=69000200, z2=74500351, flag2=0, mode2=1)
    else:
        """ State 2 """
        if not GetEventStatus(74500352):
            """ State 4 """
            assert t450590_x4(text2=69000300, z2=74500352, flag2=0, mode2=1)
        else:
            """ State 5 """
            assert t450590_x5(text1=69000400, flag1=0, mode1=1)
    """ State 6 """
    return 0

def t450590_x7():
    """ State 0,6 """
    assert t450590_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t450590_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t450590_x1()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t450590_x8():
    """ State 0,8 """
    assert t450590_x1()
    """ State 1 """
    if GetEventStatus(1798) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t450590_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t450590_x1()
        else:
            """ State 5 """
            pass
    """ State 9 """
    return 0

def t450590_x9():
    """ State 0,3 """
    if GetEventStatus(1796) == 1 or GetEventStatus(1797) == 1:
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

def t450590_x10():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t450590_x1()
    """ State 5 """
    return 0

def t450590_x11():
    """ State 0,1 """
    if GetEventStatus(74500381) == 1 and not GetEventStatus(74500353) and GetDistanceToPlayer() > 5.5:
        """ State 3 """
        call = t450590_x3(text3=69000000, z3=74500353, flag3=0, mode3=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 70 or GetDistanceToPlayer() < 5:
            """ State 2 """
            Label('L0')
            assert t450590_x1()
    else:
        """ State 4 """
        call = t450590_x3(text3=69000100, z3=74500350, flag3=0, mode3=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 5:
            Goto('L0')
    """ State 5 """
    return 0

def t450590_x12():
    """ State 0,1 """
    while True:
        call = t450590_x14()
        assert not GetEventStatus(1780)
        """ State 2 """
        call = t450590_x15()
        assert GetEventStatus(1780) == 1

def t450590_x13():
    """ State 0,1 """
    assert t450590_x1()
    """ State 2 """
    return 0

def t450590_x14():
    """ State 0,2 """
    call = t450590_x17(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t450590_x8()

def t450590_x15():
    """ State 0,1 """
    assert t450590_x1()
    """ State 2 """
    return 0

def t450590_x16():
    """ State 0,1 """
    if not GetEventStatus(74500371):
        """ State 4 """
        assert t450590_x3(text3=69000510, z3=74500371, flag3=0, mode3=1)
    elif not GetEventStatus(74500372):
        """ State 5 """
        assert t450590_x3(text3=69000520, z3=74500372, flag3=0, mode3=1)
    elif not GetEventStatus(74500373):
        """ State 6 """
        assert t450590_x3(text3=69000530, z3=74500373, flag3=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(74500371, 0)
        SetEventState(74500372, 0)
        SetEventState(74500373, 0)
        """ State 3 """
        assert t450590_x5(text1=69000540, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t450590_x17(z1=-1):
    """ State 0,5 """
    while True:
        call = t450590_x0(z4=6690, flag4=1795, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t450590_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t450590_x7()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t450590_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif ((not GetEventStatus(74500350) and GetDistanceToPlayer() < 5) or (GetDistanceToPlayer()
              < 60 and GetEventStatus(74500381) == 1 and not GetEventStatus(74500353) and GetDistanceToPlayer()
              > 5.5)):
            """ State 6 """
            call = t450590_x11()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
    """ State 2 """
    t450590_x9()

def t450590_x18():
    """ State 0,1 """
    assert t450590_x5(text1=69000600, flag1=0, mode1=1)
    """ State 2 """
    return 0

