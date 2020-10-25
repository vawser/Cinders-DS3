# -*- coding: utf-8 -*-
def t450520_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450520_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450520_x10()
        assert not IsClientPlayer()

def t450520_x0(z2=6000, flag2=1655, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
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

def t450520_x1():
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

def t450520_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450520_x3(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t450520_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450520_x4():
    """ State 0,1 """
    if GetEventStatus(74500251) == 1:
        """ State 2 """
        if not GetEventStatus(74500101):
            """ State 6 """
            if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042) ==
                1 or GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
                """ State 11 """
                assert t450520_x3(text1=62000600, flag1=0, mode1=1)
            else:
                """ State 12 """
                assert t450520_x3(text1=62000200, flag1=0, mode1=1)
            """ State 7 """
            SetEventState(74500101, 1)
            Goto('L1')
        else:
            """ State 13 """
            assert t450520_x3(text1=62000300, flag1=0, mode1=1)
            Goto('L1')
        """ State 5 """
        Label('L0')
        SetEventState(74500100, 1)
    else:
        """ State 3 """
        if not GetEventStatus(74500100):
            """ State 4 """
            if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042) ==
                1 or GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
                """ State 8 """
                assert t450520_x3(text1=62000500, flag1=0, mode1=1)
                Goto('L0')
            else:
                """ State 9 """
                assert t450520_x3(text1=62000000, flag1=0, mode1=1)
                Goto('L0')
        else:
            """ State 10 """
            assert t450520_x3(text1=62000100, flag1=0, mode1=1)
    """ State 14 """
    Label('L1')
    return 0

def t450520_x5():
    """ State 0,7 """
    assert t450520_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,9 """
        SetEventState(74500122, 1)
        call = t450520_x13()
        def ExitPause():
            SetEventState(74500122, 0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 8 """
            assert t450520_x1()
    else:
        """ State 5 """
        pass
    """ State 6 """

def t450520_x6():
    """ State 0,1 """
    if GetEventStatus(1658) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t450520_x15()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t450520_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t450520_x7():
    """ State 0,2,1,3 """
    return 0

def t450520_x8():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t450520_x1()
    """ State 5 """
    return 0

def t450520_x9():
    """ State 0,1 """
    while True:
        call = t450520_x11()
        assert not GetEventStatus(1640)
        """ State 2 """
        call = t450520_x12()
        assert GetEventStatus(1640) == 1

def t450520_x10():
    """ State 0,1 """
    assert t450520_x1()
    """ State 2 """
    return 0

def t450520_x11():
    """ State 0,2 """
    call = t450520_x14(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t450520_x6()

def t450520_x12():
    """ State 0,1 """
    assert t450520_x1()
    """ State 2 """
    return 0

def t450520_x13():
    """ State 0,2 """
    if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042) == 1 or GetEventStatus(1045)
        == 1) and not GetEventStatus(74000124)):
        """ State 1,5 """
        assert t450520_x3(text1=62000700, flag1=0, mode1=1)
    else:
        """ State 3,6 """
        assert t450520_x3(text1=62000400, flag1=0, mode1=1)
    """ State 4 """
    SetEventState(74500121, 1)
    """ State 7 """
    return 0

def t450520_x14(z1=-1):
    """ State 0,5 """
    while True:
        call = t450520_x0(z2=6000, flag2=1655, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
        if call.Done():
            """ State 3 """
            call = t450520_x4()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t450520_x8()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    def ExitPause():
                        RemoveMyAggro()
                    assert t450520_x5()
            elif IsAttackedBySomeone() == 1 or DoesSelfHaveSpEffect(150) == 1:
                Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif IsAttackedBySomeone() == 1 or DoesSelfHaveSpEffect(150) == 1:
            Goto('L0')
    """ State 2 """
    t450520_x7()

def t450520_x15():
    """ State 0,1 """
    assert t450520_x3(text1=62001100, flag1=0, mode1=1)
    """ State 2 """
    return 0

