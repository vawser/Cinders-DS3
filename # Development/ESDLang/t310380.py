# -*- coding: utf-8 -*-
def t310380_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310380_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310380_x10()
        assert not IsClientPlayer()

def t310380_x0(z1=6380, flag2=1950, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
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
        elif CheckActionButtonArea(z1):
            break
    """ State 4 """
    return 0

def t310380_x1():
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

def t310380_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310380_x3(text1=37000500, flag1=0, mode1=1):
    """ State 0,4 """
    assert t310380_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:37000500:Another nana disappeared
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

def t310380_x4():
    """ State 0,1 """
    # talk:37000500:Another nana disappeared
    assert t310380_x3(text1=37000500, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t310380_x5():
    """ State 0,1 """
    assert t310380_x1()
    """ State 2 """
    return 0

def t310380_x6():
    """ State 0,1 """
    if GetEventStatus(1953) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t310380_x1()
    """ State 5 """
    return 0

def t310380_x7():
    """ State 0,1 """
    assert t310380_x1()
    """ State 2 """
    return 0

def t310380_x8():
    """ State 0,1 """
    assert t310380_x1()
    """ State 2 """
    return 0

def t310380_x9():
    """ State 0,1 """
    while True:
        call = t310380_x11()
        assert not GetEventStatus(6001)
        """ State 2 """
        call = t310380_x12()
        assert GetEventStatus(6001) == 1

def t310380_x10():
    """ State 0,1 """
    assert t310380_x1()
    """ State 2 """
    return 0

def t310380_x11():
    """ State 0,2 """
    call = t310380_x13()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t310380_x6()

def t310380_x12():
    """ State 0 """

def t310380_x13():
    """ State 0,5 """
    while True:
        call = t310380_x0(z1=6380, flag2=1950, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
        if call.Done():
            """ State 3 """
            call = t310380_x4()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or GetEventStatus(1951) == 1:
                """ State 1 """
                Label('L0')
                call = t310380_x5()
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
                call = t310380_x8()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
    """ State 2 """
    t310380_x7()

