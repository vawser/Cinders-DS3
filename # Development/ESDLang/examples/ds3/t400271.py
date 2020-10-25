# -*- coding: utf-8 -*-
def t400271_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400271_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400271_x10()
        assert not IsClientPlayer()

def t400271_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t400271_x1():
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

def t400271_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400271_x3(text2=27001110, z1=74000674, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400271_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    # talk:27001110:I made myself very clear.
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

def t400271_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400271_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400271_x5():
    """ State 0,1 """
    if GetEventStatus(1318) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400271_x14()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400271_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400271_x6():
    """ State 0,2,1 """
    if GetDistanceToPlayer() < 10:
        """ State 3,6 """
        call = t400271_x13()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t400271_x1()
    else:
        """ State 4 """
        pass
    """ State 7 """
    return 0

def t400271_x7():
    """ State 0,1,2,3 """
    assert t400271_x1()
    """ State 4 """
    return 0

def t400271_x8():
    """ State 0,1 """
    # talk:27001110:I made myself very clear.
    assert t400271_x3(text2=27001110, z1=74000674, flag2=0, mode2=1)
    """ State 2 """
    return 0

def t400271_x9():
    """ State 0,1 """
    while True:
        call = t400271_x11()
        assert not GetEventStatus(1304)
        """ State 2 """
        call = t400271_x12()
        assert GetEventStatus(1304) == 1

def t400271_x10():
    """ State 0,1 """
    assert t400271_x1()
    """ State 2 """
    return 0

def t400271_x11():
    """ State 0,2 """
    call = t400271_x15()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400271_x5()

def t400271_x12():
    """ State 0 """

def t400271_x13():
    """ State 0,1,2 """
    # talk:27002110:Remember. A knight of Carim does not forgive betrayal.
    assert t400271_x4(text1=27002110, flag1=0, mode1=1)
    """ State 3 """
    return 0

def t400271_x14():
    """ State 0,1,2,3 """
    # talk:27002210: 
    assert t400271_x4(text1=27002210, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t400271_x15():
    """ State 0,4 """
    while True:
        call = t400271_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if IsPlayerDead() == 1:
            break
        elif GetDistanceToPlayer() < 10 and not GetEventStatus(74000674) and GetEventStatus(14005543) == 1:
            """ State 3 """
            call = t400271_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 12:
                """ State 2 """
                assert t400271_x7() and GetDistanceToPlayer() < 4.9
    """ State 1 """
    t400271_x6()

