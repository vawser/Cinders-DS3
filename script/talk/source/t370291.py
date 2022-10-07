# -*- coding: utf-8 -*-
def t370291_1():
    """ State 0,1 """
    SetUpdateDistance(100)
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370291_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370291_x10()
        assert not IsClientPlayer()

def t370291_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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

def t370291_x1():
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

def t370291_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t370291_x3(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t370291_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
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

def t370291_x4(text1=29002430, flag1=0, mode1=1):
    """ State 0,4 """
    assert t370291_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:29002430: 
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

def t370291_x5():
    """ State 0,1 """
    if True:
        """ State 2,8 """
        assert t370291_x1()
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:29002430: 
            call = t370291_x4(text1=29002430, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t370291_x1()
        else:
            """ State 5 """
            pass
    """ State 9 """
    return 0

def t370291_x6():
    """ State 0,2,1,3 """
    return 0

def t370291_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t370291_x1()
    """ State 5 """
    return 0

def t370291_x8():
    """ State 0,2 """
    if not GetEventStatus(13705685):
        """ State 1,7 """
        call = t370291_x13()
        def ExitPause():
            SetEventState(13705687, 1)
        if call.Done():
            pass
        elif GetEventStatus(8260) == 1:
            """ State 8 """
            assert t370291_x1()
            """ State 5 """
            Label('L0')
            assert GetCurrentStateElapsedTime() > 3.5
            """ State 6 """
            # talk:29002600:I owe this to you. Thank you. Truly.
            assert t370291_x3(text2=29002600, z1=13705686, flag2=0, mode2=1)
    elif not GetEventStatus(13705686) and GetEventStatus(8260) == 1:
        """ State 3 """
        Goto('L0')
    """ State 9 """
    return 0

def t370291_x9():
    """ State 0 """

def t370291_x10():
    """ State 0,1 """
    while True:
        call = t370291_x11()
        assert not GetEventStatus(8261) or not GetEventStatus(13700172)
        """ State 2 """
        call = t370291_x12()
        assert GetEventStatus(8261) == 1 and GetEventStatus(13700172) == 1

def t370291_x11():
    """ State 0,2 """
    call = t370291_x14()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t370291_x5()

def t370291_x12():
    """ State 0 """

def t370291_x13():
    """ State 0,2 """
    if GetEventStatus(8263) == 1:
        """ State 3,6 """
        # talk:29002510:Ahh, I thought it might be you.
        assert t370291_x3(text2=29002510, z1=13705685, flag2=0, mode2=1)
    else:
        """ State 4,5 """
        # talk:29002500:Ahh, I thought it might be you.
        assert t370291_x3(text2=29002500, z1=13705685, flag2=0, mode2=1)
    """ State 1 """
    SetEventState(8262, 1)
    """ State 7 """
    return 0

def t370291_x14():
    """ State 0,4 """
    while True:
        call = t370291_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if IsPlayerDead() == 1:
            break
        elif (GetDistanceToPlayer() < 95 and (not GetEventStatus(13705685) or (GetEventStatus(8260) ==
              1 and not GetEventStatus(13705686)))):
            """ State 3 """
            call = t370291_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 99:
                """ State 2 """
                assert t370291_x7() and GetDistanceToPlayer() < 4.9
    """ State 1 """
    t370291_x6()

